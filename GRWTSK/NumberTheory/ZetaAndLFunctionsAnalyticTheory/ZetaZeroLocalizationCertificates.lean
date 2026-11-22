/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors

SOURCE_CANDIDATE. Elaboration, kernel replay and transitive axiom audit: NOT_RUN.
-/
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Tactic

/-!
# Finite zero data and jointly exhaustive localization certificates

Primary MSC2020: 11M26. Secondary: 30D20.

## Source and mathematical consumer

The target is Mathlib's unchanged `RiemannHypothesis` for the analytically
continued `riemannZeta`, including its exclusions of the trivial zeros and the
pole. `ZeroTube` is a universally quantified certificate CONCLUSION, not a
finite root list, a decidable checker, or an assertion that a certificate exists.
The consumer is the HS spectral-to-arithmetic acceptance boundary: an approximate
zero model needs a source-bound localization estimate AND joint height/accuracy
coverage. This file supplies neither estimate construction nor certificate
existence. It does not use or assume RH in its unconditional lemmas.

## Declaration map and argument

* `riemannHypothesis_of_jointlyExhaustive_tubes`: a hypothetical off-line source
  zero has a positive real-part defect; select one certificate covering its
  height with error strictly below that defect, and obtain a contradiction.
* `jointlyExhaustive_of_eventual_bounds`: eventual height coverage and eventual
  accuracy hold simultaneously after the maximum of their two thresholds.
* `riemannHypothesis_iff_natural_inverse_tubes`: the concrete schedule
  `(height, error) = (n, 1 / (n + 1))` yields an exact quantified RH criterion.
* `finite_schedule_not_jointlyExhaustive`: a finite collection of heights is
  bounded above. No claim of logical independence or impossibility of a finite
  proof using additional analytic information follows.
* `finite_strip_data_underdetermines_real_zeros`: for ANY entire even function,
  multiplication by a real-even quartic preserves its zero set throughout a
  prescribed finite-height strip, and on the entire real axis, while adding an
  off-real zero beyond the strip. This is an obstruction for generic entire
  functions, NOT a second zeta function or a counterexample to RH. Equality of
  multiplicities and equality of sampled function values are not asserted.

In the last theorem the variable is the spectral coordinate `z`, as in
`Xi(z) = xi(1/2 + I*z)`; `|z.re|` is the zeta-height coordinate. The source-bound
certificate theorems instead use the original zeta variable `s` and `|s.im|`.
These coordinates are deliberately not identified by an unproved source map.

## Provenance, comparison, and remaining obligations

