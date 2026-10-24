# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.RiemannWitnessQuinticResolution

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb91ddea537a9c2605efe4b4f8d411ba94a96466` · SHA-256 `86bc01cf930aece6647d35985da6cfeee75f1cebeafd877ce9944e3f67aeae83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RiemannWitnessFiniteScaleFilterResolution
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Resolution of the historical quintic-witness label

The witness registry initially retained `quinticWitnessLabel` as an unresolved
historical name. The exact source audit separates three different facts:

1. the unit bump autocorrelation has the factor `(2-u)^9`;
2. the actual normalized source correlation is the three-profile combination
   `r^2 H'''' - (r/2) H'' + H/16`, with `r=A^(-2)`;
3. therefore the complete profile has the common endpoint factor `(2-u)^5`.

The accepted source separately proves that the actual correlation is even. The
quintic factor is an endpoint-order certificate, not the source of that
reflection symmetry. It also supplies neither a sign for the arithmetic sum nor
the eventual Mertens-residual bound consumed by the RH estimate interface.

This file proves the exact finite polynomial factorization independently and
records the accepted external source declarations that identify its profile with
the actual source. It does not import `grwtsk/formal-research`, construct an
arithmetic tail witness, or prove RH.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RiemannWitnessRegistry

noncomputable section

/-- Positive coefficient polynomial in the primitive bump overlap. -/
def quinticOverlapP0 (u : ℝ) : ℝ :=
  7 * u ^ 8 + 126 * u ^ 7 + 988 * u ^ 6 + 4344 * u ^ 5 +
    11376 * u ^ 4 + 17376 * u ^ 3 + 15808 * u ^ 2 + 8064 * u + 1792

/-- Polynomial occurring in the exact second derivative of the overlap profile. -/
def quinticOverlapP2 (u : ℝ) : ℝ :=
  7 * u ^ 8 + 98 * u ^ 7 + 574 * u ^ 6 + 1764 * u ^ 5 +
    2808 * u ^ 4 + 1680 * u ^ 3 - 32 * u ^ 2 - 448 * u - 128

/-- Polynomial occurring in the exact fourth derivative of the overlap profile. -/
def quinticOverlapP4 (u : ℝ) : ℝ :=
  245 * u ^ 8 + 2450 * u ^ 7 + 9240 * u ^ 6 + 14000 * u ^ 5 -
    1720 * u ^ 4 - 26160 * u ^ 3 - 8160 * u ^ 2 + 2880 * u + 1152

/-- The exact primitive overlap profile from the accepted source. -/
def quinticOverlapProfile (u : ℝ) : ℝ :=
  (2 - u) ^ 9 * quinticOverlapP0 u / 1531530

/-- Explicit second-profile polynomial. The accepted external source identifies
this with the second derivative of its overlap profile. -/
def quinticOverlapSecondProfile (u : ℝ) : ℝ :=
  8 * (2 - u) ^ 7 * quinticOverlapP2 u / 45045

/-- Explicit fourth-profile polynomial. Its support order is exactly five when
the endpoint coefficient is nonzero. -/
def quinticOverlapFourthProfile (u : ℝ) : ℝ :=
  16 * (2 - u) ^ 5 * quinticOverlapP4 u / 15015

/-- The complete three-profile numerator at inverse-square scale `r`. -/
def quinticThreeProfileResponse (r u : ℝ) : ℝ :=
  r ^ 2 * quinticOverlapFourthProfile u -
    (r / 2) * quinticOverlapSecondProfile u +
      quinticOverlapProfile u / 16

/-- Quotient after extracting the common fifth-order endpoint factor. -/
def quinticBoundaryQuotient (r u : ℝ) : ℝ :=
  16 * r ^ 2 * quinticOverlapP4 u / 15015 -
    4 * r * (2 - u) ^ 2 * quinticOverlapP2 u / 45045 +
      (2 - u) ^ 4 * quinticOverlapP0 u / (16 * 1531530)

