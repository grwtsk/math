# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.ExistsRamified.Variant45d82e678c85b7bc3acf93ca0c70da1e67d12055d8dd274830101dd081389c88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cc50229db6237af40bff5ec0721b65148400bde` · SHA-256 `9cf1be5c432c78f424be6b3b89546f1777162c5ab24a50c2c24ce5efb6a23059`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AlgebraicNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AlgebraicNumberTheory.NumberFieldExistsNotIsUnramifiedIn.Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AlgebraicNumberTheory.SourceCorpus.NumberFieldExistsNotIsUnramifiedIn.Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4","mathematical_subject":"NumberTheory.AlgebraicNumberTheory","original_sha256":"69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/NumberField/ExistsRamified.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.NumberTheory.NumberField.Discriminant.Basic
public import Mathlib.NumberTheory.NumberField.Discriminant.Different
public import Mathlib.NumberTheory.RamificationInertia.Galois
public import Mathlib.RingTheory.Ideal.Quotient.HasFiniteQuotients.Basic
public import Mathlib.RingTheory.Unramified.Dedekind

/-!
# Every number field has a ramified prime over `ℚ`

...except `ℚ` itself.

This is a trivial corollary of `NumberField.not_dvd_discr_iff_forall_mem` and
`NumberField.abs_discr_gt_two` but is placed in a separate file to avoid large imports.

-/

namespace GRWTSK.NumberTheory.AlgebraicNumberTheory.NumberFieldExistsNotIsUnramifiedIn.Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4

public section

open scoped NumberField nonZeroDivisors

variable {K 𝒪 : Type*} [Field K] [NumberField K] [CommRing 𝒪] [Algebra 𝒪 K]
variable [IsIntegralClosure 𝒪 ℤ K]

/-- If `K` is a number field with positive rank, then some prime is ramified in `K`. -/
lemma NumberField.exists_not_isUnramifiedIn (H : Module.finrank ℚ K ≠ 1) :
    ∃ p : ℕ, p.Prime ∧ ¬ Algebra.IsUnramifiedIn 𝒪 (Ideal.span {(p : ℤ)}) := by
  have : 0 < Module.finrank ℚ K := Module.finrank_pos
  have : 2 < |discr K| := abs_discr_gt_two (by lia)
  obtain ⟨p, hp1, hp2⟩ := (discr K).exists_prime_and_dvd (by linarith)
  use p.natAbs, p.prime_iff_natAbs_prime.mp hp1
  simpa [← not_dvd_discr_iff_isUnramifiedIn K 𝒪 hp1]

/-- If `K` is a number field with positive rank, then there exists some maximal ideal of `𝓞 K`
that is ramified over `ℤ`. -/
lemma NumberField.exists_not_isUnramifiedAt_int (H : Module.finrank ℚ K ≠ 1) :
    ∃ (P : Ideal 𝒪) (_ : P.IsMaximal), ¬ Algebra.IsUnramifiedAt ℤ P := by
  obtain ⟨p, hp1, hp2⟩ := NumberField.exists_not_isUnramifiedIn (𝒪 := 𝒪) H
  have := (IsIntegralClosure.algebraMap_injective 𝒪 ℤ K).isDomain
  have := IsIntegralClosure.isDedekindDomain ℤ ℚ K 𝒪
  have := IsIntegralClosure.isTorsionFree ℤ (A := 𝒪) K
  have := IsIntegralClosure.isIntegral_algebra ℤ (A := 𝒪) K
  grind [Algebra.isUnramifiedIn_iff_forall_of_isDedekindDomain]

/-- Any number field that is unramified over `ℚ` has rank `1`. -/
lemma NumberField.finrank_eq_one_of_unramified [Algebra.Unramified ℤ 𝒪] :
    Module.finrank ℚ K = 1 := by
  by_contra H
  obtain ⟨P, _, H⟩ := NumberField.exists_not_isUnramifiedAt_int (𝒪 := 𝒪) H
  exact H inferInstance

