# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5378bb72b1bdbcfb5cdfa2d0b6b4f6cf6fd2820d` · SHA-256 `238c2992f5af129ad5c611ce1c6a865d303b07290f38605674639cd0752b240b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ListSumSmul.Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ListSumSmul.Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Yury Kudryashov, Yaël Dillies
-/
import Mathlib.Algebra.BigOperators.GroupWithZero.Action
import Mathlib.Algebra.Module.Defs
import Mathlib.Data.Fintype.BigOperators

/-!
# Finite sums over modules over a ring
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ListSumSmul.Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e

variable {ι κ α β R M : Type*}

section AddCommMonoid

variable [Semiring R] [AddCommMonoid M] [Module R M]

theorem List.sum_smul {l : List R} {x : M} : l.sum • x = (l.map fun r ↦ r • x).sum :=
  map_list_sum ((smulAddHom R M).flip x) l

theorem Multiset.sum_smul {l : Multiset R} {x : M} : l.sum • x = (l.map fun r ↦ r • x).sum :=
  ((smulAddHom R M).flip x).map_multiset_sum l

theorem Multiset.sum_smul_sum {s : Multiset R} {t : Multiset M} :
    s.sum • t.sum = ((s ×ˢ t).map fun p : R × M ↦ p.fst • p.snd).sum := by
  induction' s using Multiset.induction with a s ih
  · simp
  · simp [add_smul, ih, ← Multiset.smul_sum]

theorem Finset.sum_smul {f : ι → R} {s : Finset ι} {x : M} :
    (∑ i ∈ s, f i) • x = ∑ i ∈ s, f i • x := map_sum ((smulAddHom R M).flip x) f s

lemma Finset.sum_smul_sum (s : Finset α) (t : Finset β) {f : α → R} {g : β → M} :
    (∑ i ∈ s, f i) • ∑ j ∈ t, g j = ∑ i ∈ s, ∑ j ∈ t, f i • g j := by
  simp_rw [sum_smul, ← smul_sum]

lemma Fintype.sum_smul_sum [Fintype α] [Fintype β] (f : α → R) (g : β → M) :
    (∑ i, f i) • ∑ j, g j = ∑ i, ∑ j, f i • g j := Finset.sum_smul_sum _ _

end AddCommMonoid

open Finset

theorem Finset.cast_card [NonAssocSemiring R] (s : Finset α) : (#s : R) = ∑ _ ∈ s, 1 := by
  rw [Finset.sum_const, Nat.smul_one_eq_cast]

namespace Fintype
variable [DecidableEq ι] [Fintype ι] [AddCommMonoid α]

lemma sum_piFinset_apply (f : κ → α) (s : Finset κ) (i : ι) :
    ∑ g ∈ piFinset fun _ : ι ↦ s, f (g i) = #s ^ (card ι - 1) • ∑ b ∈ s, f b := by
  classical
  rw [Finset.sum_comp]
  simp only [eval_image_piFinset_const, card_filter_piFinset_const s, ite_smul, zero_smul, smul_sum,
    Finset.sum_ite_mem, inter_self]

end Fintype
```
