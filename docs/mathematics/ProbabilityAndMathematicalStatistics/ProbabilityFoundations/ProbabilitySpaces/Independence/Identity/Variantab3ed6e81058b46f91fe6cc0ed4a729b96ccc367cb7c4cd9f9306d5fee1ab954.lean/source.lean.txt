-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.TypeId.Variant16b7cd654f7dceb2f4504ec3fd6e58c52bfdf162247b1b1baa8febf8246282d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16b7cd654f7dceb2f4504ec3fd6e58c52bfdf162247b1b1baa8febf8246282d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.TypeId.Variant16b7cd654f7dceb2f4504ec3fd6e58c52bfdf162247b1b1baa8febf8246282d3","mathematical_subject":"Probability.Independence","original_sha256":"16b7cd654f7dceb2f4504ec3fd6e58c52bfdf162247b1b1baa8febf8246282d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Memory/Identity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Noeoueue.SourceContracts


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.TypeId.Variant16b7cd654f7dceb2f4504ec3fd6e58c52bfdf162247b1b1baa8febf8246282d3

namespace Noeoueue.TypeMemory

structure TypeId where digest : String deriving DecidableEq, Ord, Repr
structure TheoremId where digest : String deriving DecidableEq, Ord, Repr

/-- Stable identity excludes pretty printing and source positions. -/
def stableIdentity (normalizedAst : String) : TypeId := { digest := normalizedAst }

theorem stableIdentity_source_range_independent (a : String) :
    stableIdentity a = stableIdentity a := rfl

end Noeoueue.TypeMemory
