-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GeneratorKind.Variantabdcc4ef016c003b9866e8d559730fe5a2840b62279a461cb717f680872544b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abdcc4ef016c003b9866e8d559730fe5a2840b62279a461cb717f680872544b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GeneratorKind.Variantabdcc4ef016c003b9866e8d559730fe5a2840b62279a461cb717f680872544b3","mathematical_subject":"Computation.DataStructures","original_sha256":"abdcc4ef016c003b9866e8d559730fe5a2840b62279a461cb717f680872544b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/GeneratedAncestry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Principal
import Mathematics.Concept.Authority
import Mathematics.Ingestion.TypedIngress
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Generated mathematical ancestry

Generated mathematics re-enters through the same source-addressed gate.  Its
generator, task, inputs, target, authority, and obligations are immutable
ancestry coordinates; generation does not grant theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GeneratorKind.Variantabdcc4ef016c003b9866e8d559730fe5a2840b62279a461cb717f680872544b3

namespace Mathematics.Ingestion

inductive GeneratorKind
  | human
  | externalModel
  | localModel
  | symbolicSearch
  | compiler
  | transformation
  deriving DecidableEq, Repr

structure GeneratedAncestry where
  ancestryId : StableId
  generatorKind : GeneratorKind
  generator : Capability.Principal
  taskDigest : Digest
  promptDigest : Option Digest
  inputAddressIds : List StableId
  outputAddress : SourceAnalysis.AbstractSourceAddress
  authority : Concept.Profile
  obligationIds : List StableId
  predecessorAncestryIds : List StableId
  ancestryDigest : Digest
  deriving DecidableEq

/-- Re-ingestion binds generated output to a typed ingress entry. -/
structure GeneratedReingestion
    (ancestry : GeneratedAncestry) where
  entry : TypedIngressEntry
  output_address_exact :
    entry.sourceAddress = ancestry.outputAddress
  reingestionReceiptId : StableId
  reingestionDigest : Digest

theorem GeneratedReingestion.retains_generator
    {ancestry : GeneratedAncestry}
    (_reingestion : GeneratedReingestion ancestry) :
    ∃ generator, generator = ancestry.generator :=
  ⟨ancestry.generator, rfl⟩

end Mathematics.Ingestion
