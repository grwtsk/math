# Complete source: GRWTSK.Analysis.FunctionalAnalysis.GNSDeterminantExactnessBoundary.Variant64131a4aea818e012ea81c1a04e65c40ee07a0aeb9bd57cd0d26bc0c591ecaea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa1eef2d66c0aaa05f51528967c0ace06752056e` · SHA-256 `64131a4aea818e012ea81c1a04e65c40ee07a0aeb9bd57cd0d26bc0c591ecaea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.GNSExactTorsionCover
import Think.SourceTree.Legacy.Arithmetic.SpectralTripleAdmissibility

set_option autoImplicit false

namespace Think.Arithmetic.GNSDeterminantExactnessBoundary

/-
GNS covariance to determinant exactness boundary.

Conjectural gate encoded here:

  GNS covariance
  + trace-class or Schatten determinant-class operator
  + nonvanishing regularization factor
  + zero/eigenvalue matching
  + no spurious spectrum
  + Connes spectral-triple positive boundary
  + Tao heatflow negative boundary
  => determinant exactness.

This file records the conditional implication and the refusal of premature
promotion.  It does not assert Hilbert--Polya, RH, analytic continuation, or a
prime-geodesic trace formula.
-/

/-- Positive boundary supplied by a Connes-style spectral triple gate. -/
structure ConnesSpectralTriplePositiveBoundary where
  faithfulRepresentation : Bool
  selfAdjointDirac : Bool
  boundedCommutators : Bool
  compactResolventOrSemifiniteSubstitute : Bool
  positiveMetricBoundary : Bool
  admittedPositiveBoundary : Bool
  theoremAuthority : Bool
  admittedPositiveBoundary_of_connes_gates :
    faithfulRepresentation = true →
    selfAdjointDirac = true →
    boundedCommutators = true →
    compactResolventOrSemifiniteSubstitute = true →
    positiveMetricBoundary = true →
    admittedPositiveBoundary = true
  no_theorem_authority_from_positive_boundary : theoremAuthority = false

/-- Negative boundary supplied by a Tao-style heatflow/smoothing gate.  The
intended role is to control the negative/decay side: leakage, bad spectrum,
spurious zero modes, and failed determinant-class decay. -/
structure TaoHeatflowNegativeBoundary where
  heatflowRegularizationDeclared : Bool
  monotoneDissipationDeclared : Bool
  smoothingBoundaryDeclared : Bool
  negativeSpectrumRoutedToBoundary : Bool
  spuriousModesDamped : Bool
  determinantClassDecayControlled : Bool
  admittedNegativeBoundary : Bool
  theoremAuthority : Bool
  admittedNegativeBoundary_of_heatflow_gates :
    heatflowRegularizationDeclared = true →
    monotoneDissipationDeclared = true →
    smoothingBoundaryDeclared = true →
    negativeSpectrumRoutedToBoundary = true →
    spuriousModesDamped = true →
    determinantClassDecayControlled = true →
    admittedNegativeBoundary = true
  no_theorem_authority_from_negative_boundary : theoremAuthority = false

/-- Determinant-class operator gate.  It abstracts trace-class/Schatten-class
requirements without importing full operator ideals. -/
structure DeterminantClassOperatorBoundary where
  traceClassOperator : Bool
  schattenDeterminantClassOperator : Bool
  determinantClassAdmitted : Bool
  determinantClassAdmitted_of_trace_or_schatten :
    traceClassOperator = true → determinantClassAdmitted = true
  determinantClassAdmitted_of_schatten :
    schattenDeterminantClassOperator = true → determinantClassAdmitted = true

/-- Regularization boundary: the determinant identity may be exact only when the
regularization factor is present and nonvanishing on the target domain. -/
structure NonvanishingRegularizationBoundary where
  regularizationFactorDeclared : Bool
  regularizationFactorNonvanishing : Bool
  gammaArchimedeanBoundaryRouted : Bool
  admittedRegularizationBoundary : Bool
  admittedRegularizationBoundary_of_nonvanishing :
    regularizationFactorDeclared = true →
    regularizationFactorNonvanishing = true →
    gammaArchimedeanBoundaryRouted = true →
    admittedRegularizationBoundary = true

