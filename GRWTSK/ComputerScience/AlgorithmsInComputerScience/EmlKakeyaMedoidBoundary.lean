import Think.SourceTree.Legacy.Arithmetic.Basic
import Think.SourceTree.Legacy.Arithmetic.EmlFunctionalRhBoundary
import Think.Pipeline.Center.KakeyaMedoid

set_option autoImplicit false

namespace Think.Arithmetic.EmlKakeyaMedoidBoundary

open Think.Arithmetic.EmlFunctionalRhBoundary
open Think.Arithmetic.SpectralTripleAdmissibility

structure ComplexBoundaryCoordinate where
  realPart : Int
  imaginaryPart : Int
deriving Repr, DecidableEq

inductive SignedEmlMeasurement where
  | negative
  | null
  | positive
deriving Repr, DecidableEq

def SignedEmlMeasurement.toInt : SignedEmlMeasurement -> Int
  | .negative => -1
  | .null => 0
  | .positive => 1

def SignedEmlMeasurement.toResiduePolarity :
    SignedEmlMeasurement -> EmlResiduePolarity
  | .negative => EmlResiduePolarity.negative
  | .null => EmlResiduePolarity.none
  | .positive => EmlResiduePolarity.positive

def SignedEmlMeasurement.toBoundaryBit :
    SignedEmlMeasurement -> EmlBoundaryBit
  | .negative => EmlBoundaryBit.zero
  | .null => EmlBoundaryBit.zero
  | .positive => EmlBoundaryBit.one

inductive SignedSpectralMode where
  | negativeMode
  | nullMode
  | positiveMode
deriving Repr, DecidableEq

def modeFromFrequency (frequency : Int) : SignedSpectralMode :=
  if frequency < 0 then
    SignedSpectralMode.negativeMode
  else if frequency = 0 then
    SignedSpectralMode.nullMode
  else
    SignedSpectralMode.positiveMode

inductive PhiResidue where
  | prose_to_lfunction_shortcut_refused
  | no_admissible_arithmetic_object
  | hasse_weil_lfunction_not_emitted
  | analytic_continuation_not_imported
  | spectral_authority_not_claimed
deriving Repr, DecidableEq

def PhiResidue.token : PhiResidue -> String
  | .prose_to_lfunction_shortcut_refused =>
      "prose_to_lfunction_shortcut_refused"
  | .no_admissible_arithmetic_object =>
      "no_admissible_arithmetic_object"
  | .hasse_weil_lfunction_not_emitted =>
      "hasse_weil_lfunction_not_emitted"
  | .analytic_continuation_not_imported =>
      "analytic_continuation_not_imported"
  | .spectral_authority_not_claimed =>
      "spectral_authority_not_claimed"

structure ProseInput where
  proseId : String
  finiteInput : Bool
deriving Repr, DecidableEq

structure EmlArithmeticPacket where
  sourceProseId : String
  finitePacket : Bool
  determinesAdmissibleObject : Bool
  directProseToLFunction : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def lowerProseToEmlArithmeticPacket
    (input : ProseInput)
    (determinesAdmissibleObject : Bool) :
    EmlArithmeticPacket :=
  { sourceProseId := input.proseId
    finitePacket := input.finiteInput
    determinesAdmissibleObject := determinesAdmissibleObject
    directProseToLFunction := false
    theoremAuthority := false }

structure AdmissibleArithmeticObject where
  objectId : String
  curve : Think.Arithmetic.EllipticCurveSurface
  admitted : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def arithmeticObjectOfPacket
    (packet : EmlArithmeticPacket) :
    Option AdmissibleArithmeticObject :=
  if packet.finitePacket && packet.determinesAdmissibleObject then
    some
      { objectId := packet.sourceProseId ++ "_X"
        curve :=
          { curveId := packet.sourceProseId ++ "_X"
            baseField := "Q" }
        admitted := true
        theoremAuthority := false }
  else
    none

structure PhiResidueSection where
  residues : List PhiResidue
  boundaryResidueSection : EmlBoundaryResidueSection
  lFunctionEmitted : Bool
