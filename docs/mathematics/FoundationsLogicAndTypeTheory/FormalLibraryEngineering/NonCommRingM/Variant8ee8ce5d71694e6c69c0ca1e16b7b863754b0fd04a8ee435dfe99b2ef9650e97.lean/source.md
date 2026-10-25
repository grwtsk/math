# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonCommRingM.Variant8ee8ce5d71694e6c69c0ca1e16b7b863754b0fd04a8ee435dfe99b2ef9650e97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3958fcf7b475b629d542d1fe8c1694cd8acc1b1` · SHA-256 `1963b889bf853989736d289bd3f11d5681ebd4dedb8c5cf6d6c488b8855af971`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonCommRingMContext.Variantabd3d1f0d9697f4637535c3a6775d637571f85f0bf384ac2a2a45b697418db61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abd3d1f0d9697f4637535c3a6775d637571f85f0bf384ac2a2a45b697418db61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.NonCommRingMContext.Variantabd3d1f0d9697f4637535c3a6775d637571f85f0bf384ac2a2a45b697418db61","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"abd3d1f0d9697f4637535c3a6775d637571f85f0bf384ac2a2a45b697418db61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/CommRing/NonCommRingM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.CommRing.RingM

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonCommRingMContext.Variantabd3d1f0d9697f4637535c3a6775d637571f85f0bf384ac2a2a45b697418db61

public section
namespace Lean.Meta.Grind.Arith.CommRing
open Sym.Arith
structure NonCommRingM.Context where
  ringId : Nat

/-- We don't want to keep carrying the `RingId` around. -/
abbrev NonCommRingM := ReaderT NonCommRingM.Context GoalM

abbrev NonCommRingM.run (ringId : Nat) (x : NonCommRingM α) : GoalM α :=
  x { ringId }

instance : MonadCanon NonCommRingM where
  canonExpr e := do shareCommon (← canon e)
  synthInstance? e := Grind.synthInstance? e

protected def NonCommRingM.getRing : NonCommRingM Ring := do
  let s ← get'
  let ringId := (← read).ringId
  if h : ringId < s.ncRings.size then
    return s.ncRings[ringId]
  else
    throwError "`grind` internal error, invalid ringId"

protected def NonCommRingM.modifyRing (f : Ring → Ring) : NonCommRingM Unit := do
  let ringId := (← read).ringId
  modify' fun s => { s with ncRings := s.ncRings.modify ringId f }

instance : MonadRing NonCommRingM where
  getRing := NonCommRingM.getRing
  modifyRing := NonCommRingM.modifyRing

def getTermNonCommRingId? (e : Expr) : GoalM (Option Nat) := do
    return (← get').exprToNCRingId.find? { expr := e }

def setTermNonCommRingId (e : Expr) : NonCommRingM Unit := do
  let ringId := (← read).ringId
  if let some ringId' ← getTermNonCommRingId? e then
    unless ringId' == ringId do
      reportIssue! "expression in two different rings{indentExpr e}"
    return ()
  modify' fun s => { s with exprToNCRingId := s.exprToNCRingId.insert { expr := e } ringId }

instance : MonadSetTermId NonCommRingM where
  setTermId e := setTermNonCommRingId e

end Lean.Meta.Grind.Arith.CommRing
```
