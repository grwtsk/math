# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Length.Variant235e645dd1b0af0e34bc37465d0db08ac1bc82fe728cee141a77d538387efe2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0041c0e552ef367b671cb65f42ed0e02a75d188c` · SHA-256 `1e5bb96b0885f1e4bbd690a6bb2c73db6193cdc1cc5efe6c1d4e533af46247b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LengthEqZeroIff.Variant5bef4316feda66bb67df89965262d0bbd43fcd53e3cdaa8be80d7977d5d5762b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5bef4316feda66bb67df89965262d0bbd43fcd53e3cdaa8be80d7977d5d5762b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LengthEqZeroIff.Variant5bef4316feda66bb67df89965262d0bbd43fcd53e3cdaa8be80d7977d5d5762b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5bef4316feda66bb67df89965262d0bbd43fcd53e3cdaa8be80d7977d5d5762b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Lemmas/Length.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.String.Length
public import Init.Data.String.Modify
import Init.Data.String.Lemmas.Modify
import Init.Data.String.Lemmas.Intercalate


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LengthEqZeroIff.Variant5bef4316feda66bb67df89965262d0bbd43fcd53e3cdaa8be80d7977d5d5762b

public section

namespace String

@[simp]
theorem length_eq_zero_iff {s : String} : s.length = 0 ↔ s = "" := by
  simp [← length_toList]

@[simp]
theorem length_map {f : Char → Char} {s : String} : (s.map f).length = s.length := by
  simp [← length_toList]

@[simp]
theorem length_join {l : List String} : (String.join l).length = (l.map String.length).sum := by
  simp only [← length_toList, toList_join, List.length_flatMap]
  simp [length_toList]

end String
```