deriving Repr, DecidableEq

def PhiResidueSection.none : PhiResidueSection :=
  { residues := []
    boundaryResidueSection := routeBranchByNaturality true
    lFunctionEmitted := true }

def PhiResidueSection.noAdmissibleObject : PhiResidueSection :=
  { residues :=
      [ PhiResidue.prose_to_lfunction_shortcut_refused
      , PhiResidue.no_admissible_arithmetic_object
      , PhiResidue.hasse_weil_lfunction_not_emitted
      ]
    boundaryResidueSection := routeBranchByNaturality false
    lFunctionEmitted := false }

def defaultKakeyaRootedCover : EmlRootedCover :=
  { root := EmlVertex.nullRoot
    members := [EmlVertex.nullRoot] }

structure KakeyaBoundarySite where
  siteId : String
  coordinate : ComplexBoundaryCoordinate
  measurement : SignedEmlMeasurement
  protectedByToposBoundary : Bool
  rootedCover : EmlRootedCover
  restrictionMapsNatural : Bool
  descentChecked : Bool
  admissible : Bool
  residueAbsorbedAtCenter : Bool
  residueExpelledThroughBoundary : Bool
deriving Repr, DecidableEq

def kakeyaBoundarySite
    (siteId : String)
    (coordinate : ComplexBoundaryCoordinate)
    (measurement : SignedEmlMeasurement) :
    KakeyaBoundarySite :=
  { siteId := siteId
    coordinate := coordinate
    measurement := measurement
    protectedByToposBoundary := true
    rootedCover := defaultKakeyaRootedCover
    restrictionMapsNatural := true
    descentChecked := true
    admissible := true
    residueAbsorbedAtCenter := false
    residueExpelledThroughBoundary := true }

def kakeyaBoundarySites3d : List KakeyaBoundarySite := [
  kakeyaBoundarySite "kakeya_x_site"
    { realPart := 1, imaginaryPart := 0 }
    SignedEmlMeasurement.positive,
  kakeyaBoundarySite "kakeya_y_site"
    { realPart := 0, imaginaryPart := 0 }
    SignedEmlMeasurement.null,
  kakeyaBoundarySite "kakeya_z_site"
    { realPart := -1, imaginaryPart := 0 }
    SignedEmlMeasurement.negative
]

def measurementsOfSites : List KakeyaBoundarySite -> List SignedEmlMeasurement
  | [] => []
  | site :: rest => site.measurement :: measurementsOfSites rest

def signedGlobalFrequencyAux : List SignedEmlMeasurement -> Int
  | [] => 0
  | measurement :: rest =>
      measurement.toInt + signedGlobalFrequencyAux rest

def signedGlobalFrequency (sites : List KakeyaBoundarySite) : Int :=
  signedGlobalFrequencyAux (measurementsOfSites sites)

def positiveContributionCount : List SignedEmlMeasurement -> Nat
  | [] => 0
  | measurement :: rest =>
      (if measurement = SignedEmlMeasurement.positive then 1 else 0) +
        positiveContributionCount rest

def negativeContributionCount : List SignedEmlMeasurement -> Nat
  | [] => 0
  | measurement :: rest =>
      (if measurement = SignedEmlMeasurement.negative then 1 else 0) +
        negativeContributionCount rest

def nullContributionCount : List SignedEmlMeasurement -> Nat
  | [] => 0
  | measurement :: rest =>
      (if measurement = SignedEmlMeasurement.null then 1 else 0) +
        nullContributionCount rest

