/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain their upstream authorship and licenses. -/
import GRWTSK.FunctionsOfAComplexVariable.AnalyticOrderTransport
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Quadratic zero clusters, reality, and multiplicity

RP-OC-05, monograph edition 1.0 (2026-11-10), section 20.1.
This is the degree-two part of the cluster-reality program, not a general
Hermite--Sylvester theorem, a contour-counting implementation, or GRH.
A source chart requires an actual function identity and a nonzero multiplier.
The collision order uses `analyticOrderAt`, not a set of distinct locations.
Source candidates: elaboration, kernel replay, axiom audit, review NOT_RUN.
See the adjacent theorem-local provenance records and issue #1809.
-/

noncomputable section

namespace GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality

/-- An assertion about every complex zero, including a possible central zero. -/
def AllRootsReal (f : ℂ → ℂ) : Prop :=
  ∀ z, f z = 0 → z.im = 0

/-- The centered monic quadratic; `d = 0` is deliberately admitted. -/
def quadratic (c d : ℝ) (z : ℂ) : ℂ :=
  (z - (c : ℂ)) ^ 2 - (d : ℂ)

/-- Nonnegative discriminant parameter forces every complex root to be real. -/
theorem im_eq_zero_of_quadratic_eq_zero {c d : ℝ} {z : ℂ}
    (hd : 0 ≤ d) (hz : quadratic c d z = 0) : z.im = 0 := by
  have hre := congrArg Complex.re hz
  have him := congrArg Complex.im hz
  simp [quadratic, pow_two, Complex.mul_re, Complex.mul_im] at hre him
  have hprod : (z.re - c) * z.im = 0 := by nlinarith
  rcases mul_eq_zero.mp hprod with hx | hy
  · have hs : z.im * z.im = 0 := by nlinarith [sq_nonneg z.im]
    rcases mul_eq_zero.mp hs with h | h <;> exact h
  · exact hy

/-- An explicit nonreal zero when `d < 0`; no root enumeration is assumed. -/
theorem exists_nonreal_root_of_neg {c d : ℝ} (hd : d < 0) :
    ∃ z : ℂ, quadratic c d z = 0 ∧ z.im ≠ 0 := by
  have hs : (Real.sqrt (-d)) ^ 2 = -d :=
    Real.sq_sqrt (by linarith)
  refine ⟨⟨c, Real.sqrt (-d)⟩, ?_, ?_⟩
  · apply Complex.ext <;>
      simp [quadratic, pow_two, Complex.mul_re, Complex.mul_im] <;> nlinarith
  · exact ne_of_gt (Real.sqrt_pos.mpr (by linarith))

/-- Complete degree-two real-rootedness criterion, including the double root. -/
theorem allRootsReal_quadratic_iff (c d : ℝ) :
    AllRootsReal (quadratic c d) ↔ 0 ≤ d := by
  constructor
  · intro h
    by_contra hn
    obtain ⟨z, hz, hnonreal⟩ :=
      exists_nonreal_root_of_neg (c := c) (lt_of_not_ge hn)
    exact hnonreal (h z hz)
  · intro hd z hz
    exact im_eq_zero_of_quadratic_eq_zero hd hz

/-- Quadratic form of the Newton-sum matrix [[2,2c],[2c,2(c^2+d)]]. -/
def hermiteForm (c d x y : ℝ) : ℝ :=
  2 * x ^ 2 + 4 * c * x * y + 2 * (c ^ 2 + d) * y ^ 2

/-- Semidefiniteness is expressed on all real coefficient vectors. -/
def HermiteNonnegative (c d : ℝ) : Prop :=
  ∀ x y : ℝ, 0 ≤ hermiteForm c d x y

theorem hermiteForm_decomposition (c d x y : ℝ) :
    hermiteForm c d x y = 2 * (x + c * y) ^ 2 + 2 * d * y ^ 2 := by
  unfold hermiteForm
  ring

theorem hermiteNonnegative_iff (c d : ℝ) :
    HermiteNonnegative c d ↔ 0 ≤ d := by
  constructor
  · intro h
    have htest := h (-c) 1
    rw [hermiteForm_decomposition] at htest
    nlinarith
  · intro hd x y
    rw [hermiteForm_decomposition]
    exact add_nonneg (mul_nonneg (by norm_num) (sq_nonneg _))
      (mul_nonneg (mul_nonneg (by norm_num) hd) (sq_nonneg _))

/-- Exact degree-two Hermite certificate, not positivity of the arithmetic Weil form. -/
theorem hermiteNonnegative_iff_allRootsReal (c d : ℝ) :
    HermiteNonnegative c d ↔ AllRootsReal (quadratic c d) :=
  (hermiteNonnegative_iff c d).trans (allRootsReal_quadratic_iff c d).symm

/-- Two factors remain two factors when they coincide. -/
theorem quadratic_eq_two_factors (c d : ℝ) (w z : ℂ)
    (hw : w ^ 2 = (d : ℂ)) :
    quadratic c d z = (z - ((c : ℂ) + w)) * (z - ((c : ℂ) - w)) := by
  unfold quadratic
  rw [← hw]
  ring

/-- Actual analytic order at the collision, not cardinality of the zero set. -/
theorem quadratic_order_at_collision (c : ℝ) :
    analyticOrderAt (quadratic c 0) (c : ℂ) = 2 := by
  simpa [quadratic] using
    (analyticOrderAt_centeredMonomial (𝕜 := ℂ) (z₀ := (c : ℂ)) (n := 2))

