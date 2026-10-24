# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Orthogonality.Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e155a7fb886f203dd19074f8ec88d57171289ca` · SHA-256 `f3bf9ce6514afa70ea5bbcb5706ff7490d97a68795eda70768b17b9f4bd78167`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MulEquivUnits.Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.MulEquivUnits.Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"ca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/DirichletCharacter/Orthogonality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll
-/
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.NumberTheory.DirichletCharacter.Basic
import Mathlib.NumberTheory.MulChar.Duality

/-!
# Orthogonality relations for Dirichlet characters

Let `n` be a positive natural number. The main result of this file is
`DirichletCharacter.sum_char_inv_mul_char_eq`, which says that when `a : ZMod n` is a unit
and `b : ZMod n`, then the sum `∑ χ : DirichletCharacter R n, χ a⁻¹ * χ b` vanishes
when `a ≠ b` and has the value `n.totient` otherwise. This requires `R` to have
enough roots of unity (e.g., `R` could be an algebraically closed field of characteristic zero).
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MulEquivUnits.Variantca0fe2262415b5ee5f5a4b3cbd6a34dbf92f2b0fc592dc5cc263d553b2133a62

namespace DirichletCharacter

-- This is needed to be able to write down sums over characters.
noncomputable instance fintype {R : Type*} [CommRing R] [IsDomain R] {n : ℕ} :
    Fintype (DirichletCharacter R n) := .ofFinite _

variable (R : Type*) [CommRing R] (n : ℕ) [NeZero n]
  [HasEnoughRootsOfUnity R (Monoid.exponent (ZMod n)ˣ)]

/-- The group of Dirichlet characters mod `n` with values in a ring `R` that has enough
roots of unity is (noncanonically) isomorphic to `(ZMod n)ˣ`. -/
lemma mulEquiv_units : Nonempty (DirichletCharacter R n ≃* (ZMod n)ˣ) :=
  MulChar.mulEquiv_units ..

/-- There are `n.totient` Dirichlet characters mod `n` with values in a ring that has enough
roots of unity. -/
lemma card_eq_totient_of_hasEnoughRootsOfUnity :
    Nat.card (DirichletCharacter R n) = n.totient := by
  rw [← ZMod.card_units_eq_totient n, ← Nat.card_eq_fintype_card]
  exact Nat.card_congr (mulEquiv_units R n).some.toEquiv

variable {n}

/-- If `R` is a ring that has enough roots of unity and `n ≠ 0`, then for each
`a ≠ 1` in `ZMod n`, there exists a Dirichlet character `χ` mod `n` with values in `R`
such that `χ a ≠ 1`. -/
theorem exists_apply_ne_one_of_hasEnoughRootsOfUnity [Nontrivial R] ⦃a : ZMod n⦄ (ha : a ≠ 1) :
    ∃ χ : DirichletCharacter R n, χ a ≠ 1 :=
  MulChar.exists_apply_ne_one_of_hasEnoughRootsOfUnity (ZMod n) R ha

variable [IsDomain R]

/-- If `R` is an integral domain that has enough roots of unity and `n ≠ 0`, then
for each `a ≠ 1` in `ZMod n`, the sum of `χ a` over all Dirichlet characters mod `n`
with values in `R` vanishes. -/
theorem sum_characters_eq_zero ⦃a : ZMod n⦄ (ha : a ≠ 1) :
    ∑ χ : DirichletCharacter R n, χ a = 0 := by
  obtain ⟨χ, hχ⟩ := exists_apply_ne_one_of_hasEnoughRootsOfUnity R ha
  refine eq_zero_of_mul_eq_self_left hχ ?_
  simp only [Finset.mul_sum, ← MulChar.mul_apply]
  exact Fintype.sum_bijective _ (Group.mulLeft_bijective χ) _ _ fun χ' ↦ rfl

/-- If `R` is an integral domain that has enough roots of unity and `n ≠ 0`, then
for `a` in `ZMod n`, the sum of `χ a` over all Dirichlet characters mod `n`
with values in `R` vanishes if `a ≠ 1` and has the value `n.totient` if `a = 1`. -/
theorem sum_characters_eq (a : ZMod n) :
    ∑ χ : DirichletCharacter R n, χ a = if a = 1 then (n.totient : R) else 0 := by
  split_ifs with ha
  · simpa only [ha, map_one, Finset.sum_const, Finset.card_univ, nsmul_eq_mul, mul_one,
      ← Nat.card_eq_fintype_card]
      using congrArg Nat.cast <| card_eq_totient_of_hasEnoughRootsOfUnity R n
  · exact sum_characters_eq_zero R ha

/-- If `R` is an integral domain that has enough roots of unity and `n ≠ 0`, then for `a` and `b`
in `ZMod n` with `a` a unit, the sum of `χ a⁻¹ * χ b` over all Dirichlet characters
mod `n` with values in `R` vanishes if `a ≠ b` and has the value `n.totient` if `a = b`. -/
theorem sum_char_inv_mul_char_eq {a : ZMod n} (ha : IsUnit a) (b : ZMod n) :
    ∑ χ : DirichletCharacter R n, χ a⁻¹ * χ b = if a = b then (n.totient : R) else 0 := by
  simp only [← map_mul, sum_characters_eq, ZMod.inv_mul_eq_one_of_isUnit ha]

end DirichletCharacter
```