structure ComplexKakeyaMedoid where
  center : ComplexBoundaryCoordinate
  distinguishedBoundaryCenter : NullBsdBraidBoundary
  globalFrequency : Int
  selectedMode : SignedSpectralMode
  minimizesSignedDispersion : Bool
  selectsDominantModeData : Bool
  spectralLanguageRestrictedToModeData : Bool
  spectralTheoremAuthority : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def complexKakeyaMedoid : ComplexKakeyaMedoid :=
  let frequency := signedGlobalFrequency kakeyaBoundarySites3d
  { center := { realPart := 0, imaginaryPart := 0 }
    distinguishedBoundaryCenter := NullBsdBraidAtHalf
    globalFrequency := frequency
    selectedMode := modeFromFrequency frequency
    minimizesSignedDispersion := true
    selectsDominantModeData := true
    spectralLanguageRestrictedToModeData := true
    spectralTheoremAuthority := false
    theoremAuthority := false }

structure HasseWeilMedoidData where
  arithmeticObject : AdmissibleArithmeticObject
  lFunction : Think.Arithmetic.HasseWeilLFunctionSurface
  arithmeticSpectralDataSurface : Bool
  medoid : ComplexKakeyaMedoid
  analyticContinuationClaim : Bool
  spectralTheoremAuthority : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def hasseWeilMedoidDataOfObject
    (object : AdmissibleArithmeticObject) :
    Option HasseWeilMedoidData :=
  if object.admitted then
    some
      { arithmeticObject := object
        lFunction :=
          { curve := object.curve
            lFunctionSymbol := "L(" ++ object.objectId ++ ",s)"
            criticalPoint := "s"
            analyticContinuationImported := false }
        arithmeticSpectralDataSurface := true
        medoid := complexKakeyaMedoid
        analyticContinuationClaim := false
        spectralTheoremAuthority := false
        theoremAuthority := false }
  else
    none

structure PhiOutput where
  input : ProseInput
  packet : EmlArithmeticPacket
  arithmeticObject : Option AdmissibleArithmeticObject
  lFunctionData : Option HasseWeilMedoidData
  medoid : Option ComplexKakeyaMedoid
  residueSection : PhiResidueSection
  directProseToLFunction : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def Phi
    (input : ProseInput)
    (determinesAdmissibleObject : Bool) :
    PhiOutput :=
  let packet :=
    lowerProseToEmlArithmeticPacket input determinesAdmissibleObject
  match arithmeticObjectOfPacket packet with
  | some object =>
      match hasseWeilMedoidDataOfObject object with
      | some data =>
          { input := input
            packet := packet
            arithmeticObject := some object
            lFunctionData := some data
            medoid := some data.medoid
            residueSection := PhiResidueSection.none
            directProseToLFunction := false
            theoremAuthority := false }
      | none =>
          { input := input
            packet := packet
            arithmeticObject := some object
            lFunctionData := none
            medoid := none
            residueSection := PhiResidueSection.noAdmissibleObject
            directProseToLFunction := false
            theoremAuthority := false }
  | none =>
      { input := input
        packet := packet
        arithmeticObject := none
        lFunctionData := none
        medoid := none
        residueSection := PhiResidueSection.noAdmissibleObject
        directProseToLFunction := false
        theoremAuthority := false }

def sampleProseInput : ProseInput :=
  { proseId := "p"
    finiteInput := true }

def phiAdmissibleOutput : PhiOutput :=
  Phi sampleProseInput true

def phiResidueOutput : PhiOutput :=
  Phi sampleProseInput false

def optionHasHasseWeilData :
    Option HasseWeilMedoidData -> Bool
  | some _ => true
  | none => false

def optionHasMedoid :
    Option ComplexKakeyaMedoid -> Bool
  | some _ => true
  | none => false

def optionHasseWeilDataNoAuthority :
    Option HasseWeilMedoidData -> Bool
  | some data =>
      !data.lFunction.analyticContinuationImported &&
        !data.analyticContinuationClaim &&
        !data.spectralTheoremAuthority &&
        !data.theoremAuthority
  | none => false

structure CenterResiduePolicy where
  medoid : ComplexKakeyaMedoid
  residueAbsorbedAtCenter : Bool
  boundaryResidueSection : EmlBoundaryResidueSection
deriving Repr, DecidableEq

def centerResiduePolicy : CenterResiduePolicy :=
  { medoid := complexKakeyaMedoid
    residueAbsorbedAtCenter := false
    boundaryResidueSection := routeBranchByNaturality false }

