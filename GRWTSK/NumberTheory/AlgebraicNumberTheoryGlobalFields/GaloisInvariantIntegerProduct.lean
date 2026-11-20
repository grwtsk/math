/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.Polynomial.Basic
import Mathlib.FieldTheory.IsAlgClosed.Classification
import Mathlib.FieldTheory.Galois.Infinite
import Mathlib.FieldTheory.AlgebraicClosure
import Mathlib.Algebra.GCDMonoid.IntegrallyClosed
import Mathlib.RingTheory.Int.Basic
import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Integer products from integral Galois-permuted families

A finite indexed family of complex algebraic integers, permuted with multiplicity
by every abstract complex field automorphism, has an integer as its product.
Nonvanishing and logarithmic bounds pass to this actual integer witness.

The arithmetic consumer is the product of scaled trace differences in
`EisensteinTraceSeparation.lean`. The descent and finite-product proofs here use
Mathlib directly. They do not import the submitted RH proof or any automorphic
counting, deformation, or zero-free assertion. See the adjacent source record
for source correspondence, retained hypotheses, and verification scope.
-/

open scoped BigOperators

namespace GRWTSK.NumberTheory.GaloisInvariantIntegerProduct

/-- Extend a coefficient automorphism by transporting it across a transcendence basis. -/
theorem exists_ringEquiv_extending {F L : Type*} [Field F] [Field L]
    [Algebra F L] [IsAlgClosed L] (τ : F ≃+* F) :
    ∃ σ : L ≃+* L, ∀ a, σ (algebraMap F L a) = algebraMap F L (τ a) := by
  classical
  obtain ⟨s, hs⟩ := exists_isTranscendenceBasis F L
  let A := Algebra.adjoin F (Set.range (fun a : s => (a : L)))
  let p : MvPolynomial s F ≃ₐ[F] A := hs.1.aevalEquiv
  let e : A ≃+* A := p.symm.toRingEquiv.trans
    ((MvPolynomial.mapEquiv s τ).trans p.toRingEquiv)
  have : IsAlgClosure A L := IsAlgClosed.isAlgClosure_of_transcendence_basis _ hs
  refine ⟨IsAlgClosure.equivOfEquiv L L e, ?_⟩
  intro a
  have hpa : p (MvPolynomial.C a) = algebraMap F A a := p.commutes a
  have hpta : p (MvPolynomial.C (τ a)) = algebraMap F A (τ a) := p.commutes (τ a)
  have he : e (algebraMap F A a) = algebraMap F A (τ a) := by
    rw [← hpa, ← hpta]
    simp [e]
  rw [IsScalarTower.algebraMap_apply F A L, IsAlgClosure.equivOfEquiv_algebraMap,
    he, ← IsScalarTower.algebraMap_apply F A L]

/-- An algebraic complex number fixed by every abstract field automorphism is rational. -/
theorem exists_rat_of_isAlgebraic_of_fixed (x : ℂ) (hx : IsAlgebraic ℚ x)
    (hfix : ∀ σ : ℂ ≃+* ℂ, σ x = x) : ∃ q : ℚ, (q : ℂ) = x := by
  let A := algebraicClosure ℚ ℂ
  let a : A := ⟨x, mem_algebraicClosure_iff.mpr hx⟩
  have ha : ∀ τ : A ≃ₐ[ℚ] A, τ a = a := by
    intro τ
    obtain ⟨σ, hσ⟩ := exists_ringEquiv_extending (L := ℂ) τ.toRingEquiv
    apply Subtype.ext
    have he := hσ a
    exact he.symm.trans (hfix σ)
  obtain ⟨q, hq⟩ := (InfiniteGalois.mem_range_algebraMap_iff_fixed a).mpr ha
  exact ⟨q, congrArg Subtype.val hq⟩

/-- Integrality and invariance together force a complex number to be an integer. -/
theorem exists_int_of_isIntegral_of_fixed (x : ℂ) (hx : IsIntegral ℤ x)
    (hfix : ∀ σ : ℂ ≃+* ℂ, σ x = x) : ∃ n : ℤ, (n : ℂ) = x := by
  have halg : IsAlgebraic ℚ x := (hx.tower_top (A := ℚ)).isAlgebraic
  obtain ⟨q, hq⟩ := exists_rat_of_isAlgebraic_of_fixed x halg hfix
  have hqi : IsIntegral ℤ q := by
    apply (isIntegral_algebraMap_iff (R := ℤ) (A := ℚ) (B := ℂ)).mp
    change IsIntegral ℤ (q : ℂ)
    rwa [hq]
  obtain ⟨n, hn⟩ := IsIntegrallyClosed.algebraMap_eq_of_integral (K := ℚ) hqi
  refine ⟨n, ?_⟩
  have hn' := congrArg (algebraMap ℚ ℂ) hn
  simpa using hn'.trans hq

/-- Permuting the indexed family makes its product fixed; multiplicity is retained. -/
theorem prod_fixed_of_galois_permuted {I : Type*} [Fintype I] (f : I → ℂ)
    (hperm : ∀ σ : ℂ ≃+* ℂ, ∃ u : I ≃ I, ∀ i, f (u i) = σ (f i))
    (σ : ℂ ≃+* ℂ) : σ (∏ i, f i) = ∏ i, f i := by
  obtain ⟨u, hu⟩ := hperm σ
  calc
    σ (∏ i, f i) = ∏ i, σ (f i) := map_prod σ f Finset.univ
    _ = ∏ i, f (u i) := Finset.prod_congr rfl (fun i _ => (hu i).symm)
    _ = ∏ i, f i := Equiv.prod_comp u f

