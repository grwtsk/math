/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Analysis.Analytic.IsolatedZeros
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Removing one actual simple zero before integrating its logarithmic derivative

The factor is the explicit divided difference `dslope f root`, with its value
at the root set to the ACTUAL derivative. Analyticity at that point comes from
the upstream power-series shift, not from evaluating a totalized quotient.
Simple-root and no-other-zero hypotheses make the factor nonzero on the same
closed disk. Its logarithmic derivative is then an analytic extension of the
pole-subtracted expression across the root, and Cauchy's theorem integrates
that extension to zero. The original logarithmic derivative integrates to
2*pi*i when the actual root is strictly inside the circle.

This consumes a known isolated SIMPLE root; it does not find a root, certify
input data, prove all roots simple, or count zeros on a larger contour. A
numerical sup-norm estimate less than one is unnecessary for this exact local
identity. Positive radius, boundary integrability and all denominator guards
are retained. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.IsolatedSimpleZeroContour

open Set Metric
open scoped Topology

noncomputable section

/-- Explicit analytic candidate, including a value at the root via `dslope`.
Its analyticity requires the separate source hypotheses proved below. -/
def regularPart (f : ℂ → ℂ) (root z : ℂ) : ℂ :=
  deriv (dslope f root) z / dslope f root z

/-- The actual source factors globally when its value at the chosen point is zero. -/
theorem factorization (f : ℂ → ℂ) (root z : ℂ) (rootZero : f root = 0) :
    (z - root) * dslope f root z = f z := by
  simpa only [smul_eq_mul, rootZero, sub_zero] using sub_smul_dslope f root z

/-- Analyticity at the root uses a power-series shift; off the root it uses the quotient. -/
theorem factor_analytic (f : ℂ → ℂ) (root : ℂ) (region : Set ℂ)
    (analytic : AnalyticOnNhd ℂ f region) (rootMember : root ∈ region) :
    AnalyticOnNhd ℂ (dslope f root) region := by
  intro z hz
  by_cases same : z = root
  · subst z
    obtain ⟨p, hp⟩ := analytic root rootMember
    exact ⟨p.fslope, hp.has_fpower_series_dslope_fslope⟩
  · have quotient : AnalyticAt ℂ (slope f root) z := by
      simpa only [slope, smul_eq_mul] using
        ((analyticAt_id.sub analyticAt_const).inv (sub_ne_zero.mpr same)).mul
          ((analytic z hz).sub analyticAt_const)
    exact quotient.congr (dslope_eventuallyEq_slope_of_ne f same).symm

/-- Distinct-root isolation alone is insufficient at the root: simplicity is retained. -/
theorem factor_nonzero (f : ℂ → ℂ) (root : ℂ) (region : Set ℂ)
    (rootZero : f root = 0) (simple : deriv f root ≠ 0)
    (nonzeroAway : ∀ z ∈ region, z ≠ root → f z ≠ 0)
    (z : ℂ) (member : z ∈ region) : dslope f root z ≠ 0 := by
  by_cases same : z = root
  · subst z
    simpa only [dslope_same] using simple
  · intro factorZero
    have identity := factorization f root z rootZero
    rw [factorZero, mul_zero] at identity
    exact nonzeroAway z member same identity.symm

/-- The extension is analytic also AT the root, not only on a punctured disk. -/
theorem regularPart_analytic (f : ℂ → ℂ) (root : ℂ) (region : Set ℂ)
    (analytic : AnalyticOnNhd ℂ f region) (rootMember : root ∈ region)
    (rootZero : f root = 0) (simple : deriv f root ≠ 0)
    (nonzeroAway : ∀ z ∈ region, z ≠ root → f z ≠ 0) :
    AnalyticOnNhd ℂ (regularPart f root) region := by
  have factorAnalytic := factor_analytic f root region analytic rootMember
  intro z hz
  exact (factorAnalytic z hz).deriv.div (factorAnalytic z hz)
    (factor_nonzero f root region rootZero simple nonzeroAway z hz)

/-- No arbitrary value of zero is assigned to the removable point. -/
theorem regularPart_at_root (f : ℂ → ℂ) (root : ℂ) :
    regularPart f root root = deriv (dslope f root) root / deriv f root := by
  simp only [regularPart, dslope_same]

/-- Differentiate the exact factorization before splitting the quotient. -/
theorem log_derivative_split (f : ℂ → ℂ) (root z : ℂ)
    (rootZero : f root = 0) (factorAnalytic : AnalyticAt ℂ (dslope f root) z)
    (factorNonzero : dslope f root z ≠ 0) (distinct : z ≠ root) :
    deriv f z / f z = 1 / (z - root) + regularPart f root z := by
  have productDerivative : HasDerivAt (fun w : ℂ => (w - root) * dslope f root w)
      (dslope f root z + (z - root) * deriv (dslope f root) z) z := by
    simpa only [one_mul] using
      ((hasDerivAt_id z).sub_const root).mul factorAnalytic.differentiableAt.hasDerivAt
  have functionsEqual : (fun w : ℂ => (w - root) * dslope f root w) = f :=
    funext (fun w => factorization f root w rootZero)
  rw [functionsEqual] at productDerivative
  rw [productDerivative.deriv, ← factorization f root z rootZero]
  unfold regularPart
  field_simp [sub_ne_zero.mpr distinct, factorNonzero] <;> ring

/-- The analytic extension agrees with the original expression away from its pole. -/
theorem regularPart_eq_subtracted (f : ℂ → ℂ) (root z : ℂ)
    (rootZero : f root = 0) (factorAnalytic : AnalyticAt ℂ (dslope f root) z)
    (factorNonzero : dslope f root z ≠ 0) (distinct : z ≠ root) :
    regularPart f root z = deriv f z / f z - 1 / (z - root) := by
  rw [log_derivative_split f root z rootZero factorAnalytic factorNonzero distinct]
  ring

