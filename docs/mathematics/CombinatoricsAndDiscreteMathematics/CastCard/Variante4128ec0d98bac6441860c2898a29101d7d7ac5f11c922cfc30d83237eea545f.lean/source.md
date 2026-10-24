# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CastCard.Variante4128ec0d98bac6441860c2898a29101d7d7ac5f11c922cfc30d83237eea545f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed49e23aa0a509413450fd986ce757a0f9e7096a` · SHA-256 `e40b8f1a3f39d3b33854dd6d873f781102973087be21a05f1eca7bf64f69226c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CastCardEraseOfMem.Variantadfe061fd7386f6c3cf6224d19d4e20b91a162a489322319bc7a93d7d6a36afb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"adfe061fd7386f6c3cf6224d19d4e20b91a162a489322319bc7a93d7d6a36afb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CastCardEraseOfMem.Variantadfe061fd7386f6c3cf6224d19d4e20b91a162a489322319bc7a93d7d6a36afb","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"adfe061fd7386f6c3cf6224d19d4e20b91a162a489322319bc7a93d7d6a36afb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finset/CastCard.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad
-/
import Mathlib.Data.Finset.Card
import Mathlib.Data.Int.Cast.Basic

/-!
# Cardinality of a finite set and subtraction

This file contains results on the cardinality of a `Finset` and subtraction, by casting the
cardinality as element of an `AddGroupWithOne`.

## Main results

* `Finset.cast_card_erase_of_mem`: erasing an element of a finset decrements the cardinality
  (avoiding `ℕ` subtraction).
* `Finset.cast_card_inter`, `Finset.cast_card_union`: inclusion/exclusion principle.
* `Finset.cast_card_sdiff`: cardinality of `t \ s` is the difference of cardinalities if `s ⊆ t`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CastCardEraseOfMem.Variantadfe061fd7386f6c3cf6224d19d4e20b91a162a489322319bc7a93d7d6a36afb

assert_not_exists MonoidWithZero OrderedCommMonoid

open Nat

namespace Finset

variable {α R : Type*} {s t : Finset α} {a b : α}
variable [DecidableEq α] [AddGroupWithOne R]

/-- $\#(s \setminus \{a\}) = \#s - 1$ if $a \in s$.
  This result is casted to any additive group with 1,
  so that we don't have to work with `ℕ`-subtraction. -/
-- @[simp] -- removed because LHS is not in simp normal form
theorem cast_card_erase_of_mem (hs : a ∈ s) : (#(s.erase a) : R) = #s - 1 := by
  rw [← card_erase_add_one hs, cast_add, cast_one, eq_sub_iff_add_eq]

lemma cast_card_inter : (#(s ∩ t) : R) = #s + #t - #(s ∪ t) := by
  rw [eq_sub_iff_add_eq, ← cast_add, card_inter_add_card_union, cast_add]

lemma cast_card_union : (#(s ∪ t) : R) = #s + #t - #(s ∩ t) := by
  rw [eq_sub_iff_add_eq, ← cast_add, card_union_add_card_inter, cast_add]

lemma cast_card_sdiff (h : s ⊆ t) : (#(t \ s) : R) = #t - #s := by
  rw [card_sdiff h, Nat.cast_sub (card_mono h)]

end Finset
```
