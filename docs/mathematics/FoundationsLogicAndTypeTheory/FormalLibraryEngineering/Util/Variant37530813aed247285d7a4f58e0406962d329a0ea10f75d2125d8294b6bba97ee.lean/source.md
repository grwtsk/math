# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variant37530813aed247285d7a4f58e0406962d329a0ea10f75d2125d8294b6bba97ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a207724a4c4cdf9f3b451793aa877b56b14e5711` · SHA-256 `0c5f3eb2e9076d4eeb61ddeb00492392e68a9114b02795f5ffe60190d6227e1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindFirstStep.Variante4cd604a4f74b8bd2a5da676736ae0080d709f8892e78785000a24231b2d0122","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4cd604a4f74b8bd2a5da676736ae0080d709f8892e78785000a24231b2d0122","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FindFirstStep.Variante4cd604a4f74b8bd2a5da676736ae0080d709f8892e78785000a24231b2d0122","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e4cd604a4f74b8bd2a5da676736ae0080d709f8892e78785000a24231b2d0122","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Script/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Util.Basic
import Batteries.Lean.Meta.SavedState
import Aesop.Util.EqualUpToIds


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindFirstStep.Variante4cd604a4f74b8bd2a5da676736ae0080d709f8892e78785000a24231b2d0122

public section

open Lean Std Lean.Meta

namespace Aesop.Script

-- Without {α β : Type} universe inference goes haywire.
@[specialize]
def findFirstStep? {α β : Type} (goals : Array α) (step? : α → Option β)
     (stepOrder : β → Nat) : Option (Nat × α × β) := Id.run do
  let mut firstStep? := none
  for h : pos in [:goals.size] do
    let g := goals[pos]
    if let some step := step? g then
      if let some (_, _, currentFirstStep) := firstStep? then
        if stepOrder step < stepOrder currentFirstStep then
          firstStep? := some (pos, g, step)
      else
        firstStep? := some (pos, g, step)
    else
      continue
  return firstStep?

def matchGoals (postState₁ postState₂ : Meta.SavedState)
    (goals₁ goals₂ : Array MVarId) : MetaM (Option (Std.HashMap MVarId MVarId)) := do
  let goals₁ ← getProperGoals postState₁ goals₁
  let goals₂ ← getProperGoals postState₂ goals₂
  let (equal, s) ←
    tacticStatesEqualUpToIds' none postState₁.meta.mctx
      postState₂.meta.mctx goals₁ goals₂ (allowAssignmentDiff := true)
  if ! equal then
    return none
  else
    return s.equalMVarIds
where
  getProperGoals (state : Meta.SavedState) (goals : Array MVarId) :
      MetaM (Array MVarId) :=
    state.runMetaM' do
      let (properGoals, _) ← partitionGoalsAndMVars id goals
      return properGoals.map (·.fst)

end Aesop.Script
```
