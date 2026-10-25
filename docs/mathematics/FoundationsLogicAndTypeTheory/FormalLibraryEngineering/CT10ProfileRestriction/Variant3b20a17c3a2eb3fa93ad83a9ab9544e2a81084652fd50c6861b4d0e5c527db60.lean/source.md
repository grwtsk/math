# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT10ProfileRestriction.Variant3b20a17c3a2eb3fa93ad83a9ab9544e2a81084652fd50c6861b4d0e5c527db60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a28644eb711fc91f33dd6c5c1b4a439653769cf` · SHA-256 `2ff1837182606a7eb72f017398a912623bb23be28a4652b1abdde86057ea2707`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ct10ProfileRestriction.Variantc5e407a17b313bd748382ba169b41ab077af91082c32716382722bd934bf4b2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5e407a17b313bd748382ba169b41ab077af91082c32716382722bd934bf4b2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Ct10ProfileRestriction.Variantc5e407a17b313bd748382ba169b41ab077af91082c32716382722bd934bf4b2f","mathematical_subject":"Foundations.Unclassified","original_sha256":"c5e407a17b313bd748382ba169b41ab077af91082c32716382722bd934bf4b2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Theorems/CT10_ProfileRestriction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ct10ProfileRestriction.Variantc5e407a17b313bd748382ba169b41ab077af91082c32716382722bd934bf4b2f

namespace FCRS.Theorems

/--
CT-10: restriction to the selected profiles.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct10_profileRestriction
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT10Claim S :=
  registry.ct10

end FCRS.Theorems
```
