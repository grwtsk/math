/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
See the adjacent Markdown file for exact source correspondence and evidence status. -/
import Mathlib.Analysis.Analytic.Order
import Mathlib.Analysis.SpecialFunctions.Complex.Log
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.NumberTheory.LSeries.DirichletContinuation
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NoncommRing
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ZeroDefinitions

/-!
# Exact determinant return: transfer, certification, and countermodels

Consumer: RP-OC-04, Section 19.5 of *Typed Mathematical Architecture and
Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), printed p.42.
Coordination: grwtsk/math#1800. Primary MSC2020: 11M26; secondary: 11M41, 47A10.

`ExactReturnOn` is a scalar identity, NOT a definition or construction of a
Fredholm determinant. The matrix statements use the actual `Matrix.det`.
The arithmetic family, trace ideal, regularization, source normalization and
independent off-critical invertibility remain unsupplied obligations.

The RH consumer concludes the unchanged `_root_.RiemannHypothesis` from explicit
premises. The Dirichlet consumer uses Mathlib's analytically continued
`DirichletCharacter.LFunction`, not its possibly divergent `LSeries`.
It is a per-character open-strip implication, not a new definition of GRH.

Evidence at authorship: source candidate; Lean elaboration, fresh kernel replay,
transitive axiom audit and independent mathematical review are all NOT_RUN.
-/

noncomputable section

open scoped Topology

namespace GRWTSK.ResonanceDeterminantReturn

/-- An exact scalar return identity on an explicitly supplied domain. -/
def ExactReturnOn (U : Set ℂ) (D h F : ℂ → ℂ) : Prop :=
  Set.EqOn D (fun s => Complex.exp (h s) * F s) U

/-- A nonvanishing exponential factor preserves the zero set pointwise. -/
theorem zero_iff_of_exactReturnOn {U : Set ℂ} {D h F : ℂ → ℂ}
    (hret : ExactReturnOn U D h F) {s : ℂ} (hs : s ∈ U) :
    D s = 0 ↔ F s = 0 := by
  rw [hret hs, mul_eq_zero]
  simp only [Complex.exp_ne_zero, false_or]

/-- Equality of analytic orders, including the infinite-order case, under a
locally analytic nonvanishing multiplier. No simplicity hypothesis is imposed. -/
theorem analyticOrder_eq_of_unit_factor {D u F : ℂ → ℂ} {s : ℂ}
    (hu : AnalyticAt ℂ u s) (hF : AnalyticAt ℂ F s) (hu0 : u s ≠ 0)
    (hret : D =ᶠ[𝓝 s] (fun z => u z * F z)) :
    analyticOrderAt D s = analyticOrderAt F s := by
  have hz : analyticOrderAt u s = 0 := hu.analyticOrderAt_eq_zero.mpr hu0
  have hmul : analyticOrderAt (fun z => u z * F z) s =
      analyticOrderAt u s + analyticOrderAt F s := by
    simpa only [Pi.smul_apply, smul_eq_mul] using analyticOrderAt_smul hu hF
  calc
    analyticOrderAt D s = analyticOrderAt (fun z => u z * F z) s :=
      analyticOrderAt_congr hret
    _ = analyticOrderAt F s := by rw [hmul, hz, zero_add]

/-- Multiplicity transfer for the exponential return, provided its factor and
source are analytic and the identity holds on an actual neighborhood. -/
theorem analyticOrder_eq_of_exp_return {D h F : ℂ → ℂ} {s : ℂ}
    (he : AnalyticAt ℂ (fun z => Complex.exp (h z)) s)
    (hF : AnalyticAt ℂ F s)
    (hret : D =ᶠ[𝓝 s] (fun z => Complex.exp (h z) * F z)) :
    analyticOrderAt D s = analyticOrderAt F s :=
  analyticOrder_eq_of_unit_factor he hF (Complex.exp_ne_zero _) hret

