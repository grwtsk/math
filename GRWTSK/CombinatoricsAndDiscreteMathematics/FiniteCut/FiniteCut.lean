import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm
import Mathlib.Data.Fintype.Basic

/-!
# Immutable finite reflective cut
-/

namespace Mathematics.StratifiedBoundary

structure FiniteReflectiveCut
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    (State : Type v) where
  cutId : String
  predecessorCutRef : Option String
  stratum : CanonicalOrdinalTally profile
  stateFinite : Fintype State
  stateDecidableEq : DecidableEq State
  separatedMetricRef : String
  closedAdmissibilityRef : String
  binaryFrontierRef : String
  localRankRegistryRef : String
  authorityRef : String
  immutable : Bool := true
  immutable_exact : immutable = true

end Mathematics.StratifiedBoundary
