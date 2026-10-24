/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI. Mathlib retains upstream attribution/license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleEdgeObstructionWitness
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Three-point Lipschitz supplier for the canonical zeta rectangle

One bounded supplier for issue #135. At each of the three independent real
rectangle-edge densities, take source-correct interval enclosures at the
endpoints and midpoint of its required parameter interval. A separately
supplied Lipschitz bound transports these finite samples to every point.

Bottom uses [0,1] and error slope/4. Both vertical edges use [0,1/2] and
error slope/8. The *width* of the corrected positive-height count interval
therefore grows by exactly bottomSlope/2 + (rightSlope + leftSlope)/8.

No finite sample, Lipschitz constant, interval-integrability premise,
source-aligned zero family, or accepted integer isolation is established
for the actual zeta densities in this file. In particular, this is not
numerical validation and does not infer RH from sampled values.
Evidence: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleThreePointLipschitz

open Set MeasureTheory
open GRWTSK.Analysis.RealAnalysis.RationalClosedInterval
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight
open CanonicalRectangleCountIsolation
open CanonicalRectangleUnitEdgeBounds
open CanonicalRectangleUnitEdgeSymmetry
open CanonicalPositiveTuringBridge
open CanonicalRectangleEdgeObstructionWitness
open RationalRectangleRealEdgeEnclosure

noncomputable section

/-! A real span of length `a` is covered within `a/4` by 0, a/2, a. -/
private theorem three_point_cover {a x : ℝ}
    (ha : 0 ≤ a) (hx : x ∈ Icc (0 : ℝ) a) :
    |x - 0| ≤ a / 4 ∨
      |x - a / 2| ≤ a / 4 ∨
      |x - a| ≤ a / 4 := by
  rcases hx with ⟨hx0, hxa⟩
  by_cases hfirst : x ≤ a / 4
  · left
    simpa only [sub_zero, abs_of_nonneg hx0] using hfirst
  · by_cases hmiddle : x ≤ 3 * a / 4
    · right
      left
      apply abs_le.mpr
      constructor <;> linarith
    · right
      right
      have hnonpos : x - a ≤ 0 := by linarith
      rw [abs_of_nonpos hnonpos]
      linarith

/-- Exactly three sample-value enclosures on [0,a], plus a quantitative
Lipschitz hypothesis for the *actual* real-valued function on the full span.
The samples and slope have rational certificate data, but their correctness
is an explicit mathematical hypothesis. -/
structure ThreePointData (a : ℚ) (f : ℝ → ℝ) where
  samples : Interval
  slope : ℚ
  span_nonneg : 0 ≤ a
  slope_nonneg : 0 ≤ slope
  at_zero : samples.Contains (f 0)
  at_middle : samples.Contains (f ((a : ℝ) / 2))
  at_end : samples.Contains (f (a : ℝ))
  lipschitz : ∀ x ∈ Icc (0 : ℝ) (a : ℝ),
    ∀ y ∈ Icc (0 : ℝ) (a : ℝ),
      |f x - f y| ≤ (slope : ℝ) * |x - y|

namespace ThreePointData

variable {a : ℚ} {f : ℝ → ℝ}

/-- The rational enclosure after charging the exact covering radius a/4. -/
def widened (data : ThreePointData a f) : Interval where
  lower := data.samples.lower - data.slope * a / 4
  upper := data.samples.upper + data.slope * a / 4
  valid := by
    have hr : 0 ≤ data.slope * a / 4 :=
      div_nonneg (mul_nonneg data.slope_nonneg data.span_nonneg) (by norm_num)
    linarith [data.samples.valid]

/-- Exact width accounting; no probabilistic or sign cancellation is used. -/
theorem widened_width (data : ThreePointData a f) :
    data.widened.width = data.samples.width + data.slope * a / 2 := by
  dsimp [widened, Interval.width]
  ring

private theorem transfer_from_sample (data : ThreePointData a f)
    {x y : ℝ}
    (hx : x ∈ Icc (0 : ℝ) (a : ℝ))
    (hy : y ∈ Icc (0 : ℝ) (a : ℝ))
    (sample : data.samples.Contains (f y))
    (near : |x - y| ≤ (a : ℝ) / 4) :
    data.widened.Contains (f x) := by
  have nonneg : (0 : ℝ) ≤ (data.slope : ℝ) := by
    exact_mod_cast data.slope_nonneg
  have diff :
      |f x - f y| ≤ ((data.slope * a / 4 : ℚ) : ℝ) := by
    calc
      |f x - f y| ≤ (data.slope : ℝ) * |x - y| :=
        data.lipschitz x hx y hy
      _ ≤ (data.slope : ℝ) * ((a : ℝ) / 4) :=
        mul_le_mul_of_nonneg_left near nonneg
      _ = ((data.slope * a / 4 : ℚ) : ℝ) := by
        push_cast
        ring
  rcases abs_le.mp diff with ⟨diffLower, diffUpper⟩
  rcases sample with ⟨sampleLower, sampleUpper⟩
  change
    (((data.samples.lower - data.slope * a / 4 : ℚ) : ℝ) ≤ f x ∧
      f x ≤ ((data.samples.upper + data.slope * a / 4 : ℚ) : ℝ))
  push_cast
  constructor <;> linarith

