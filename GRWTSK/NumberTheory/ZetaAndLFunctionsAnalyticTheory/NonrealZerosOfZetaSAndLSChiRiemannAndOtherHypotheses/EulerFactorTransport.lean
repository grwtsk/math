/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ConditionalAnalyticDivision
import Mathlib.Analysis.SpecialFunctions.Pow.Real

set_option autoImplicit false

noncomputable section

/-!
# Zero transport under finite Euler-factor changes of level

For p > 1 and Re(s) > 0, |p^(-s)| = p^(-Re(s)) < 1. A Dirichlet
character has norm at most one, so 1 - chi(p) p^(-s) cannot vanish.
The exact upstream change-of-level identity therefore preserves the zero set
in this domain, with its original regularity condition at one retained.

This is a source-preserving comparison, not an assertion that an infinite Euler
product converges throughout the critical strip. It shows that raising a level
adds no positive-real-part zeros. In particular the critical-line statement for
the principal character at ANY positive modulus is equivalent to Mathlib RH;
full Dirichlet GRH is unnecessary for this particular family. Nonprincipal
characters remain subject to their own stated critical-line hypotheses.

Primary argument: a strict norm bound excludes a unit value; a finite product
of nonzero factors is nonzero; multiplication by that product preserves zero
exactly. Consumer: principal-character analytic inverses and denominator margins.
Hostile boundary: the factor at p = 2, s = 0 vanishes. No claim is made on the
boundary Re(s) = 0 or at an excluded pole.

Reuses Mathlib's actual `LFunction_changeLevel`, `changeLevel_one`,
`LFunctionTrivChar_eq_mul_riemannZeta`, and character norm bounds at
 d13f23b723b8a846827a245b89c10fc7d3f11612. Upstream authorship and licenses remain
unchanged. Elementary known consequences; no novelty claim. AI-assisted
formalization; independent review and all Lean verification: NOT_RUN.
Target: leanprover/lean4:v4.34.1; no dependency or root-build changes.
-/

namespace GRWTSK.NumberTheory.Conditional

/-- A natural-base complex power has strictly subunit norm in the positive half-plane. -/
theorem norm_nat_neg_cpow_lt_one (p : ℕ) (hp : 1 < p)
    {s : ℂ} (hs : 0 < s.re) : ‖(p : ℂ) ^ (-s)‖ < 1 := by
  have hpReal : (1 : ℝ) < p := by exact_mod_cast hp
  have hpPos : (0 : ℝ) < p := lt_trans zero_lt_one hpReal
  have hnorm : ‖(p : ℂ) ^ (-s)‖ = (p : ℝ) ^ (-s.re) := by
    rw [← Complex.ofReal_natCast, Complex.norm_cpow_eq_rpow_re_of_pos hpPos,
      Complex.neg_re]
  rw [hnorm]
  calc
    (p : ℝ) ^ (-s.re) < (p : ℝ) ^ (0 : ℝ) :=
      Real.rpow_lt_rpow_of_exponent_lt hpReal (neg_lt_zero.mpr hs)
    _ = 1 := Real.rpow_zero _

/-- The coefficient need only have norm at most one; no primitivity is required. -/
theorem euler_factor_ne_zero (p : ℕ) (hp : 1 < p)
    {s c : ℂ} (hs : 0 < s.re) (hc : ‖c‖ ≤ 1) :
    1 - c * (p : ℂ) ^ (-s) ≠ 0 := by
  have hnorm : ‖c * (p : ℂ) ^ (-s)‖ < 1 := by
    rw [norm_mul]
    exact lt_of_le_of_lt
      (mul_le_of_le_one_left (norm_nonneg _) hc) (norm_nat_neg_cpow_lt_one p hp hs)
  intro hz
  have hunit : c * (p : ℂ) ^ (-s) = 1 := (sub_eq_zero.mp hz).symm
  rw [hunit, norm_one] at hnorm
  exact (lt_irrefl (1 : ℝ)) hnorm

