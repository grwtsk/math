# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant1943ca4970780ae79e0d39b67c653c6d7ea52f6bf3e15bf35c4a20516a9c6d77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0813a04a2014124018ddb2d8f8bc49b2b71c7da` · SHA-256 `019ed94a22e9d37e1d1fcaee93a1ee210b7e8ad773b79e0092618e2910494eac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PiExistsForallPosAddLt.Variantef10a099739f75129445bb1d0fcfb0966380dd6d2c6d05e487bf371145ef1281","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef10a099739f75129445bb1d0fcfb0966380dd6d2c6d05e487bf371145ef1281","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PiExistsForallPosAddLt.Variantef10a099739f75129445bb1d0fcfb0966380dd6d2c6d05e487bf371145ef1281","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ef10a099739f75129445bb1d0fcfb0966380dd6d2c6d05e487bf371145ef1281","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Field/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Notation.Pi
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE
import Mathlib.Data.Finset.Lattice.Fold
import Mathlib.Data.Fintype.Basic

/-!
# Lemmas about (finite domain) functions into fields.

We split this from `Algebra.Order.Field.Basic` to avoid importing the finiteness hierarchy there.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PiExistsForallPosAddLt.Variantef10a099739f75129445bb1d0fcfb0966380dd6d2c6d05e487bf371145ef1281

variable {α ι : Type*} [AddCommMonoid α] [LinearOrder α] [IsOrderedCancelAddMonoid α]
  [Nontrivial α] [DenselyOrdered α]

theorem Pi.exists_forall_pos_add_lt [ExistsAddOfLE α] [Finite ι] {x y : ι → α}
    (h : ∀ i, x i < y i) : ∃ ε, 0 < ε ∧ ∀ i, x i + ε < y i := by
  cases nonempty_fintype ι
  cases isEmpty_or_nonempty ι
  · obtain ⟨a, ha⟩ := exists_ne (0 : α)
    obtain ha | ha := ha.lt_or_lt <;> obtain ⟨b, hb, -⟩ := exists_pos_add_of_lt' ha <;>
      exact ⟨b, hb, isEmptyElim⟩
  choose ε hε hxε using fun i => exists_pos_add_of_lt' (h i)
  obtain rfl : x + ε = y := funext hxε
  have hε : 0 < Finset.univ.inf' Finset.univ_nonempty ε := (Finset.lt_inf'_iff _).2 fun i _ => hε _
  obtain ⟨δ, hδ, hδε⟩ := exists_between hε
  exact ⟨δ, hδ, fun i ↦ add_lt_add_left (hδε.trans_le <| Finset.inf'_le _ <| Finset.mem_univ _) _⟩
```
