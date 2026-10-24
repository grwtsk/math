# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DepthFirst.Variant07c68847f40e73e5c8a085ae828a050e2385fb344624d2527c307fa1fc24351e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f46f3929c77f1d141b71fb291be5e6c4c558fdc9` · SHA-256 `ba180d1d19b11f2a5056d33bf8314bcfc2e5d6e0af649416373fb5f8680ab8e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DepthFirst.Variant593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DepthFirst.Variant593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56","mathematical_subject":"Computation.DataStructures","original_sha256":"593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/search/DepthFirst.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.MLList.DepthFirst

-- We perform a depth first search of the "proper divisors in descending order" tree.

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DepthFirst.Variant593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56

#eval show Lean.MetaM Unit from do
  let r := depthFirstRemovingDuplicates' (fun n => List.range n |>.filter (n % · = 0) |>.reverse) 24
  guard $ r = [24, 12, 6, 3, 1, 2, 4, 8]
```
