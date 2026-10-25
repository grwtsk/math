# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SpectralTripleAdmissibility.Variant1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3e4eea6f2974c5b6565124a0f38252b2849eeef` · SHA-256 `1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.MacroCompression

set_option autoImplicit false

namespace Think.Arithmetic.SpectralTripleAdmissibility

def spectralTripleAdmissibilitySurfaceId : String :=
  "compression_spectral_triple_admissibility_surface"

def spectralTripleAdmissibilityNonClaims : List String := [
  "candidate_spectral_triple_is_not_admitted_without_bounded_commutators",
  "dixmier_trace_entropy_identity_is_residue_until_measurability_and_equality_gate",
  "synthetic_scattering_determinant_is_finite_perturbation_not_raw_zeta_product",
  "kakeya_centroid_residue_is_not_kakeya_dimension_theorem",
  "bsd_centered_transfer_is_not_classical_bsd_authority",
  "height_estimator_residue_is_not_faltings_height_identity",
  "kl_centroid_target_uses_tube_regularization_not_delta_hyperplane",
  "tomita_takesaki_layer_requires_faithful_normal_semifinite_weight",
  "modular_theory_typing_does_not_prove_RH_GRH_BSD_or_analytic_continuation",
  "spin_flip_height_ccr_and_kakeya_maximal_inequalities_are_not_expanded_here"
]

structure CompressedMonoidAlgebraSurface where
  algebraId : String
  sourceLanguage : String
  macroRelationsImposed : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def compressedMonoidAlgebraSurface : CompressedMonoidAlgebraSurface :=
  { algebraId := "A_D"
    sourceLanguage :=
      "complex_algebra_generated_by_F_Sigma_D_mod_macro_expansion_relations"
    macroRelationsImposed := true
    theoremAuthority := false }

structure CandidateSpectralTripleSurface where
  algebraId : String
  representation : String
  hilbertSpace : String
  grading : String
  diracOperator : String
  faithfulRepresentation : Bool
  oddSelfAdjointDirac : Bool
  compactResolventOrSemifiniteSubstituteDeclared : Bool
  boundedCommutatorsForGenerators : Bool
  admittedSpectralTriple : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def candidateSpectralTripleSurface
    (compactResolventOrSemifiniteSubstituteDeclared
      boundedCommutatorsForGenerators : Bool) :
    CandidateSpectralTripleSurface :=
  let admitted :=
    compactResolventOrSemifiniteSubstituteDeclared &&
      boundedCommutatorsForGenerators
  { algebraId := "A_D"
    representation := "pi:A_D_to_B_H"
    hilbertSpace := "H_plus_direct_sum_H_minus"
    grading := "Z2_graded"
    diracOperator := "D_odd_self_adjoint_unbounded"
    faithfulRepresentation := true
    oddSelfAdjointDirac := true
    compactResolventOrSemifiniteSubstituteDeclared :=
      compactResolventOrSemifiniteSubstituteDeclared
    boundedCommutatorsForGenerators := boundedCommutatorsForGenerators
    admittedSpectralTriple := admitted
    theoremAuthority := false }

def CandidateSpectralTripleSurface.validatesCandidateGate
    (surface : CandidateSpectralTripleSurface) : Bool :=
  surface.faithfulRepresentation &&
    surface.oddSelfAdjointDirac &&
    surface.admittedSpectralTriple =
      (surface.compactResolventOrSemifiniteSubstituteDeclared &&
        surface.boundedCommutatorsForGenerators) &&
    !surface.theoremAuthority

structure VertexDegreeBoundSurface where
  degreeIn : Nat
  degreeOut : Nat
  p : Nat
  omegaP : Nat
  correctedBound : Nat
  oldMultiplicativeBoundRefused : Bool
deriving Repr, DecidableEq

def vertexDegreeBoundSurface
    (degreeIn degreeOut p omegaP logCorrection : Nat) :
    VertexDegreeBoundSurface :=
  { degreeIn := degreeIn
    degreeOut := degreeOut
    p := p
    omegaP := omegaP
    correctedBound := 16 * (1 + omegaP * logCorrection)
    oldMultiplicativeBoundRefused := true }

def VertexDegreeBoundSurface.satisfiesCorrectedBound
    (surface : VertexDegreeBoundSurface) : Bool :=
  decide (surface.degreeIn <= surface.correctedBound) &&
    surface.oldMultiplicativeBoundRefused

structure KLTubularCentroidResidue where
  epsilonLabel : String
  qEpsilonPositiveOnDomain : Bool
  singularDeltaTargetRefused : Bool
  klValue : Int
  compressionTarget : Int
  residue : Int
  targetMet : Bool
deriving Repr, DecidableEq

