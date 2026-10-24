# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Option.Variant7d12d9c80508fb4747ce53fd06d2e7d09ca07f0bb595dac433d0eba5637ac7d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c024d453d1746efec841913bd17d99b5bb7430f` · SHA-256 `dcdc5a846c04d4ee3b932c7aa00ed636c981982bb8573cd9a510422b9c17e0c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProdInsertNone.Variant682bab6dbcf19ce5609c96b522de87960f03dda0bbca02ff47206501810a7831","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"682bab6dbcf19ce5609c96b522de87960f03dda0bbca02ff47206501810a7831","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProdInsertNone.Variant682bab6dbcf19ce5609c96b522de87960f03dda0bbca02ff47206501810a7831","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"682bab6dbcf19ce5609c96b522de87960f03dda0bbca02ff47206501810a7831","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/BigOperators/Option.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.BigOperators.Basic
import Mathlib.Data.Finset.Option


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProdInsertNone.Variant682bab6dbcf19ce5609c96b522de87960f03dda0bbca02ff47206501810a7831

#align_import algebra.big_operators.option from "leanprover-community/mathlib"@"008205aa645b3f194c1da47025c5f110c8406eab"

/-!
# Lemmas about products and sums over finite sets in `Option α`

In this file we prove formulas for products and sums over `Finset.insertNone s` and
`Finset.eraseNone s`.
-/

open BigOperators

open Function

namespace Finset

variable {α M : Type*} [CommMonoid M]

@[to_additive (attr := simp)]
theorem prod_insertNone (f : Option α → M) (s : Finset α) :
    ∏ x in insertNone s, f x = f none * ∏ x in s, f (some x) := by simp [insertNone]
#align finset.prod_insert_none Finset.prod_insertNone
#align finset.sum_insert_none Finset.sum_insertNone

@[to_additive]
theorem prod_eraseNone (f : α → M) (s : Finset (Option α)) :
    ∏ x in eraseNone s, f x = ∏ x in s, Option.elim' 1 f x := by
  classical calc
      ∏ x in eraseNone s, f x = ∏ x in (eraseNone s).map Embedding.some, Option.elim' 1 f x :=
        (prod_map (eraseNone s) Embedding.some <| Option.elim' 1 f).symm
      _ = ∏ x in s.erase none, Option.elim' 1 f x := by rw [map_some_eraseNone]
      _ = ∏ x in s, Option.elim' 1 f x := prod_erase _ rfl
#align finset.prod_erase_none Finset.prod_eraseNone
#align finset.sum_erase_none Finset.sum_eraseNone

end Finset
```
