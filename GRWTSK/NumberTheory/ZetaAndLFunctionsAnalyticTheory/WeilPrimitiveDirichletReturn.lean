/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ConditionalZeroFree
import Mathlib.NumberTheory.LSeries.DirichletContinuation

/-!
# Primitive reduction for the existing Dirichlet GRH target

Reuse Mathlib's actual `primitiveCharacter`, `changeLevel_primitiveCharacter`
and `LFunction_changeLevel`, rather than requiring a new primitive-reduction
axiom. If Re(s)>0, every added Euler factor is nonzero: its subtracted term
has norm at most p^(-Re(s))<1. Thus zeros of an induced character in the open
strip come from its primitive source. A primitive principal character has
modulus one and is exactly zeta. Both halves of the open strip are retained.

This proves the return from RH plus all primitive nonprincipal critical-line
statements to the repository's existing `DirichletGRH`. It does not prove
those input statements, an explicit formula, or a spectral lower bound.
No same-character functional equation is assumed. Boundary Re(s)=0 is not
included and is not covered by the Euler-factor argument.

Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, DirichletCharacter/Basic
and LSeries/DirichletContinuation (upstream authors/licenses unchanged).
Local baseline c5648c5a280d1cbdf4f98b594a450aaa5e4969c9.
AI-assisted manual source. Elaboration, kernel replay, transitive axiom
audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Complex
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimitiveDirichletReturn

open GRWTSK.NumberTheory.Conditional

/-- The exact omitted Euler factor is nonzero on the required open half-plane. -/
theorem eulerFactor_ne_zero {M : ℕ} (χ : DirichletCharacter ℂ M)
    {p : ℕ} (hp : 1 < p) {s : ℂ} (hs : 0 < s.re) :
    1 - χ (p : ZMod M) * (p : ℂ) ^ (-s) ≠ 0 := by
  have hpR : (1 : ℝ) < p := by exact_mod_cast hp
  have hp0 : (0 : ℝ) < p := lt_trans (by norm_num) hpR
  have hRe : (-s).re ≠ 0 := by
    rw [Complex.neg_re]
    exact neg_ne_zero.mpr (ne_of_gt hs)
  have hnorm : ‖(p : ℂ) ^ (-s)‖ = (p : ℝ) ^ (-s.re) := by
    simpa only [Complex.ofReal_natCast, Complex.neg_re] using
      Complex.norm_cpow_eq_rpow_re_of_nonneg (Nat.cast_nonneg p) hRe
  have hpow : (p : ℝ) ^ (-s.re) < 1 := by
    rw [Real.rpow_def_of_pos hp0]
    have he : Real.log (p : ℝ) * (-s.re) < 0 :=
      mul_neg_of_pos_of_neg (Real.log_pos hpR) (neg_lt_zero.mpr hs)
    simpa only [Real.exp_zero] using Real.exp_lt_exp.mpr he
  have hnorm_lt : ‖(p : ℂ) ^ (-s)‖ < 1 := by
    rw [hnorm]
    exact hpow
  have hterm : ‖χ (p : ZMod M) * (p : ℂ) ^ (-s)‖ < 1 := by
    rw [norm_mul]
    exact (mul_le_of_le_one_left (norm_nonneg _)
      (χ.norm_le_one (p : ZMod M))).trans_lt hnorm_lt
  intro hzero
  have heq : χ (p : ZMod M) * (p : ℂ) ^ (-s) = 1 := (sub_eq_zero.mp hzero).symm
  rw [heq, norm_one] at hterm
  exact (lt_irrefl (1 : ℝ)) hterm

/-- Actual level-change identity, retaining all added factors and the pole exclusion. -/
theorem criticalLine_changeLevel {M N : ℕ} [NeZero M] [NeZero N]
    (hMN : M ∣ N) (χ : DirichletCharacter ℂ M)
    (hχ : DirichletCriticalLine χ) :
    DirichletCriticalLine (DirichletCharacter.changeLevel hMN χ) := by
  intro s hpos hstrip hz
  have hs1 : s ≠ 1 := by
    intro h
    subst s
    norm_num at hstrip
  have hproduct : (∏ p ∈ N.primeFactors,
      (1 - χ (p : ZMod M) * (p : ℂ) ^ (-s))) ≠ 0 := by
    apply Finset.prod_ne_zero_iff.mpr
    intro p hp
    exact eulerFactor_ne_zero χ (Nat.prime_of_mem_primeFactors hp).one_lt hpos
  rw [DirichletCharacter.LFunction_changeLevel hMN χ (Or.inr hs1)] at hz
  exact hχ s hpos hstrip ((mul_eq_zero.mp hz).resolve_right hproduct)

/-- No bound on the original modulus is introduced by primitive reduction. -/
theorem dirichletGRH_of_all_primitive
    (hprimitive : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q),
      χ.IsPrimitive → DirichletCriticalLine χ) : DirichletGRH := by
  intro N hN χ
  letI : NeZero χ.conductor := ⟨χ.conductor_ne_zero⟩
  have h := criticalLine_changeLevel χ.conductor_dvd_level χ.primitiveCharacter
    (hprimitive χ.conductor χ.primitiveCharacter χ.primitiveCharacter_isPrimitive)
  simpa only [DirichletCharacter.changeLevel_primitiveCharacter] using h

/-- RH is the principal primitive branch, not a substitute for the other branches. -/
theorem dirichletGRH_of_rh_and_primitive_nonprincipal
    (hRH : _root_.RiemannHypothesis)
    (hother : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q),
      χ.IsPrimitive → χ ≠ 1 → DirichletCriticalLine χ) : DirichletGRH := by
  apply dirichletGRH_of_all_primitive
  intro q hq χ hp
  by_cases hχ : χ = 1
  · subst χ
    have hq1 : q = 1 := by
      change (1 : DirichletCharacter ℂ q).conductor = q at hp
      rw [DirichletCharacter.conductor_one] at hp
      exact hp.symm
    subst q
    exact rh_iff_mod_one.mp hRH
  · exact hother q χ hp hχ

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimitiveDirichletReturn
