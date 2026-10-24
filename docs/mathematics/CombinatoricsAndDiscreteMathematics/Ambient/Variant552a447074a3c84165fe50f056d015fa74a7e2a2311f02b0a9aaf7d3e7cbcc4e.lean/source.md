# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Ambient.Variant552a447074a3c84165fe50f056d015fa74a7e2a2311f02b0a9aaf7d3e7cbcc4e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3a334357191e6e7387de912599a4e5d0a003338` · SHA-256 `98ff61fd660c9d97e4c34a1a4fe486260c97098b1c14cae700542622a6fe969c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteSoninHorizonAmbient.Variantea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteSoninHorizonAmbient.Variantea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP1/SoninHorizon/Ambient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP1.SoninHorizon.Carrier

/-!
# Common ambient-carrier primitive
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteSoninHorizonAmbient.Variantea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439

namespace Mathematics.SemiLocalDefect.SoninCore

abbrev FiniteSoninHorizon.Ambient
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) :=
  H.Sonin (topCut U)

def FiniteSoninHorizon.toTop
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    H.Sonin S →L[ℂ] H.Ambient :=
  H.connector
    (Finset.subset_univ S)

theorem FiniteSoninHorizon.toTop_injective
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    Function.Injective (H.toTop S) :=
  H.connector_injective
    (Finset.subset_univ S)

end Mathematics.SemiLocalDefect.SoninCore
```
