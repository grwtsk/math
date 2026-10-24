# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Option.Variantbf9a377db1d9b5c9d1d162312a53215185c8c456eacaf221ebfedbe03786d0d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6567cf106be1d1ca5b81ae80f7e07a1500c27f30` · SHA-256 `9a93a3f17e05ee44c4f457ad9e35510c463b2c7d1e1ef05f0048b4b1ed38b34d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProdInsertNone.Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProdInsertNone.Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/BigOperators/Option.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Finset.Option
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Lemmas about products and sums over finite sets in `Option α`

In this file we prove formulas for products and sums over `Finset.insertNone s` and
`Finset.eraseNone s`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProdInsertNone.Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1

open Function

namespace Finset

variable {α M : Type*} [CommMonoid M]

@[to_additive (attr := simp)]
theorem prod_insertNone (f : Option α → M) (s : Finset α) :
    ∏ x ∈ insertNone s, f x = f none * ∏ x ∈ s, f (some x) := by simp [insertNone]

@[to_additive]
theorem mul_prod_eq_prod_insertNone (f : α → M) (x : M) (s : Finset α) :
    x * ∏ i ∈ s, f i = ∏ i ∈ insertNone s, i.elim x f :=
  (prod_insertNone (fun i => i.elim x f) _).symm

@[to_additive]
theorem prod_eraseNone (f : α → M) (s : Finset (Option α)) :
    ∏ x ∈ eraseNone s, f x = ∏ x ∈ s, Option.elim' 1 f x := by
  classical calc
      ∏ x ∈ eraseNone s, f x = ∏ x ∈ (eraseNone s).map Embedding.some, Option.elim' 1 f x :=
        (prod_map (eraseNone s) Embedding.some <| Option.elim' 1 f).symm
      _ = ∏ x ∈ s.erase none, Option.elim' 1 f x := by rw [map_some_eraseNone]
      _ = ∏ x ∈ s, Option.elim' 1 f x := prod_erase _ rfl

end Finset
```