/-- The actual finite level-changing Euler product is nonzero. -/
theorem level_factor_nonzero {M : ℕ} [NeZero M]
    (χ : DirichletCharacter ℂ M) (N : ℕ) {s : ℂ} (hs : 0 < s.re) :
    (∏ p ∈ N.primeFactors, (1 - χ p * (p : ℂ) ^ (-s))) ≠ 0 := by
  classical
  apply Finset.prod_ne_zero_iff.mpr
  intro p hp
  exact euler_factor_ne_zero p (Nat.prime_of_mem_primeFactors hp).one_lt
    hs (χ.norm_le_one p)

/-- Positive-half-plane zero sets agree exactly after changing level. -/
theorem changeLevel_zero_iff {M N : ℕ} [NeZero M] [NeZero N]
    (hMN : M ∣ N) (χ : DirichletCharacter ℂ M)
    {s : ℂ} (hs : 0 < s.re) (hr : Regular χ s) :
    (DirichletCharacter.changeLevel hMN χ).LFunction s = 0 ↔ χ.LFunction s = 0 := by
  rw [DirichletCharacter.LFunction_changeLevel hMN χ (Or.symm hr), mul_eq_zero]
  simp only [level_factor_nonzero χ N hs, or_false]

/-- The comparison transports the whole critical-line statement in both directions. -/
theorem critical_line_changeLevel_iff {M N : ℕ} [NeZero M] [NeZero N]
    (hMN : M ∣ N) (χ : DirichletCharacter ℂ M) :
    DirichletCriticalLine (DirichletCharacter.changeLevel hMN χ) ↔
      DirichletCriticalLine χ := by
  constructor
  · intro h s hpos hstrip hz
    have hp : s ≠ 1 := by
      intro heq
      subst s
      norm_num at hstrip
    exact h s hpos hstrip ((changeLevel_zero_iff hMN χ hpos (Or.inl hp)).mpr hz)
  · intro h s hpos hstrip hz
    have hp : s ≠ 1 := by
      intro heq
      subst s
      norm_num at hstrip
    exact h s hpos hstrip ((changeLevel_zero_iff hMN χ hpos (Or.inl hp)).mp hz)

/-- Principal characters at arbitrary positive moduli require RH, not full GRH. -/
theorem principal_critical_line_iff_rh (N : ℕ) [NeZero N] :
    DirichletCriticalLine (1 : DirichletCharacter ℂ N) ↔ _root_.RiemannHypothesis := by
  simpa only [DirichletCharacter.changeLevel_one] using
    ((critical_line_changeLevel_iff (Nat.one_dvd N)
      (1 : DirichletCharacter ℂ 1)).trans rh_iff_mod_one.symm)

/-- Consequently every principal-character reciprocal is holomorphic on the same punctured domain. -/
theorem principal_inverse_of_rh (hRH : _root_.RiemannHypothesis)
    (N : ℕ) [NeZero N] :
    DifferentiableOn ℂ (fun z => ((1 : DirichletCharacter ℂ N).LFunction z)⁻¹)
      (dirichletDomain (1 : DirichletCharacter ℂ N)) :=
  differentiableOn_dirichlet_inverse ((principal_critical_line_iff_rh N).mpr hRH)

/-- The compact lower bound remains modulus-specific, not uniform over all moduli. -/
theorem principal_compact_margin_of_rh (hRH : _root_.RiemannHypothesis)
    (N : ℕ) [NeZero N] {K : Set ℂ} (hK : IsCompact K)
    (hKD : K ⊆ dirichletDomain (1 : DirichletCharacter ℂ N)) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ z ∈ K, δ ≤ ‖(1 : DirichletCharacter ℂ N).LFunction z‖ :=
  dirichlet_compact_margin ((principal_critical_line_iff_rh N).mpr hRH) hK hKD

/-- A strict real-part domain is essential even for a single finite Euler factor. -/
theorem euler_factor_boundary_zero : 1 - (1 : ℂ) * (2 : ℂ) ^ (0 : ℂ) = 0 := by
  simp

end GRWTSK.NumberTheory.Conditional
