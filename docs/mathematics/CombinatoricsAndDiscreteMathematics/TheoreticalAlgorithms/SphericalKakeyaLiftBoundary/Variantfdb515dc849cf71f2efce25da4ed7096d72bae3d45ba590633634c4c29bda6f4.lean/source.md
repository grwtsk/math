# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SphericalKakeyaLiftBoundary.Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15712ec73c7da2bf44a4f95c367dbd67a0c86ff6` · SHA-256 `eda6a5e8ab6d64898cf65f69e04fc5cb2e5548d65a665fc09e9990e742facbde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SphericalLiftResidue.Variant069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SphericalLiftResidue.Variant069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39","mathematical_subject":"Computation.DataStructures","original_sha256":"069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Arithmetic/SphericalKakeyaLiftBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Arithmetic.SpectralTripleToposBoundary


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SphericalLiftResidue.Variant069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39

set_option autoImplicit false

namespace Think.Arithmetic.SphericalKakeyaLiftBoundary

open Think.Arithmetic.EmlFunctionalRhBoundary
open Think.Arithmetic.EmlTorsionScatteringBoundary
open Think.Arithmetic.EmlKakeyaMedoidBoundary

inductive SphericalLiftResidue where
  | nonfinite_eml_site
  | branch_coordinate_outside_unit_interval
  | torsion_height_denominator_zero
  | direct_medoid_lift_refused
  | degenerate_or_nonadmissible_site
  | spectral_theorem_authority_not_claimed
deriving Repr, DecidableEq

def SphericalLiftResidue.token : SphericalLiftResidue -> String
  | .nonfinite_eml_site => "nonfinite_eml_site"
  | .branch_coordinate_outside_unit_interval =>
      "branch_coordinate_outside_unit_interval"
  | .torsion_height_denominator_zero =>
      "torsion_height_denominator_zero"
  | .direct_medoid_lift_refused =>
      "direct_medoid_lift_refused"
  | .degenerate_or_nonadmissible_site =>
      "degenerate_or_nonadmissible_site"
  | .spectral_theorem_authority_not_claimed =>
      "spectral_theorem_authority_not_claimed"

inductive VerticalSign where
  | negative
  | balanced
  | positive
deriving Repr, DecidableEq

def VerticalSign.toInt : VerticalSign -> Int
  | .negative => -1
  | .balanced => 0
  | .positive => 1

def verticalSignOfNumerator (numerator : Int) : VerticalSign :=
  if numerator < 0 then
    VerticalSign.negative
  else if numerator = 0 then
    VerticalSign.balanced
  else
    VerticalSign.positive

def intAbsNat (value : Int) : Nat :=
  if value < 0 then
    Int.toNat (-value)
  else
    Int.toNat value

inductive LongitudeSource where
  | complex_arg
  | branch_coordinate
deriving Repr, DecidableEq

structure SphericalLongitude where
  source : LongitudeSource
  phaseToken : Nat
deriving Repr, DecidableEq

structure SignedTorsionHeight where
  numerator : Int
  denominator : Nat
  sign : VerticalSign
deriving Repr, DecidableEq

structure FiniteEmlSphericalSite where
  siteId : String
  branchNumerator : Nat
  branchDenominator : Nat
  complexPhaseToken : Option Nat
  torsionCoordinate : TorsionClass
  positiveTorsionDistance : Nat
  negativeTorsionDistance : Nat
  epsilon : Nat
  weight : Nat
  residueBefore : Nat
  residueAfter : Nat
  finiteSite : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def branchInUnitInterval (site : FiniteEmlSphericalSite) : Bool :=
  decide (site.branchNumerator <= site.branchDenominator) &&
    decide (0 < site.branchDenominator)

def torsionHeightDenominator (site : FiniteEmlSphericalSite) : Nat :=
  site.positiveTorsionDistance +
    site.negativeTorsionDistance +
    site.epsilon

def torsionHeightNumerator (site : FiniteEmlSphericalSite) : Int :=
  Int.ofNat site.negativeTorsionDistance -
    Int.ofNat site.positiveTorsionDistance

def signedTorsionHeight (site : FiniteEmlSphericalSite) :
    SignedTorsionHeight :=
  let numerator := torsionHeightNumerator site
  { numerator := numerator
    denominator := torsionHeightDenominator site
    sign := verticalSignOfNumerator numerator }