/-- Zero/eigenvalue exactness boundary. -/
structure SpectralMatchingBoundary where
  zeroEigenvalueMatching : Bool
  multiplicityMatching : Bool
  noSpuriousSpectrum : Bool
  noMissingSpectrum : Bool
  admittedSpectralMatching : Bool
  admittedSpectralMatching_of_exact_match :
    zeroEigenvalueMatching = true →
    multiplicityMatching = true →
    noSpuriousSpectrum = true →
    noMissingSpectrum = true →
    admittedSpectralMatching = true

/-- Full determinant exactness gate. -/
structure GNSDeterminantExactnessBoundary where
  gnsCovarianceAdmitted : Bool
  determinantClassAdmitted : Bool
  nonvanishingRegularizationAdmitted : Bool
  spectralMatchingAdmitted : Bool
  noSpuriousSpectrum : Bool
  connesPositiveBoundaryAdmitted : Bool
  taoHeatflowNegativeBoundaryAdmitted : Bool
  determinantExactness : Bool
  hilbertPolyaAuthority : Bool
  rhAuthority : Bool
  theoremAuthority : Bool
  determinantExactness_of_all_gates :
    gnsCovarianceAdmitted = true →
    determinantClassAdmitted = true →
    nonvanishingRegularizationAdmitted = true →
    spectralMatchingAdmitted = true →
    noSpuriousSpectrum = true →
    connesPositiveBoundaryAdmitted = true →
    taoHeatflowNegativeBoundaryAdmitted = true →
    determinantExactness = true
  no_hilbert_polya_from_determinant_gate_alone : hilbertPolyaAuthority = false
  no_rh_from_determinant_gate_alone : rhAuthority = false
  no_theorem_authority_without_external_spectral_proof : theoremAuthority = false

/-- Default Connes positive boundary: not admitted until bounded commutators and
compact-resolvent/semifinite substitute are both provided. -/
def defaultConnesPositiveBoundary : ConnesSpectralTriplePositiveBoundary :=
  { faithfulRepresentation := true
    selfAdjointDirac := true
    boundedCommutators := false
    compactResolventOrSemifiniteSubstitute := false
    positiveMetricBoundary := true
    admittedPositiveBoundary := false
    theoremAuthority := false
    admittedPositiveBoundary_of_connes_gates := by
      intro _hFaithful _hDirac hBounded _hCompact _hPositive
      cases hBounded
    no_theorem_authority_from_positive_boundary := rfl }

/-- Completed Connes positive boundary witness.  This admits the positive
boundary but still has no theorem authority by itself. -/
def completedConnesPositiveBoundary : ConnesSpectralTriplePositiveBoundary :=
  { faithfulRepresentation := true
    selfAdjointDirac := true
    boundedCommutators := true
    compactResolventOrSemifiniteSubstitute := true
    positiveMetricBoundary := true
    admittedPositiveBoundary := true
    theoremAuthority := false
    admittedPositiveBoundary_of_connes_gates := by
      intro _hFaithful _hDirac _hBounded _hCompact _hPositive
      rfl
    no_theorem_authority_from_positive_boundary := rfl }

/-- Default Tao heatflow negative boundary: not admitted until decay/smoothing
and determinant-class control are declared. -/
def defaultTaoHeatflowNegativeBoundary : TaoHeatflowNegativeBoundary :=
  { heatflowRegularizationDeclared := true
    monotoneDissipationDeclared := false
    smoothingBoundaryDeclared := false
    negativeSpectrumRoutedToBoundary := true
    spuriousModesDamped := false
    determinantClassDecayControlled := false
    admittedNegativeBoundary := false
    theoremAuthority := false
    admittedNegativeBoundary_of_heatflow_gates := by
      intro _hHeat hDiss _hSmooth _hNeg _hDamped _hDecay
      cases hDiss
    no_theorem_authority_from_negative_boundary := rfl }