/-- A finite Galois-permuted integral family has an actual integer as its product. -/
theorem exists_int_eq_prod_of_galois_permuted_integral {I : Type*} [Fintype I]
    (f : I → ℂ) (hint : ∀ i, IsIntegral ℤ (f i))
    (hperm : ∀ σ : ℂ ≃+* ℂ, ∃ u : I ≃ I, ∀ i, f (u i) = σ (f i)) :
    ∃ n : ℤ, (n : ℂ) = ∏ i, f i := by
  apply exists_int_of_isIntegral_of_fixed
  · exact IsIntegral.prod f (fun i _ => hint i)
  · exact prod_fixed_of_galois_permuted f hperm

/-- The logarithmic product budget retains the actual integer witness and nonvanishing. -/
theorem exists_int_prod_ne_zero_log_le {I : Type*} [Fintype I]
    (f : I → ℂ) (B : I → ℝ) (hint : ∀ i, IsIntegral ℤ (f i))
    (hperm : ∀ σ : ℂ ≃+* ℂ, ∃ u : I ≃ I, ∀ i, f (u i) = σ (f i))
    (hne : ∀ i, f i ≠ 0) (hlog : ∀ i, Real.log ‖f i‖ ≤ B i) :
    ∃ n : ℤ, (n : ℂ) = ∏ i, f i ∧ n ≠ 0 ∧
      Real.log |(n : ℝ)| ≤ ∑ i, B i := by
  classical
  obtain ⟨n, hn⟩ := exists_int_eq_prod_of_galois_permuted_integral f hint hperm
  have hprod : (∏ i, f i) ≠ 0 := Finset.prod_ne_zero_iff.mpr (fun i _ => hne i)
  have hn0 : n ≠ 0 := by
    intro h
    apply hprod
    rw [← hn, h, Int.cast_zero]
  refine ⟨n, hn, hn0, ?_⟩
  have hnorm : |(n : ℝ)| = ∏ i, ‖f i‖ := by
    rw [← Complex.norm_intCast, hn, norm_prod]
  rw [hnorm, Real.log_prod (fun i _ => norm_ne_zero_iff.mpr (hne i))]
  exact Finset.sum_le_sum (fun i _ => hlog i)

/-- A uniform budget is multiplied by the full indexed cardinality. -/
theorem exists_int_prod_ne_zero_log_le_card {I : Type*} [Fintype I]
    (f : I → ℂ) (B : ℝ) (hint : ∀ i, IsIntegral ℤ (f i))
    (hperm : ∀ σ : ℂ ≃+* ℂ, ∃ u : I ≃ I, ∀ i, f (u i) = σ (f i))
    (hne : ∀ i, f i ≠ 0) (hlog : ∀ i, Real.log ‖f i‖ ≤ B) :
    ∃ n : ℤ, (n : ℂ) = ∏ i, f i ∧ n ≠ 0 ∧
      Real.log |(n : ℝ)| ≤ Fintype.card I * B := by
  simpa using exists_int_prod_ne_zero_log_le f (fun _ => B) hint hperm hne hlog

/-- Two independently permuted indices give the orbit-times-trace-class budget. -/
theorem exists_int_double_prod_ne_zero_log_le {I J : Type*} [Fintype I] [Fintype J]
    (f : I → J → ℂ) (B : ℝ) (hint : ∀ i j, IsIntegral ℤ (f i j))
    (hperm : ∀ σ : ℂ ≃+* ℂ, ∃ u : I ≃ I, ∃ v : J ≃ J,
      ∀ i j, f (u i) (v j) = σ (f i j))
    (hne : ∀ i j, f i j ≠ 0) (hlog : ∀ i j, Real.log ‖f i j‖ ≤ B) :
    ∃ n : ℤ, (n : ℂ) = ∏ i, ∏ j, f i j ∧ n ≠ 0 ∧
      Real.log |(n : ℝ)| ≤ Fintype.card I * Fintype.card J * B := by
  have hp : ∀ σ : ℂ ≃+* ℂ, ∃ u : I × J ≃ I × J,
      ∀ x, f (u x).1 (u x).2 = σ (f x.1 x.2) := by
    intro σ
    obtain ⟨u, v, huv⟩ := hperm σ
    exact ⟨u.prodCongr v, fun x => huv x.1 x.2⟩
  obtain ⟨n, hn, hn0, hb⟩ := exists_int_prod_ne_zero_log_le_card
    (fun x : I × J => f x.1 x.2) B (fun x => hint x.1 x.2) hp
    (fun x => hne x.1 x.2) (fun x => hlog x.1 x.2)
  refine ⟨n, ?_, hn0, ?_⟩
  · simpa only [Fintype.prod_prod_type] using hn
  · simpa only [Fintype.card_prod, Nat.cast_mul] using hb

end GRWTSK.NumberTheory.GaloisInvariantIntegerProduct