def siteAdmissibleForSphericalLift
    (site : FiniteEmlSphericalSite) : Bool :=
  site.finiteSite &&
    site.torsionCoordinate.admissible &&
    branchInUnitInterval site &&
    decide (0 < torsionHeightDenominator site) &&
    !site.theoremAuthority

def longitudeOfSite (site : FiniteEmlSphericalSite) :
    SphericalLongitude :=
  match site.complexPhaseToken with
  | some phaseToken =>
      { source := LongitudeSource.complex_arg
        phaseToken := phaseToken }
  | none =>
      { source := LongitudeSource.branch_coordinate
        phaseToken := site.branchNumerator }

structure SymbolicSphericalPoint where
  longitude : SphericalLongitude
  signedHeight : SignedTorsionHeight
  radialSymbol : String
  xSymbol : String
  ySymbol : String
  zSymbol : String
  onSphereSymbolic : Bool
deriving Repr, DecidableEq

def symbolicSphericalPoint
    (site : FiniteEmlSphericalSite) :
    SymbolicSphericalPoint :=
  { longitude := longitudeOfSite site
    signedHeight := signedTorsionHeight site
    radialSymbol := "sqrt(1-z^2)"
    xSymbol := "sqrt(1-z^2)*cos(theta)"
    ySymbol := "sqrt(1-z^2)*sin(theta)"
    zSymbol := "z"
    onSphereSymbolic := true }

structure SphericalLiftedSite where
  sourceSite : FiniteEmlSphericalSite
  point : SymbolicSphericalPoint
  liftedBeforeMedoid : Bool
  admissibleLift : Bool
  residues : List SphericalLiftResidue
  theoremAuthority : Bool
deriving Repr, DecidableEq

def siteLiftResidues
    (site : FiniteEmlSphericalSite) :
    List SphericalLiftResidue :=
  (if site.finiteSite then
    []
  else
    [SphericalLiftResidue.nonfinite_eml_site]) ++
    (if branchInUnitInterval site then
      []
    else
      [SphericalLiftResidue.branch_coordinate_outside_unit_interval]) ++
    (if 0 < torsionHeightDenominator site then
      []
    else
      [SphericalLiftResidue.torsion_height_denominator_zero]) ++
    (if siteAdmissibleForSphericalLift site then
      []
    else
      [SphericalLiftResidue.degenerate_or_nonadmissible_site]) ++
    [SphericalLiftResidue.spectral_theorem_authority_not_claimed]

def sphericalLiftSite
    (site : FiniteEmlSphericalSite) :
    SphericalLiftedSite :=
  { sourceSite := site
    point := symbolicSphericalPoint site
    liftedBeforeMedoid := true
    admissibleLift := siteAdmissibleForSphericalLift site
    residues := siteLiftResidues site
    theoremAuthority := false }

def liftAllFiniteSites :
    List FiniteEmlSphericalSite -> List SphericalLiftedSite
  | [] => []
  | site :: rest => sphericalLiftSite site :: liftAllFiniteSites rest

def allSitesLiftedBeforeMedoid :
    List SphericalLiftedSite -> Bool
  | [] => true
  | site :: rest =>
      site.liftedBeforeMedoid && allSitesLiftedBeforeMedoid rest

def verticalSignDistance
    (left right : VerticalSign) : Nat :=
  match left, right with
  | VerticalSign.positive, VerticalSign.positive => 0
  | VerticalSign.negative, VerticalSign.negative => 0
  | VerticalSign.balanced, VerticalSign.balanced => 0
  | VerticalSign.positive, VerticalSign.negative => 4
  | VerticalSign.negative, VerticalSign.positive => 4
  | _, _ => 1

def natAbsDiff (left right : Nat) : Nat :=
  if left <= right then
    right - left
  else
    left - right

def finiteSphericalDistanceSquared
    (left right : SphericalLiftedSite) : Nat :=
  verticalSignDistance
      left.point.signedHeight.sign
      right.point.signedHeight.sign +
    natAbsDiff
      left.point.longitude.phaseToken
      right.point.longitude.phaseToken

def sphericalMedoidObjective
    (sites : List SphericalLiftedSite)
    (candidate : SphericalLiftedSite) : Nat :=
  (sites.map (fun site =>
    site.sourceSite.weight *
      finiteSphericalDistanceSquared candidate site)).foldl Nat.add 0

