# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RankOrderCompatibility.Variantb2c567639aee3b05808f388c7947d35092ba3b8796bfddee9284e3843ccf33cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f10e2298f72b21764787de388e09270f3fcc939` · SHA-256 `1f1c44ec54c8807a25c137340f207514e1bc1dbe8c6bfd799e304871fe5ee8dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RankOrderData.Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RankOrderData.Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791","mathematical_subject":"Foundations.Unclassified","original_sha256":"4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/GrandChallenge/BSD/RankOrderCompatibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.GrandChallenge.BSD.FixedPointRecursion

/-!
# Folder.GrandChallenge.BSD.RankOrderCompatibility

Radiation role: research-boundary
BinaryMatrix spine: This module records BSD rank/order compatibility contracts.
Ontology: bsd_fixed_point_recursion
Pivot role: arithmetic
Zero typology: rank-order
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RankOrderData.Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791

namespace Folder
namespace GrandChallenge
namespace BSD

structure RankOrderData where
  curve : EllipticCurveObject
  algebraicRankLabel : String
  analyticOrderLabel : String
  regulatorOrPeriodLabel : String

structure RankOrderCompatibility where
  data : RankOrderData
  compatible : Prop
  compatible_certified : compatible
  mismatchObstruction : Prop
  mismatchObstruction_certified : mismatchObstruction
  sourceLabel : String

theorem bsd_rank_order_compatible_if_supplied
    (R : RankOrderCompatibility) :
    R.compatible :=
  R.compatible_certified

theorem bsd_mismatch_obstruction_if_supplied
    (R : RankOrderCompatibility) :
    R.mismatchObstruction :=
  R.mismatchObstruction_certified

end BSD
end GrandChallenge
end Folder
```
