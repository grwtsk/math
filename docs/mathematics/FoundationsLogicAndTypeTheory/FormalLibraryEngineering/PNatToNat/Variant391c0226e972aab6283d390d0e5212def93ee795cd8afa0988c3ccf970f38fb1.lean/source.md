# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PNatToNat.Variant391c0226e972aab6283d390d0e5212def93ee795cd8afa0988c3ccf970f38fb1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26f2b2f2d7928fccea84458fb0ee144f52d63988` · SHA-256 `dc375817c15efeeadc714bf1edcce2f2e650cbd88bc83f41f2a4f423988d99a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoeInj.Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CoeInj.Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/PNatToNat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Vasilii Nesterov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vasilii Nesterov
-/
import Mathlib.Data.PNat.Basic

/-!
# `pnat_to_nat`

This file implements the `pnat_to_nat` tactic that shifts `PNat`s in the context to `Nat`.

## Implementation details
The implementation follows these steps:
1. For each `x : PNat` in the context, add the hypothesis `0 < (↑x : ℕ)`.
2. Translate arithmetic on `PNat` to `Nat` using the `pnat_to_nat_coe` simp set.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoeInj.Variant0ba62d8f8c962f206fd22878d979521bc70520460dcbc3d4b67346d811b2fd5b

namespace Mathlib.Tactic.PNatToNat

open private getElimNameInfo generalizeTargets generalizeVars from Lean.Elab.Tactic.Induction

open Lean Meta Elab Tactic Qq Mathlib.Tactic

/-- For each `x : PNat` in the context, add the hypothesis `0 < (↑x : ℕ)`. -/
elab "pnat_positivity" : tactic => withMainContext do
  let result ← (← getLCtx).foldlM (init := ← getMainGoal) fun g decl => do
    let ⟨1, declType, declExpr⟩ ← inferTypeQ decl.toExpr | return g
    let ~q(PNat) := declType | return g
    let pf := q(PNat.pos $declExpr)
    let ctx ← getLCtx
    let alreadyDeclared := Option.isSome <| ← ctx.findDeclM? fun ldecl => do
      if ← isDefEq ldecl.type q(0 < PNat.val $declExpr) then
        pure <| .some ()
      else
        pure .none
    if alreadyDeclared then
      return g
    let (_, mvarIdNew) ← (← g.assert .anonymous q(0 < PNat.val $declExpr) pf).intro1P
    return mvarIdNew
  setGoals [result]

@[pnat_to_nat_coe]
lemma coe_inj (m n : PNat) : m = n ↔ (m : ℕ) = (n : ℕ) := by simp

@[pnat_to_nat_coe]
lemma coe_le_coe (m n : PNat) : m ≤ n ↔ (m : ℕ) ≤ (n : ℕ) := by simp

@[pnat_to_nat_coe]
lemma coe_lt_coe (m n : PNat) : m < n ↔ (m : ℕ) < (n : ℕ) := by simp

attribute [pnat_to_nat_coe] PNat.add_coe PNat.mul_coe PNat.val_ofNat

@[pnat_to_nat_coe]
lemma sub_coe (a b : PNat) : ((a - b : PNat) : Nat) = a.val - 1 - b.val + 1 := by
  cases a
  cases b
  simp only [PNat.mk_coe, _root_.PNat.sub_coe, ← _root_.PNat.coe_lt_coe]
  split_ifs <;> omega

/-- `pnat_to_nat` shifts all `PNat`s in the context to `Nat`, rewriting propositions about them.
A typical use case is `pnat_to_nat; omega`. -/
macro "pnat_to_nat" : tactic => `(tactic| focus (
  pnat_positivity;
  simp only [pnat_to_nat_coe] at *)
)

end Mathlib.Tactic.PNatToNat
```