def sphericalMedoidBetter
    (sites : List SphericalLiftedSite)
    (left right : SphericalLiftedSite) : Bool :=
  let leftObjective := sphericalMedoidObjective sites left
  let rightObjective := sphericalMedoidObjective sites right
  if leftObjective < rightObjective then
    true
  else if rightObjective < leftObjective then
    false
  else
    left.sourceSite.branchNumerator <= right.sourceSite.branchNumerator

def chooseSphericalMedoid
    (sites : List SphericalLiftedSite) :
    List SphericalLiftedSite -> SphericalLiftedSite -> SphericalLiftedSite
  | [], best => best
  | candidate :: rest, best =>
      chooseSphericalMedoid sites rest
        (if sphericalMedoidBetter sites candidate best then
          candidate
        else
          best)

def sphericalMedoidOfLiftedSites
    (sites : List SphericalLiftedSite) :
    Option SphericalLiftedSite :=
  match sites with
  | [] => none
  | first :: rest => some (chooseSphericalMedoid sites rest first)

structure SphericalMedoidSelection where
  liftedSites : List SphericalLiftedSite
  medoid : Option SphericalLiftedSite
  selectedAfterLift : Bool
  directImageOfComplexMedoid : Bool
  residues : List SphericalLiftResidue
  theoremAuthority : Bool
deriving Repr, DecidableEq

def sphericalMedoidSelection
    (sites : List FiniteEmlSphericalSite) :
    SphericalMedoidSelection :=
  let lifted := liftAllFiniteSites sites
  { liftedSites := lifted
    medoid := sphericalMedoidOfLiftedSites lifted
    selectedAfterLift := true
    directImageOfComplexMedoid := false
    residues :=
      [ SphericalLiftResidue.direct_medoid_lift_refused
      , SphericalLiftResidue.spectral_theorem_authority_not_claimed
      ]
    theoremAuthority := false }

def heightExceedsThreshold
    (height : SignedTorsionHeight)
    (kappaNumerator kappaDenominator : Nat) : Bool :=
  decide
    (kappaNumerator * height.denominator <
      intAbsNat height.numerator * kappaDenominator)

def residueDecreases (site : FiniteEmlSphericalSite) : Bool :=
  decide (site.residueAfter < site.residueBefore)

def boundaryBitFromLiftedSite
    (kappaNumerator kappaDenominator : Nat)
    (site : SphericalLiftedSite) :
    EmlBoundaryBit :=
  if heightExceedsThreshold
      site.point.signedHeight
      kappaNumerator
      kappaDenominator &&
    residueDecreases site.sourceSite then
    EmlBoundaryBit.one
  else
    EmlBoundaryBit.zero

structure TangentScatterDirection where
  torsionClass : TorsionClass
  scatterOutput : ScatteringProgression
  tangentProjectionToSphere : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def tangentScatterDirection
    (site : SphericalLiftedSite) :
    TangentScatterDirection :=
  { torsionClass := site.sourceSite.torsionCoordinate
    scatterOutput := scatterTorsionClass site.sourceSite.torsionCoordinate
    tangentProjectionToSphere := site.admissibleLift
    theoremAuthority := false }

structure KakeyaTubeGrain3D where
  basePoint : SymbolicSphericalPoint
  direction : TangentScatterDirection
  radius : Nat
  length : Nat
  geodesicSegmentFinite : Bool
  orientedTubeAroundSphericalLift : Bool
  kakeyaTheoremClaim : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def kakeyaTubeGrainAtLiftedSite
    (radius length : Nat)
    (site : SphericalLiftedSite) :
    KakeyaTubeGrain3D :=
  { basePoint := site.point
    direction := tangentScatterDirection site
    radius := radius
    length := length
    geodesicSegmentFinite := true
    orientedTubeAroundSphericalLift := true
    kakeyaTheoremClaim := false
    theoremAuthority := false }

def weightedVerticalSign (site : SphericalLiftedSite) : Int :=
  Int.ofNat site.sourceSite.weight *
    site.point.signedHeight.sign.toInt

def signedFrequencyCollapse :
    List SphericalLiftedSite -> Int
  | [] => 0
  | site :: rest => weightedVerticalSign site + signedFrequencyCollapse rest

def totalWeight :
    List SphericalLiftedSite -> Nat
  | [] => 0
  | site :: rest => site.sourceSite.weight + totalWeight rest