/-- Off-critical nonvanishing is an independent premise, not a consequence of
writing down an exact return identity. -/
theorem zero_re_eq_half_of_return {U : Set ℂ} {D h F : ℂ → ℂ}
    (hret : ExactReturnOn U D h F)
    (hfree : ∀ s ∈ U, s.re ≠ 1 / 2 → D s ≠ 0)
    {s : ℂ} (hs : s ∈ U) (hzero : F s = 0) : s.re = 1 / 2 := by
  by_contra hoff
  exact hfree s hs hoff ((zero_iff_of_exactReturnOn hret hs).mpr hzero)

/-- A genuine contradiction certificate: error strictly below the approximant's
modulus implies nonvanishing of the exact value. -/
theorem ne_zero_of_error_lt {a b : ℂ} (herror : ‖a - b‖ < ‖b‖) : a ≠ 0 := by
  intro ha
  simpa [ha] using herror

/-- A certified scalar error bound transfers nonvanishing back to the source.
The error bound is a hypothesis about the exact value, not a sampled heuristic. -/
theorem source_ne_zero_of_error_bound {U : Set ℂ} {D h F : ℂ → ℂ}
    (hret : ExactReturnOn U D h F) {s b : ℂ} (hs : s ∈ U) {ε : ℝ}
    (herror : ‖D s - b‖ ≤ ε) (hmargin : ε < ‖b‖) : F s ≠ 0 := by
  intro hzero
  exact ne_zero_of_error_lt (lt_of_le_of_lt herror hmargin)
    ((zero_iff_of_exactReturnOn hret hs).mpr hzero)

/-- Finite-dimensional determinant nonvanishing from an actual right inverse.
This does not assert the infinite-dimensional Fredholm determinant theorem. -/
theorem matrix_det_ne_zero_of_right_inverse {n : Type*} [Fintype n] [DecidableEq n]
    {A B : Matrix n n ℂ} (hinv : A * B = 1) : Matrix.det A ≠ 0 := by
  intro hz
  have hc := congrArg Matrix.det hinv
  rw [Matrix.det_mul, hz, zero_mul, Matrix.det_one] at hc
  exact zero_ne_one hc

/-- The exact Mathlib RH proposition, retaining every exclusion in the existing
canonical `NontrivialZetaZero` predicate. All arithmetic premises are explicit. -/
theorem riemannHypothesis_of_return {U : Set ℂ} {D h F : ℂ → ℂ}
    (hsource : ∀ s, GRWTSK.RiemannHypothesis.NontrivialZetaZero s →
      s ∈ U ∧ F s = 0)
    (hret : ExactReturnOn U D h F)
    (hfree : ∀ s ∈ U, s.re ≠ 1 / 2 → D s ≠ 0) :
    _root_.RiemannHypothesis := by
  intro s hz htriv hpole
  obtain ⟨hs, hF⟩ := hsource s ⟨hz, htriv, hpole⟩
  exact zero_re_eq_half_of_return hret hfree hs hF

/-- Per-character return for the actual analytically continued L-function.
The source correspondence must include every open-strip zero at every height.
Restricting the character to be primitive is for an eventual arithmetic producer;
the elementary implication itself does not require primitivity. -/
theorem dirichlet_zero_re_eq_half_of_return {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) {U : Set ℂ} {D h F : ℂ → ℂ}
    (hsource : ∀ s : ℂ, 0 < s.re → s.re < 1 →
      DirichletCharacter.LFunction χ s = 0 → s ∈ U ∧ F s = 0)
    (hret : ExactReturnOn U D h F)
    (hfree : ∀ s ∈ U, s.re ≠ 1 / 2 → D s ≠ 0)
    {s : ℂ} (hleft : 0 < s.re) (hright : s.re < 1)
    (hzero : DirichletCharacter.LFunction χ s = 0) : s.re = 1 / 2 := by
  obtain ⟨hs, hF⟩ := hsource s hleft hright hzero
  exact zero_re_eq_half_of_return hret hfree hs hF

/-! ## Hostile control: an arbitrary function has a scalar-matrix realization -/

/-- Deliberately tautological: this is a countermodel constructor, not arithmetic data. -/
def scalarKernel (F : ℂ → ℂ) (s : ℂ) : Matrix Unit Unit ℂ :=
  fun _ _ => 1 - F s