/-- If `𝒪` is a domain that is a finite and unramified extension of `ℤ`, then `𝒪 = ℤ`. -/
lemma bijective_algebraMap_int_of_finite_of_unramified
    [Module.Finite ℤ 𝒪] [Algebra.Unramified ℤ 𝒪] [IsDomain 𝒪] [FaithfulSMul ℤ 𝒪] :
    Function.Bijective (algebraMap ℤ 𝒪) := by
  have := IsDedekindDomain.of_formallyUnramified ℤ 𝒪
  let K := FractionRing 𝒪
  let : Algebra ℤ K := Ring.toIntAlgebra K
  have : CharZero 𝒪 := Algebra.charZero_of_charZero ℤ _
  have : NumberField K := { to_finiteDimensional := Module.Finite.of_isLocalization ℤ 𝒪 ℤ⁰ }
  have := NumberField.finrank_eq_one_of_unramified (K := K) (𝒪 := 𝒪)
  have : IsIntegralClosure ℤ ℤ K := .of_algEquiv _ (.ofBijective (IsScalarTower.toAlgHom _ _ _)
    (Algebra.finrank_eq_one_iff_bijective_algebraMap.mp this)) (by simp)
  exact bijective_algebraMap_of_linearEquiv (IsIntegralClosure.equiv ℤ ℤ K 𝒪).toLinearEquiv

/-- If `K` is a number field with positive rank such that `K/ℚ` is galois, then there exists
some rational prime `p : ℕ` such that every prime of `K` over `p` is ramified. -/
lemma NumberField.exists_not_isUnramifiedAt_int_of_isGalois [IsGalois ℚ K]
    (H : 1 < Module.finrank ℚ K) :
    ∃ p : ℕ, p.Prime ∧ ∀ (P : Ideal 𝒪) (_ : P.IsPrime), ↑p ∈ P → ¬ Algebra.IsUnramifiedAt ℤ P := by
  have := (IsIntegralClosure.algebraMap_injective 𝒪 ℤ K).isDomain
  have := IsIntegralClosure.isDedekindDomain ℤ ℚ K 𝒪
  have := IsIntegralClosure.isFractionRing_of_finite_extension ℤ ℚ K 𝒪
  have := IsIntegralClosure.finite ℤ ℚ K 𝒪
  have := CharZero.of_module (R := 𝒪) K
  let : MulSemiringAction Gal(K/ℚ) 𝒪 := IsIntegralClosure.MulSemiringAction ℤ ℚ K 𝒪
  have := IsGaloisGroup.of_isFractionRing Gal(K/ℚ) ℤ 𝒪 ℚ K
  obtain ⟨P, _, hP'⟩ := NumberField.exists_not_isUnramifiedAt_int (𝒪 := 𝒪) H.ne'
  obtain ⟨p, hp : _ = Ideal.span _⟩ := IsPrincipalIdealRing.principal (P.under ℤ)
  have hp0 : p ≠ 0 := fun hp0 ↦ Ideal.IsMaximal.ne_bot_of_isIntegral_int _
    (Ideal.eq_bot_of_under_eq_bot (hp.trans (by aesop)))
  have : Prime p := by rw [← Ideal.span_singleton_prime hp0, ← hp]; infer_instance
  refine ⟨p.natAbs, Int.prime_iff_natAbs_prime.mp this, fun Q _ hQ ↦ ?_⟩
  replace hQ : (p : 𝒪) ∈ Q := Q.mem_of_dvd
    (map_dvd (algebraMap _ _) p.associated_natAbs.symm.dvd) (by simpa using hQ)
  have : .span {p} = Ideal.under ℤ Q :=
    ((Ideal.liesOver_span_iff Ideal.IsPrime.ne_top' this).mpr hQ).1
  rwa [← Ideal.ramificationIdx_eq_one_iff,
    ← Ideal.ramificationIdxIn_eq_ramificationIdx (Q.under ℤ) _ Gal(K/ℚ), ← this, ← hp,
    Ideal.ramificationIdxIn_eq_ramificationIdx _ P Gal(K/ℚ), Ideal.ramificationIdx_eq_one_iff]
```