/-- Completed Tao heatflow negative boundary witness. -/
def completedTaoHeatflowNegativeBoundary : TaoHeatflowNegativeBoundary :=
  { heatflowRegularizationDeclared := true
    monotoneDissipationDeclared := true
    smoothingBoundaryDeclared := true
    negativeSpectrumRoutedToBoundary := true
    spuriousModesDamped := true
    determinantClassDecayControlled := true
    admittedNegativeBoundary := true
    theoremAuthority := false
    admittedNegativeBoundary_of_heatflow_gates := by
      intro _hHeat _hDiss _hSmooth _hNeg _hDamped _hDecay
      rfl
    no_theorem_authority_from_negative_boundary := rfl }

/-- Determinant-class witness through trace class. -/
def traceClassDeterminantBoundary : DeterminantClassOperatorBoundary :=
  { traceClassOperator := true
    schattenDeterminantClassOperator := false
    determinantClassAdmitted := true
    determinantClassAdmitted_of_trace_or_schatten := by
      intro _hTrace
      rfl
    determinantClassAdmitted_of_schatten := by
      intro hSchatten
      cases hSchatten }

/-- Determinant-class witness through Schatten determinant class. -/
def schattenDeterminantBoundary : DeterminantClassOperatorBoundary :=
  { traceClassOperator := false
    schattenDeterminantClassOperator := true
    determinantClassAdmitted := true
    determinantClassAdmitted_of_trace_or_schatten := by
      intro hTrace
      cases hTrace
    determinantClassAdmitted_of_schatten := by
      intro _hSchatten
      rfl }

/-- Completed nonvanishing regularization witness. -/
def completedRegularizationBoundary : NonvanishingRegularizationBoundary :=
  { regularizationFactorDeclared := true
    regularizationFactorNonvanishing := true
    gammaArchimedeanBoundaryRouted := true
    admittedRegularizationBoundary := true
    admittedRegularizationBoundary_of_nonvanishing := by
      intro _hDeclared _hNonzero _hGamma
      rfl }

/-- Completed spectral matching witness. -/
def completedSpectralMatchingBoundary : SpectralMatchingBoundary :=
  { zeroEigenvalueMatching := true
    multiplicityMatching := true
    noSpuriousSpectrum := true
    noMissingSpectrum := true
    admittedSpectralMatching := true
    admittedSpectralMatching_of_exact_match := by
      intro _hZero _hMultiplicity _hSpurious _hMissing
      rfl }

/-- Default determinant exactness boundary: GNS covariance may be available, but
all determinant/spectral boundary gates are not yet admitted. -/
def defaultGNSDeterminantExactnessBoundary : GNSDeterminantExactnessBoundary :=
  { gnsCovarianceAdmitted := true
    determinantClassAdmitted := false
    nonvanishingRegularizationAdmitted := false
    spectralMatchingAdmitted := false
    noSpuriousSpectrum := false
    connesPositiveBoundaryAdmitted := false
    taoHeatflowNegativeBoundaryAdmitted := false
    determinantExactness := false
    hilbertPolyaAuthority := false
    rhAuthority := false
    theoremAuthority := false
    determinantExactness_of_all_gates := by
      intro _hGns hDet _hReg _hMatch _hNoSpurious _hConnes _hTao
      cases hDet
    no_hilbert_polya_from_determinant_gate_alone := rfl
    no_rh_from_determinant_gate_alone := rfl
    no_theorem_authority_without_external_spectral_proof := rfl }