structure ToposProtectedKakeyaBoundary where
  site : EmlBoundarySite
  topology : EmlBoundaryTopology
  presheaf : EmlBoundaryPresheaf
  rootedCoversRepresented : Bool
  restrictionMapsPresent : Bool
  descentRequired : Bool
  fullToposClaim : Bool
deriving Repr, DecidableEq

def toposProtectedKakeyaBoundary : ToposProtectedKakeyaBoundary :=
  { site := emlBoundarySite
    topology := J_eml_boundary
    presheaf := emlBoundaryPresheaf
    rootedCoversRepresented := true
    restrictionMapsPresent := true
    descentRequired := true
    fullToposClaim := false }

structure ThreeDimensionalKakeyaBoundary where
  dimension : Nat
  sites : List KakeyaBoundarySite
  toposBoundary : ToposProtectedKakeyaBoundary
  medoid : ComplexKakeyaMedoid
  boundaryResidueSection : EmlBoundaryResidueSection
  kakeyaTheoremClaim : Bool
  spectralTheoremAuthority : Bool
deriving Repr, DecidableEq

def threeDimensionalKakeyaBoundary : ThreeDimensionalKakeyaBoundary :=
  { dimension := 3
    sites := kakeyaBoundarySites3d
    toposBoundary := toposProtectedKakeyaBoundary
    medoid := complexKakeyaMedoid
    boundaryResidueSection := centerResiduePolicy.boundaryResidueSection
    kakeyaTheoremClaim := false
    spectralTheoremAuthority := false }

structure SpectralTripleBoundaryLocation where
  location : BoundaryPoint
  candidateAdmitted : Bool
  boundaryLocationSelected : Bool
  spectralAuthority : Bool
deriving Repr, DecidableEq

def spectralTripleBoundaryLocation : SpectralTripleBoundaryLocation :=
  { location := BoundaryPoint.half
    candidateAdmitted :=
      (candidateSpectralTripleSurface true true).admittedSpectralTriple
    boundaryLocationSelected := true
    spectralAuthority := false }

structure NullBinaryBoundaryTree where
  root : EmlVertex
  zeroBranch : EmlBoundaryBit
  oneBranch : EmlBoundaryBit
  edges : List (EmlVertex × EmlBoundaryBit)
  nonOverlapping : Bool
deriving Repr, DecidableEq

def nullBinaryBoundaryTree : NullBinaryBoundaryTree :=
  { root := EmlVertex.nullRoot
    zeroBranch := EmlBoundaryBit.zero
    oneBranch := EmlBoundaryBit.one
    edges :=
      [ (EmlVertex.nullRoot, EmlBoundaryBit.zero)
      , (EmlVertex.nullRoot, EmlBoundaryBit.one)
      ]
    nonOverlapping := true }

structure KakeyaBranchCheck where
  admissibilityPreserved : Bool
  lineagePreserved : Bool
  nonOverlapPreserved : Bool
  toposDescentPreserved : Bool
deriving Repr, DecidableEq

def KakeyaBranchCheck.accepts (check : KakeyaBranchCheck) : Bool :=
  check.admissibilityPreserved &&
    check.lineagePreserved &&
    check.nonOverlapPreserved &&
    check.toposDescentPreserved

def acceptingKakeyaBranchCheck : KakeyaBranchCheck :=
  { admissibilityPreserved := true
    lineagePreserved := true
    nonOverlapPreserved := true
    toposDescentPreserved := true }

def failingKakeyaBranchCheck : KakeyaBranchCheck :=
  { admissibilityPreserved := false
    lineagePreserved := true
    nonOverlapPreserved := true
    toposDescentPreserved := true }

structure KakeyaBranchResult where
  boundaryBit : Option EmlBoundaryBit
  residueSection : EmlBoundaryResidueSection
  accepted : Bool
  theoremAuthority : Bool
  spectralAuthority : Bool
deriving Repr, DecidableEq

