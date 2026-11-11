/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib contributions retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FunctionalAnalysis.WeightedConjugatePairing
import Mathlib.LinearAlgebra.Lagrange
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.Calculus.ContDiff.Defs
import Mathlib.Topology.Algebra.Support
import Mathlib.NumberTheory.LSeries.DirichletContinuation

/-!
# Negative Weil witnesses: finite head, quantitative budgets, and source return

Source: grwtsk contributors, *Typed Mathematical Architecture and
Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), Sections
11.6, 14.1-14.2 and 19.3 (RP-OC-02); supplied PDF SHA-256
ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15.
Written development W1-W5:
https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51.
Formalization and outstanding verification: grwtsk/math#1801.

This module formalizes the finite algebra and error-budget consumers, NOT the
entire Gaussian witness construction. Complex Lagrange interpolation is used
because opposite real values at conjugate nodes are not conjugation-compatible.
Multiplicity is a weight, never a collection of independent interpolation slots.
The logarithmic horizon theorem is a scalar consumer of a supplied Gaussian-tail
estimate. The compactification theorem consumes a supplied whole-divisor error.
No finite head is silently identified with the full arithmetic Weil form.

The final target uses Mathlib's analytically continued `DirichletCharacter.LFunction`,
not the totalized Dirichlet series outside its convergence half-plane. Its domain
is stated explicitly as the open critical strip. No equivalence to a stronger
all-zero target is asserted without the requisite zero-exclusion theorems.
The negativity detector and arithmetic nonnegativity remain separate hypotheses;
the conditional consumer does not construct either. In particular, poles, all
prime powers, conductor, parity, and the exact explicit formula still have to be
supplied by the arithmetic adapter. No full-form definition is replaced here.

Analytic argument: interpolate finitely many distinct nodes over the complex
numbers; sum the two nonzero pair terms; dominate the full remainder; allocate
half the margin to Gaussian suppression and half to cutoff perturbation; then
contradict a separately proved nonnegativity statement for the same source.
Hostile boundary: a real node cannot carry both prescribed values; a negative
head plus an uncontrolled positive tail does not imply a negative full value.

Elaboration, fresh kernel replay, transitive axiom audit, independent analytical
review, and executable arithmetic certificates: NOT_RUN. No novelty is claimed.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilNegativeWitness

open ComplexConjugate
open GRWTSK.FunctionalAnalysis.WeightedConjugatePairing

/-- The spectral coordinate for `rho = 1/2 + I*z`. -/
def spectralCoordinate (rho : ℂ) : ℂ := -Complex.I * (rho - 1 / 2)

theorem spectralCoordinate_im (rho : ℂ) :
    (spectralCoordinate rho).im = 1 / 2 - rho.re := by
  simp [spectralCoordinate, Complex.mul_im]

theorem spectralCoordinate_im_eq_zero_iff (rho : ℂ) :
    (spectralCoordinate rho).im = 0 ↔ rho.re = 1 / 2 := by
  rw [spectralCoordinate_im]
  constructor <;> intro h <;> linarith

/-- Opposite pair values; zero on every other prescribed head location. -/
def pairValues (z0 z : ℂ) : ℂ := by
  classical
  exact if z = z0 then 1 else if z = conj z0 then -1 else 0