/-- Using the real matrix determinant exposes how weak bare realization is. -/
theorem scalarKernel_det (F : ℂ → ℂ) (s : ℂ) :
    Matrix.det (1 - scalarKernel F s) = F s := by
  rw [Matrix.det_unique]
  change (1 : ℂ) - (1 - F s) = F s
  ring

/-- A reflection-symmetric polynomial with two off-critical zeros. -/
def offCriticalPolynomial (s : ℂ) : ℂ := (s - 1 / 4) * (s - 3 / 4)

theorem offCriticalPolynomial_reflect (s : ℂ) :
    offCriticalPolynomial (1 - s) = offCriticalPolynomial s := by
  dsimp [offCriticalPolynomial]
  ring

theorem offCriticalPolynomial_quarter : offCriticalPolynomial (1 / 4) = 0 := by
  norm_num [offCriticalPolynomial]

theorem offCriticalPolynomial_three_quarters : offCriticalPolynomial (3 / 4) = 0 := by
  norm_num [offCriticalPolynomial]

/-- Exact determinant return and functional-equation reflection do not force
critical-line localization. This is not a zero of an arithmetic L-function. -/
theorem exact_return_with_offCritical_zero :
    ExactReturnOn Set.univ
      (fun s => Matrix.det (1 - scalarKernel offCriticalPolynomial s))
      (fun _ => 0) offCriticalPolynomial ∧
    (∀ s, offCriticalPolynomial (1 - s) = offCriticalPolynomial s) ∧
    (∃ s : ℂ, offCriticalPolynomial s = 0 ∧ s.re ≠ 1 / 2) := by
  refine ⟨?_, offCriticalPolynomial_reflect, ?_⟩
  · intro s _
    simpa using scalarKernel_det offCriticalPolynomial s
  · exact ⟨1 / 4, offCriticalPolynomial_quarter, by norm_num⟩

/-! ## Hostile control: determinant values do not bound inverse entries -/

/-- A square-zero upper-triangular matrix with a freely varying shear. -/
def shear (z : ℂ) : Matrix (Fin 2) (Fin 2) ℂ := !![0, z; 0, 0]

theorem shear_sq (z : ℂ) : shear z * shear z = 0 := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [shear, Matrix.mul_apply, Fin.sum_univ_two]

theorem shear_right_inverse (z : ℂ) : (1 - shear z) * (1 + shear z) = 1 := by
  calc
    (1 - shear z) * (1 + shear z) = 1 - shear z * shear z := by noncomm_ring
    _ = 1 := by rw [shear_sq]; simp

theorem shear_left_inverse (z : ℂ) : (1 + shear z) * (1 - shear z) = 1 := by
  calc
    (1 + shear z) * (1 - shear z) = 1 - shear z * shear z := by noncomm_ring
    _ = 1 := by rw [shear_sq]; simp

theorem shear_det (z : ℂ) : Matrix.det (1 - shear z) = 1 := by
  simp [Matrix.det_fin_two, shear, Matrix.sub_apply, Matrix.one_apply]

theorem shear_inverse_entry (z : ℂ) : (1 + shear z) 0 1 = z := by
  simp [shear, Matrix.add_apply, Matrix.one_apply]

/-- A determinant fixed at one coexists with arbitrarily large inverse entries.
This does not identify a matrix norm with the Hilbert-space operator norm. -/
theorem shear_inverse_entry_unbounded (B : ℝ) :
    ∃ t : ℝ, B < ‖(1 + shear (t : ℂ)) 0 1‖ := by
  refine ⟨|B| + 1, ?_⟩
  rw [shear_inverse_entry]
  have hp : 0 < |B| + 1 := by linarith [abs_nonneg B]
  have hn : ‖((|B| + 1 : ℝ) : ℂ)‖ = |B| + 1 := by
    simp [Complex.norm_real, Real.norm_eq_abs, abs_of_pos hp]
  rw [hn]
  linarith [le_abs_self B]

end GRWTSK.ResonanceDeterminantReturn
