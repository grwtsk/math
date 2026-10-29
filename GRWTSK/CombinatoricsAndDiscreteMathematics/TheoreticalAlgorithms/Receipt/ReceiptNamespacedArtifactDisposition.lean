-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArtifactDisposition.Variante34a865d2dcba10e87cbcfbd633fa5b5e52ac17757ea65f08599858e95b7f9b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e34a865d2dcba10e87cbcfbd633fa5b5e52ac17757ea65f08599858e95b7f9b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ArtifactDisposition.Variante34a865d2dcba10e87cbcfbd633fa5b5e52ac17757ea65f08599858e95b7f9b9","mathematical_subject":"Computation.DataStructures","original_sha256":"e34a865d2dcba10e87cbcfbd633fa5b5e52ac17757ea65f08599858e95b7f9b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Receipt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Attribute
import Mathematics.Ingestion.Blueprint
import Mathematics.Ingestion.Data
import Mathematics.Ingestion.Issue
import Mathematics.Ingestion.Obligation
import Mathematics.Ingestion.Proof
import Mathematics.Ingestion.Workflow

/-! # Total finite-snapshot ingestion receipts -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArtifactDisposition.Variante34a865d2dcba10e87cbcfbd633fa5b5e52ac17757ea65f08599858e95b7f9b9

namespace Mathematics.Ingestion

inductive ArtifactDisposition
  | source (sourceId : StableId)
  | opaque (reason : OpacityReason)
  deriving DecidableEq, Repr

structure ArtifactReceipt where
  artifactId : Ecosystem.ArtifactId
  disposition : ArtifactDisposition
  receiptDigest : Digest
  deriving DecidableEq, Repr

/--
Every manifest artifact has exactly one receipt.  Semantic indexes are
additional views and cannot remove the raw source.
-/
structure IngestionReceipt where
  raw : RawIngestion
  artifactReceipts : List ArtifactReceipt
  receiptIdsUnique :
    (artifactReceipts.map ArtifactReceipt.artifactId).Nodup
  artifactCoverage :
    ∀ artifactId,
      artifactId ∈ raw.snapshot.manifest.sourceInventory ↔
        ∃ receipt ∈ artifactReceipts,
          receipt.artifactId = artifactId
  declarations : List Declaration
  environment : EnvironmentCapture
  environment_matches :
    environment.capsuleKey =
      raw.reconstruction.sandboxed.capsule.key
  declarationIdsUnique :
    (declarations.map Extractor.DeclarationRecord.declarationId).Nodup
  declarationCoverage :
    ∀ declarationId,
      declarationId ∈ environment.declarationInventory ↔
        ∃ declaration ∈ declarations,
          declaration.declarationId = declarationId
  proofs : List ProofCapture
  proofObligations : List ProofObligation
  sorryCoverage :
    ∀ closure ∈ environment.verification.extraction.trustClosures,
      ∀ assumption ∈ closure.assumptions,
        assumption.kind = .sorryDerivedDeclaration →
          ∃ obligation ∈ proofObligations,
            obligation.declarationId = closure.declarationId ∧
            obligation.assumption = assumption
  attributes : List DeclarationAttribute
  blueprints : List BlueprintRecord
  workflows : List WorkflowRecord
  issues : List IssueRecord
  data : List DataRecord
  receiptDigest : Digest

namespace IngestionReceipt

/-- Total ingestion cannot silently omit an inventoried artifact. -/
theorem disposition_exists
    (receipt : IngestionReceipt)
    {artifactId : Ecosystem.ArtifactId}
    (inventoried :
      artifactId ∈ receipt.raw.snapshot.manifest.sourceInventory) :
    ∃ artifactReceipt ∈ receipt.artifactReceipts,
      artifactReceipt.artifactId = artifactId :=
  (receipt.artifactCoverage artifactId).mp inventoried

/-- Every elaborated environment declaration has one extracted record. -/
theorem declaration_exists
    (receipt : IngestionReceipt)
    {declarationId : StableId}
    (elaborated :
      declarationId ∈ receipt.environment.declarationInventory) :
    ∃ declaration ∈ receipt.declarations,
      declaration.declarationId = declarationId :=
  (receipt.declarationCoverage declarationId).mp elaborated

end IngestionReceipt

end Mathematics.Ingestion
