import Surface.CosmeticSurgery

/-!
# Compile-time checks for the cosmetic-surgery API

These examples quantify over every geometric, reduction, and algorithmic
capability.  They do not construct fake knot exteriors, filling maps, imported
literature theorems, or three-manifold decision procedures.
-/

namespace Surface.CosmeticSurgery.Tests

universe u v

open OrientedKnotFillingTheory

variable {T : OrientedKnotFillingTheory.{u}}

example :
    (ResolutionSubmission.current (T := T)).status = .unresolved :=
  ResolutionSubmission.current_status

example (R : CurrentReduction T) :
    T.ConjectureFalse ↔ ∃ K : T.Knot, T.ResidualCounterexample K :=
  R.conjectureFalse_iff_exists_residualCounterexample

example
    (R : CurrentReduction T)
    {K : T.Knot}
    (hK : T.Nontrivial K) :
    T.KnotCounterexample K ↔ T.FixedKnotResidualCounterexample K :=
  R.knotCounterexample_iff_fixedKnotResidualCounterexample hK

example
    (D : FixedKnotDecisionCapability T)
    (R : CurrentReduction T)
    (K : T.Knot) :
    Decidable (FixedKnotDecisionCapability.FixedKnotProblem T K) :=
  D.fixedKnotProblem_decidable R K

example
    (C : OrientedFillingPresentationCapability.{u, v} T)
    {K : T.Knot} {r : T.Slope K}
    (left right : C.Gluing K r) :
    C.FixedOnExterior (C.same_marked_slope_homeomorphism left right) :=
  C.same_marked_slope_homeomorphism_fixed_on_exterior left right

example
    (H : FillingHomologySemantics.{u, v} T)
    {K : T.Knot} {r s : T.Slope K}
    (hr : T.numerator r ≠ 0)
    (hs : T.numerator s ≠ 0)
    (homeomorphism : T.FillingHomeomorphism K r s) :
    (T.numerator r).natAbs = (T.numerator s).natAbs :=
  H.natAbs_numerators_eq_of_homeomorphism hr hs homeomorphism

example
    (C : FillingCoreRecoveryCapability T)
    (K : T.Knot)
    (r s : T.Slope K) :
    C.CoreRecoverable K r s ↔ T.MundanePair K r s :=
  C.coreRecoverable_iff_mundane K r s

example
    (R : ExteriorSlopeRigidity T)
    {K : T.Knot}
    (hK : T.Nontrivial K)
    {r s : T.Slope K}
    (cosmetic : T.PurelyCosmeticPair K r s) :
    T.ExoticPair K r s :=
  R.cosmeticPair_is_exotic hK cosmetic

example
    (R : ExteriorSlopeRigidity T)
    (C : FillingCoreRecoveryCapability T)
    {K : T.Knot}
    (hK : T.Nontrivial K)
    {r s : T.Slope K}
    (cosmetic : T.PurelyCosmeticPair K r s) :
    ∀ homeomorphism : T.FillingHomeomorphism K r s,
      ¬ C.RecoversCore homeomorphism :=
  R.cosmeticPair_all_homeomorphisms_fail_core_recovery C hK cosmetic

end Surface.CosmeticSurgery.Tests