/-- A nonvanishing analytic source multiplier preserves the double zero. -/
theorem source_order_at_collision (c : ℝ) (u : ℂ → ℂ)
    (hu : AnalyticAt ℂ u (c : ℂ)) (hne : u (c : ℂ) ≠ 0) :
    analyticOrderAt (fun z => u z * quadratic c 0 z) (c : ℂ) = 2 := by
  have h := AnalyticOrderTransport.order_mul_nonzero_right (quadratic c 0) u
    (c : ℂ) (by unfold quadratic; fun_prop) hu hne
  simpa [mul_comm] using h.trans (quadratic_order_at_collision c)

/-- Repeated quadratic factors retain analytic order, not just root locations. -/
theorem source_order_at_powered_collision (c : ℝ) (u : ℂ → ℂ) (m : ℕ)
    (hu : AnalyticAt ℂ u (c : ℂ)) (hne : u (c : ℂ) ≠ 0) :
    analyticOrderAt (fun z => u z * (quadratic c 0 z) ^ m) (c : ℂ) = (2 * m : ℕ) := by
  have h := AnalyticOrderTransport.order_mul_nonzero_right
    (fun z => (quadratic c 0 z) ^ m) u (c : ℂ)
    (by unfold quadratic; fun_prop) hu hne
  have horder : analyticOrderAt (fun z => (quadratic c 0 z) ^ m) (c : ℂ) =
      (2 * m : ℕ) := by
    simpa [quadratic, ← pow_mul] using
      (analyticOrderAt_centeredMonomial (𝕜 := ℂ) (z₀ := (c : ℂ)) (n := 2 * m))
  simpa [mul_comm] using h.trans horder

/-- An actual analytic source identity on an open chart. A positive exponent
retains repeated factors; neither simplicity nor an upper multiplicity bound
is assumed. General cluster construction and contour coverage are not supplied. -/
structure SourceChart (f : ℂ → ℂ) where
  domain : Set ℂ
  isOpen_domain : IsOpen domain
  center : ℝ
  discriminant : ℝ
  multiplicity : ℕ
  multiplicity_pos : 0 < multiplicity
  multiplier : ℂ → ℂ
  multiplier_analytic : ∀ z ∈ domain, AnalyticAt ℂ multiplier z
  multiplier_ne_zero : ∀ z ∈ domain, multiplier z ≠ 0
  factorization : ∀ z ∈ domain,
    f z = multiplier z * (quadratic center discriminant z) ^ multiplicity

/-- A real-rooted chart returns its conclusion to the original function. -/
theorem SourceChart.im_eq_zero_of_zero {f : ℂ → ℂ} (C : SourceChart f)
    (hd : 0 ≤ C.discriminant) {z : ℂ} (hz : z ∈ C.domain)
    (hzero : f z = 0) : z.im = 0 := by
  rw [C.factorization z hz] at hzero
  have hp : (quadratic C.center C.discriminant z) ^ C.multiplicity = 0 :=
    (mul_eq_zero.mp hzero).resolve_left (C.multiplier_ne_zero z hz)
  have hq : quadratic C.center C.discriminant z = 0 := by
    by_contra hq
    exact (pow_ne_zero C.multiplicity hq) hp
  exact im_eq_zero_of_quadratic_eq_zero hd hq

/-- Two labels, without pretending a globally fixed ordering exists. -/
def rootLabel (c : ℝ) (w : ℂ) (b : Bool) : ℂ :=
  if b then (c : ℂ) - w else (c : ℂ) + w

/-- Changing square-root branch exchanges labels while preserving the pair. -/
theorem rootLabel_neg (c : ℝ) (w : ℂ) (b : Bool) :
    rootLabel c (-w) b = rootLabel c w (!b) := by
  cases b <;> simp [rootLabel] <;> ring

/-- A reality-preserving double collision; no simplicity assumption. -/
theorem square_parameter_real (c t : ℝ) :
    AllRootsReal (quadratic c (t ^ 2)) :=
  (allRootsReal_quadratic_iff c (t ^ 2)).mpr (sq_nonneg t)

/-- A uniform boundary margin for z^2-t, even when the roots leave the real axis.
This is a norm estimate, not a formal invocation of Rouche's theorem. -/
theorem quadratic_circle_margin {z : ℂ} {t : ℝ}
    (hz : ‖z‖ = 2) (ht : |t| ≤ 1) : 3 ≤ ‖quadratic 0 t z‖ := by
  have htriangle : ‖z ^ 2‖ ≤ ‖z ^ 2 - (t : ℂ)‖ + ‖(t : ℂ)‖ := by
    calc
      ‖z ^ 2‖ = ‖(z ^ 2 - (t : ℂ)) + (t : ℂ)‖ := by rw [sub_add_cancel]
      _ ≤ ‖z ^ 2 - (t : ℂ)‖ + ‖(t : ℂ)‖ := norm_add_le _ _
  have hpower : ‖z ^ 2‖ = 4 := by rw [norm_pow, hz]; norm_num
  have hcast : ‖(t : ℂ)‖ ≤ 1 := by simpa using ht
  simp only [quadratic, Complex.ofReal_zero, sub_zero]
  linarith

/-- Real type and constant polynomial degree alone do not imply reality. -/
theorem negative_parameter_not_real (c : ℝ) :
    ¬ AllRootsReal (quadratic c (-1)) := by
  rw [allRootsReal_quadratic_iff]
  norm_num

end GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality
