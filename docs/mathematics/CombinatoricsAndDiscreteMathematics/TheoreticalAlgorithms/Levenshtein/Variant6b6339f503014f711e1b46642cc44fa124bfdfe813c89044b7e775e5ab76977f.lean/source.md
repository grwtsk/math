# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Levenshtein.Variant6b6339f503014f711e1b46642cc44fa124bfdfe813c89044b7e775e5ab76977f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdaa6d94a319326810812c11edbec461c1338217` · SHA-256 `10e1dbfc31e70c3600e180fcc2079372c56c4e923e603099ff177cac7ab109d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EditDistance.Varianta11c68351129cbe5800d505506167c8c82a3c3a1a77920059015f1cbef6eb31e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a11c68351129cbe5800d505506167c8c82a3c3a1a77920059015f1cbef6eb31e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.EditDistance.Varianta11c68351129cbe5800d505506167c8c82a3c3a1a77920059015f1cbef6eb31e","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"a11c68351129cbe5800d505506167c8c82a3c3a1a77920059015f1cbef6eb31e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/levenshtein.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.List.EditDistance.Defs
import Mathlib.Algebra.Group.Nat.Defs


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EditDistance.Varianta11c68351129cbe5800d505506167c8c82a3c3a1a77920059015f1cbef6eb31e

#guard
  (suffixLevenshtein Levenshtein.defaultCost "kitten".toList "sitting".toList).1 =
    [3, 3, 4, 5, 6, 6, 7]

#guard levenshtein Levenshtein.defaultCost
  "but our fish said, 'no! no!'".toList
  "'put me down!' said the fish.".toList = 21
```
