# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a11852e8cd254374ed8f5f1f13485533e3b4e1f1` · SHA-256 `782179cdf8aaf91e232a17357955c4cd13cb38fc9bd52e60acb36ecdb547ffe8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MapAddLeftIcc.Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MapAddLeftIcc.Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Interval/Multiset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Interval.Finset.Basic
import Mathlib.Order.Interval.Multiset

/-!
# Algebraic properties of multiset intervals

This file provides results about the interaction of algebra with `Multiset.Ixx`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MapAddLeftIcc.Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0

variable {α : Type*}

namespace Multiset
variable [AddCommMonoid α] [PartialOrder α] [IsOrderedCancelAddMonoid α]
  [ExistsAddOfLE α] [LocallyFiniteOrder α]

lemma map_add_left_Icc (a b c : α) : (Icc a b).map (c + ·) = Icc (c + a) (c + b) := by
  classical rw [Icc, Icc, ← Finset.image_add_left_Icc, Finset.image_val,
      ((Finset.nodup _).map <| add_right_injective c).dedup]

lemma map_add_left_Ico (a b c : α) : (Ico a b).map (c + ·) = Ico (c + a) (c + b) := by
  classical rw [Ico, Ico, ← Finset.image_add_left_Ico, Finset.image_val,
      ((Finset.nodup _).map <| add_right_injective c).dedup]

lemma map_add_left_Ioc (a b c : α) : (Ioc a b).map (c + ·) = Ioc (c + a) (c + b) := by
  classical rw [Ioc, Ioc, ← Finset.image_add_left_Ioc, Finset.image_val,
      ((Finset.nodup _).map <| add_right_injective c).dedup]

lemma map_add_left_Ioo (a b c : α) : (Ioo a b).map (c + ·) = Ioo (c + a) (c + b) := by
  classical rw [Ioo, Ioo, ← Finset.image_add_left_Ioo, Finset.image_val,
      ((Finset.nodup _).map <| add_right_injective c).dedup]

lemma map_add_right_Icc (a b c : α) : ((Icc a b).map fun x => x + c) = Icc (a + c) (b + c) := by
  simp_rw [add_comm _ c]
  exact map_add_left_Icc _ _ _

lemma map_add_right_Ico (a b c : α) : ((Ico a b).map fun x => x + c) = Ico (a + c) (b + c) := by
  simp_rw [add_comm _ c]
  exact map_add_left_Ico _ _ _

lemma map_add_right_Ioc (a b c : α) : ((Ioc a b).map fun x => x + c) = Ioc (a + c) (b + c) := by
  simp_rw [add_comm _ c]
  exact map_add_left_Ioc _ _ _

lemma map_add_right_Ioo (a b c : α) : ((Ioo a b).map fun x => x + c) = Ioo (a + c) (b + c) := by
  simp_rw [add_comm _ c]
  exact map_add_left_Ioo _ _ _

end Multiset
```
