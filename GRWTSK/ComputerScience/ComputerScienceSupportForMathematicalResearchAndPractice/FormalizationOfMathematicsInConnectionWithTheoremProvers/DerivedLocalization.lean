import Think.SourceTree.Legacy.Arithmetic.FinitePhaseBitmatrixAlgebra

set_option autoImplicit false

namespace Think.Arithmetic.DerivedLocalization

inductive DerivedFunctorRole where
  | derivedOpenPushforward
  | openExtensionByZero
  | closedPullback
  | closedPushforward
deriving Repr, DecidableEq

structure DerivedFunctorSurface where
  openImmersion : String
  closedImmersion : String
  functors : List (DerivedFunctorRole × String)
  theoremAuthority : Bool
  analyticZeroClaim : Bool
deriving Repr, DecidableEq

def derivedFunctorSurface : DerivedFunctorSurface :=
  { openImmersion := "j:U_to_X"
    closedImmersion := "i:Z_to_X"
    functors := [
      (DerivedFunctorRole.derivedOpenPushforward, "Rj_star"),
      (DerivedFunctorRole.openExtensionByZero, "j_shriek"),
      (DerivedFunctorRole.closedPullback, "i_pullback"),
      (DerivedFunctorRole.closedPushforward, "i_pushforward")
    ]
    theoremAuthority := false
    analyticZeroClaim := false }

structure LocalizationTriangleSurface where
  leftTerm : String
  middleTerm : String
  rightTerm : String
  connectingMorphism : String
  shiftedOpenTerm : String
  directionCorrect : Bool
  middleArrowConnectingClaim : Bool
deriving Repr, DecidableEq

def localizationTriangleSurface : LocalizationTriangleSurface :=
  { leftTerm := "j_shriek_j_pullback_F"
    middleTerm := "F"
    rightTerm := "i_pushforward_i_pullback_F"
    connectingMorphism :=
      "i_pushforward_i_pullback_F_to_j_shriek_j_pullback_F_shift_1"
    shiftedOpenTerm := "j_shriek_j_pullback_F_shift_1"
    directionCorrect := true
    middleArrowConnectingClaim := false }

structure CompactSupportBoundaryMapSurface where
  source : String
  target : String
  degreeZeroObstruction : String
  absorbedCondition : String
  residualCondition : String
  analyticZeroClaim : Bool
deriving Repr, DecidableEq

def compactSupportBoundaryMapSurface : CompactSupportBoundaryMapSurface :=
  { source := "H_c_q_X_i_pushforward_i_pullback_F"
    target := "H_c_q_plus_1_X_j_shriek_j_pullback_F"
    degreeZeroObstruction := "eta_p_in_H_c_0_X_i_pushforward_i_pullback_F"
    absorbedCondition := "partial_0_eta_p_equals_zero"
    residualCondition := "partial_0_eta_p_not_equal_zero"
    analyticZeroClaim := false }

structure ResidualComplexObstructionHome where
  obstructionAtom : String
  home : String
  routeWhenBoundaryNonzero : String
  theoremAuthority : Bool
  zeroLocationClaim : Bool
deriving Repr, DecidableEq

def residualComplexObstructionHome : ResidualComplexObstructionHome :=
  { obstructionAtom := "residual_complex_paired_obstruction"
    home := "compact_support_localization_boundary_map"
    routeWhenBoundaryNonzero := "closed_support_obstruction_to_open_spin_residue"
    theoremAuthority := false
    zeroLocationClaim := false }

theorem derived_functor_surface_has_required_symbols :
    (DerivedFunctorRole.derivedOpenPushforward, "Rj_star") ∈
        derivedFunctorSurface.functors ∧
      (DerivedFunctorRole.openExtensionByZero, "j_shriek") ∈
        derivedFunctorSurface.functors ∧
      (DerivedFunctorRole.closedPullback, "i_pullback") ∈
        derivedFunctorSurface.functors ∧
      (DerivedFunctorRole.closedPushforward, "i_pushforward") ∈
        derivedFunctorSurface.functors ∧
      derivedFunctorSurface.theoremAuthority = false ∧
      derivedFunctorSurface.analyticZeroClaim = false := by
  decide

theorem localization_triangle_boundary_direction :
    localizationTriangleSurface.leftTerm = "j_shriek_j_pullback_F" ∧
      localizationTriangleSurface.rightTerm = "i_pushforward_i_pullback_F" ∧
      localizationTriangleSurface.connectingMorphism =
        "i_pushforward_i_pullback_F_to_j_shriek_j_pullback_F_shift_1" ∧
      localizationTriangleSurface.shiftedOpenTerm =
        "j_shriek_j_pullback_F_shift_1" ∧
      localizationTriangleSurface.directionCorrect = true ∧
      localizationTriangleSurface.middleArrowConnectingClaim = false := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem compact_support_boundary_places_degree_zero_obstruction :
    compactSupportBoundaryMapSurface.source =
        "H_c_q_X_i_pushforward_i_pullback_F" ∧
      compactSupportBoundaryMapSurface.target =
        "H_c_q_plus_1_X_j_shriek_j_pullback_F" ∧
      compactSupportBoundaryMapSurface.degreeZeroObstruction =
        "eta_p_in_H_c_0_X_i_pushforward_i_pullback_F" ∧
      compactSupportBoundaryMapSurface.absorbedCondition =
        "partial_0_eta_p_equals_zero" ∧
      compactSupportBoundaryMapSurface.residualCondition =
        "partial_0_eta_p_not_equal_zero" ∧
      compactSupportBoundaryMapSurface.analyticZeroClaim = false := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem residual_complex_obstruction_has_boundary_map_home :
    residualComplexObstructionHome.obstructionAtom =
        "residual_complex_paired_obstruction" ∧
      residualComplexObstructionHome.home =
        "compact_support_localization_boundary_map" ∧
      residualComplexObstructionHome.routeWhenBoundaryNonzero =
        "closed_support_obstruction_to_open_spin_residue" ∧
      residualComplexObstructionHome.theoremAuthority = false ∧
      residualComplexObstructionHome.zeroLocationClaim = false := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