/-- Exact quintic factorization of the complete three-profile response. -/
theorem quinticThreeProfileResponse_eq_factor (r u : ℝ) :
    quinticThreeProfileResponse r u =
      (2 - u) ^ 5 * quinticBoundaryQuotient r u := by
  unfold quinticThreeProfileResponse quinticOverlapFourthProfile
    quinticOverlapSecondProfile quinticOverlapProfile quinticBoundaryQuotient
  ring

/-- The endpoint quotient retains the nonzero fourth-derivative coefficient. -/
theorem quinticBoundaryQuotient_at_two (r : ℝ) :
    quinticBoundaryQuotient r 2 = (6144 / 5 : ℝ) * r ^ 2 := by
  norm_num [quinticBoundaryQuotient, quinticOverlapP4,
    quinticOverlapP2, quinticOverlapP0]
  ring

/-- Every response vanishes at the touching endpoint. -/
theorem quinticThreeProfileResponse_at_two (r : ℝ) :
    quinticThreeProfileResponse r 2 = 0 := by
  rw [quinticThreeProfileResponse_eq_factor]
  norm_num

/-- A nonzero inverse-square scale has a strictly positive fifth-order endpoint
coefficient. This is local endpoint information, not positivity of the response
on its full support. -/
theorem quinticBoundaryQuotient_at_two_pos {r : ℝ} (hr : r ≠ 0) :
    0 < quinticBoundaryQuotient r 2 := by
  rw [quinticBoundaryQuotient_at_two]
  positivity

/-- A finite exact fixture at the opposite endpoint. -/
theorem quinticThreeProfileResponse_one_zero :
    quinticThreeProfileResponse 1 0 = (45056 / 1105 : ℝ) := by
  norm_num [quinticThreeProfileResponse, quinticOverlapFourthProfile,
    quinticOverlapSecondProfile, quinticOverlapProfile, quinticOverlapP4,
    quinticOverlapP2, quinticOverlapP0]
  ring

/-- The quintic endpoint factor does not certify midpoint-reflection symmetry.
The accepted source's evenness theorem is a separate autocorrelation result. -/
theorem quintic_factor_does_not_supply_midpoint_symmetry :
    ¬ ∀ u : ℝ, quinticThreeProfileResponse 1 u =
      quinticThreeProfileResponse 1 (2 - u) := by
  intro h
  have h0 := h 0
  rw [quinticThreeProfileResponse_one_zero] at h0
  norm_num [quinticThreeProfileResponse_at_two] at h0

private def quinticAcceptedFormalResearchMain : String :=
  "dc96769a40980ba724fa248c00541f594ad00080"

/-- Original paper-level owner of the order-five activation interpretation. -/
def quinticProgramSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 297
  pullRequest := some 289
  commit := quinticAcceptedFormalResearchMain
  path := "issues/297"
  declaration := "CONFLUENCE-SOURCE-ADVANCE-2:B"
  evidenceNote :=
    "Paper-level order-five activation statement and exact symbolic checker; the later accepted source supplies the profile ingredients."

/-- Accepted exact primitive overlap profile with its ninth-order endpoint factor. -/
def quinticOverlapExternalSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 297
  pullRequest := some 289
  commit := quinticAcceptedFormalResearchMain
  path := "FormalResearch/RiemannHypothesis/SourceBumpAutocorrelation.lean"
  declaration :=
    "FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation.overlapProfile"
  evidenceNote :=
    "Accepted definition H(u)=(2-u)^9*P0(u)/1531530 and exact bump-autocorrelation theorem."

/-- Accepted source-to-three-profile identity for the actual normalized source. -/
def quinticThreeProfileExternalSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 297
  pullRequest := some 289
  commit := quinticAcceptedFormalResearchMain
  path := "FormalResearch/RiemannHypothesis/KQHThreeResponse.lean"
  declaration :=
    "FormalResearch.RiemannHypothesis.KQHThreeResponse.sourceCorrelation_eq_threeProfile"
  evidenceNote :=
    "Accepted theorem: actual source correlation equals H''''/A^4-H''/(2A^2)+H/16, divided by source normalization."

/-- Accepted arithmetic adapter from the profile response to the exact residual. -/
def quinticResidualExternalSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 16
  pullRequest := some 289
  commit := quinticAcceptedFormalResearchMain
  path := "FormalResearch/RiemannHypothesis/KQHThreeResponse.lean"
  declaration :=
    "FormalResearch.RiemannHypothesis.KQHThreeResponse.mertensResidual_eq_threeResponse"
  evidenceNote :=
    "Accepted representation of the actual Mertens residual by the complete three-response numerator; no bound follows."

/-- Reflection symmetry of the actual source is proved independently of the
quintic endpoint factor. -/
def quinticSeparateSymmetrySource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 297
  pullRequest := some 289
  commit := quinticAcceptedFormalResearchMain
  path :=
    "FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/CorrelationRegularity.lean"
  declaration :=
    "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity.sourceCorrelation_even"
  evidenceNote :=
    "Accepted autocorrelation-evenness theorem. Symmetry is not derived from the fifth-order boundary factor."

/-- Exact downstream estimate consumer, whose arithmetic premise remains open. -/
def quinticEstimateConsumerSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 16
  pullRequest := some 289
  commit := quinticAcceptedFormalResearchMain
  path :=
    "FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimateMertensResidual.lean"
  declaration :=
    "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.estimate_of_mertens_residual_tail"
  evidenceNote :=
    "Accepted conditional consumer. The quintic factor does not prove MertensResidualTailUpperBound."

/-- Auditable disposition of the historical quintic label. -/
structure QuinticWitnessResolution where
  sourceIssue : Nat
  acceptedMainCommit : String
  paperProgram : ExternalRepositoryRef
  overlapProfile : ExternalRepositoryRef
  actualThreeProfile : ExternalRepositoryRef
  residualAdapter : ExternalRepositoryRef
  separateSymmetry : ExternalRepositoryRef
  estimateConsumer : ExternalRepositoryRef
  localPolynomialFactorization : Bool
  externalProofImported : Bool
  symmetrySuppliedByQuintic : Bool
  arithmeticTailConstructed : Bool
  rhBridgeDischarged : Bool
  deriving Repr

/-- Exact source-bound resolution packet. -/
def quinticWitnessResolution : QuinticWitnessResolution where
  sourceIssue := 297
  acceptedMainCommit := quinticAcceptedFormalResearchMain
  paperProgram := quinticProgramSource
  overlapProfile := quinticOverlapExternalSource
  actualThreeProfile := quinticThreeProfileExternalSource
  residualAdapter := quinticResidualExternalSource
  separateSymmetry := quinticSeparateSymmetrySource
  estimateConsumer := quinticEstimateConsumerSource
  localPolynomialFactorization := true
  externalProofImported := false
  symmetrySuppliedByQuintic := false
  arithmeticTailConstructed := false
  rhBridgeDischarged := false

/-- The historical name resolves to an endpoint-order classification, not an
RH witness or a symmetry supplier. -/
def quinticResolvedNode : WitnessNode where
  id := .quinticWitnessLabel
  kind := .classification
  scope := .globalRiemann
  availability := .externalBranch
  source := some quinticThreeProfileExternalSource.toSourceRef
  evidence := [.sourceDraft, .kernelChecked, .trustAudited]
  consumer := some
    { name := quinticResidualExternalSource.declaration
      status :=
        "Accepted external representation only. The eventual Mertens-residual bound and RH bridge remain open." }
  summary :=
    "Exact fifth-order endpoint factor in the three-profile response. It certifies boundary activation order, not reflection symmetry, positivity, or an arithmetic tail bound."

private def replaceQuinticNode (node : WitnessNode) : WitnessNode :=
  if node.id = .quinticWitnessLabel then quinticResolvedNode else node

private def isQuinticOutgoing (edge : WitnessEdge) : Bool :=
  decide (edge.from = .quinticWitnessLabel)

private def quinticNoConnection
    (target : WitnessId) (scopeNote : String) : WitnessEdge where
  from := .quinticWitnessLabel
  to := target
  kind := .noProvedConnection
  authority := .externalSourceBound
  source := some quinticThreeProfileExternalSource.toSourceRef
  scopeNote := scopeNote