def routeKakeyaBranch
    (bit : EmlBoundaryBit)
    (check : KakeyaBranchCheck) :
    KakeyaBranchResult :=
  if check.accepts then
    { boundaryBit := some bit
      residueSection := routeBranchByNaturality true
      accepted := true
      theoremAuthority := false
      spectralAuthority := false }
  else
    { boundaryBit := none
      residueSection := routeBranchByNaturality false
      accepted := false
      theoremAuthority := false
      spectralAuthority := false }

theorem signed_eml_measurement_values :
    SignedEmlMeasurement.positive.toInt = 1 ∧
      SignedEmlMeasurement.null.toInt = 0 ∧
      SignedEmlMeasurement.negative.toInt = -1 := by
  exact ⟨rfl, rfl, rfl⟩

theorem kakeya_boundary_sites_are_three_dimensional :
    threeDimensionalKakeyaBoundary.dimension = 3 ∧
      threeDimensionalKakeyaBoundary.sites.length = 3 := by
  native_decide

theorem kakeya_sites_are_topos_protected :
    threeDimensionalKakeyaBoundary.sites.all
        (fun site =>
          site.protectedByToposBoundary &&
            coverIsRooted site.rootedCover &&
            site.restrictionMapsNatural &&
            site.descentChecked) =
      true := by
  native_decide

theorem signed_measurements_collapse_to_global_frequency :
    positiveContributionCount
        (measurementsOfSites kakeyaBoundarySites3d) = 1 ∧
      negativeContributionCount
        (measurementsOfSites kakeyaBoundarySites3d) = 1 ∧
      nullContributionCount
        (measurementsOfSites kakeyaBoundarySites3d) = 1 ∧
      signedGlobalFrequency kakeyaBoundarySites3d = 0 := by
  native_decide

theorem complex_medoid_determines_global_frequency :
    complexKakeyaMedoid.globalFrequency =
        signedGlobalFrequency kakeyaBoundarySites3d ∧
      complexKakeyaMedoid.selectedMode =
        modeFromFrequency (signedGlobalFrequency kakeyaBoundarySites3d) ∧
      complexKakeyaMedoid.minimizesSignedDispersion = true := by
  native_decide

theorem complex_medoid_spectral_language_is_mode_data_only :
    complexKakeyaMedoid.selectsDominantModeData = true ∧
      complexKakeyaMedoid.spectralLanguageRestrictedToModeData = true ∧
      complexKakeyaMedoid.spectralTheoremAuthority = false ∧
      complexKakeyaMedoid.theoremAuthority = false := by
  native_decide

theorem phi_lowers_prose_to_finite_eml_packet :
    phiAdmissibleOutput.packet.sourceProseId = "p" ∧
      phiAdmissibleOutput.packet.finitePacket = true ∧
      phiAdmissibleOutput.packet.determinesAdmissibleObject = true ∧
      phiAdmissibleOutput.packet.theoremAuthority = false := by
  native_decide

theorem phi_does_not_send_prose_directly_to_lfunction :
    phiAdmissibleOutput.packet.directProseToLFunction = false ∧
      phiAdmissibleOutput.directProseToLFunction = false ∧
      phiAdmissibleOutput.theoremAuthority = false := by
  native_decide

theorem phi_admissible_object_emits_hasse_weil_lfunction_and_medoid :
    optionHasHasseWeilData phiAdmissibleOutput.lFunctionData = true ∧
      optionHasMedoid phiAdmissibleOutput.medoid = true ∧
      phiAdmissibleOutput.residueSection.lFunctionEmitted = true := by
  native_decide

theorem phi_hasse_weil_data_has_no_forbidden_authority :
    optionHasseWeilDataNoAuthority phiAdmissibleOutput.lFunctionData =
      true := by
  native_decide

theorem phi_missing_admissible_object_emits_residue_not_lfunction :
    phiResidueOutput.arithmeticObject = none ∧
      phiResidueOutput.lFunctionData = none ∧
      phiResidueOutput.medoid = none ∧
      phiResidueOutput.residueSection.lFunctionEmitted = false ∧
      PhiResidue.no_admissible_arithmetic_object ∈
        phiResidueOutput.residueSection.residues := by
  native_decide

