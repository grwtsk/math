/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ConditionalZeroFree

set_option autoImplicit false

/-!
# Reduction to primitive Dirichlet characters

The target is the open-strip critical-line predicate for the actual Mathlib L-function.
Mathlib's level-change identity expresses it through the inducing primitive L-function
and a finite product at the primes dividing the level. In the half-plane of positive
real part, each omitted term has norm strictly less than one, using the character
norm bound and the positive real base of the complex power. Thus the finite product
is nonzero there. The strip hypothesis excludes the pole at one when using the identity.
Primes dividing the conductor give factors equal to one, as in the upstream identity.

The converse restricts to primitive characters. At conductor one the existing
`rh_iff_mod_one` compares the actual L-function to Mathlib's exact RH statement,
including its nontrivial-zero exclusions. At real part zero the strict norm estimate
can fail, which is why the result uses the open strip. This is the classical
Euler-factor reduction, with no novelty claim. It consumes primitive GRH as a
hypothesis. Independent analytical review: NOT_RUN.

Sources: Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612,
`LFunction_changeLevel`, `norm_le_one`, and `changeLevel_primitiveCharacter`;
GRWTSK e6bbd619438480afc1a3d1ce9b6763391ee51ca1, `ConditionalZeroFree`.
-/

namespace GRWTSK.NumberTheory.Conditional

/-- The primitive family for the existing open-strip target. -/
def PrimitiveDirichletGRH : Prop :=
  ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N), χ.IsPrimitive →
    DirichletCriticalLine χ

private theorem eulerFactor_ne_zero {M : ℕ} (χ : DirichletCharacter ℂ M)
    {p : ℕ} (hp : p.Prime) {s : ℂ} (hs : 0 < s.re) :
    1 - χ p * (p : ℂ) ^ (-s) ≠ 0 := by
  have hp' : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hpow : ‖(p : ℂ) ^ (-s)‖ < 1 := by
    rw [Complex.norm_natCast_cpow_of_pos hp.pos, Complex.neg_re]
    exact Real.rpow_lt_one_of_one_lt_of_neg hp' (neg_neg_of_pos hs)
  have hnorm : ‖χ p * (p : ℂ) ^ (-s)‖ < 1 := by
    rw [norm_mul]
    exact (mul_le_mul_of_nonneg_right (χ.norm_le_one p) (norm_nonneg _)).trans_lt
      (by simpa only [one_mul] using hpow)
  intro hz
  exact hnorm.ne (by rw [← eq_of_sub_eq_zero hz, norm_one])

/-- The inducing primitive L-function has the same zeros in the open critical strip. -/
theorem LFunction_eq_zero_iff_primitive {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) {s : ℂ} (hs₀ : 0 < s.re) (hs₁ : s.re < 1) :
    letI : NeZero χ.conductor := ⟨χ.conductor_ne_zero⟩
    χ.LFunction s = 0 ↔ χ.primitiveCharacter.LFunction s = 0 := by
  let _ : NeZero χ.conductor := ⟨χ.conductor_ne_zero⟩
  have hne : s ≠ 1 := by
    rintro rfl
    simp at hs₁
  have hchange := DirichletCharacter.LFunction_changeLevel χ.conductor_dvd_level
    χ.primitiveCharacter (s := s) (.inr hne)
  rw [χ.changeLevel_primitiveCharacter] at hchange
  rw [hchange, mul_eq_zero]
  have hprod :
      ∏ p ∈ N.primeFactors, (1 - χ.primitiveCharacter p * (p : ℂ) ^ (-s)) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr fun p hp =>
      eulerFactor_ne_zero χ.primitiveCharacter (Nat.prime_of_mem_primeFactors hp) hs₀
  simp only [hprod, or_false]

theorem dirichletGRH_iff_primitive : DirichletGRH ↔ PrimitiveDirichletGRH := by
  constructor
  · intro h N _ χ _
    exact h N χ
  · intro h N _ χ s hs₀ hs₁ hz
    let _ : NeZero χ.conductor := ⟨χ.conductor_ne_zero⟩
    exact h χ.conductor χ.primitiveCharacter χ.primitiveCharacter_isPrimitive s hs₀ hs₁
      ((LFunction_eq_zero_iff_primitive χ hs₀ hs₁).mp hz)

theorem primitiveDirichletGRH_implies_rh (h : PrimitiveDirichletGRH) :
    _root_.RiemannHypothesis :=
  grh_implies_rh (dirichletGRH_iff_primitive.mpr h)

end GRWTSK.NumberTheory.Conditional
