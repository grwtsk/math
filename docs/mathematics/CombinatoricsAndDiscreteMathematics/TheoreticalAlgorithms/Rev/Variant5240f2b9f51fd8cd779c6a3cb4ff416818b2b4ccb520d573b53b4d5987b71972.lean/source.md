# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Rev.Variant5240f2b9f51fd8cd779c6a3cb4ff416818b2b4ccb520d573b53b4d5987b71972

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a39df48d490352449f25fa15c95bac80b5029b05` · SHA-256 `d2562fb79f4fff9483340f9427d41d5aa59deeab6c2688bf1579a4652fcddf88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RevInvolutive.Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.RevInvolutive.Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Fin/Rev.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Rodriguez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Rodriguez, Joel Riou, Yury Kudryashov
-/
import Mathlib.Data.Fin.Basic
/-!
# Reverse on `Fin n`

This file contains lemmas about `Fin.rev : Fin n → Fin n` which maps `i` to `n - 1 - i`.

## Definitions

* `Fin.revPerm : Equiv.Perm (Fin n)` : `Fin.rev` as an `Equiv.Perm`, the antitone involution given
  by `i ↦ n-(i+1)`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RevInvolutive.Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3

assert_not_exists Monoid Fintype

open Fin Nat Function

namespace Fin

variable {n m : ℕ}

theorem rev_involutive : Involutive (rev : Fin n → Fin n) := rev_rev

/-- `Fin.rev` as an `Equiv.Perm`, the antitone involution `Fin n → Fin n` given by
`i ↦ n-(i+1)`. -/
@[simps! apply symm_apply]
def revPerm : Equiv.Perm (Fin n) :=
  Involutive.toPerm rev rev_involutive

theorem rev_injective : Injective (@rev n) :=
  rev_involutive.injective

theorem rev_surjective : Surjective (@rev n) :=
  rev_involutive.surjective

theorem rev_bijective : Bijective (@rev n) :=
  rev_involutive.bijective

@[simp]
theorem revPerm_symm : (@revPerm n).symm = revPerm :=
  rfl

theorem cast_rev (i : Fin n) (h : n = m) :
    i.rev.cast h = (i.cast h).rev := by
  subst h; simp

theorem rev_eq_iff {i j : Fin n} : rev i = j ↔ i = rev j := by
  rw [← rev_inj, rev_rev]

theorem rev_ne_iff {i j : Fin n} : rev i ≠ j ↔ i ≠ rev j := rev_eq_iff.not

theorem rev_lt_iff {i j : Fin n} : rev i < j ↔ rev j < i := by
  rw [← rev_lt_rev, rev_rev]

theorem rev_le_iff {i j : Fin n} : rev i ≤ j ↔ rev j ≤ i := by
  rw [← rev_le_rev, rev_rev]

theorem lt_rev_iff {i j : Fin n} : i < rev j ↔ j < rev i := by
  rw [← rev_lt_rev, rev_rev]

theorem le_rev_iff {i j : Fin n} : i ≤ rev j ↔ j ≤ rev i := by
  rw [← rev_le_rev, rev_rev]

@[simp] theorem val_rev_zero [NeZero n] : ((rev 0 : Fin n) : ℕ) = n.pred := rfl

theorem rev_pred {i : Fin (n + 1)} (h : i ≠ 0) (h' := rev_ne_iff.mpr ((rev_last _).symm ▸ h)) :
    rev (pred i h) = castPred (rev i) h' := by
  rw [← castSucc_inj, castSucc_castPred, ← rev_succ, succ_pred]

theorem rev_castPred {i : Fin (n + 1)}
    (h : i ≠ last n) (h' := rev_ne_iff.mpr ((rev_zero _).symm ▸ h)) :
    rev (castPred i h) = pred (rev i) h' := by
  rw [← succ_inj, succ_pred, ← rev_castSucc, castSucc_castPred]

lemma succAbove_rev_left (p : Fin (n + 1)) (i : Fin n) :
    p.rev.succAbove i = (p.succAbove i.rev).rev := by
  obtain h | h := (rev p).succ_le_or_le_castSucc i
  · rw [succAbove_of_succ_le _ _ h,
      succAbove_of_le_castSucc _ _ (rev_succ _ ▸ (le_rev_iff.mpr h)), rev_succ, rev_rev]
  · rw [succAbove_of_le_castSucc _ _ h,
      succAbove_of_succ_le _ _ (rev_castSucc _ ▸ (rev_le_iff.mpr h)), rev_castSucc, rev_rev]

lemma succAbove_rev_right (p : Fin (n + 1)) (i : Fin n) :
    p.succAbove i.rev = (p.rev.succAbove i).rev := by rw [succAbove_rev_left, rev_rev]

/-- `rev` commutes with `succAbove`. -/
lemma rev_succAbove (p : Fin (n + 1)) (i : Fin n) :
    rev (succAbove p i) = succAbove (rev p) (rev i) := by
  rw [succAbove_rev_left, rev_rev]

lemma predAbove_rev_left (p : Fin n) (i : Fin (n + 1)) :
    p.rev.predAbove i = (p.predAbove i.rev).rev := by
  obtain h | h := (rev i).succ_le_or_le_castSucc p
  · rw [predAbove_of_succ_le _ _ h, rev_pred,
      predAbove_of_le_castSucc _ _ (rev_succ _ ▸ (le_rev_iff.mpr h)), castPred_inj, rev_rev]
  · rw [predAbove_of_le_castSucc _ _ h, rev_castPred,
      predAbove_of_succ_le _ _ (rev_castSucc _ ▸ (rev_le_iff.mpr h)), pred_inj, rev_rev]

lemma predAbove_rev_right (p : Fin n) (i : Fin (n + 1)) :
    p.predAbove i.rev = (p.rev.predAbove i).rev := by rw [predAbove_rev_left, rev_rev]

/-- `rev` commutes with `predAbove`. -/
lemma rev_predAbove {n : ℕ} (p : Fin n) (i : Fin (n + 1)) :
    (predAbove p i).rev = predAbove p.rev i.rev := by rw [predAbove_rev_left, rev_rev]

lemma add_rev_cast (j : Fin (n+1)) : j.1 + j.rev.1 = n := by
  obtain ⟨j, hj⟩ := j
  simp [Nat.add_sub_cancel' <| le_of_lt_succ hj]

lemma rev_add_cast (j : Fin (n+1)) : j.rev.1 + j.1 = n := by
  rw [Nat.add_comm, j.add_rev_cast]

end Fin
```
