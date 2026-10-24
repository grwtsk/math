# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCoefficientRecovery

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dcc98cb1fe6c122c58e4ff2efa5b1743a77549d` · SHA-256 `dc43a22c98eb7b66fd8607303aec95c532e3ee5b629b918d3bfaf6e1af681329`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerArithmeticPackingCoordinate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Recovering the packing weight from an exact prime-power coefficient

Issue #189 has not yet supplied an accepted explicit-formula theorem in the
repository.  This module therefore does not invent its transform convention.

Instead it isolates the exact datum #189 must provide at the prime-power
channel: a source-bound coefficient c(p^k).  Because p is prime, log p > 0.
Hence the test weight in the existing packing coordinate is uniquely forced:

  testWeight(p^k) = c(p^k) / log p.

The weighted packing point then has second coordinate exactly c(p^k).
Thus the analytic normalization may determine the coefficient, but it does not
leave an additional free geometric weight.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXPLICIT_FORMULA_COEFFICIENT_SOURCE_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

/-- Source-bound exact coefficient of one prime-power event in a selected
explicit-formula/test-function normalization.  Constructing this record from an
accepted #189 theorem remains open. -/
structure ExplicitFormulaPrimePowerCoefficient where
  sourceId : String
  revision : String
  normalization : String
  coefficient : PrimePowerEvent → ℝ

namespace PrimePowerEvent

/-- A prime label is at least two, so its real logarithm is strictly positive. -/
theorem mangoldtScale_pos (event : PrimePowerEvent) :
    0 < event.mangoldtScale := by
  unfold mangoldtScale
  apply Real.log_pos
  exact_mod_cast event.prime.property.one_lt

theorem mangoldtScale_ne_zero (event : PrimePowerEvent) :
    event.mangoldtScale ≠ 0 :=
  ne_of_gt event.mangoldtScale_pos

end PrimePowerEvent

namespace ExplicitFormulaPrimePowerCoefficient

/-- The unique packing weight determined by the exact prime-power coefficient. -/
def toWeight
    (source : ExplicitFormulaPrimePowerCoefficient) :
    ExplicitFormulaPrimePowerWeight where
  sourceId := source.sourceId
  revision := source.revision
  normalization := source.normalization
  testWeight := fun event =>
    source.coefficient event / event.mangoldtScale

/-- The weighted packing point's vertical coordinate is exactly the supplied
explicit-formula coefficient. -/
theorem packingPoint_y_eq_coefficient
    (source : ExplicitFormulaPrimePowerCoefficient)
    (event : PrimePowerEvent) :
    (source.toWeight.packingPoint event).y =
      source.coefficient event := by
  change
    source.coefficient event / event.mangoldtScale *
        event.mangoldtScale =
      source.coefficient event
  exact div_mul_cancel₀ _ event.mangoldtScale_ne_zero

/-- The horizontal arithmetic coordinate is unaffected by the analytic
normalization. -/
theorem packingPoint_x_eq_logScale
    (source : ExplicitFormulaPrimePowerCoefficient)
    (event : PrimePowerEvent) :
    (source.toWeight.packingPoint event).x = event.logScale := by
  rfl

/-- Uniqueness: any scalar weight producing the exact coefficient after
multiplication by log p must equal coefficient/log p. -/
theorem testWeight_unique
    (source : ExplicitFormulaPrimePowerCoefficient)
    (event : PrimePowerEvent)
    (w : ℝ)
    (h : w * event.mangoldtScale = source.coefficient event) :
    w = source.coefficient event / event.mangoldtScale := by
  exact (eq_div_iff event.mangoldtScale_ne_zero).2 h

end ExplicitFormulaPrimePowerCoefficient

/-- Recurrence in which the analytic input is the exact prime-power coefficient,
not a freely selected packing weight. -/
structure PrimePowerCoefficientRecurrence
    (Source Local : Type*)
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local] where
  accepted : SourceBoundMechanismBridgeAccepted Source Local
  coefficientSource : ExplicitFormulaPrimePowerCoefficient
  initialEvent : Fin 3 → PrimePowerEvent
  initial_order01 :
    (initialEvent 0).natValue < (initialEvent 1).natValue
  initial_order12 :
    (initialEvent 1).natValue < (initialEvent 2).natValue
  nextEvent :
    Local → ℕ → ThreePointPackingState IsPrimePowerEventValue →
      PrimePowerEvent
  next_order :
    ∀ localData n state,
      state.thirdSource < (nextEvent localData n state).natValue

namespace PrimePowerCoefficientRecurrence

/-- Canonical specialization to the previous coordinate recurrence. -/
def toCoordinateRecurrence
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (data : PrimePowerCoefficientRecurrence Source Local) :
    PrimePowerCoordinateRecurrence Source Local where
  accepted := data.accepted
  weight := data.coefficientSource.toWeight
  initialEvent := data.initialEvent
  initial_order01 := data.initial_order01
  initial_order12 := data.initial_order12
  nextEvent := data.nextEvent
  next_order := data.next_order

/-- The recurrence packing program generated from an exact coefficient source. -/
def toPackingProgram
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (data : PrimePowerCoefficientRecurrence Source Local) :
    SourceBoundPackingRecurrenceProgram Source Local :=
  data.toCoordinateRecurrence.toPackingProgram

/-- The new point's y-coordinate is definitionally controlled by the exact
coefficient of the selected next prime-power event. -/
theorem nextPoint_y_eq_coefficient
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (data : PrimePowerCoefficientRecurrence Source Local)
    (localData : Local) (n : ℕ)
    (state : ThreePointPackingState IsPrimePowerEventValue) :
    (data.toPackingProgram.nextPoint localData n state).y =
      data.coefficientSource.coefficient (data.nextEvent localData n state) := by
  exact
    data.coefficientSource.packingPoint_y_eq_coefficient
      (data.nextEvent localData n state)

/-- The new point's x-coordinate remains the exact logarithmic prime-power
scale. -/
theorem nextPoint_x_eq_logScale
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (data : PrimePowerCoefficientRecurrence Source Local)
    (localData : Local) (n : ℕ)
    (state : ThreePointPackingState IsPrimePowerEventValue) :
    (data.toPackingProgram.nextPoint localData n state).x =
      (data.nextEvent localData n state).logScale := by
  rfl

end PrimePowerCoefficientRecurrence

end GRWTSK.RiemannHypothesis
```
