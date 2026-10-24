-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoremHyperedge.Variantb9954377e8fc569a27a994e502154c341cec821f737e535657fccb4e04e03b63","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9954377e8fc569a27a994e502154c341cec821f737e535657fccb4e04e03b63","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TheoremHyperedge.Variantb9954377e8fc569a27a994e502154c341cec821f737e535657fccb4e04e03b63","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b9954377e8fc569a27a994e502154c341cec821f737e535657fccb4e04e03b63","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Memory/TypeGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic
import Noeoueue.Memory.Identity


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoremHyperedge.Variantb9954377e8fc569a27a994e502154c341cec821f737e535657fccb4e04e03b63

namespace Noeoueue.TypeMemory

structure TheoremHyperedge (alpha : Type) where
  theoremId : TheoremId
  statementSupport : Finset alpha
  proofDependencies : Finset alpha
  deriving DecidableEq

/-- `type-memory://noeoueue/type-graph@1`: repeated syntax is one statement incidence. -/
theorem statement_support_idempotent {alpha} [DecidableEq alpha] (s : Finset alpha) :
    s ∪ s = s := by simp

end Noeoueue.TypeMemory