/-- The three real sample enclosures and the quantitative Lipschitz theorem
supply the universal pointwise bound required by the existing edge consumer. -/
theorem widened_contains (data : ThreePointData a f) :
    ∀ x ∈ Icc (0 : ℝ) (a : ℝ), data.widened.Contains (f x) := by
  intro x hx
  have ha : (0 : ℝ) ≤ (a : ℝ) := by
    exact_mod_cast data.span_nonneg
  rcases three_point_cover ha hx with atZero | atMiddle | atEnd
  · exact transfer_from_sample data hx ⟨le_refl _, ha⟩ data.at_zero
      (by simpa using atZero)
  · have hm : (a : ℝ) / 2 ∈ Icc (0 : ℝ) (a : ℝ) := by
      constructor <;> linarith
    exact transfer_from_sample data hx hm data.at_middle atMiddle
  · exact transfer_from_sample data hx ⟨ha, le_refl _⟩ data.at_end atEnd

end ThreePointData

/-- Source-specific finite-sample data for the *real parts* of the exact
normalized zeta rectangle unit densities. Integrability is not inferred
from samples or a bare bound; it remains an explicit supplied hypothesis. -/
structure SampledRectangleEdges (N : ℕ) where
  bottom : ThreePointData (1 : ℚ)
    (fun x : ℝ => (bottomUnitDensity N x).re)
  right : ThreePointData (1 / 2 : ℚ)
    (fun x : ℝ => (rightUnitDensity N x).re)
  left : ThreePointData (1 / 2 : ℚ)
    (fun x : ℝ => (leftUnitDensity N x).re)
  bottom_integrable : IntervalIntegrable (bottomUnitDensity N) volume 0 1
  right_integrable : IntervalIntegrable (rightUnitDensity N) volume 0 1
  left_integrable : IntervalIntegrable (leftUnitDensity N) volume 0 1
  bottom_re_integrable :
    IntervalIntegrable (fun x => (bottomUnitDensity N x).re) volume 0 1
  right_re_integrable :
    IntervalIntegrable (fun x => (rightUnitDensity N x).re) volume 0 1
  left_re_integrable :
    IntervalIntegrable (fun x => (leftUnitDensity N x).re) volume 0 1

namespace SampledRectangleEdges

/-- Selected supplier: reconstruct the exact existing universal half-unit
edge certificate, without a positivity, zero-count, or RH hypothesis. -/
noncomputable def toHalfUnitRectangleEdgeBounds {N : ℕ}
    (data : SampledRectangleEdges N) : HalfUnitRectangleEdgeBounds N where
  bottom := data.bottom.widened
  right := data.right.widened
  left := data.left.widened
  bottom_integrable := data.bottom_integrable
  right_integrable := data.right_integrable
  left_integrable := data.left_integrable
  bottom_re_integrable := data.bottom_re_integrable
  right_re_integrable := data.right_re_integrable
  left_re_integrable := data.left_re_integrable
  bottom_bounds := by
    intro x hx
    exact data.bottom.widened_contains x (by simpa using hx)
  right_half_bounds := by
    intro x hx
    exact data.right.widened_contains x (by simpa using hx)
  left_half_bounds := by
    intro x hx
    exact data.left.widened_contains x (by simpa using hx)

/-- Exact rational uncertainty increase after both-sign count correction:
bottom base width + (right+left base widths)/2,
plus bottomSlope/2 + (rightSlope+leftSlope)/8. -/
theorem corrected_positive_count_width {N : ℕ}
    (data : SampledRectangleEdges N) :
    (CanonicalRectangleCountIsolation.positiveCountInterval N
        data.toHalfUnitRectangleEdgeBounds.toRealRectangleEdgeEnclosure.indexInterval).upper -
      (CanonicalRectangleCountIsolation.positiveCountInterval N
        data.toHalfUnitRectangleEdgeBounds.toRealRectangleEdgeEnclosure.indexInterval).lower =
      data.bottom.samples.width +
        (data.right.samples.width + data.left.samples.width) / 2 +
        data.bottom.slope / 2 + (data.right.slope + data.left.slope) / 8 := by
  rw [RealRectangleEdgeEnclosure.positiveCountInterval_width]
  change data.bottom.widened.width +
    (data.right.widened.width + data.left.widened.width) / 2 = _
  rw [data.bottom.widened_width, data.right.widened_width,
    data.left.widened_width]
  ring

/-- Entry into the exact canonical zeta rectangle witness interface.
A passing rational integer-isolation guard is still indispensable. -/
noncomputable def toEdgeWitness {N : ℕ}
    (data : SampledRectangleEdges N) (count : ℕ)
    (accepted :
      data.toHalfUnitRectangleEdgeBounds.toRealRectangleEdgeEnclosure.accepts count = true) :
    CanonicalRectangleEdgeWitness N where
  count := count
  report := data.toHalfUnitRectangleEdgeBounds
  accepted := accepted

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Directly expose the maintained terminal consumer. This conclusion remains
conditional on actual nine sample certificates, three analytic Lipschitz bounds,
integrability, count isolation and a separately aligned zero family. -/
theorem rhThrough_of_three_point_count_margin (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (data : SampledRectangleEdges N)
    (count : ℕ)
    (accepted :
      data.toHalfUnitRectangleEdgeBounds.toRealRectangleEdgeEnclosure.accepts count = true)
    (strict : count < family.certifiedCount + 2) : RHThrough N :=
  CanonicalRectangleEdgeWitness.rhThrough (data.toEdgeWitness count accepted)
    alignment strict

end SampledRectangleEdges

/-- Hostile finite fixture: exact agreement at 0, 1/2 and 1 does not
control an interior value without a modulus of continuity. -/
theorem three_samples_alone_are_insufficient :
    let f : ℝ → ℝ := fun x => x * (x - 1 / 2) * (x - 1)
    f 0 = 0 ∧ f (1 / 2) = 0 ∧ f 1 = 0 ∧ f (1 / 4) ≠ 0 := by
  dsimp
  norm_num

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleThreePointLipschitz
