# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PassivityObstruction.Variante8f5b0c8ca0388757a6af945abc6a03386bf3ad3d60c901e78bfd29fcd0d2b71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72804d4e025a89f23a9e2533d40d289bd44b6c29` · SHA-256 `6528179794a0c9bb50fefaa38448368f493ac93759994f522d07a732b00dfadc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PassivityObstructionDescriptor.Variantbd1a309865ae58c16a5100f5c44ad9f38866ae875e7ba6f782b41261943290af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd1a309865ae58c16a5100f5c44ad9f38866ae875e7ba6f782b41261943290af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PassivityObstructionDescriptor.Variantbd1a309865ae58c16a5100f5c44ad9f38866ae875e7ba6f782b41261943290af","mathematical_subject":"Computation.DataStructures","original_sha256":"bd1a309865ae58c16a5100f5c44ad9f38866ae875e7ba6f782b41261943290af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Access/PassivityObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PassivityObstructionDescriptor.Variantbd1a309865ae58c16a5100f5c44ad9f38866ae875e7ba6f782b41261943290af

namespace Mathematics.SemiLocalDefect.Access

structure PassivityObstructionDescriptor where
  obstructionRef : String
  witnessVectorRef : String
  strictNegativityCertificateRef : Option String
  minimalityCertificateRefs : List String
  status : OpenBridgeStatus :=
    openBridgeStatus .passivityObstruction

end Mathematics.SemiLocalDefect.Access
```
