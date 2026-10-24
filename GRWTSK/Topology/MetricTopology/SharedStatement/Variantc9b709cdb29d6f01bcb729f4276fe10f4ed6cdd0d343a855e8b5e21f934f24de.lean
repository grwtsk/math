import Surface.Core.ComplexAnalysis.FiniteHoleGeometry

/-!
# CA-03 shared statement

This scratch module freezes the exact statement tested by every CA-03 branch.
It deliberately defines a proposition but does not inhabit it.  In particular,
it is not imported by `Surface` and carries no theorem authority.
-/

namespace Surface.Core.ComplexAnalysis.CA03Scratch

noncomputable section

open Set Complex Metric

/-- An axis-aligned complex rectangle with strictly ordered coordinates. -/
structure OrderedComplexRectangle where
  lower : ℂ
  upper : ℂ
  re_lt : lower.re < upper.re
  im_lt : lower.im < upper.im

namespace OrderedComplexRectangle

/-- The closed rectangle determined by the ordered corners. -/
def closed (R : OrderedComplexRectangle) : Set ℂ :=
  closedRectangle R.lower R.upper

/-- The open rectangle determined by the ordered corners. -/
def openRect (R : OrderedComplexRectangle) : Set ℂ :=
  Set.Ioo R.lower.re R.upper.re ×ℂ Set.Ioo R.lower.im R.upper.im

end OrderedComplexRectangle

/-- One positive-radius closed disk lying strictly inside an ordered rectangle. -/
structure SingleHoleConfiguration (R : OrderedComplexRectangle) where
  center : ℂ
  radius : ℝ
  radius_pos : 0 < radius
  closedBall_subset_open : Metric.closedBall center radius ⊆ R.openRect

namespace SingleHoleConfiguration

variable {R : OrderedComplexRectangle}

/-- Closed excised region, including the outer rectangle and inner circle. -/
def closedRegion (H : SingleHoleConfiguration R) : Set ℂ :=
  R.closed \ Metric.ball H.center H.radius

/-- Open excised region, excluding both boundary components. -/
def openRegion (H : SingleHoleConfiguration R) : Set ℂ :=
  R.openRect \ Metric.closedBall H.center H.radius

end SingleHoleConfiguration

/-- The positively oriented outer boundary minus the positively oriented circle.
The subtraction records the clockwise orientation of the inner boundary as a
component of the punctured domain. -/
def singleHoleBoundaryIntegral
    (f : ℂ → ℂ)
    (R : OrderedComplexRectangle)
    (H : SingleHoleConfiguration R) : ℂ :=
  rectangleBoundaryIntegral f R.lower R.upper -
    circleIntegral f H.center H.radius

/-- Exact common proposition tested by all CA-03 fanout branches. -/
def SingleHoleExcisionStatement : Prop :=
  ∀ (R : OrderedComplexRectangle)
    (H : SingleHoleConfiguration R)
    (f : ℂ → ℂ),
    ContinuousOn f H.closedRegion →
    DifferentiableOn ℂ f H.openRegion →
    singleHoleBoundaryIntegral f R H = 0

-- Elaboration check only: no proof of the proposition is introduced here.
#check SingleHoleExcisionStatement

example
    (candidate : SingleHoleExcisionStatement)
    (R : OrderedComplexRectangle)
    (H : SingleHoleConfiguration R)
    (f : ℂ → ℂ)
    (hc : ContinuousOn f H.closedRegion)
    (hd : DifferentiableOn ℂ f H.openRegion) :
    rectangleBoundaryIntegral f R.lower R.upper =
      circleIntegral f H.center H.radius := by
  have hzero := candidate R H f hc hd
  exact sub_eq_zero.mp hzero

end

end Surface.Core.ComplexAnalysis.CA03Scratch
