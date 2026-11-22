/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.RingTheory.GradedAlgebra.Homogeneous.Ideal
import Mathlib.RingTheory.Ideal.Quotient.Operations
import Mathlib.RingTheory.IntegralClosure.Algebra.Basic
import Mathlib.Algebra.Polynomial.Div
import Mathlib.Tactic

/-!
# Nilpotence near a field point from a finite algebra image

A nonzero polynomial relation factors as a power of `X` times a polynomial
with nonzero constant coefficient. At a field point killing the chosen
element, the second factor is nonzero and clears a power of that element.
Integrality and finite algebra image supply the polynomial relation. The
graded specialization retains the actual degree-zero quotient image.
-/

namespace GRWTSK.CommutativeAlgebra.FiniteAlgebraPointNilpotence

variable {O B C K : Type*} [CommRing O] [CommRing B] [CommRing C] [Field K]
variable [Algebra O B] [Algebra O C] [Algebra O K] [FaithfulSMul O K]

/-- A nonzero annihilating polynomial supplies a multiplier nonzero at the
point, after which a power maps to zero. The point need not factor through `ψ`. -/
theorem exists_point_nonzero_mul_pow_map_eq_zero_of_polynomial
    (ψ : B →ₐ[O] C) (σ : B →ₐ[O] K) (p : B) (hp : σ p = 0)
    (q : Polynomial O) (hq : q ≠ 0) (hroot : Polynomial.aeval (ψ p) q = 0) :
    ∃ b : B, σ b ≠ 0 ∧ ∃ n : ℕ, ψ (b * p ^ n) = 0 := by
  obtain ⟨r, hfactor, hr⟩ :=
    Polynomial.exists_eq_pow_rootMultiplicity_mul_and_not_dvd q hq 0
  have hr0 : r.coeff 0 ≠ 0 := by
    intro hz
    apply hr
    simpa only [Polynomial.C_0, sub_zero] using Polynomial.X_dvd_iff.mpr hz
  let b : B := Polynomial.aeval p r
  have hvalue : σ b = algebraMap O K (r.coeff 0) := by
    dsimp only [b]
    rw [← Polynomial.aeval_algHom_apply, hp, ← Polynomial.coeff_zero_eq_aeval_zero']
  have hzero : (ψ p) ^ q.rootMultiplicity 0 * Polynomial.aeval (ψ p) r = 0 := by
    rw [hfactor] at hroot
    simpa only [map_mul, map_pow, map_sub, Polynomial.aeval_X, Polynomial.aeval_C,
      map_zero, sub_zero] using hroot
  refine ⟨b, ?_, q.rootMultiplicity 0, ?_⟩
  · rw [hvalue]
    exact (map_ne_zero_iff _ (FaithfulSMul.algebraMap_injective O K)).2 hr0
  · calc
      ψ (b * p ^ q.rootMultiplicity 0) =
          (ψ p) ^ q.rootMultiplicity 0 * Polynomial.aeval (ψ p) r := by
        dsimp only [b]
        rw [map_mul, map_pow, ← Polynomial.aeval_algHom_apply]
        exact mul_comm _ _
      _ = 0 := hzero

/-- Integrality supplies the nonzero polynomial required by the point argument. -/
theorem exists_point_nonzero_mul_pow_map_eq_zero_of_isIntegral [Nontrivial O]
    (ψ : B →ₐ[O] C) (σ : B →ₐ[O] K) (p : B) (hp : σ p = 0)
    (hint : IsIntegral O (ψ p)) :
    ∃ b : B, σ b ≠ 0 ∧ ∃ n : ℕ, ψ (b * p ^ n) = 0 := by
  obtain ⟨q, hmonic, hroot⟩ := hint
  exact exists_point_nonzero_mul_pow_map_eq_zero_of_polynomial
    ψ σ p hp q hmonic.ne_zero hroot

/-- Finiteness of the actual algebra image makes each of its elements integral. -/
theorem exists_point_nonzero_mul_pow_map_eq_zero_of_fg_range [Nontrivial O]
    (ψ : B →ₐ[O] C) (hfg : ψ.range.toSubmodule.FG)
    (σ : B →ₐ[O] K) (p : B) (hp : σ p = 0) :
    ∃ b : B, σ b ≠ 0 ∧ ∃ n : ℕ, ψ (b * p ^ n) = 0 := by
  apply exists_point_nonzero_mul_pow_map_eq_zero_of_isIntegral ψ σ p hp
  exact IsIntegral.of_mem_of_fg ψ.range hfg (ψ p) ⟨p, rfl⟩

/-- The actual degree-zero finite-image hypothesis of the graded length-one
argument. No homogeneity of the quotient ideal is needed for this step alone. -/
theorem exists_point_nonzero_mul_pow_mem_of_fg_degree_zero_image
    [Nontrivial O] {A : Type*} [CommRing A] [Algebra O A]
    (𝒜 : ℤ → Submodule O A) [GradedAlgebra 𝒜] (I : Ideal A)
    (hfg : ((𝒜 0).map (Ideal.Quotient.mkₐ O I).toLinearMap).FG)
    (σ : 𝒜 0 →ₐ[O] K) (p : 𝒜 0) (hp : σ p = 0) :
    ∃ b : 𝒜 0, σ b ≠ 0 ∧ ∃ n : ℕ, (b : A) * (p : A) ^ n ∈ I := by
  let inclusion : 𝒜 0 →ₐ[O] A :=
    { toFun := Subtype.val
      map_zero' := rfl
      map_one' := rfl
      map_add' := fun _ _ => rfl
      map_mul' := fun _ _ => rfl
      commutes' := fun _ => rfl }
  let ψ : 𝒜 0 →ₐ[O] A ⧸ I :=
    (Ideal.Quotient.mkₐ O I).comp inclusion
  have hrange : ψ.range.toSubmodule = (𝒜 0).map (Ideal.Quotient.mkₐ O I).toLinearMap := by
    apply le_antisymm
    · rintro _ ⟨b, rfl⟩
      exact ⟨b, b.property, rfl⟩
    · rintro _ ⟨b, hb, rfl⟩
      exact ⟨⟨b, hb⟩, rfl⟩
  obtain ⟨b, hb, n, hn⟩ := exists_point_nonzero_mul_pow_map_eq_zero_of_fg_range
    ψ (by rw [hrange]; exact hfg) σ p hp
  refine ⟨b, hb, n, Ideal.Quotient.eq_zero_iff_mem.mp ?_⟩
  exact hn

end GRWTSK.CommutativeAlgebra.FiniteAlgebraPointNilpotence