/-- Endpoint order does not construct a fixed-contour count enclosure. -/
def quinticResolvedNoRectangleEdge : WitnessEdge :=
  quinticNoConnection .canonicalRectangleEdge
    "No theorem transports fifth-order source activation into rational zeta-logarithmic-derivative edge enclosures."

/-- Endpoint order is independent of the finite Möbius terminal-loss obstruction. -/
def quinticResolvedNoEndpointEdge : WitnessEdge :=
  quinticNoConnection .mobiusTerminalEndpointLoss
    "No theorem identifies the source endpoint factor with finite two-point Möbius prefix information."

/-- Endpoint order is not the local zero-reflection cover certificate. -/
def quinticResolvedNoReflectionEdge : WitnessEdge :=
  quinticNoConnection .criticalReflectionCover
    "No theorem transports the fifth-order profile factor into complete local zero coverage."

/-- The factorization is relevant to source regularity but does not supply the
boundary-layer signed Abel witness. -/
def quinticRelevantToBoundaryEdge : WitnessEdge where
  from := .quinticWitnessLabel
  to := .boundaryLayerWitnessLabel
  kind := .relevantOnly
  authority := .externalSourceBound
  source := some quinticThreeProfileExternalSource.toSourceRef
  scopeNote :=
    "Fifth-order activation supports smooth boundary transport; it does not imply CriticalAbelTailLowerBound."

/-- The factorization is likewise relevant to finite-scale source filters but
does not construct their signed tail witness. -/
def quinticRelevantToFiniteScaleEdge : WitnessEdge where
  from := .quinticWitnessLabel
  to := .finiteScaleFilterWitnessLabel
  kind := .relevantOnly
  authority := .externalSourceBound
  source := some quinticThreeProfileExternalSource.toSourceRef
  scopeNote :=
    "The profile factor controls endpoint order only; it does not imply CriticalRemovedPairedTailLowerBound."

/-- Final bounded registry overlay: all three historical labels now have exact
source-bound dispositions, while every unsupported implication remains blocked. -/
def registryWithQuinticResolution : WitnessRegistry where
  nodes := registryWithFiniteScaleFilterResolution.nodes.map replaceQuinticNode
  edges :=
    registryWithFiniteScaleFilterResolution.edges.filter
      (fun edge => !isQuinticOutgoing edge) ++
      [quinticResolvedNoRectangleEdge,
        quinticResolvedNoEndpointEdge,
        quinticResolvedNoReflectionEdge,
        quinticRelevantToBoundaryEdge,
        quinticRelevantToFiniteScaleEdge]

@[simp] theorem quintic_source_is_resolved :
    quinticResolvedNode.source.isSome = true := rfl

@[simp] theorem quintic_source_is_external :
    quinticResolvedNode.availability = .externalBranch := rfl

@[simp] theorem quintic_symmetry_not_supplied :
    quinticWitnessResolution.symmetrySuppliedByQuintic = false := rfl

@[simp] theorem quintic_arithmetic_tail_not_constructed :
    quinticWitnessResolution.arithmeticTailConstructed = false := rfl

@[simp] theorem quintic_rh_bridge_not_discharged :
    quinticWitnessResolution.rhBridgeDischarged = false := rfl

@[simp] theorem quintic_edges_remain_nontraversable :
    quinticResolvedNoRectangleEdge.traversable = false ∧
      quinticResolvedNoEndpointEdge.traversable = false ∧
      quinticResolvedNoReflectionEdge.traversable = false ∧
      quinticRelevantToBoundaryEdge.traversable = false ∧
      quinticRelevantToFiniteScaleEdge.traversable = false := by
  decide

theorem quintic_identifier_present :
    WitnessId.quinticWitnessLabel ∈
      registryWithQuinticResolution.nodeIds := by
  decide

/-- All three historical labels have exact source-bound dispositions in the
final overlay. This does not say that any open witness is inhabited. -/
theorem historical_label_sources_resolved :
    quinticResolvedNode.source.isSome = true ∧
      boundaryLayerResolvedNode.source.isSome = true ∧
      finiteScaleFilterResolvedNode.source.isSome = true := by
  decide

end

end GRWTSK.RiemannHypothesis.RiemannWitnessRegistry
```