def klTubularCentroidResidue (klValue compressionTarget : Int) :
    KLTubularCentroidResidue :=
  let residue := klValue - compressionTarget
  { epsilonLabel := "epsilon_tube_regularized_centroid"
    qEpsilonPositiveOnDomain := true
    singularDeltaTargetRefused := true
    klValue := klValue
    compressionTarget := compressionTarget
    residue := residue
    targetMet := decide (residue <= 0) }

structure DixmierTraceEntropyResidue where
  dixmierTraceDefined : Bool
  weakTraceIdealOrSemifiniteConditionDeclared : Bool
  traceValue : Int
  macroEntropy : Int
  residue : Int
  equalityAdmitted : Bool
deriving Repr, DecidableEq

def dixmierTraceEntropyResidue
    (traceValue macroEntropy : Int) (summabilityDeclared : Bool) :
    DixmierTraceEntropyResidue :=
  let residue := traceValue - macroEntropy
  { dixmierTraceDefined := summabilityDeclared
    weakTraceIdealOrSemifiniteConditionDeclared := summabilityDeclared
    traceValue := traceValue
    macroEntropy := macroEntropy
    residue := residue
    equalityAdmitted := decide (residue = 0) && summabilityDeclared }

structure SyntheticScatteringDeterminantSurface where
  baseCompletedFactorDeclared : Bool
  finitePrimeWindowSize : Nat
  finitePhaseCoefficientsDeclared : Bool
  rawZetaProductClaimRefused : Bool
deriving Repr, DecidableEq

def syntheticScatteringDeterminantSurface
    (finitePrimeWindowSize : Nat) :
    SyntheticScatteringDeterminantSurface :=
  { baseCompletedFactorDeclared := true
    finitePrimeWindowSize := finitePrimeWindowSize
    finitePhaseCoefficientsDeclared := true
    rawZetaProductClaimRefused := true }

structure KakeyaFiniteCoverResidue where
  finiteDirectionCount : Nat
  centroidDistanceToMidpoint : Nat
  residueZero : Bool
  dimensionTheoremClaim : Bool
deriving Repr, DecidableEq

def kakeyaFiniteCoverResidue
    (finiteDirectionCount centroidDistanceToMidpoint : Nat) :
    KakeyaFiniteCoverResidue :=
  { finiteDirectionCount := finiteDirectionCount
    centroidDistanceToMidpoint := centroidDistanceToMidpoint
    residueZero := decide (centroidDistanceToMidpoint = 0)
    dimensionTheoremClaim := false }

structure BSDCenteredTransferResidue where
  centeredShiftDeclared : Bool
  syntheticLeadingTerm : Int
  bsdArithmeticPackage : Int
  transferResidue : Int
  equalityAdmitted : Bool
  classicalSEqualsOneBoundaryRetained : Bool
deriving Repr, DecidableEq

def bsdCenteredTransferResidue
    (syntheticLeadingTerm bsdArithmeticPackage : Int) :
    BSDCenteredTransferResidue :=
  let transferResidue := syntheticLeadingTerm - bsdArithmeticPackage
  { centeredShiftDeclared := true
    syntheticLeadingTerm := syntheticLeadingTerm
    bsdArithmeticPackage := bsdArithmeticPackage
    transferResidue := transferResidue
    equalityAdmitted := decide (transferResidue = 0)
    classicalSEqualsOneBoundaryRetained := true }

structure HeightEstimatorResidue where
  commutatorEstimate : Int
  faltingsHeightValue : Int
  precisionResidue : Int
  convergenceClaim : Bool
deriving Repr, DecidableEq

def heightEstimatorResidue
    (commutatorEstimate faltingsHeightValue : Int) :
    HeightEstimatorResidue :=
  { commutatorEstimate := commutatorEstimate
    faltingsHeightValue := faltingsHeightValue
    precisionResidue := faltingsHeightValue - commutatorEstimate
    convergenceClaim := false }

structure CompressionSpectralResidueGate where
  degreeResidueZero : Bool
  klTargetMet : Bool
  dixmierResidueZero : Bool
  kakeyaResidueZero : Bool
  bsdTransferZero : Bool
  heightResidueZero : Bool
  locallyAdmitted : Bool
deriving Repr, DecidableEq

def compressionSpectralResidueGate
    (degreeResidueZero klTargetMet dixmierResidueZero kakeyaResidueZero
      bsdTransferZero heightResidueZero : Bool) :
    CompressionSpectralResidueGate :=
  let admitted :=
    degreeResidueZero && klTargetMet && dixmierResidueZero &&
      kakeyaResidueZero && bsdTransferZero && heightResidueZero
  { degreeResidueZero := degreeResidueZero
    klTargetMet := klTargetMet
    dixmierResidueZero := dixmierResidueZero
    kakeyaResidueZero := kakeyaResidueZero
    bsdTransferZero := bsdTransferZero
    heightResidueZero := heightResidueZero
    locallyAdmitted := admitted }

