import Mathlib

/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

Finite four-response local-prime state algebra and comparison boundaries.
No Euler factorization of the causal pickup response is assumed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupFourResponseEulerConnections

/-- Four occupancy bits for one selected prime in q,s,q',s'. -/
structure FourOccupancy where
  q : Bool
  s : Bool
  q' : Bool
  s' : Bool
deriving DecidableEq, Fintype

def bitSign (b : Bool) : ℤ := if b then -1 else 1

/-- Local Möbius sign of one four-divisor occupancy state. -/
def occupancySign (e : FourOccupancy) : ℤ :=
  bitSign e.q * bitSign e.s * bitSign e.q' * bitSign e.s'

/-- Sum over all sixteen local states when their analytic weights are equal. -/
theorem occupancySign_sum_zero :
    ∑ e : FourOccupancy, occupancySign e = 0 := by
  native_decide

/-- Absolute local state mass when all sixteen analytic weights are replaced by
one.  This is the positive envelope that must not be confused with the signed
sum. -/
theorem occupancyAbs_sum :
    ∑ e : FourOccupancy, |occupancySign e| = 16 := by
  native_decide

/-- Collision class of one selected prime relative to gcd-normalized rectangle
directions. -/
inductive PrimeCollisionClass
  | commonScale
  | horizontal
  | vertical
  | generic
deriving DecidableEq

/-- Requirements for turning the finite sixteen-state algebra into an actual
Euler/Riesz factor for the causal response. -/
structure FourResponseEulerBridge where
  localStateWeightIdentified : Prop
  causalCutoffsRetained : Prop
  collisionClassRetained : Prop
  localPrimeFactorizationProved : Prop
  crossPrimeDependencePaid : Prop
  selectedDivisorSignsPreserved : Prop
  productCostPolylogOrBetter : Prop
  clippedEndpointsPreserved : Prop
  completeComplementPreserved : Prop
  quantitativeSavingSurvives : Prop

/-- The exact sampled Mertens-Abel source and the rough-block Gram are distinct
observations until all of these comparison requirements are proved. -/
structure MertensAbelGramBoxBridge where
  sameArithmeticSource : Prop
  sameFrozenHorizon : Prop
  gramBoxObservationRecovered : Prop
  endpointAndBirthTermsRecovered : Prop
  roughSelectedPrimeMaskRecovered : Prop
  comparisonCostControlled : Prop
  mertensDecayApplicable : Prop
  quantitativeSavingSurvives : Prop

end GRWTSK.NumberTheory.Moebius.PickupFourResponseEulerConnections