/-- Finite interpolation alone. No Fourier-realization or tail bound is concluded. -/
theorem exists_complex_pair_interpolant
    (nodes : Finset ℂ) (z0 : ℂ)
    (hz : z0 ∈ nodes) (hc : conj z0 ∈ nodes) (hne : z0 ≠ conj z0) :
    ∃ p : Polynomial ℂ,
      p.degree < (nodes.card : WithBot ℕ) ∧
      p.eval z0 = 1 ∧ p.eval (conj z0) = -1 ∧
      ∀ z ∈ nodes, z ≠ z0 → z ≠ conj z0 → p.eval z = 0 := by
  classical
  let p : Polynomial ℂ := Lagrange.interpolate nodes id (pairValues z0)
  have hp : ∀ z ∈ nodes, p.eval z = pairValues z0 z := by
    intro z hz'
    exact Lagrange.eval_interpolate_at_node (pairValues z0)
      Function.injective_id.injOn hz'
  refine ⟨p, Lagrange.degree_interpolate_lt (pairValues z0)
    Function.injective_id.injOn, ?_, ?_, ?_⟩
  · rw [hp z0 hz]
    simp [pairValues]
  · rw [hp (conj z0) hc]
    simp [pairValues, Ne.symm hne]
  · intro z hz' hn0 hnc
    rw [hp z hz']
    simp [pairValues, hn0, hnc]

/-- A head value on distinct locations, with multiplicity as a real weight. -/
def finiteHead (nodes : Finset ℂ) (m : ℂ → ℝ) (F : ℂ → ℂ) : ℂ :=
  ∑ z ∈ nodes, term m conj F F z

/-- The exact negative head block, without replacing the signed summand by a square. -/
theorem finiteHead_eq_neg_two_mul
    (nodes : Finset ℂ) (m : ℂ → ℝ) (F : ℂ → ℂ) (z0 : ℂ)
    (hz : z0 ∈ nodes) (hc : conj z0 ∈ nodes) (hne : z0 ≠ conj z0)
    (hm : m (conj z0) = m z0)
    (hF : F z0 = 1) (hFc : F (conj z0) = -1)
    (hrest : ∀ z ∈ nodes, z ≠ z0 → z ≠ conj z0 → F z = 0) :
    finiteHead nodes m F = (-2 : ℂ) * (m z0 : ℂ) := by
  classical
  have hterm : ∀ z ∈ nodes, term m conj F F z =
      (if z = z0 then -(m z0 : ℂ) else 0) +
      (if z = conj z0 then -(m z0 : ℂ) else 0) := by
    intro z hzn
    by_cases h0 : z = z0
    · subst z
      simp [term, hF, hFc, hne]
    · by_cases h1 : z = conj z0
      · subst z
        simp [term, hF, hFc, hm, Ne.symm hne]
      · simp [term, hrest z hzn h0 h1, h0, h1]
  unfold finiteHead
  rw [Finset.sum_congr rfl hterm, Finset.sum_add_distrib]
  simp [hz, hc]
  <;> ring

/-- A full value is negative only after its entire omitted remainder is budgeted. -/
theorem full_re_neg_of_interpolated_head
    (nodes : Finset ℂ) (m : ℂ → ℝ) (F : ℂ → ℂ) (z0 full : ℂ) (R : ℝ)
    (hz : z0 ∈ nodes) (hc : conj z0 ∈ nodes) (hne : z0 ≠ conj z0)
    (hm : m (conj z0) = m z0)
    (hF : F z0 = 1) (hFc : F (conj z0) = -1)
    (hrest : ∀ z ∈ nodes, z ≠ z0 → z ≠ conj z0 → F z = 0)
    (herror : ‖full - finiteHead nodes m F‖ ≤ R)
    (hmargin : R < 2 * m z0) :
    full.re < 0 := by
  apply re_neg_of_error_budget full (finiteHead nodes m F) (2 * m z0) R
  · rw [finiteHead_eq_neg_two_mul nodes m F z0 hz hc hne hm hF hFc hrest]
    norm_num [Complex.mul_re]
    <;> linarith
  · exact herror
  · exact hmargin

/-- The scalar logarithmic horizon consumes, but does not prove, a Gaussian tail estimate. -/
theorem gaussian_tail_at_log_horizon (K m Delta b : ℝ)
    (hK : 0 < K) (hm : 0 < m) (hDelta : 0 < Delta)
    (hb : 1 + max 0 (Real.log (2 * K / m)) / (2 * Delta) ≤ b) :
    K * Real.exp (-2 * (b - 1) * Delta) ≤ m / 2 := by
  have hden : 0 < 2 * Delta := by positivity
  have hquot : max 0 (Real.log (2 * K / m)) / (2 * Delta) ≤ b - 1 := by
    linarith
  have hmul := (div_le_iff₀ hden).mp hquot
  have hlog : Real.log (2 * K / m) ≤ 2 * (b - 1) * Delta := by
    have hmax := le_max_right 0 (Real.log (2 * K / m))
    nlinarith
  calc
    K * Real.exp (-2 * (b - 1) * Delta) ≤ K * Real.exp (-Real.log (2 * K / m)) := by
      apply mul_le_mul_of_nonneg_left _ hK.le
      apply Real.exp_le_exp.mpr
      linarith
    _ = m / 2 := by
      rw [Real.exp_neg, Real.exp_log (by positivity : 0 < 2 * K / m)]
      field_simp [ne_of_gt hK, ne_of_gt hm]
      <;> ring

/-- A rational-style stopping inequality implies the quadratic cutoff budget. -/
theorem cutoff_budget_le_half (M S E m : ℝ)
    (hM : 0 < M) (hS : 0 ≤ S) (hE : 0 ≤ E) (hE1 : E ≤ 1)
    (hsmall : E ≤ m / (2 * M * (2 * S + 1))) :
    M * (2 * S * E + E ^ 2) ≤ m / 2 := by
  have hden : 0 < 2 * M * (2 * S + 1) := by positivity
  have hmul := (le_div_iff₀ hden).mp hsmall
  have hsq : E ^ 2 ≤ E := by nlinarith
  calc
    M * (2 * S * E + E ^ 2) ≤ M * (2 * S * E + E) :=
      mul_le_mul_of_nonneg_left (by linarith) hM.le
    _ ≤ m / 2 := by nlinarith

/-- Gaussian-tail and whole-divisor cutoff suppliers compose to a strict margin.
Neither supplier, and no actual arithmetic zero, is constructed by this theorem. -/
theorem compactification_re_le_neg (full gaussian : ℂ) (K m Delta b M S E : ℝ)
    (hK : 0 < K) (hm : 0 < m) (hDelta : 0 < Delta)
    (hb : 1 + max 0 (Real.log (2 * K / m)) / (2 * Delta) ≤ b)
    (hgaussian : gaussian.re ≤ -2 * m + K * Real.exp (-2 * (b - 1) * Delta))
    (hM : 0 < M) (hS : 0 ≤ S) (hE : 0 ≤ E) (hE1 : E ≤ 1)
    (hsmall : E ≤ m / (2 * M * (2 * S + 1)))
    (hcutoff : ‖full - gaussian‖ ≤ M * (2 * S * E + E ^ 2)) :
    full.re ≤ -m := by
  have htail := gaussian_tail_at_log_horizon K m Delta b hK hm hDelta hb
  have hcut := cutoff_budget_le_half M S E m hM hS hE hE1 hsmall
  apply re_le_neg_of_two_errors full gaussian m
    (K * Real.exp (-2 * (b - 1) * Delta)) (M * (2 * S * E + E ^ 2))
    hgaussian hcutoff
  linarith

/-- The actual compact smooth test domain, not a vector of freely assignable evaluations. -/
def Admissible (f : ℝ → ℂ) : Prop := ContDiff ℝ ⊤ f ∧ HasCompactSupport f

/-- Precisely the critical-strip assertion for the analytically continued source. -/
def criticalStripStatement {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N) : Prop :=
  ∀ rho : ℂ, DirichletCharacter.LFunction chi rho = 0 →
    0 < rho.re → rho.re < 1 → rho.re = 1 / 2

/-- The conductor-one source is zeta; no boundary-zero exclusion is smuggled in. -/
theorem modOne_criticalStripStatement :
    criticalStripStatement (1 : DirichletCharacter ℂ 1) ↔
      ∀ rho : ℂ, riemannZeta rho = 0 → 0 < rho.re → rho.re < 1 → rho.re = 1 / 2 := by
  simp only [criticalStripStatement, DirichletCharacter.LFunction_modOne_eq]

/-- Backward source-return consumer. Both hard suppliers are explicit hypotheses.
`Q` must be identified with the full arithmetic form by the eventual adapter;
this theorem alone neither constructs that adapter nor proves either supplier. -/
theorem criticalStripStatement_of_detection_and_nonnegativity
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N)
    (Q : (ℝ → ℂ) → ℝ)
    (hdetect : ∀ rho : ℂ, DirichletCharacter.LFunction chi rho = 0 →
      0 < rho.re → rho.re < 1 → rho.re ≠ 1 / 2 →
      ∃ f : ℝ → ℂ, Admissible f ∧ Q f < 0)
    (hpositive : ∀ f : ℝ → ℂ, Admissible f → 0 ≤ Q f) :
    criticalStripStatement chi := by
  intro rho hzero hleft hright
  by_contra hoff
  obtain ⟨f, hf, hnegative⟩ := hdetect rho hzero hleft hright hoff
  exact (not_lt_of_ge (hpositive f hf)) hnegative

/-- An uncontrolled remainder can reverse a negative head; a synthetic countermodel only. -/
theorem negative_head_does_not_control_full :
    (-2 : ℝ) < 0 ∧ 0 < (-2 : ℝ) + 3 := by norm_num

end GRWTSK.NumberTheory.WeilNegativeWitness