/-- Completed determinant exactness boundary: all listed gates are admitted, so
`determinantExactness = true`, while Hilbert--Pólya/RH authority remains false. -/
def completedGNSDeterminantExactnessBoundary : GNSDeterminantExactnessBoundary :=
  { gnsCovarianceAdmitted := true
    determinantClassAdmitted := true
    nonvanishingRegularizationAdmitted := true
    spectralMatchingAdmitted := true
    noSpuriousSpectrum := true
    connesPositiveBoundaryAdmitted := true
    taoHeatflowNegativeBoundaryAdmitted := true
    determinantExactness := true
    hilbertPolyaAuthority := false
    rhAuthority := false
    theoremAuthority := false
    determinantExactness_of_all_gates := by
      intro _hGns _hDet _hReg _hMatch _hNoSpurious _hConnes _hTao
      rfl
    no_hilbert_polya_from_determinant_gate_alone := rfl
    no_rh_from_determinant_gate_alone := rfl
    no_theorem_authority_without_external_spectral_proof := rfl }

/-- Main conditional theorem surface for the user's conjecture. -/
theorem gns_covariance_plus_determinant_gates_imply_determinant_exactness
    (boundary : GNSDeterminantExactnessBoundary)
    (hGns : boundary.gnsCovarianceAdmitted = true)
    (hDet : boundary.determinantClassAdmitted = true)
    (hReg : boundary.nonvanishingRegularizationAdmitted = true)
    (hMatch : boundary.spectralMatchingAdmitted = true)
    (hNoSpurious : boundary.noSpuriousSpectrum = true)
    (hConnes : boundary.connesPositiveBoundaryAdmitted = true)
    (hTao : boundary.taoHeatflowNegativeBoundaryAdmitted = true) :
    boundary.determinantExactness = true :=
  boundary.determinantExactness_of_all_gates
    hGns hDet hReg hMatch hNoSpurious hConnes hTao

/-- Connes positive boundary is admitted when the positive spectral triple gates
are all present. -/
theorem connes_positive_boundary_admitted_from_spectral_triple_gates :
    completedConnesPositiveBoundary.admittedPositiveBoundary = true ∧
      completedConnesPositiveBoundary.theoremAuthority = false := by
  exact ⟨rfl, rfl⟩

/-- Tao heatflow negative boundary is admitted when heatflow decay/smoothing and
determinant-class decay are all present. -/
theorem tao_heatflow_negative_boundary_admitted_from_decay_gates :
    completedTaoHeatflowNegativeBoundary.admittedNegativeBoundary = true ∧
      completedTaoHeatflowNegativeBoundary.theoremAuthority = false := by
  exact ⟨rfl, rfl⟩

/-- Completed determinant-class, regularization, matching, Connes-positive, and
Tao-negative gates imply determinant exactness. -/
theorem completed_gns_determinant_boundary_is_exact :
    completedGNSDeterminantExactnessBoundary.determinantExactness = true := by
  rfl

/-- Determinant exactness is not present in the default boundary. -/
theorem default_gns_determinant_boundary_keeps_exactness_closed :
    defaultGNSDeterminantExactnessBoundary.gnsCovarianceAdmitted = true ∧
      defaultGNSDeterminantExactnessBoundary.determinantClassAdmitted = false ∧
      defaultGNSDeterminantExactnessBoundary.determinantExactness = false := by
  exact ⟨rfl, rfl, rfl⟩

/-- Even completed determinant exactness does not by itself claim
Hilbert--Pólya/RH. -/
theorem completed_determinant_exactness_does_not_claim_hp_or_rh :
    completedGNSDeterminantExactnessBoundary.determinantExactness = true ∧
      completedGNSDeterminantExactnessBoundary.hilbertPolyaAuthority = false ∧
      completedGNSDeterminantExactnessBoundary.rhAuthority = false ∧
      completedGNSDeterminantExactnessBoundary.theoremAuthority = false := by
  exact ⟨rfl, rfl, rfl, rfl⟩

end Think.Arithmetic.GNSDeterminantExactnessBoundary
```