/-- An interior pole is not a boundary point. Strict interior membership matters. -/
theorem boundary_ne_root (c root z : ℂ) (r : ℝ)
    (inside : root ∈ ball c r) (boundary : z ∈ sphere c r) : z ≠ root := by
  intro same
  subst z
  have inner : dist root c < r := inside
  have outer : dist root c = r := boundary
  linarith

/-- Integrability is proved, not inferred from the default value of an undefined integral. -/
theorem pole_circleIntegrable (c root : ℂ) (r : ℝ) (inside : root ∈ ball c r) :
    CircleIntegrable (fun z : ℂ => (z - root)⁻¹) c r := by
  have positive : 0 < r := lt_of_le_of_lt dist_nonneg inside
  apply ContinuousOn.circleIntegrable positive.le
  intro z hz
  exact ((continuousAt_id.sub continuousAt_const).inv₀
    (sub_ne_zero.mpr (boundary_ne_root c root z r inside hz))).continuousWithinAt

/-- Cauchy's theorem applies to the extended function on the FULL disk. -/
theorem regularPart_circleIntegral_zero (f : ℂ → ℂ) (c root : ℂ) (r : ℝ)
    (positive : 0 < r) (analytic : AnalyticOnNhd ℂ f (closedBall c r))
    (rootMember : root ∈ closedBall c r) (rootZero : f root = 0)
    (simple : deriv f root ≠ 0)
    (nonzeroAway : ∀ z ∈ closedBall c r, z ≠ root → f z ≠ 0) :
    (∮ z in C(c, r), regularPart f root z) = 0 := by
  have extension := regularPart_analytic f root (closedBall c r)
    analytic rootMember rootZero simple nonzeroAway
  have regular : DiffContOnCl ℂ (regularPart f root) (ball c r) :=
    DiffContOnCl.mk_ball
      (fun z hz => (extension z (ball_subset_closedBall hz)).differentiableAt.differentiableWithinAt)
      (fun z hz => (extension z hz).continuousAt.continuousWithinAt)
  exact DiffContOnCl.circleIntegral_eq_zero positive.le regular

/-- Exact local integral, using a supplied isolated simple root and no numerical rounding step. -/
theorem log_derivative_circleIntegral (f : ℂ → ℂ) (c root : ℂ) (r : ℝ)
    (analytic : AnalyticOnNhd ℂ f (closedBall c r)) (inside : root ∈ ball c r)
    (rootZero : f root = 0) (simple : deriv f root ≠ 0)
    (nonzeroAway : ∀ z ∈ closedBall c r, z ≠ root → f z ≠ 0) :
    CircleIntegrable (fun z => deriv f z / f z) c r ∧
      (∮ z in C(c, r), deriv f z / f z) = 2 * (Real.pi : ℂ) * Complex.I := by
  have positive : 0 < r := lt_of_le_of_lt dist_nonneg inside
  have rootMember := ball_subset_closedBall inside
  have factorAnalytic := factor_analytic f root (closedBall c r) analytic rootMember
  have extension := regularPart_analytic f root (closedBall c r)
    analytic rootMember rootZero simple nonzeroAway
  have poleIntegrable := pole_circleIntegrable c root r inside
  have regularIntegrable : CircleIntegrable (regularPart f root) c r := by
    apply ContinuousOn.circleIntegrable positive.le
    intro z hz
    exact (extension z (sphere_subset_closedBall hz)).continuousAt.continuousWithinAt
  constructor
  · apply ContinuousOn.circleIntegrable positive.le
    intro z hz
    have member := sphere_subset_closedBall hz
    exact ((analytic z member).deriv.div (analytic z member)
      (nonzeroAway z member (boundary_ne_root c root z r inside hz))).continuousAt.continuousWithinAt
  · calc
      (∮ z in C(c, r), deriv f z / f z) =
          ∮ z in C(c, r), (z - root)⁻¹ + regularPart f root z := by
        apply circleIntegral.integral_congr positive.le
        intro z hz
        have member := sphere_subset_closedBall hz
        simpa only [one_div] using log_derivative_split f root z rootZero
          (factorAnalytic z member)
          (factor_nonzero f root (closedBall c r) rootZero simple nonzeroAway z member)
          (boundary_ne_root c root z r inside hz)
      _ = (∮ z in C(c, r), (z - root)⁻¹) +
          ∮ z in C(c, r), regularPart f root z :=
        circleIntegral.integral_add poleIntegrable regularIntegrable
      _ = 2 * (Real.pi : ℂ) * Complex.I := by
        rw [circleIntegral.integral_sub_inv_of_mem_ball inside,
          regularPart_circleIntegral_zero f c root r positive analytic rootMember
            rootZero simple nonzeroAway, add_zero]

/-- Moving an interior pole has a nonzero pointwise cost but ZERO integrated difference.
Neither pole is assumed to equal the other or to equal the circle center. -/
theorem pole_shift_circleIntegral_zero (c root other : ℂ) (r : ℝ)
    (rootInside : root ∈ ball c r) (otherInside : other ∈ ball c r) :
    (∮ z in C(c, r), (z - root)⁻¹ - (z - other)⁻¹) = 0 := by
  rw [circleIntegral.integral_sub (pole_circleIntegrable c root r rootInside)
    (pole_circleIntegrable c other r otherInside),
    circleIntegral.integral_sub_inv_of_mem_ball rootInside,
    circleIntegral.integral_sub_inv_of_mem_ball otherInside, sub_self]

end

end GRWTSK.Analysis.ComplexAnalysis.IsolatedSimpleZeroContour
