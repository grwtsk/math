/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ConditionalFiniteZeroCalculus
import Mathlib.NumberTheory.Chebyshev

set_option autoImplicit false

noncomputable section

/-!
# Prime-interval certificates with every analytic remainder retained

A strict increase of the actual Mathlib Chebyshev theta function supplies a
prime in (a,b]. The proof compares the finite prime-indexed sums: if no such
prime exists, the upper endpoint's prime indices are a subset of the lower
endpoint's, contradicting the strict increase.

For psi estimates, theta(a) <= psi(a) and theta(b) >= psi(b) - D imply a
prime whenever Ea + Eb + D < b-a. Only the upper endpoint needs the prime-power
correction. This matters: a psi increase can be caused by a prime power rather
than a prime. The upstream unconditional O(sqrt b) correction also gives an
existential uniform version, without pretending that its existential constant
is a numerically certified parameter.

The RH consumer uses actual nontrivial zeta zeros in the two finite formulae.
It proves the square-root contribution from RH, then adds the *entire* supplied
remainder and prime-power correction. The formulae and remainder bounds are
explicit inputs, not new axioms or a disguised proof of a classical global
RH prime-gap estimate. In particular, this file does not establish a truncated
explicit formula, tail control, cancellation, or optimized logarithmic rates.
At jump points the input must describe Mathlib's right-continuous psi exactly;
a midpoint-normalized formula needs its endpoint correction in the remainder.

Source: Mathlib Chebyshev.lean at d13f23b723b8a846827a245b89c10fc7d3f11612
(Alastair Irving, Terry Tao, Ruben Van de Velde and upstream contributors;
upstream attribution and license unchanged). The mechanisms are standard error
comparison and finite support extraction; no theorem-level novelty claim.
AI-assisted formalization. Independent analytical review, compilation, fresh
kernel checking and transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Conditional.PrimeIntervals

open scoped BigOperators
open GRWTSK.NumberTheory.CriticalLine GRWTSK.NumberTheory.Conditional.FiniteZeros

/-- A source-exact prime witness, not a witness of an arbitrary positive summand. -/
theorem exists_prime_of_theta_lt {a b : ℝ} (ha : 0 ≤ a)
    (hθ : Chebyshev.theta a < Chebyshev.theta b) :
    ∃ p : ℕ, p.Prime ∧ a < (p : ℝ) ∧ (p : ℝ) ≤ b := by
  by_contra hnone
  have hsub : (Finset.Ioc 0 ⌊b⌋₊).filter Nat.Prime ⊆
      (Finset.Ioc 0 ⌊a⌋₊).filter Nat.Prime := by
    intro p hp
    obtain ⟨hpI, hprime⟩ := Finset.mem_filter.mp hp
    obtain ⟨hpos, hupper⟩ := Finset.mem_Ioc.mp hpI
    have hpb : (p : ℝ) ≤ b := (Nat.le_floor_iff' hpos.ne').mp hupper
    have hpa : (p : ℝ) ≤ a := le_of_not_gt (fun h => hnone ⟨p, hprime, h, hpb⟩)
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Ioc.mpr ⟨hpos, (Nat.le_floor_iff ha).mpr hpa⟩, hprime⟩
  have hle : Chebyshev.theta b ≤ Chebyshev.theta a := by
    unfold Chebyshev.theta
    exact Finset.sum_le_sum_of_subset_of_nonneg hsub
      (fun p _ _ => Real.log_natCast_nonneg p)
  exact (not_lt_of_ge hle) hθ

/-- The theta endpoint error criterion has no RH premise. -/
theorem prime_of_theta_errors {a b Ea Eb : ℝ} (ha : 0 ≤ a)
    (hA : |Chebyshev.theta a - a| ≤ Ea) (hB : |Chebyshev.theta b - b| ≤ Eb)
    (gap : Ea + Eb < b - a) :
    ∃ p : ℕ, p.Prime ∧ a < (p : ℝ) ∧ (p : ℝ) ≤ b := by
  apply exists_prime_of_theta_lt ha
  have hupper := (abs_le.mp hA).2
  have hlower := (abs_le.mp hB).1
  linarith