structure FrobeniusSurgeryTraceResidue where
  aPSurgery : Int
  aP : Int
  omegaP : Int
  transferResidue : Int
  equalityHoldsAtP : Bool
  projectorIdentificationTheoremRequired : Bool
deriving Repr, DecidableEq

def frobeniusSurgeryTraceResidue
    (aPSurgery aP omegaP : Int) : FrobeniusSurgeryTraceResidue :=
  let proposedTrace := aP * (1 - omegaP)
  let residue := aPSurgery - proposedTrace
  { aPSurgery := aPSurgery
    aP := aP
    omegaP := omegaP
    transferResidue := residue
    equalityHoldsAtP := decide (residue = 0)
    projectorIdentificationTheoremRequired := true }

structure LocusObstructionNormSurface where
  locusDefinition : String
  obstructionQuotient : String
  obstructionNorm : Nat
  sigmaExpression : String
  sigmaEqualsHalf : Bool
  equivalenceIsByDefinition : Bool
  automaticMidpointTheoremClaim : Bool
deriving Repr, DecidableEq

def locusObstructionNormSurface (obstructionNorm : Nat) :
    LocusObstructionNormSurface :=
  { locusDefinition := "intersection_p_divides_N_kernel_partial_0_p"
    obstructionQuotient := "direct_sum_closed_support_degree_zero_mod_Lambda_locus"
    obstructionNorm := obstructionNorm
    sigmaExpression := "sigma_equals_one_half_plus_abs_Obs_locus"
    sigmaEqualsHalf := decide (obstructionNorm = 0)
    equivalenceIsByDefinition := true
    automaticMidpointTheoremClaim := false }

inductive AnalyticPacketKind where
  | boundaryMapOnly
  | conjugatePair
  | fourfoldReflectionPacket
deriving Repr, DecidableEq

structure AnalyticRealizationPacketSurface where
  realCoefficients : Bool
  functionalReflection : Bool
  packetKind : AnalyticPacketKind
  obstructionHome : String
  rhClaim : Bool
  analyticContinuationClaim : Bool
deriving Repr, DecidableEq

def analyticRealizationPacketSurface
    (realCoefficients functionalReflection : Bool) :
    AnalyticRealizationPacketSurface :=
  let packetKind :=
    if realCoefficients then
      if functionalReflection then
        AnalyticPacketKind.fourfoldReflectionPacket
      else
        AnalyticPacketKind.conjugatePair
    else
      AnalyticPacketKind.boundaryMapOnly
  { realCoefficients := realCoefficients
    functionalReflection := functionalReflection
    packetKind := packetKind
    obstructionHome :=
      "nonzero_closed_support_boundary_class_after_analytic_realization"
    rhClaim := false
    analyticContinuationClaim := false }

theorem frobenius_surgery_trace_equality_is_residue_gated :
    (frobeniusSurgeryTraceResidue 5 7 0).transferResidue = -2 ∧
      (frobeniusSurgeryTraceResidue 5 7 0).equalityHoldsAtP = false ∧
      (frobeniusSurgeryTraceResidue 7 7 0).transferResidue = 0 ∧
      (frobeniusSurgeryTraceResidue 7 7 0).equalityHoldsAtP = true ∧
      FrobeniusSurgeryTraceResidue.projectorIdentificationTheoremRequired
        (frobeniusSurgeryTraceResidue 7 7 0) = true := by
  native_decide

theorem locus_obstruction_norm_defines_midpoint_coupling :
    (locusObstructionNormSurface 0).sigmaEqualsHalf = true ∧
      (locusObstructionNormSurface 3).sigmaEqualsHalf = false ∧
      (locusObstructionNormSurface 3).equivalenceIsByDefinition = true ∧
      (locusObstructionNormSurface 3).automaticMidpointTheoremClaim = false := by
  native_decide

theorem analytic_realization_routes_boundary_residue_to_packets :
    (analyticRealizationPacketSurface false false).packetKind =
        AnalyticPacketKind.boundaryMapOnly ∧
      (analyticRealizationPacketSurface true false).packetKind =
        AnalyticPacketKind.conjugatePair ∧
      (analyticRealizationPacketSurface true true).packetKind =
        AnalyticPacketKind.fourfoldReflectionPacket ∧
      (analyticRealizationPacketSurface true true).rhClaim = false ∧
      (analyticRealizationPacketSurface true true).analyticContinuationClaim =
        false := by
  native_decide

end Think.Arithmetic.DerivedLocalization
