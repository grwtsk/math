# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variant107ad1c2d00bd78352e056891f1b66c1968cc4f0806af7ce56d0bc46eaa1f831

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4be1ff3b0abd44523c28306d4ef69e1efc4d12c` · SHA-256 `c0139fe8cade04c898d864d3c1cfbf4af75bc1174562db3e9356da0bc484a51a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DisjointRangeAddLeftEmbedding.Variant446c937a19ed1f349cbd3a8e0f62d4ccf639e644bc29a6a962452ef07a6cd3fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"446c937a19ed1f349cbd3a8e0f62d4ccf639e644bc29a6a962452ef07a6cd3fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DisjointRangeAddLeftEmbedding.Variant446c937a19ed1f349cbd3a8e0f62d4ccf639e644bc29a6a962452ef07a6cd3fa","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"446c937a19ed1f349cbd3a8e0f62d4ccf639e644bc29a6a962452ef07a6cd3fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Nat/Range.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Minchao Wu, Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.Embedding
public import Mathlib.Algebra.Group.Nat.Defs
public import Mathlib.Data.Finset.Image

/-!
# `Finset.range` and addition of natural numbers
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DisjointRangeAddLeftEmbedding.Variant446c937a19ed1f349cbd3a8e0f62d4ccf639e644bc29a6a962452ef07a6cd3fa

public section
assert_not_exists MonoidWithZero MulAction IsOrderedMonoid

variable {α β : Type*}

namespace Finset

theorem disjoint_range_addLeftEmbedding (a : ℕ) (s : Finset ℕ) :
    Disjoint (range a) (map (addLeftEmbedding a) s) := by
  simp_rw [disjoint_left, mem_map, mem_range, addLeftEmbedding_apply]
  rintro _ h ⟨l, -, rfl⟩
  lia

theorem disjoint_range_addRightEmbedding (a : ℕ) (s : Finset ℕ) :
    Disjoint (range a) (map (addRightEmbedding a) s) := by
  rw [← addLeftEmbedding_eq_addRightEmbedding]
  apply disjoint_range_addLeftEmbedding

theorem range_add (a b : ℕ) : range (a + b) = range a ∪ (range b).map (addLeftEmbedding a) := by
  rw [← val_inj, union_val]
  exact Multiset.range_add_eq_union a b

end Finset
```