/-- Keeping the prime-power allowance is necessary to extract a prime from psi. -/
theorem prime_of_psi_errors {a b Ea Eb D : ℝ} (ha : 0 ≤ a)
    (hA : |Chebyshev.psi a - a| ≤ Ea) (hB : |Chebyshev.psi b - b| ≤ Eb)
    (correction : Chebyshev.psi b - Chebyshev.theta b ≤ D)
    (gap : Ea + Eb + D < b - a) :
    ∃ p : ℕ, p.Prime ∧ a < (p : ℝ) ∧ (p : ℝ) ≤ b := by
  apply exists_prime_of_theta_lt ha
  have hupper := (abs_le.mp hA).2
  have hlower := (abs_le.mp hB).1
  have hleft := Chebyshev.theta_le_psi a
  linarith

/-- An existing unconditional correction bound supplies one uniform, existential allowance. -/
theorem exists_uniform_prime_power_allowance :
    ∃ C : ℝ, ∀ (a b Ea Eb : ℝ), 0 ≤ a →
      |Chebyshev.psi a - a| ≤ Ea → |Chebyshev.psi b - b| ≤ Eb →
      Ea + Eb + C * Real.sqrt b < b - a →
      ∃ p : ℕ, p.Prime ∧ a < (p : ℝ) ∧ (p : ℝ) ≤ b := by
  obtain ⟨C, hC⟩ := Chebyshev.psi_sub_theta_le_mul_sqrt
  refine ⟨C, ?_⟩
  intro a b Ea Eb ha hA hB gap
  exact prime_of_psi_errors ha hA hB (hC b) gap

variable {ι : Type*}

/-- RH bounds the selected zero contribution; the supplied equality fixes the psi convention. -/
theorem psi_error_of_rh_formula (hRH : _root_.RiemannHypothesis)
    (s : Finset ι) (roots coefficient : ι → ℂ)
    (hzero : ∀ i ∈ s, GRWTSK.RiemannHypothesis.NontrivialZetaZero (roots i))
    {x : ℝ} (hx : 0 < x) {remainder : ℂ} {R : ℝ}
    (formula : (Chebyshev.psi x : ℂ) =
      (x : ℂ) - dividedPowerSum s roots coefficient x + remainder)
    (hR : ‖remainder‖ ≤ R) :
    |Chebyshev.psi x - x| ≤
      Real.sqrt x * (∑ i ∈ s, ‖coefficient i‖ / ‖roots i‖) + R := by
  simpa only [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] using
    zeta_remainder_bound hRH s roots coefficient hzero hx formula hR

/-- A prime is returned only after both endpoint remainders and prime powers are paid for. -/
theorem prime_of_rh_formula_certificates (hRH : _root_.RiemannHypothesis)
    (s : Finset ι) (roots coefficient : ι → ℂ)
    (hzero : ∀ i ∈ s, GRWTSK.RiemannHypothesis.NontrivialZetaZero (roots i))
    {a b RA RB D : ℝ} (ha : 0 < a) (hb : 0 < b) {rA rB : ℂ}
    (formulaA : (Chebyshev.psi a : ℂ) =
      (a : ℂ) - dividedPowerSum s roots coefficient a + rA)
    (formulaB : (Chebyshev.psi b : ℂ) =
      (b : ℂ) - dividedPowerSum s roots coefficient b + rB)
    (hRA : ‖rA‖ ≤ RA) (hRB : ‖rB‖ ≤ RB)
    (correction : Chebyshev.psi b - Chebyshev.theta b ≤ D)
    (gap : (Real.sqrt a * (∑ i ∈ s, ‖coefficient i‖ / ‖roots i‖) + RA) +
      (Real.sqrt b * (∑ i ∈ s, ‖coefficient i‖ / ‖roots i‖) + RB) + D < b - a) :
    ∃ p : ℕ, p.Prime ∧ a < (p : ℝ) ∧ (p : ℝ) ≤ b :=
  prime_of_psi_errors ha.le
    (psi_error_of_rh_formula hRH s roots coefficient hzero ha formulaA hRA)
    (psi_error_of_rh_formula hRH s roots coefficient hzero hb formulaB hRB)
    correction gap

end GRWTSK.NumberTheory.Conditional.PrimeIntervals