These are local elementary consequences and hostile controls, not claimed novel
number theory or a formalization of a named paper theorem. The precise source
statement is `Mathlib/NumberTheory/LSeries/RiemannZeta.lean`, definition
`RiemannHypothesis`, at mathlib revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`:
https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/RiemannZeta.lean

The quartic argument is a separate falsification route to the finite-data claim;
it is not an independent proof of RH. No Hurwitz convergence theorem, zeta-zero
counting asymptotic, prime-reconstruction complexity bound, HS-95 simulation,
primitive Dirichlet GRH transfer, or universal certificate supplier is proved.
The growing-window and shrinking-error hypotheses remain explicit. The module
has proof bodies without new axioms or proof placeholders, but this source has
not been elaborated or kernel checked. Novelty and independent review: UNASSESSED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.ZeroLocalization

/-- Source-bound finite-height localization conclusion; not an executable checker. -/
def ZeroTube (height error : ℝ) : Prop :=
  ∀ (s : ℂ), riemannZeta s = 0 →
    (¬ ∃ n : ℕ, s = -2 * (n + 1)) → s ≠ 1 →
    |s.im| ≤ height → |s.re - 1 / 2| ≤ error

/-- One index must meet both requirements; separate coordinate-wise cofinality
is not the intended hypothesis. -/
def JointlyExhaustive {ι : Type*} (height error : ι → ℝ) : Prop :=
  ∀ H ε : ℝ, 0 < ε → ∃ i, H ≤ height i ∧ error i < ε

/-- A source zero cannot have a positive defect below all positive tolerances. -/
theorem riemannHypothesis_of_jointlyExhaustive_tubes
    {ι : Type*} {height error : ι → ℝ}
    (hcover : JointlyExhaustive height error)
    (htubes : ∀ i, ZeroTube (height i) (error i)) :
    _root_.RiemannHypothesis := by
  intro s hs htrivial hpole
  have hzero : |s.re - 1 / 2| = 0 := by
    apply le_antisymm _ (abs_nonneg _)
    apply le_of_not_gt
    intro hpos
    obtain ⟨i, hheight, herror⟩ := hcover |s.im| |s.re - 1 / 2| hpos
    have hbound := htubes i s hs htrivial hpole hheight
    exact (not_lt_of_ge hbound) herror
  exact sub_eq_zero.mp (abs_eq_zero.mp hzero)

/-- RH supplies each tube conclusion for every nonnegative tolerance. -/
theorem zeroTube_of_riemannHypothesis (hRH : _root_.RiemannHypothesis)
    (height : ℝ) {error : ℝ} (herror : 0 ≤ error) :
    ZeroTube height error := by
  intro s hs htrivial hpole _
  rw [hRH s hs htrivial hpole, sub_self, abs_zero]
  exact herror

/-- Exact source equivalence; the right-hand side is not supplied by finite checks. -/
theorem riemannHypothesis_iff_jointlyExhaustive_tubes
    {ι : Type*} {height error : ι → ℝ}
    (herror : ∀ i, 0 ≤ error i)
    (hcover : JointlyExhaustive height error) :
    _root_.RiemannHypothesis ↔ ∀ i, ZeroTube (height i) (error i) := by
  constructor
  · intro hRH i
    exact zeroTube_of_riemannHypothesis hRH (height i) (herror i)
  · exact riemannHypothesis_of_jointlyExhaustive_tubes hcover

/-- Two eventual bounds give joint coverage at the same natural-number index. -/
theorem jointlyExhaustive_of_eventual_bounds {height error : ℕ → ℝ}
    (hheight : ∀ H : ℝ, ∃ N : ℕ, ∀ n ≥ N, H ≤ height n)
    (herror : ∀ ε : ℝ, 0 < ε → ∃ N : ℕ, ∀ n ≥ N, error n < ε) :
    JointlyExhaustive height error := by
  intro H ε hε
  obtain ⟨N, hN⟩ := hheight H
  obtain ⟨M, hM⟩ := herror ε hε
  exact ⟨max N M, hN _ (le_max_left _ _), hM _ (le_max_right _ _)⟩

/-- Concrete all-height/all-accuracy schedule, independently of zeta zeros. -/
theorem natural_inverse_schedule_jointlyExhaustive :
    JointlyExhaustive (fun n : ℕ => (n : ℝ))
      (fun n : ℕ => 1 / ((n : ℝ) + 1)) := by
  intro H ε hε
  obtain ⟨n, hn⟩ := exists_nat_gt (max H (1 / ε))
  have hH : H < (n : ℝ) := lt_of_le_of_lt (le_max_left _ _) hn
  have hrecip : 1 / ε < (n : ℝ) + 1 := by
    have := lt_of_le_of_lt (le_max_right H (1 / ε)) hn
    linarith
  have hmul : 1 < ((n : ℝ) + 1) * ε := (div_lt_iff₀ hε).mp hrecip
  refine ⟨n, hH.le, ?_⟩
  apply (div_lt_iff₀ (show 0 < (n : ℝ) + 1 by positivity)).mpr
  simpa only [mul_comm] using hmul

/-- A concrete quantified criterion for the canonical zeta RH, not its proof. -/
theorem riemannHypothesis_iff_natural_inverse_tubes :
    _root_.RiemannHypothesis ↔
      ∀ n : ℕ, ZeroTube (n : ℝ) (1 / ((n : ℝ) + 1)) := by
  apply riemannHypothesis_iff_jointlyExhaustive_tubes
  · intro n
    positivity
  · exact natural_inverse_schedule_jointlyExhaustive

/-- No finite schedule meets the joint coverage premise, even at tolerance one. -/
theorem finite_schedule_not_jointlyExhaustive {ι : Type*} [Fintype ι]
    (height error : ι → ℝ) : ¬ JointlyExhaustive height error := by
  classical
  intro hcover
  obtain ⟨i, hi, _⟩ := hcover ((∑ j, |height j|) + 1) 1 zero_lt_one
  have hsum : |height i| ≤ ∑ j, |height j| :=
    Finset.single_le_sum (fun j _ => abs_nonneg (height j)) (Finset.mem_univ i)
  have hself := le_abs_self (height i)
  linarith

/-! ## Entire-function hostile control; no replacement of the arithmetic source -/

/-- A conjugate imaginary root pair. -/
def imaginaryPair (b : ℝ) (z : ℂ) : ℂ :=
  (z - (b : ℂ) * Complex.I) * (z + (b : ℂ) * Complex.I)

/-- A real-even quartic with root quartet `±a ± I*b`. -/
def offAxisQuartet (a b : ℝ) (z : ℂ) : ℂ :=
  imaginaryPair b (z - (a : ℂ)) * imaginaryPair b (z + (a : ℂ))

/-- Preserve the source zero set locally while allowing additional distant zeros. -/
def addOffAxisQuartet (f : ℂ → ℂ) (a b : ℝ) (z : ℂ) : ℂ :=
  offAxisQuartet a b z * f z

/-- The pair's zeros have zero real part. -/
theorem imaginaryPair_ne_zero_of_re_ne_zero (b : ℝ) {z : ℂ}
    (hz : z.re ≠ 0) : imaginaryPair b z ≠ 0 := by
  apply mul_ne_zero
  · intro h
    exact hz (by simpa [Complex.mul_re] using congrArg Complex.re h)
  · intro h
    exact hz (by simpa [Complex.mul_re] using congrArg Complex.re h)

/-- A nonzero imaginary displacement adds no real-axis zeros. -/
theorem imaginaryPair_ne_zero_on_real {b : ℝ} (hb : b ≠ 0) (x : ℝ) :
    imaginaryPair b (x : ℂ) ≠ 0 := by
  apply mul_ne_zero
  · intro h
    have hi : -b = 0 := by simpa [Complex.mul_im] using congrArg Complex.im h
    exact hb (neg_eq_zero.mp hi)
  · intro h
    exact hb (by simpa [Complex.mul_im] using congrArg Complex.im h)

/-- The added quartet lies outside every strip narrower than `a`. -/
theorem offAxisQuartet_ne_zero_in_strip {H a : ℝ} (ha : H < a)
    (b : ℝ) {z : ℂ} (hz : |z.re| ≤ H) : offAxisQuartet a b z ≠ 0 := by
  obtain ⟨hlower, hupper⟩ := abs_le.mp hz
  apply mul_ne_zero
  · apply imaginaryPair_ne_zero_of_re_ne_zero
    simp only [Complex.sub_re, Complex.ofReal_re]
    linarith
  · apply imaginaryPair_ne_zero_of_re_ne_zero
    simp only [Complex.add_re, Complex.ofReal_re]
    linarith

/-- The operation does not remove evenness. -/
theorem offAxisQuartet_even (a b : ℝ) (z : ℂ) :
    offAxisQuartet a b (-z) = offAxisQuartet a b z := by
  unfold offAxisQuartet imaginaryPair
  ring

/-- Zero-set agreement holds throughout the original finite-height strip. -/
theorem addOffAxisQuartet_zero_iff_in_strip (f : ℂ → ℂ)
    {H a : ℝ} (ha : H < a) (b : ℝ) {z : ℂ} (hz : |z.re| ≤ H) :
    addOffAxisQuartet f a b z = 0 ↔ f z = 0 := by
  change offAxisQuartet a b z * f z = 0 ↔ f z = 0
  constructor
  · intro h
    exact (mul_eq_zero.mp h).resolve_left (offAxisQuartet_ne_zero_in_strip ha b hz)
  · intro h
    rw [h, mul_zero]

/-- The whole real-axis zero set, not just a finite list, is preserved. -/
theorem addOffAxisQuartet_zero_iff_on_real (f : ℂ → ℂ) (a : ℝ)
    {b : ℝ} (hb : b ≠ 0) (x : ℝ) :
    addOffAxisQuartet f a b (x : ℂ) = 0 ↔ f (x : ℂ) = 0 := by
  have hfactor : offAxisQuartet a b (x : ℂ) ≠ 0 := by
    simpa only [offAxisQuartet, Complex.ofReal_sub, Complex.ofReal_add] using
      mul_ne_zero (imaginaryPair_ne_zero_on_real hb (x - a))
        (imaginaryPair_ne_zero_on_real hb (x + a))
  change offAxisQuartet a b (x : ℂ) * f (x : ℂ) = 0 ↔ f (x : ℂ) = 0
  constructor
  · intro h
    exact (mul_eq_zero.mp h).resolve_left hfactor
  · intro h
    rw [h, mul_zero]

/-- The new function has the specified additional root. -/
theorem addOffAxisQuartet_root (f : ℂ → ℂ) (a b : ℝ) :
    addOffAxisQuartet f a b ((a : ℂ) + (b : ℂ) * Complex.I) = 0 := by
  unfold addOffAxisQuartet offAxisQuartet imaginaryPair
  ring

/-- Multiplication by the quartic preserves entire differentiability. -/
theorem addOffAxisQuartet_differentiable {f : ℂ → ℂ}
    (hf : Differentiable ℂ f) (a b : ℝ) :
    Differentiable ℂ (addOffAxisQuartet f a b) := by
  have hp : Differentiable ℂ (imaginaryPair b) :=
    (differentiable_id.sub_const _).mul (differentiable_id.add_const _)
  exact ((hp.comp (differentiable_id.sub_const (a : ℂ))).mul
    (hp.comp (differentiable_id.add_const (a : ℂ)))).mul hf

/-- Even entire functions can agree on all finite-strip zero data and all
real-axis zeros while a new off-real zero lies beyond the inspected strip.
This is NOT a theorem that two distinct functions are both the Riemann xi-function. -/
theorem finite_strip_data_underdetermines_real_zeros
    (f : ℂ → ℂ) (hf : Differentiable ℂ f)
    (heven : ∀ z : ℂ, f (-z) = f z) (H : ℝ) :
    ∃ g : ℂ → ℂ, Differentiable ℂ g ∧
      (∀ z : ℂ, g (-z) = g z) ∧
      (∀ z : ℂ, |z.re| ≤ H → (g z = 0 ↔ f z = 0)) ∧
      (∀ x : ℝ, g (x : ℂ) = 0 ↔ f (x : ℂ) = 0) ∧
      ∃ z : ℂ, H < z.re ∧ z.im ≠ 0 ∧ g z = 0 := by
  let a : ℝ := |H| + 1
  have ha : H < a := by
    dsimp [a]
    linarith [le_abs_self H]
  refine ⟨addOffAxisQuartet f a 1,
    addOffAxisQuartet_differentiable hf a 1, ?_, ?_, ?_, ?_⟩
  · intro z
    simp only [addOffAxisQuartet, offAxisQuartet_even, heven z]
  · intro z hz
    exact addOffAxisQuartet_zero_iff_in_strip f ha 1 hz
  · intro x
    exact addOffAxisQuartet_zero_iff_on_real f a one_ne_zero x
  · refine ⟨(a : ℂ) + Complex.I, ?_, ?_, ?_⟩
    · simpa using ha
    · simp
    · simpa using addOffAxisQuartet_root f a 1

/-- Nonvacuous hostile control: a polynomial can have no zeros at all in the
inspected strip or on the real axis and still have an off-real zero beyond it.
The function is not asserted to have zeta's arithmetic source or normalization. -/
theorem exists_entire_even_countermodel (H : ℝ) :
    ∃ g : ℂ → ℂ, Differentiable ℂ g ∧
      (∀ z : ℂ, g (-z) = g z) ∧
      (∀ z : ℂ, |z.re| ≤ H → g z ≠ 0) ∧
      (∀ x : ℝ, g (x : ℂ) ≠ 0) ∧
      ∃ z : ℂ, H < z.re ∧ z.im ≠ 0 ∧ g z = 0 := by
  obtain ⟨g, hg, heven, hstrip, hreal, hroot⟩ :=
    finite_strip_data_underdetermines_real_zeros (fun _ : ℂ => 1)
      (differentiable_const (1 : ℂ)) (fun _ => rfl) H
  refine ⟨g, hg, heven, ?_, ?_, hroot⟩
  · intro z hz hzero
    exact one_ne_zero ((hstrip z hz).mp hzero)
  · intro x hzero
    exact one_ne_zero ((hreal x).mp hzero)

end GRWTSK.RiemannHypothesis.ZeroLocalization
