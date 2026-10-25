# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoncommRing.Variantd55c79501cdec0df0b3d982b5a3c282c64baff20206234a2efcadc93706cda4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbec3fba194bb1767d9cc0dd7f9c1067fbe8c002` · SHA-256 `9c0fdfbc3a354def1741d9ceb6d95f3c21b27bd91620d39f4408627ad6dd588c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatLitMulEqNsmul.Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NatLitMulEqNsmul.Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/NoncommRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux, Kim Morrison, Oliver Nash
-/
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Tactic.Abel

/-! # The `noncomm_ring` tactic

Solve goals in not necessarily commutative rings.

This tactic is rudimentary, but useful for solving simple goals in noncommutative rings. One
glaring flaw is that numeric powers are unfolded entirely with `pow_succ` and can easily exceed the
maximum recursion depth.

`noncomm_ring` is just a `simp only [some lemmas]` followed by `abel`. It automatically uses `abel1`
to close the goal, and if that doesn't succeed, defaults to `abel_nf`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatLitMulEqNsmul.Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99

namespace Mathlib.Tactic.NoncommRing

section nat_lit_mul
variable {R : Type*} [NonAssocSemiring R] (r : R) (n : ℕ)

lemma nat_lit_mul_eq_nsmul [n.AtLeastTwo] : ofNat(n) * r = OfNat.ofNat n • r := by
  simp only [nsmul_eq_mul, Nat.cast_ofNat]
lemma mul_nat_lit_eq_nsmul [n.AtLeastTwo] : r * ofNat(n) = OfNat.ofNat n • r := by
  simp only [nsmul_eq_mul', Nat.cast_ofNat]

end nat_lit_mul

open Lean.Parser.Tactic
/-- A tactic for simplifying identities in not-necessarily-commutative rings.

An example:
```lean
example {R : Type*} [Ring R] (a b c : R) : a * (b + c + c - b) = 2 * a * c := by
  noncomm_ring
```

You can use `noncomm_ring [h]` to also simplify using `h`.
-/
syntax (name := noncomm_ring) "noncomm_ring" optConfig (discharger)?
  (" [" ((simpStar <|> simpErase <|> simpLemma),*,?) "]")? : tactic

macro_rules
  | `(tactic| noncomm_ring $cfg:optConfig $[$disch]? $[[$rules,*]]?) => do
    let rules' := rules.getD ⟨#[]⟩
    let tac ← `(tactic|
      (first | simp $cfg:optConfig $(disch)? only [
          -- Expand everything out.
          add_mul, mul_add, sub_eq_add_neg,
          -- Right associate all products.
          mul_assoc,
          -- Expand powers to numerals.
          pow_one, pow_zero, pow_succ,
          -- Replace multiplication by numerals with `zsmul`.
          one_mul, mul_one, zero_mul, mul_zero,
          nat_lit_mul_eq_nsmul, mul_nat_lit_eq_nsmul,
          -- Pull `zsmul n` out the front so `abel` can see them.
          mul_smul_comm, smul_mul_assoc,
          -- Pull out negations.
          neg_mul, mul_neg,
          -- user-specified simp lemmas
          $rules',*] |
        fail "`noncomm_ring` simp lemmas don't apply; try `abel` instead") <;>
      first | abel1 | abel_nf)
    -- if a manual rewrite rule is provided, we repeat the tactic
    -- (since abel might simplify and allow the rewrite to apply again)
    if rules.isSome then `(tactic| repeat1 ($tac;)) else `(tactic| $tac)

end Mathlib.Tactic.NoncommRing

/-!
We register `noncomm_ring` with the `hint` tactic.
-/

register_hint noncomm_ring
````
