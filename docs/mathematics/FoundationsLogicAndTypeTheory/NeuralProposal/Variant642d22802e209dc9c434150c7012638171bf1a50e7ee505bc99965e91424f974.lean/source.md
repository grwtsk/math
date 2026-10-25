# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.NeuralProposal.Variant642d22802e209dc9c434150c7012638171bf1a50e7ee505bc99965e91424f974

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42d2b6e6a83d00adc22b0afffb3ba262e131bb0e` · SHA-256 `d805bb2ca1503fe2dbd1b9fe9fddbc17ad8b136d4a86f36d5aa162c58dd15dd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.NeuralProposalKind.Variantcf13b2f7cfabf4fbad82a799003d76592f3aed4a2e297db4ed3b9cc88b8051ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf13b2f7cfabf4fbad82a799003d76592f3aed4a2e297db4ed3b9cc88b8051ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NeuralProposalKind.Variantcf13b2f7cfabf4fbad82a799003d76592f3aed4a2e297db4ed3b9cc88b8051ea","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"cf13b2f7cfabf4fbad82a799003d76592f3aed4a2e297db4ed3b9cc88b8051ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/NeuralProposal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Rat.Defs
import Surface.ContinuousAssurance.Claim
import Surface.ContinuousAssurance.WorldModel.AssumptionContext
import Surface.ContinuousAssurance.WorldModel.Translation

/-!
# Neural advisory proposals and dataset provenance

Neural components propose work; they do not construct proof authority,
trusted-base closure, certified bridges, review, authorization, accepted source
changes, stability certificates, or coverage certificates.  Every proposal is
pinned to an active region, model versions, input, model, training data, and a
checker route, and its authority ceiling is `externalCapability`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.NeuralProposalKind.Variantcf13b2f7cfabf4fbad82a799003d76592f3aed4a2e297db4ed3b9cc88b8051ea

namespace Surface.ContinuousAssurance.WorldModel

inductive NeuralProposalKind
  | theoremConnection
  | definitionCandidate
  | translationCandidate
  | missingAssumption
  | counterexampleQuery
  | lemmaDecomposition
  | proofObligation
  | representationRefinement
  | dependencyCorrection
  | modelBoundaryProposal
  | couplingWeightProposal
  | surgerySiteProposal
  deriving DecidableEq, Repr

/-- Exact rational score in the closed unit interval. -/
structure CalibratedScore where
  value : ℚ
  nonnegative : 0 ≤ value
  atMostOne : value ≤ 1

structure UncertaintyRecord where
  identity : ArtifactIdentity
  epistemic : CalibratedScore
  aleatoric : CalibratedScore
  outOfDistribution : Bool

/-- Explicit checker routing for one advisory proposal. -/
structure CheckerRoute where
  identity : ArtifactIdentity
  checker : Project
  checkerVersion : ArtifactIdentity
  acceptedKinds : List NeuralProposalKind
  inputSchema : ArtifactIdentity
  outputSchema : ArtifactIdentity

def CheckerRoute.Supports
    (route : CheckerRoute)
    (kind : NeuralProposalKind) : Prop :=
  kind ∈ route.acceptedKinds

/-- Fully pinned neural proposal, containing no proof or governance fields. -/
structure NeuralProposal where
  identity : ArtifactIdentity
  kind : NeuralProposalKind
  activeRegion : ArtifactIdentity
  sourceModels : List WorldModelVersionId
  targetModels : List WorldModelVersionId
  inputDigest : ArtifactIdentity
  neuralModelVersion : ArtifactIdentity
  trainingDataVersion : ArtifactIdentity
  proposedRelation : Option ModelTranslationRelation
  score : CalibratedScore
  uncertainty : UncertaintyRecord
  requiredChecker : CheckerRoute
  checkerSupportsKind : requiredChecker.Supports kind
  authorityCeiling : AuthorityClass
  externalOnly : authorityCeiling = .externalCapability
  knownLimitations : List String
  affectedClaims : List ArtifactIdentity

/-- Neural proposal authority is always external. -/
theorem NeuralProposal.authority_is_external
    (proposal : NeuralProposal) :
    proposal.authorityCeiling = .externalCapability :=
  proposal.externalOnly

/-- No neural proposal can uniformly yield a verified theorem certificate. -/
theorem neural_proposal_cannot_uniformly_certify
    (_proposal : NeuralProposal) :
    ¬ Nonempty (∀ proposition : Prop,
      ClaimCertificate proposition .verified) := by
  rintro ⟨certify⟩
  exact proof_of_verified (certify False)

