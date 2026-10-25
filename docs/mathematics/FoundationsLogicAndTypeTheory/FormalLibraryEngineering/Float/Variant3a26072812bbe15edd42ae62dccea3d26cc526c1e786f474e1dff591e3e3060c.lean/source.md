# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Float.Variant3a26072812bbe15edd42ae62dccea3d26cc526c1e786f474e1dff591e3e3060c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25ca1c532482adc856a0deb7d8e2e9b472228d4c` · SHA-256 `d39607016ed9d2a4927d03448629b17d4f7d8fb7cb69367294c759e6dcf53950`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardExpr.Variantfe514824c4f87c96e3c69335688830f258bdb856cb55d91888961e2801eff5ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe514824c4f87c96e3c69335688830f258bdb856cb55d91888961e2801eff5ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GuardExpr.Variantfe514824c4f87c96e3c69335688830f258bdb856cb55d91888961e2801eff5ca","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"fe514824c4f87c96e3c69335688830f258bdb856cb55d91888961e2801eff5ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/float.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.GuardExpr
import Std.Lean.Float


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardExpr.Variantfe514824c4f87c96e3c69335688830f258bdb856cb55d91888961e2801eff5ca

#guard 0.0.toRatParts == some (0, -53)
#guard (2^(-1000):Float).toRatParts == some (4503599627370496, -1052)
#guard (2^(-30):Float).toRatParts == some (4503599627370496, -82)
#guard 0.1.toRatParts == some (7205759403792794, -56)
#guard 0.5.toRatParts == some (4503599627370496, -53)
#guard 5.0.toRatParts == some (5629499534213120, -50)
#guard (-5.0).toRatParts == some (-5629499534213120, -50)
#guard 5.5.toRatParts == some (6192449487634432, -50)
#guard 500000000000000.5.toRatParts == some (8000000000000008, -4)
#guard 5000000000000000.5.toRatParts == some (5000000000000000, 0)
#guard 1e1000.toRatParts == none
#guard (-1e1000).toRatParts == none
#guard (-0/0:Float).toRatParts == none

#guard 0.0.toRatParts' == some (0, 0)
#guard (2^(-1000):Float).toRatParts' == some (1, -1000)
#guard (2^(-30):Float).toRatParts' == some (1, -30)
#guard 0.1.toRatParts' == some (3602879701896397, -55)
#guard 0.5.toRatParts' == some (1, -1)
#guard 5.0.toRatParts' == some (5, 0)
#guard (-5.0).toRatParts' == some (-5, 0)
#guard 5.5.toRatParts' == some (11, -1)
#guard 500000000000000.5.toRatParts' == some (1000000000000001, -1)
#guard 5000000000000000.5.toRatParts' == some (152587890625, 15)
#guard 1e1000.toRatParts' == none
#guard (-1e1000).toRatParts' == none
#guard (-0/0:Float).toRatParts' == none

#guard 0.0.toStringFull == "0"
#guard (2^(-1000):Float).toStringFull.length == 1002
#guard (2^(-30):Float).toStringFull == "0.000000000931322574615478515625"
#guard 0.1.toStringFull == "0.1000000000000000055511151231257827021181583404541015625"
#guard 0.5.toStringFull == "0.5"
#guard 5.0.toStringFull == "5"
#guard (-5.0).toStringFull == "-5"
#guard 5.5.toStringFull == "5.5"
#guard 500000000000000.5.toStringFull == "500000000000000.5"
#guard 5000000000000000.5.toStringFull == "5000000000000000"
#guard 1e1000.toStringFull == "inf"
#guard (-1e1000).toStringFull == "-inf"
#guard (-0/0:Float).toStringFull == "NaN"
```
