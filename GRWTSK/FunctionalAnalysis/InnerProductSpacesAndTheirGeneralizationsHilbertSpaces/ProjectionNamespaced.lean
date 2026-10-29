-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.OrthogonalProjectionCertificate.Variant2695a7263428f4f948a67b2b0f2360eb4a8118edbf6514f60fbc2c6203adaac8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2695a7263428f4f948a67b2b0f2360eb4a8118edbf6514f60fbc2c6203adaac8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.OrthogonalProjectionCertificate.Variant2695a7263428f4f948a67b2b0f2360eb4a8118edbf6514f60fbc2c6203adaac8","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"2695a7263428f4f948a67b2b0f2360eb4a8118edbf6514f60fbc2c6203adaac8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP2/OperatorOrder/Projection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP2.OperatorOrder.Predicates

/-!
# Orthogonal-projection certificate primitive
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.OrthogonalProjectionCertificate.Variant2695a7263428f4f948a67b2b0f2360eb4a8118edbf6514f60fbc2c6203adaac8

namespace Mathematics.SemiLocalDefect.SoninCore

structure OrthogonalProjectionCertificate
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (P : HilbertEnd H) :
    Prop where
  selfAdjoint :
    OperatorSelfAdjoint P
  idempotent :
    OperatorIdempotent P
  nonnegative :
    OperatorNonnegative P

end Mathematics.SemiLocalDefect.SoninCore
