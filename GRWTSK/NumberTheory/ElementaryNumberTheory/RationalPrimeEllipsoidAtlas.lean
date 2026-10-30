/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.TypedEllipsoidAtlas
import GRWTSK.NumberTheory.OrderedPrimeGroupAddress
import Mathlib.Data.Rat.Defs
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Rational prime-address ellipsoid atlas

A bare rational number does not determine an interface.  The same value can be a
divisor cutoff, a near-diagonal width, a density threshold, a critical-strip
location, a cyclic step, an interpolation parameter or a target exponent.  The
address below retains the reduced fraction, role, orientation, boundary
convention and exact source identity.

Each atlas entry also retains the ordered prime-group address and a witnessed
finite alternative fiber.  Every alternative may choose any typed ellipsoid
profile from `TypedEllipsoidAtlas`: John, Loewner, minimum-volume enclosing,
maximum-volume inscribed, covariance, inertia, projection-mean, optimization,
confidence, source-Gram, spherical/prolate/oblate/triaxial/general/degenerate,
or a custom extension.  Coarse observation collisions are resolved by the
retained finite rank and phase channel rather than by pretending that equal
ellipsoid summaries identify the underlying source state.

This is a representation and source-comparison interface.  It proves no volume
optimality, return-word theorem, signed arithmetic cancellation, endpoint bound
or Riemann Hypothesis consequence.

SOURCE_PROOF_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN /
TRANSITIVE AXIOM AUDIT NOT_RUN.
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.RationalPrimeEllipsoidAtlas

open GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.TypedEllipsoidAtlas

universe u v w x

/-- A reduced rational strictly between zero and one. -/
structure ReducedUnitRatio where
  numerator : ℕ
  denominator : ℕ
  numerator_pos : 0 < numerator
  numerator_lt_denominator : numerator < denominator
  coprime : numerator.Coprime denominator

namespace ReducedUnitRatio

/-- Exact rational value represented by the retained numerator and denominator. -/
def value (ratio : ReducedUnitRatio) : ℚ :=
  (ratio.numerator : ℚ) / (ratio.denominator : ℚ)

end ReducedUnitRatio

/-- Mathematical role played by a rational parameter. -/
inductive RatioUse
  | divisorCutoff
  | diagonalWidth
  | densityThreshold
  | criticalStripLocation
  | cyclicStep
  | interpolationParameter
  | targetExponent
  | custom (identifier : String)
  deriving DecidableEq, Repr

/-- Orientation is identity-bearing: cyclic reversal need not preserve an
analytic exponent role. -/
inductive RatioOrientation
  | direct
  | reversed
  | unoriented
  deriving DecidableEq, Repr

/-- Integer boundary convention attached to the rational power or interval. -/
inductive BoundaryConvention
  | floor
  | ceiling
  | closedPower
  | openPower
  | exactCell
  | custom (identifier : String)
  deriving DecidableEq, Repr

/-- Complete identity of one use of a rational ratio. -/
structure RatioAddress where
  ratio : ReducedUnitRatio
  use : RatioUse
  orientation : RatioOrientation
  boundary : BoundaryConvention
  sourceId : String

/-- The anchor ratio `3/4`. -/
def threeQuarter : ReducedUnitRatio where
  numerator := 3
  denominator := 4
  numerator_pos := by norm_num
  numerator_lt_denominator := by norm_num
  coprime := by norm_num

/-- `3/4` used as a closed/ceiling divisor cutoff. -/
def threeQuarterCutoff : RatioAddress where
  ratio := threeQuarter
  use := .divisorCutoff
  orientation := .unoriented
  boundary := .ceiling
  sourceId := "pickup-gcd-head"

/-- `3/4` used as a direct near-diagonal width. -/
def threeQuarterDiagonalWidth : RatioAddress where
  ratio := threeQuarter
  use := .diagonalWidth
  orientation := .direct
  boundary := .floor
  sourceId := "pickup-near-diagonal"

