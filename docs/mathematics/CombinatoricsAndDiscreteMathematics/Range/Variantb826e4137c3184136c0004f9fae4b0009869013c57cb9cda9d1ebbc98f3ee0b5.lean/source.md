# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variantb826e4137c3184136c0004f9fae4b0009869013c57cb9cda9d1ebbc98f3ee0b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dbe67de3d144c849da568d98bbc19fa7d2c5418` · SHA-256 `a95200d0823da09fac73de3cbad307841d3f38b0483e6a80cd1552efabea8ddd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DisjointRangeAddLeftEmbedding.Variantda1ad9f889299c84b690e7cee0058d5e7636f888a8ba3d11116344838192c2ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da1ad9f889299c84b690e7cee0058d5e7636f888a8ba3d11116344838192c2ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DisjointRangeAddLeftEmbedding.Variantda1ad9f889299c84b690e7cee0058d5e7636f888a8ba3d11116344838192c2ea","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"da1ad9f889299c84b690e7cee0058d5e7636f888a8ba3d11116344838192c2ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Nat/Range.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Minchao Wu, Mario Carneiro
-/
import Mathlib.Algebra.Group.Embedding
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Data.Finset.Image

/-!
# `Finset.range` and addition of natural numbers
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DisjointRangeAddLeftEmbedding.Variantda1ad9f889299c84b690e7cee0058d5e7636f888a8ba3d11116344838192c2ea

assert_not_exists MonoidWithZero MulAction OrderedCommMonoid

variable {α β γ : Type*}

namespace Finset

theorem disjoint_range_addLeftEmbedding (a : ℕ) (s : Finset ℕ) :
    Disjoint (range a) (map (addLeftEmbedding a) s) := by
  simp_rw [disjoint_left, mem_map, mem_range, addLeftEmbedding_apply]
  rintro _ h ⟨l, -, rfl⟩
  omega

theorem disjoint_range_addRightEmbedding (a : ℕ) (s : Finset ℕ) :
    Disjoint (range a) (map (addRightEmbedding a) s) := by
  rw [← addLeftEmbedding_eq_addRightEmbedding]
  apply disjoint_range_addLeftEmbedding

theorem range_add (a b : ℕ) : range (a + b) = range a ∪ (range b).map (addLeftEmbedding a) := by
  rw [← val_inj, union_val]
  exact Multiset.range_add_eq_union a b

end Finset
```