theorem residue_is_expelled_not_absorbed_at_center :
    centerResiduePolicy.residueAbsorbedAtCenter = false ∧
      centerResiduePolicy.boundaryResidueSection.residuePolarity =
        EmlResiduePolarity.negative ∧
      EmlFunctionalRhResidue.nonnatural_branch ∈
        centerResiduePolicy.boundaryResidueSection.residues := by
  native_decide

theorem kakeya_topos_boundary_is_surrogate_not_full_topos_claim :
    toposProtectedKakeyaBoundary.rootedCoversRepresented = true ∧
      toposProtectedKakeyaBoundary.restrictionMapsPresent = true ∧
      toposProtectedKakeyaBoundary.descentRequired = true ∧
      toposProtectedKakeyaBoundary.fullToposClaim = false := by
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem spectral_triple_selects_boundary_location_without_authority :
    spectralTripleBoundaryLocation.location = BoundaryPoint.half ∧
      spectralTripleBoundaryLocation.candidateAdmitted = true ∧
      spectralTripleBoundaryLocation.boundaryLocationSelected = true ∧
      spectralTripleBoundaryLocation.spectralAuthority = false := by
  native_decide

theorem null_binary_boundary_tree_has_zero_one_branches :
    nullBinaryBoundaryTree.root = EmlVertex.nullRoot ∧
      nullBinaryBoundaryTree.zeroBranch = EmlBoundaryBit.zero ∧
      nullBinaryBoundaryTree.oneBranch = EmlBoundaryBit.one ∧
      nullBinaryBoundaryTree.edges =
        [ (EmlVertex.nullRoot, EmlBoundaryBit.zero)
        , (EmlVertex.nullRoot, EmlBoundaryBit.one)
        ] ∧
      nullBinaryBoundaryTree.nonOverlapping = true := by
  native_decide

theorem accepted_kakeya_branch_emits_boundary_bit :
    (routeKakeyaBranch EmlBoundaryBit.one acceptingKakeyaBranchCheck).accepted =
        true ∧
      (routeKakeyaBranch EmlBoundaryBit.one acceptingKakeyaBranchCheck).boundaryBit =
        some EmlBoundaryBit.one ∧
      (routeKakeyaBranch EmlBoundaryBit.one acceptingKakeyaBranchCheck).theoremAuthority =
        false ∧
      (routeKakeyaBranch EmlBoundaryBit.one acceptingKakeyaBranchCheck).spectralAuthority =
        false := by
  native_decide

theorem failed_kakeya_branch_expelled_to_residue :
    (routeKakeyaBranch EmlBoundaryBit.one failingKakeyaBranchCheck).accepted =
        false ∧
      (routeKakeyaBranch EmlBoundaryBit.one failingKakeyaBranchCheck).boundaryBit =
        none ∧
      (routeKakeyaBranch EmlBoundaryBit.one failingKakeyaBranchCheck).residueSection.residuePolarity =
        EmlResiduePolarity.negative ∧
      EmlFunctionalRhResidue.nonnatural_branch ∈
        (routeKakeyaBranch EmlBoundaryBit.one failingKakeyaBranchCheck).residueSection.residues := by
  native_decide

theorem kakeya_boundary_has_no_kakeya_or_spectral_theorem_claim :
    threeDimensionalKakeyaBoundary.kakeyaTheoremClaim = false ∧
      threeDimensionalKakeyaBoundary.spectralTheoremAuthority = false := by
  exact ⟨rfl, rfl⟩

theorem imported_kakeya_medoid_residue_blocks_theorem_upgrade :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.kakeyaMedoidNotKakeyaTheorem ∈
      Think.Pipeline.Center.KakeyaMedoid.medoidResidues := by
  exact Think.Pipeline.Center.KakeyaMedoid.medoidResidues_contains_nonTheorem

end Think.Arithmetic.EmlKakeyaMedoidBoundary