/-- Stable license metadata; emptiness is rejected by construction. -/
structure DatasetLicense where
  identifier : String
  nonempty : identifier ≠ ""
  evidence : ArtifactIdentity

inductive DatasetProofStatus
  | kernelChecked
  | conditionallyChecked
  | externalObservation
  | rejected
  | unknown
  deriving DecidableEq, Repr

inductive NegativeExampleStatus
  | notNegative
  | machineCheckedCounterexample
  | externalCounterexample
  | candidate
  deriving DecidableEq, Repr

inductive DatasetGenerationMethod
  | elaboratedEnvironmentExport
  | reviewedManualEntry
  | externalExtraction
  | syntheticTemplate
  deriving DecidableEq, Repr

/-- Complete finite pilot dataset item with license and provenance. -/
structure DatasetItem where
  datasetItemId : ArtifactIdentity
  sourceRepository : String
  sourceVersion : ArtifactIdentity
  sourcePath : String
  sourceDigest : ArtifactIdentity
  license : DatasetLicense
  checkerName : String
  checkerVersion : ArtifactIdentity
  assumptionContext : AssumptionContext
  authority : AuthorityClass
  proofStatus : DatasetProofStatus
  negativeExampleStatus : NegativeExampleStatus
  generationMethod : DatasetGenerationMethod
  syntheticFlag : Bool
  provenanceDigest : ArtifactIdentity
  splitIdentity : ArtifactIdentity
  semanticDuplicateGroup : ArtifactIdentity

/-- Synthetic generation cannot be mislabeled as human-authored. -/
def DatasetItem.AuthorshipLabelValid (item : DatasetItem) : Prop :=
  item.generationMethod = .syntheticTemplate → item.syntheticFlag = true

/-- Required advisory components; only linker and extractor are baseline-ready. -/
inductive NeuralAdvisoryComponent
  | objectVersionLinker
  | assumptionDependencyExtractor
  | translationProposalGenerator
  | lemmaCounterexampleProposer
  | couplingWeightProposer
  | surgerySitePatchProposer
  deriving DecidableEq, Repr

inductive AdvisoryExecutionStatus
  | schemaOnly
  | externalBaseline
  | independentlyEvaluated
  deriving DecidableEq, Repr

structure AdvisoryComponentRecord where
  component : NeuralAdvisoryComponent
  identity : ArtifactIdentity
  executionStatus : AdvisoryExecutionStatus
  checkerRoute : CheckerRoute
  mutatesCanonicalSource : Bool
  noCanonicalMutation : mutatesCanonicalSource = false

/-- Exact evaluation gates are policy data, not mathematical theorems. -/
structure NeuralEvaluationPolicy where
  identity : ArtifactIdentity
  authorityViolationsMaximum : Nat
  trustedBaseViolationsMaximum : Nat
  unresolvedVersionSubstitutionsMaximum : Nat
  missingCheckerRoutesMaximum : Nat
  postSurgeryRegressionsMaximum : Nat
  provenanceCompletenessMinimum : ℚ
  eceMaximum : ℚ
  oodAurocMinimum : ℚ
  preregisteredInDomainBenchmark : ArtifactIdentity
  preregisteredShiftBenchmark : ArtifactIdentity

/-- A finite evaluation report remains external observation data. -/
structure NeuralEvaluationReport where
  identity : ArtifactIdentity
  policy : NeuralEvaluationPolicy
  authorityViolations : Nat
  trustedBaseViolations : Nat
  unresolvedVersionSubstitutions : Nat
  missingCheckerRoutes : Nat
  postSurgeryRegressions : Nat
  provenanceCompleteness : ℚ
  ece : ℚ
  oodAuroc : ℚ
  evidence : ArtifactIdentity
  authority : AuthorityClass
  externalEvidence : authority = .externalCapability

/-- Whether the preregistered evaluation was actually executed. -/
inductive NeuralEvaluationRunStatus
  | notRun
  | externalObservation
  | independentlyEvaluated
  deriving DecidableEq, Repr

/-- A not-run evaluation cannot carry a fabricated numeric report. -/
structure NeuralEvaluationSubmission where
  identity : ArtifactIdentity
  policy : NeuralEvaluationPolicy
  status : NeuralEvaluationRunStatus
  report : Option NeuralEvaluationReport
  notRunHasNoReport : status = .notRun → report = none
  evidence : List ArtifactIdentity

namespace NeuralEvaluationSubmission

theorem report_absent_when_not_run
    (submission : NeuralEvaluationSubmission)
    (notRun : submission.status = .notRun) :
    submission.report = none :=
  submission.notRunHasNoReport notRun

end NeuralEvaluationSubmission

end Surface.ContinuousAssurance.WorldModel
```