structure TomitaTakesakiPrerequisiteSurface where
  vonNeumannAlgebra : String
  faithfulNormalSemifiniteWeightDeclared : Bool
  modularAutomorphismGroupSymbol : String
  modularConjugationSymbol : String
  modularOperatorSymbol : String
  spectralTripleAdmitted : Bool
  tomitaLayerTypingAllowed : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def tomitaTakesakiPrerequisiteSurface
    (spectralTripleAdmitted faithfulNormalSemifiniteWeightDeclared : Bool) :
    TomitaTakesakiPrerequisiteSurface :=
  { vonNeumannAlgebra := "N_equals_A_D_double_commutant"
    faithfulNormalSemifiniteWeightDeclared :=
      faithfulNormalSemifiniteWeightDeclared
    modularAutomorphismGroupSymbol := "sigma_t_phi"
    modularConjugationSymbol := "J_phi"
    modularOperatorSymbol := "Delta_phi"
    spectralTripleAdmitted := spectralTripleAdmitted
    tomitaLayerTypingAllowed :=
      spectralTripleAdmitted && faithfulNormalSemifiniteWeightDeclared
    theoremAuthority := false }

theorem spectral_triple_requires_bounded_commutators :
    (candidateSpectralTripleSurface true false).admittedSpectralTriple =
        false ∧
      (candidateSpectralTripleSurface true true).admittedSpectralTriple =
        true ∧
      (candidateSpectralTripleSurface true true).theoremAuthority = false := by
  native_decide

theorem corrected_vertex_degree_bound_survives_supersingular_switch :
    (vertexDegreeBoundSurface 16 30 5 0 3).correctedBound = 16 ∧
      (vertexDegreeBoundSurface 16 30 5 0 3).satisfiesCorrectedBound = true ∧
      (vertexDegreeBoundSurface 48 30 5 1 3).correctedBound = 64 ∧
      (vertexDegreeBoundSurface 48 30 5 1 3).satisfiesCorrectedBound = true := by
  native_decide

theorem kl_centroid_uses_tube_regularization :
    (klTubularCentroidResidue 7 9).targetMet = true ∧
      (klTubularCentroidResidue 11 9).targetMet = false ∧
      (klTubularCentroidResidue 11 9).residue = 2 ∧
      (klTubularCentroidResidue 11 9).singularDeltaTargetRefused = true := by
  native_decide

theorem dixmier_entropy_identity_is_residue_gated :
    (dixmierTraceEntropyResidue 5 5 false).equalityAdmitted = false ∧
      (dixmierTraceEntropyResidue 5 5 true).equalityAdmitted = true ∧
      (dixmierTraceEntropyResidue 8 5 true).equalityAdmitted = false ∧
      (dixmierTraceEntropyResidue 8 5 true).residue = 3 := by
  native_decide

theorem finite_scattering_refuses_raw_zeta_product :
    (syntheticScatteringDeterminantSurface 3).baseCompletedFactorDeclared =
        true ∧
      (syntheticScatteringDeterminantSurface 3).finitePhaseCoefficientsDeclared =
        true ∧
      (syntheticScatteringDeterminantSurface 3).rawZetaProductClaimRefused =
        true := by
  native_decide

theorem kakeya_layer_is_finite_centroid_residue :
    (kakeyaFiniteCoverResidue 12 4).residueZero = false ∧
      (kakeyaFiniteCoverResidue 12 4).dimensionTheoremClaim = false := by
  native_decide

theorem bsd_centered_transfer_retains_classical_boundary :
    (bsdCenteredTransferResidue 4 9).transferResidue = -5 ∧
      (bsdCenteredTransferResidue 4 9).equalityAdmitted = false ∧
      (bsdCenteredTransferResidue 4 9).classicalSEqualsOneBoundaryRetained =
        true ∧
      (bsdCenteredTransferResidue 9 9).equalityAdmitted = true := by
  native_decide

theorem height_estimator_is_not_identity_without_zero_residue :
    (heightEstimatorResidue 5 8).precisionResidue = 3 ∧
      (heightEstimatorResidue 5 8).convergenceClaim = false := by
  native_decide

theorem local_model_admission_requires_all_residue_gates :
    (compressionSpectralResidueGate true true true false true true).locallyAdmitted =
        false ∧
      (compressionSpectralResidueGate true true true true true true).locallyAdmitted =
        true := by
  native_decide

theorem tomita_prerequisites_wait_for_spectral_triple_and_weight :
    (tomitaTakesakiPrerequisiteSurface false true).tomitaLayerTypingAllowed =
        false ∧
      (tomitaTakesakiPrerequisiteSurface true true).tomitaLayerTypingAllowed =
        true ∧
      (tomitaTakesakiPrerequisiteSurface true true).modularAutomorphismGroupSymbol =
        "sigma_t_phi" ∧
      (tomitaTakesakiPrerequisiteSurface true true).theoremAuthority = false := by
  native_decide

end Think.Arithmetic.SpectralTripleAdmissibility
```