/-- Equal numerical ratios with different roles remain distinct addresses. -/
theorem threeQuarter_roles_are_distinct :
    threeQuarterCutoff.ratio = threeQuarterDiagonalWidth.ratio ∧
      threeQuarterCutoff ≠ threeQuarterDiagonalWidth := by
  constructor
  · rfl
  · intro h
    have huse := congrArg RatioAddress.use h
    simp [threeQuarterCutoff, threeQuarterDiagonalWidth] at huse

/-- Ordered prime axes reused without collapsing repeated prime occurrences. -/
abbrev OrderedPrimeAxes :=
  GRWTSK.NumberTheory.OrderedPrimeGroupAddress.OrderedPrimeAxes

/--
One ratio-indexed, prime-addressed, phase-disambiguated ellipsoid interface.

`Alternative` is the complete alternative type.  `Coarse` is the potentially
colliding observation type.  `Witness` is the exact construction witness retained
by every ellipsoid view in this bounded family.
-/
structure PrimeEllipsoidAtlasEntry
    (V : Type u) (Alternative : Type v) (Coarse : Type w) (Witness : Type x)
    [AddCommGroup V] [Module ℝ V] where
  ratioAddress : RatioAddress
  primeAxes : OrderedPrimeAxes
  primeAddress : primeAxes.Address
  alternatives : DisambiguatedFiber Alternative Coarse
  ellipsoidOf : Alternative → EllipsoidView V Witness
  sourceRecordId : String

namespace PrimeEllipsoidAtlasEntry

variable {V : Type u} {Alternative : Type v} {Coarse : Type w} {Witness : Type x}
variable [AddCommGroup V] [Module ℝ V]

/-- The exact alternative selected by the retained fiber rank. -/
def selectedAlternative
    (entry : PrimeEllipsoidAtlasEntry V Alternative Coarse Witness) : Alternative :=
  entry.alternatives.selected

/-- The selected typed ellipsoid, preserving its construction witness and source
relation certificate. -/
def selectedEllipsoid
    (entry : PrimeEllipsoidAtlasEntry V Alternative Coarse Witness) :
    EllipsoidView V Witness :=
  entry.ellipsoidOf entry.selectedAlternative

@[simp]
theorem selectedAlternative_coarse
    (entry : PrimeEllipsoidAtlasEntry V Alternative Coarse Witness) :
    entry.alternatives.coarse entry.selectedAlternative =
      entry.alternatives.base :=
  entry.alternatives.selected_coarse

/-- Equality of phase observations identifies alternatives inside the declared
coarse fiber. -/
theorem alternative_eq_of_phase_eq
    (entry : PrimeEllipsoidAtlasEntry V Alternative Coarse Witness)
    {left right : Alternative}
    (hleft : left ∈ entry.alternatives.options)
    (hright : right ∈ entry.alternatives.options)
    (hphase : entry.alternatives.phase left = entry.alternatives.phase right) :
    left = right :=
  entry.alternatives.phase_separates hleft hright hphase

/-- The ordered prime-address serialization remains injective independently of
which ellipsoid alternative is selected. -/
theorem primeSerialization_injective
    (entry : PrimeEllipsoidAtlasEntry V Alternative Coarse Witness) :
    Function.Injective entry.primeAxes.serialize :=
  entry.primeAxes.serialize_injective

/-- Every selected source point returns either through the selected ellipsoid or
through its explicit omitted-source residual. -/
theorem selected_source_return
    (entry : PrimeEllipsoidAtlasEntry V Alternative Coarse Witness) :
    entry.selectedEllipsoid.source ⊆
      entry.selectedEllipsoid.geometry.carrier ∪
        entry.selectedEllipsoid.comparison.omittedSource :=
  entry.selectedEllipsoid.source_return

end PrimeEllipsoidAtlasEntry

end GRWTSK.NumberTheory.ElementaryNumberTheory.RationalPrimeEllipsoidAtlas