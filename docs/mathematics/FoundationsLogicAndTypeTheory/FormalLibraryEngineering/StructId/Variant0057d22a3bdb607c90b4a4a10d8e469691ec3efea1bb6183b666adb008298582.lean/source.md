# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StructId.Variant0057d22a3bdb607c90b4a4a10d8e469691ec3efea1bb6183b666adb008298582

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a37aec45eb7f4e76f058ff354bcd5e91d5d587b3` · SHA-256 `185c179a5daead1ff58d6cf63c88c822f7b19b08cba64f1a690f53f5dbff9863`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocess.Variantd7a6064d40aefb01e755d6a7a8a2cacc87830a2c1ac8b2365660a77a7a7efea5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7a6064d40aefb01e755d6a7a8a2cacc87830a2c1ac8b2365660a77a7a7efea5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Preprocess.Variantd7a6064d40aefb01e755d6a7a8a2cacc87830a2c1ac8b2365660a77a7a7efea5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d7a6064d40aefb01e755d6a7a8a2cacc87830a2c1ac8b2365660a77a7a7efea5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Order/StructId.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Order.Types
import Lean.Meta.Tactic.Grind.OrderInsts
import Lean.Meta.Tactic.Grind.Arith.CommRing.RingId
import Lean.Meta.Tactic.Grind.Arith.CommRing.NonCommRingM

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocess.Variantd7a6064d40aefb01e755d6a7a8a2cacc87830a2c1ac8b2365660a77a7a7efea5

public section
namespace Lean.Meta.Grind.Order

private def preprocess (e : Expr) : GoalM Expr := do
  shareCommon (← canon e)

private def internalizeFn (fn : Expr) : GoalM Expr := do
  preprocess fn

private def getInst? (declName : Name) (u : Level) (type : Expr) : GoalM (Option Expr) := do
  synthInstance? <| mkApp (mkConst declName [u]) type

open Arith CommRing

private def mkOrderedRingInst? (u : Level) (α : Expr) (semiringInst : Expr)
    (leInst ltInst isPreorderInst : Expr) : GoalM (Option Expr) := do
  let e := mkApp5 (mkConst ``Grind.OrderedRing [u]) α semiringInst leInst ltInst isPreorderInst
  synthInstance? e

def getStructId? (type : Expr) : GoalM (Option Nat) := do
  unless (← getConfig).order do return none
  if let some id? := (← get').typeIdOf.find? { expr := type } then
    return id?
  else
    let id? ← go?
    modify' fun s => { s with typeIdOf := s.typeIdOf.insert { expr := type } id? }
    return id?
where
  go? : GoalM (Option Nat) := do
    let some u ← getDecLevel? type | return none
    let some leInst ← getInst? ``LE u type | return none
    let some isPreorderInst ← mkIsPreorderInst? u type (some leInst) | return none
    -- **TODO** compute `isPartialInst?` and `isLinearPreInst?` on demand
    let isPartialInst? ← mkIsPartialOrderInst? u type (some leInst)
    let isLinearPreInst? ← mkIsLinearPreorderInst? u type (some leInst)
    let ltInst? ← getInst? ``LT u type
    let leFn ← internalizeFn <| mkApp2 (mkConst ``LE.le [u]) type leInst
    let (lawfulOrderLTInst?, ltFn?) ← if let some ltInst := ltInst? then
      let inst? ← mkLawfulOrderLTInst? u type ltInst? (some leInst)
      if inst?.isNone then
        pure (none, none)
      else
        let ltFn ← internalizeFn <| mkApp2 (mkConst ``LT.lt [u]) type ltInst
        pure (inst?, some ltFn)
    else
      pure (none, none)
    let (ringId?, ringInst?, orderedRingInst?, isCommRing) ← if lawfulOrderLTInst?.isNone then
      pure (none, none, none, false)
    else if let some ringId ← getCommRingId? type then
      let ringInst ← RingM.run ringId do return (← getRing).ringInst
      let semiringInst ← RingM.run ringId do return (← getRing).semiringInst
      let some ordRingInst ← mkOrderedRingInst? u type semiringInst leInst ltInst?.get! isPreorderInst
        | pure (none, none, none, true)
      pure (some ringId, some ringInst, some ordRingInst, true)
    else if let some ringId ← getNonCommRingId? type then
      let semiringInst ← NonCommRingM.run ringId do return (← getRing).semiringInst
      let ringInst ← NonCommRingM.run ringId do return (← getRing).ringInst
      let some ordRingInst ← mkOrderedRingInst? u type semiringInst leInst ltInst?.get! isPreorderInst
        | pure (none, none, none, true)
      pure (some ringId, some ringInst, some ordRingInst, false)
    else
      pure (none, none, none, false)
    let id := (← get').structs.size
    let struct := {
      id,  type, u, leInst, isPreorderInst, ltInst?, leFn, isPartialInst?, ringInst?, orderedRingInst?
      isLinearPreInst?, ltFn?, lawfulOrderLTInst?, ringId?, isCommRing
     }
    modify' fun s => { s with structs := s.structs.push struct }
    return some id

end Lean.Meta.Grind.Order
```
