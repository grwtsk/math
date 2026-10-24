# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Projection.Variant2d89aecea66eb04ae41876bfe7aa72bdd8ac1f503e571cb6a1e71684f3d7cafc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29ee6b1f3a0e1b219ad5b50a343a4c03d9324bec` · SHA-256 `7899dc8a76709a2fa79dccf858101484f2407c45d64031d8cca741a9b5c8551f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
