-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OracleOperation.Variant84aada280eac89a3b90aea64f9d9603d3626f25299e05ec23945ec4a49a76e2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84aada280eac89a3b90aea64f9d9603d3626f25299e05ec23945ec4a49a76e2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OracleOperation.Variant84aada280eac89a3b90aea64f9d9603d3626f25299e05ec23945ec4a49a76e2b","mathematical_subject":"Computation.DataStructures","original_sha256":"84aada280eac89a3b90aea64f9d9603d3626f25299e05ec23945ec4a49a76e2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Oracle/Jurisdiction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Principal
import Mathematics.Concept.PointKind
import Mathematics.Concept.Relation
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Oracle jurisdiction

An oracle is scoped by point kinds, relation families, source strata, projects,
and permitted operations.  Competence and agreement cannot enlarge this
jurisdiction.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OracleOperation.Variant84aada280eac89a3b90aea64f9d9603d3626f25299e05ec23945ec4a49a76e2b

namespace Mathematics.Oracle

abbrev OracleId := StableId

inductive OracleOperation
  | interpret
  | compare
  | search
  | recommend
  | propose
  | critique
  | certifyWithinJurisdiction
  deriving DecidableEq, Repr, Inhabited

inductive OracleAuthorityCeiling
  | observation
  | proposal
  | checkedComputation
  | kernelCertificate
  deriving DecidableEq, Repr, Inhabited

inductive OracleFailureMode
  | unsupportedInput
  | unresolvedReference
  | insufficientEvidence
  | inconsistentSnapshot
  | outsideJurisdiction
  | resourceExhausted
  | internalFailure
  deriving DecidableEq, Repr, Inhabited

/-- Exact input, output, authority, failure, version, and snapshot contract. -/
structure OracleInterface where
  inputPointKinds : List Concept.PointKind
  outputPointKinds : List Concept.PointKind
  outputRelationFamilies : List Concept.RelationFamily
  authorityCeiling : OracleAuthorityCeiling
  failureModes : List OracleFailureMode
  versionId : StableId
  snapshotIds : List StableId
  interfaceDigest : Digest
  deriving DecidableEq

namespace OracleInterface

structure ValidFor
    (interface : OracleInterface)
    (principal : Capability.Principal) : Prop where
  inputs_nonempty : interface.inputPointKinds ≠ []
  outputs_nonempty :
    interface.outputPointKinds ≠ [] ∨
      interface.outputRelationFamilies ≠ []
  failure_modes_nonempty : interface.failureModes ≠ []
  snapshots_nonempty : interface.snapshotIds ≠ []
  model_ceiling :
    principal.kind = .model →
      interface.authorityCeiling = .observation ∨
      interface.authorityCeiling = .proposal

end OracleInterface

structure Jurisdiction where
  jurisdictionId : StableId
  oracleId : OracleId
  principal : Capability.Principal
  pointUniverseId : StableId
  admittedPointKinds : List Concept.PointKind
  admittedRelationFamilies : List Concept.RelationFamily
  admittedSourceLayers : List SourceAnalysis.AbstractSourceLayer
  admittedProjectIds : List ProjectId
  admittedOperations : List OracleOperation
  interface : OracleInterface
  boundaryDigest : Digest
  deriving DecidableEq

structure Jurisdiction.Valid
    (jurisdiction : Jurisdiction) : Prop where
  interface_valid :
    jurisdiction.interface.ValidFor jurisdiction.principal
  admitted_inputs :
    ∀ kind ∈ jurisdiction.interface.inputPointKinds,
      kind ∈ jurisdiction.admittedPointKinds
  admitted_outputs :
    ∀ kind ∈ jurisdiction.interface.outputPointKinds,
      kind ∈ jurisdiction.admittedPointKinds
  admitted_relations :
    ∀ family ∈ jurisdiction.interface.outputRelationFamilies,
      family ∈ jurisdiction.admittedRelationFamilies

def Jurisdiction.MayInterpret
    (jurisdiction : Jurisdiction)
    (kind : Concept.PointKind)
    (layer : SourceAnalysis.AbstractSourceLayer)
    (projectId : ProjectId) : Prop :=
  kind ∈ jurisdiction.admittedPointKinds ∧
  layer ∈ jurisdiction.admittedSourceLayers ∧
  projectId ∈ jurisdiction.admittedProjectIds ∧
  .interpret ∈ jurisdiction.admittedOperations

end Mathematics.Oracle