structure NormalizedFrequency where
  numerator : Int
  denominator : Nat
deriving Repr, DecidableEq

def normalizedFrequency
    (sites : List SphericalLiftedSite) :
    NormalizedFrequency :=
  { numerator := signedFrequencyCollapse sites
    denominator := totalWeight sites }

def medoidFrequencySign
    (selection : SphericalMedoidSelection) :
    Option VerticalSign :=
  match selection.medoid with
  | some medoid => some medoid.point.signedHeight.sign
  | none => none

structure FiniteSphericalSpectralOperator where
  liftedSites : List SphericalLiftedSite
  adjacencyFinite : Bool
  signedWeightsFinite : Bool
  laplacianFinite : Bool
  selfAdjointBySymmetricFiniteWeights : Bool
  spectralLanguageFiniteBoundaryOnly : Bool
  rhClaim : Bool
  bsdClaim : Bool
  analyticContinuationClaim : Bool
  spectralTheoremAuthority : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def finiteSphericalSpectralOperator
    (sites : List SphericalLiftedSite) :
    FiniteSphericalSpectralOperator :=
  { liftedSites := sites
    adjacencyFinite := true
    signedWeightsFinite := true
    laplacianFinite := true
    selfAdjointBySymmetricFiniteWeights := true
    spectralLanguageFiniteBoundaryOnly := true
    rhClaim := false
    bsdClaim := false
    analyticContinuationClaim := false
    spectralTheoremAuthority := false
    theoremAuthority := false }

structure SphericalKakeyaLiftSurface where
  finiteSites : List FiniteEmlSphericalSite
  liftedSites : List SphericalLiftedSite
  medoidSelection : SphericalMedoidSelection
  tubeGrains : List KakeyaTubeGrain3D
  frequency : Int
  normalizedFrequency : NormalizedFrequency
  medoidFrequency : Option VerticalSign
  spectralOperator : FiniteSphericalSpectralOperator
  theoremAuthority : Bool
deriving Repr, DecidableEq

def buildSphericalKakeyaLiftSurface
    (radius length : Nat)
    (sites : List FiniteEmlSphericalSite) :
    SphericalKakeyaLiftSurface :=
  let lifted := liftAllFiniteSites sites
  let selection := sphericalMedoidSelection sites
  { finiteSites := sites
    liftedSites := lifted
    medoidSelection := selection
    tubeGrains := lifted.map (kakeyaTubeGrainAtLiftedSite radius length)
    frequency := signedFrequencyCollapse lifted
    normalizedFrequency := normalizedFrequency lifted
    medoidFrequency := medoidFrequencySign selection
    spectralOperator := finiteSphericalSpectralOperator lifted
    theoremAuthority := false }

def positiveSphericalSite : FiniteEmlSphericalSite :=
  { siteId := "spherical_positive_site"
    branchNumerator := 0
    branchDenominator := 1
    complexPhaseToken := some 0
    torsionCoordinate := positiveTorsionClass
    positiveTorsionDistance := 1
    negativeTorsionDistance := 3
    epsilon := 1
    weight := 3
    residueBefore := 2
    residueAfter := 1
    finiteSite := true
    theoremAuthority := false }

def negativeSphericalSite : FiniteEmlSphericalSite :=
  { siteId := "spherical_negative_site"
    branchNumerator := 1
    branchDenominator := 1
    complexPhaseToken := none
    torsionCoordinate := negativeTorsionClass
    positiveTorsionDistance := 3
    negativeTorsionDistance := 1
    epsilon := 1
    weight := 1
    residueBefore := 1
    residueAfter := 1
    finiteSite := true
    theoremAuthority := false }

def balancedSphericalSite : FiniteEmlSphericalSite :=
  { siteId := "spherical_balanced_site"
    branchNumerator := 1
    branchDenominator := 2
    complexPhaseToken := none
    torsionCoordinate := zeroTorsionClass
    positiveTorsionDistance := 2
    negativeTorsionDistance := 2
    epsilon := 1
    weight := 1
    residueBefore := 1
    residueAfter := 1
    finiteSite := true
    theoremAuthority := false }

def sampleSphericalSites : List FiniteEmlSphericalSite := [
  positiveSphericalSite,
  negativeSphericalSite
]

def sampleSphericalLiftSurface : SphericalKakeyaLiftSurface :=
  buildSphericalKakeyaLiftSurface 1 2 sampleSphericalSites

