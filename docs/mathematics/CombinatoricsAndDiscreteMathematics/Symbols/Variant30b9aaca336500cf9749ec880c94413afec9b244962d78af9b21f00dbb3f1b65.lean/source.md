# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Symbols.Variant30b9aaca336500cf9749ec880c94413afec9b244962d78af9b21f00dbb3f1b65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `206c44086d9e6608c8b80310a767c31f56f42a38` · SHA-256 `9a2fe13e1cb4fff5f1bd8f64484169550c4eb6e22a28326ddfa4604d0eb48964`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Symbols.Variantdf3a28244a298ef67a07461e6482f9049ffa9d6f7554c4ff188da7e7702690a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df3a28244a298ef67a07461e6482f9049ffa9d6f7554c4ff188da7e7702690a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Symbols.Variantdf3a28244a298ef67a07461e6482f9049ffa9d6f7554c4ff188da7e7702690a1","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"df3a28244a298ef67a07461e6482f9049ffa9d6f7554c4ff188da7e7702690a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/FreeMonoid/Symbols.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Hannah Fechtner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Hannah Fechtner
-/

import Mathlib.Algebra.FreeMonoid.Basic
import Mathlib.Data.Finset.Lattice.Lemmas

/-!
# The finite set of symbols in a FreeMonoid element

This is separated from the main FreeMonoid file, as it imports the finiteness hierarchy
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Symbols.Variantdf3a28244a298ef67a07461e6482f9049ffa9d6f7554c4ff188da7e7702690a1

variable {α : Type*} [DecidableEq α]

namespace FreeMonoid

/-- the set of unique symbols in a free monoid element -/
@[to_additive "The set of unique symbols in an additive free monoid element"]
def symbols (a : FreeMonoid α) : Finset α := List.toFinset a

@[to_additive (attr := simp)]
theorem symbols_one : symbols (1 : FreeMonoid α) = ∅ := rfl

@[to_additive (attr := simp)]
theorem symbols_of {m : α} : symbols (of m) = {m} := rfl

@[to_additive (attr := simp)]
theorem symbols_mul {a b : FreeMonoid α} : symbols (a * b) = symbols a ∪ symbols b := by
  simp only [symbols, List.mem_toFinset, Finset.mem_union]
  apply List.toFinset_append

@[to_additive (attr := simp)]
theorem mem_symbols {m : α} {a : FreeMonoid α} : m ∈ symbols a ↔ m ∈ a :=
  List.mem_toFinset

end FreeMonoid
```
