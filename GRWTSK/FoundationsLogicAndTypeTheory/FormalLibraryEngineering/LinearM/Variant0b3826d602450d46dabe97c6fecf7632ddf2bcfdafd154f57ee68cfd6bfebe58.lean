-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LinearMContext.Variantb1242ad24d2ecafc1828f6d7708d3579a1749b5ed93ea5162d379a764237ad8d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1242ad24d2ecafc1828f6d7708d3579a1749b5ed93ea5162d379a764237ad8d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LinearMContext.Variantb1242ad24d2ecafc1828f6d7708d3579a1749b5ed93ea5162d379a764237ad8d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b1242ad24d2ecafc1828f6d7708d3579a1749b5ed93ea5162d379a764237ad8d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Linear/LinearM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Linear.Types
public import Lean.Meta.Tactic.Grind.Arith.CommRing.RingM

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LinearMContext.Variantb1242ad24d2ecafc1828f6d7708d3579a1749b5ed93ea5162d379a764237ad8d

public section
namespace Lean.Meta.Grind.Arith.Linear
open Sym.Arith (MonadCanon)

def get' : GoalM State := do
  linearExt.getState

@[inline] def modify' (f : State → State) : GoalM Unit := do
  linearExt.modifyState f

structure LinearM.Context where
  structId : Nat

class MonadGetStruct (m : Type → Type) where
  getStruct : m Struct

export MonadGetStruct (getStruct)

@[always_inline]
instance (m n) [MonadLift m n] [MonadGetStruct m] : MonadGetStruct n where
  getStruct    := liftM (getStruct : m Struct)

/-- We don't want to keep carrying the `StructId` around. -/
abbrev LinearM := ReaderT LinearM.Context GoalM

abbrev LinearM.run (structId : Nat) (x : LinearM α) : GoalM α :=
  x { structId }

abbrev getStructId : LinearM Nat :=
  return (← read).structId

protected def LinearM.getStruct : LinearM Struct := do
  let s ← get'
  let structId ← getStructId
  if h : structId < s.structs.size then
    return s.structs[structId]
  else
    throwError "`grind` internal error, invalid structure id"

instance : MonadGetStruct LinearM where
  getStruct := LinearM.getStruct

open CommRing

def getRingCore? (ringId? : Option Nat) : GoalM (Option Ring) := do
  let some ringId := ringId? | return none
  RingM.run ringId do return some (← getRing)

def throwNotRing : LinearM α :=
  throwError "`grind linarith` internal error, structure is not a ring"

def throwNotCommRing : LinearM α :=
  throwError "`grind linarith` internal error, structure is not a commutative ring"

def getRing? : LinearM (Option Ring) := do
  getRingCore? (← getStruct).ringId?

instance : MonadCanon LinearM where
  canonExpr e := do shareCommon (← canon e)
  synthInstance? e := Grind.synthInstance? e

def LinearM.getRing : LinearM Ring := do
  let some ring ← getRing?
    | throwNotCommRing
  return ring

instance : MonadRing LinearM where
  getRing := LinearM.getRing
  modifyRing f := do
    let some ringId := (← getStruct).ringId? | throwNotCommRing
    RingM.run ringId do modifyRing f

def withRingM (x : RingM α) : LinearM α := do
  let some ringId := (← getStruct).ringId?
    | throwNotCommRing
  RingM.run ringId x

@[inline] def modifyStruct (f : Struct → Struct) : LinearM Unit := do
  let structId ← getStructId
  modify' fun s => { s with structs := s.structs.modify structId f }

end Lean.Meta.Grind.Arith.Linear
