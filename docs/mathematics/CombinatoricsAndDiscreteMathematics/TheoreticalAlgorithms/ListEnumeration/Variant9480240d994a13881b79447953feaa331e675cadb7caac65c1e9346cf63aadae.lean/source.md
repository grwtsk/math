# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListEnumeration.Variant9480240d994a13881b79447953feaa331e675cadb7caac65c1e9346cf63aadae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f33713896ed90f1ddd54db079d2d0ea168b7bf1` · SHA-256 `89132262b1ea93d1162f1d2f732678dfcfa8164bdd1d462c83cf243004899070`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Perm.Varianteed60d581edfe034efd650a7ba766e125393696316970b4b7506da9b98aeae32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eed60d581edfe034efd650a7ba766e125393696316970b4b7506da9b98aeae32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Perm.Varianteed60d581edfe034efd650a7ba766e125393696316970b4b7506da9b98aeae32","mathematical_subject":"Computation.DataStructures","original_sha256":"eed60d581edfe034efd650a7ba766e125393696316970b4b7506da9b98aeae32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/list_enumeration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Data.List.Perm


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Perm.Varianteed60d581edfe034efd650a7ba766e125393696316970b4b7506da9b98aeae32

open List

#guard findIdxNth (· < 3) [5, 1, 3, 2, 4, 0, 1, 4] 2 == 5
#guard idxOfNth 1 [5, 1, 3, 2, 4, 0, 1, 4] 1 == 6
#guard countPBefore (· < 3) [5, 1, 3, 2, 4, 0, 1, 4] 5 == 2
#guard countBefore 1 [5, 1, 3, 2, 4, 0, 1, 4] 6 == 1
#guard (by decide : [1, 0, 1] <+~ [5, 0, 1, 3, 1]).idxInj 1 = 1
#guard (by decide : [0, 1, 1, 3, 5] ~ [5, 0, 1, 3, 1]).idxBij 2 == 4
```
