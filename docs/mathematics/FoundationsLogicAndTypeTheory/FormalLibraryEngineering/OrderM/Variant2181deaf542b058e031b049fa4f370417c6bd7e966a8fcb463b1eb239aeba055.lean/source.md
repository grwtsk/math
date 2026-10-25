# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderM.Variant2181deaf542b058e031b049fa4f370417c6bd7e966a8fcb463b1eb239aeba055

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd512affbcd89744bc619b7100c6370657788d2e` · SHA-256 `b8fa1d65ab474a2253155de80065a0759a7d43a65c63be5156ac426afcb94ecb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderMContext.Variant356b81638a61549bb9c0058849c363433349fb32d0b222eb6427b52e0d3dd2c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"356b81638a61549bb9c0058849c363433349fb32d0b222eb6427b52e0d3dd2c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OrderMContext.Variant356b81638a61549bb9c0058849c363433349fb32d0b222eb6427b52e0d3dd2c4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"356b81638a61549bb9c0058849c363433349fb32d0b222eb6427b52e0d3dd2c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Order/OrderM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Order.Types

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderMContext.Variant356b81638a61549bb9c0058849c363433349fb32d0b222eb6427b52e0d3dd2c4

public section
namespace Lean.Meta.Grind.Order

structure OrderM.Context where
  structId : Nat

abbrev OrderM := ReaderT OrderM.Context GoalM

abbrev OrderM.run (structId : Nat) (x : OrderM α) : GoalM α :=
  x { structId }

abbrev getStructId : OrderM Nat :=
  return (← read).structId

def getStruct : OrderM Struct := do
  let s ← get'
  let structId ← getStructId
  if h : structId < s.structs.size then
    return s.structs[structId]
  else
    throwError "`grind` internal error, invalid order structure id"

def modifyStruct (f : Struct → Struct) : OrderM Unit := do
  let structId ← getStructId
  modify' fun s => { s with structs := s.structs.modify structId f }

def getExpr (u : NodeId) : OrderM Expr := do
  return (← getStruct).nodes[u]!

def getDist? (u v : NodeId) : OrderM (Option Weight) := do
  return (← getStruct).targets[u]!.find? v

def getProof? (u v : NodeId) : OrderM (Option ProofInfo) := do
  return (← getStruct).proofs[u]!.find? v

def getNodeId (e : Expr) : OrderM NodeId := do
  let some nodeId := (← getStruct).nodeMap.find? { expr := e }
    | throwError "internal `grind` error, term has not been internalized by order module{indentExpr e}"
  return nodeId

def getProof (u v : NodeId) : OrderM ProofInfo := do
  let some p ← getProof? u v
    | throwError "internal `grind` error, failed to construct proof for{indentExpr (← getExpr u)}\nand{indentExpr (← getExpr v)}"
  return p

def getCnstr? (e : Expr) : OrderM (Option (Cnstr NodeId)) :=
  return (← getStruct).cnstrs.find? { expr := e }

def isRing : OrderM Bool :=
  return (← getStruct).ringId?.isSome

def isPartialOrder : OrderM Bool :=
  return (← getStruct).isPartialInst?.isSome

def isLinearPreorder : OrderM Bool :=
  return (← getStruct).isLinearPreInst?.isSome

def hasLt : OrderM Bool :=
  return (← getStruct).lawfulOrderLTInst?.isSome

def isInt : OrderM Bool :=
  return isSameExpr (← getStruct).type (← getIntExpr)

end Lean.Meta.Grind.Order
```