theorem signed_torsion_height_detects_positive_negative_balanced :
    (signedTorsionHeight positiveSphericalSite).sign =
        VerticalSign.positive ∧
      (signedTorsionHeight negativeSphericalSite).sign =
        VerticalSign.negative ∧
      (signedTorsionHeight balancedSphericalSite).sign =
        VerticalSign.balanced := by
  native_decide

theorem complex_phase_fallback_to_branch_coordinate :
    (longitudeOfSite positiveSphericalSite).source =
        LongitudeSource.complex_arg ∧
      (longitudeOfSite negativeSphericalSite).source =
        LongitudeSource.branch_coordinate := by
  native_decide

theorem every_site_lifted_before_spherical_medoid :
    sampleSphericalLiftSurface.liftedSites =
        liftAllFiniteSites sampleSphericalSites ∧
      sampleSphericalLiftSurface.medoidSelection.liftedSites =
        liftAllFiniteSites sampleSphericalSites ∧
      allSitesLiftedBeforeMedoid
        sampleSphericalLiftSurface.medoidSelection.liftedSites =
        true ∧
      sampleSphericalLiftSurface.medoidSelection.selectedAfterLift =
        true ∧
      sampleSphericalLiftSurface.medoidSelection.directImageOfComplexMedoid =
        false := by
  native_decide

theorem spherical_medoid_recomputed_on_lifted_cloud :
    (sampleSphericalLiftSurface.medoidSelection.medoid.map
      (fun site => site.sourceSite.siteId)) =
        some "spherical_positive_site" ∧
      SphericalLiftResidue.direct_medoid_lift_refused ∈
        sampleSphericalLiftSurface.medoidSelection.residues := by
  native_decide

theorem boundary_bit_uses_height_and_residue_decrease :
    boundaryBitFromLiftedSite 1 10
        (sphericalLiftSite positiveSphericalSite) =
        EmlBoundaryBit.one ∧
      boundaryBitFromLiftedSite 1 10
        (sphericalLiftSite negativeSphericalSite) =
        EmlBoundaryBit.zero ∧
      boundaryBitFromLiftedSite 1 10
        (sphericalLiftSite balancedSphericalSite) =
        EmlBoundaryBit.zero := by
  native_decide

theorem kakeya_grain_is_tube_at_lifted_site :
    (kakeyaTubeGrainAtLiftedSite 1 2
        (sphericalLiftSite positiveSphericalSite)).basePoint =
        (sphericalLiftSite positiveSphericalSite).point ∧
      (kakeyaTubeGrainAtLiftedSite 1 2
        (sphericalLiftSite positiveSphericalSite)).direction.scatterOutput =
        ScatteringProgression.positive_progression ∧
      (kakeyaTubeGrainAtLiftedSite 1 2
        (sphericalLiftSite positiveSphericalSite)).orientedTubeAroundSphericalLift =
        true ∧
      (kakeyaTubeGrainAtLiftedSite 1 2
        (sphericalLiftSite positiveSphericalSite)).kakeyaTheoremClaim =
        false := by
  native_decide

theorem frequency_collapse_records_positive_mode :
    sampleSphericalLiftSurface.frequency = 2 ∧
      sampleSphericalLiftSurface.normalizedFrequency.numerator = 2 ∧
      sampleSphericalLiftSurface.normalizedFrequency.denominator = 4 ∧
      sampleSphericalLiftSurface.medoidFrequency =
        some VerticalSign.positive := by
  native_decide

theorem finite_spectral_language_stays_boundary_level :
    sampleSphericalLiftSurface.spectralOperator.adjacencyFinite = true ∧
      sampleSphericalLiftSurface.spectralOperator.laplacianFinite = true ∧
      sampleSphericalLiftSurface.spectralOperator.spectralLanguageFiniteBoundaryOnly =
        true ∧
      sampleSphericalLiftSurface.spectralOperator.rhClaim = false ∧
      sampleSphericalLiftSurface.spectralOperator.bsdClaim = false ∧
      sampleSphericalLiftSurface.spectralOperator.analyticContinuationClaim =
        false ∧
      sampleSphericalLiftSurface.spectralOperator.spectralTheoremAuthority =
        false ∧
      sampleSphericalLiftSurface.theoremAuthority = false := by
  native_decide

end Think.Arithmetic.SphericalKakeyaLiftBoundary
```
