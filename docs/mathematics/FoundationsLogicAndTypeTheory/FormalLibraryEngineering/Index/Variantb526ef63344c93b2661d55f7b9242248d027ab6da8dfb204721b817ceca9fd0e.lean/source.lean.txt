-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Index.Variant8444d33b5e5b0d317695fa9e5cf61517e48abf7a4470b4958b08c3ad1f67113d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8444d33b5e5b0d317695fa9e5cf61517e48abf7a4470b4958b08c3ad1f67113d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Index.Variant8444d33b5e5b0d317695fa9e5cf61517e48abf7a4470b4958b08c3ad1f67113d","mathematical_subject":"Foundations.Unclassified","original_sha256":"8444d33b5e5b0d317695fa9e5cf61517e48abf7a4470b4958b08c3ad1f67113d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Discovery/Index.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.Id

/-!
# Discovery index

Declarations and concepts coexist in one advisory kernel index without becoming
the same semantic type.  The constructor records which side of the assignment
boundary an item inhabits.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Index.Variant8444d33b5e5b0d317695fa9e5cf61517e48abf7a4470b4958b08c3ad1f67113d

namespace Mathematics.Discovery

open Mathematics

inductive Index
  | entity (id : EntityId)
  | concept (id : ConceptId)
  deriving DecidableEq, Repr, Inhabited

@[simp] theorem entity_ne_concept
    (entityId : EntityId) (conceptId : ConceptId) :
    Index.entity entityId ≠ Index.concept conceptId := by
  intro equality
  cases equality

end Mathematics.Discovery
