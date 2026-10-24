# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variantcb5859aa2d1ecb71f84e4dee596090456781a2f214dc7c9e9e98e072bf43895c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bc6f2572bb8b0cb0c7d3b664dc2177af0dd1935` · SHA-256 `21efabcea3dc358238e3f01abe242e9c6d4c723324b6ee112b3c788bbde5c330`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Compare.Variantd3ae906ac3a1dd2d15d4720bd2900246c5461ccfe71f25ac91e3d86fba5d9b55","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3ae906ac3a1dd2d15d4720bd2900246c5461ccfe71f25ac91e3d86fba5d9b55","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Compare.Variantd3ae906ac3a1dd2d15d4720bd2900246c5461ccfe71f25ac91e3d86fba5d9b55","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d3ae906ac3a1dd2d15d4720bd2900246c5461ccfe71f25ac91e3d86fba5d9b55","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Ord/String.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Paul Reichert, Robin Arnez
-/
module

prelude
public import Init.Data.Order.Ord
public import Init.Data.String.Basic
import Init.Data.Char.Lemmas
import Init.Data.String.Lemmas.StringOrder


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Compare.Variantd3ae906ac3a1dd2d15d4720bd2900246c5461ccfe71f25ac91e3d86fba5d9b55

public section

/-!
# Instances for strings.

-/

set_option autoImplicit false
set_option linter.missingDocs true

open Std

namespace String

/--
Lexicographic comparison of strings
-/
@[extern "lean_string_compare"]
def compare (s₁ s₂ : @& String) : Ordering :=
  compareOfLessAndEq s₁ s₂

instance : Ord String where
  compare := String.compare

instance : TransOrd String :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    String.le_antisymm String.le_trans String.le_total String.not_le

instance : LawfulEqOrd String where
  eq_of_compare h := compareOfLessAndEq_eq_eq String.le_refl String.not_le |>.mp h

end String

namespace Char

instance : TransOrd Char :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    Char.le_antisymm Char.le_trans Char.le_total Char.not_le

instance : LawfulEqOrd Char where
  eq_of_compare h := compareOfLessAndEq_eq_eq Char.le_refl Char.not_le |>.mp h

end Char
```
