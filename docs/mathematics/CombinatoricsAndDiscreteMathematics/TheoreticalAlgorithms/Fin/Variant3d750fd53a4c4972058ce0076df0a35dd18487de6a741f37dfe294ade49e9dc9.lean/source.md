# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Fin.Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `732cb8b471da4cfea109a3a2e453745200642d21` · SHA-256 `d6f92db7cb98710a3d76e1296e2eb0a1037ecaccb90eb06163052fd1f93396e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tail.Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tail.Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d","mathematical_subject":"Foundations.Unclassified","original_sha256":"38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finsupp/Fin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Ivan Sadofschi Costa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ivan Sadofschi Costa
-/
module

public import Mathlib.Data.Finsupp.Single

/-!
# `cons` and `tail` for maps `Fin n →₀ M`

We interpret maps `Fin n →₀ M` as `n`-tuples of elements of `M`.
We define the following operations:
* `Finsupp.tail` : the tail of a map `Fin (n + 1) →₀ M`, i.e., its last `n` entries;
* `Finsupp.cons` : adding an element at the beginning of an `n`-tuple, to get an `n + 1`-tuple;

In this context, we prove some usual properties of `tail` and `cons`, analogous to those of
`Data.Fin.Tuple.Basic`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tail.Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d

@[expose] public section

open Function

noncomputable section

namespace Finsupp

variable {n : ℕ} (i : Fin n) {M : Type*} [Zero M] (y : M) (t : Fin (n + 1) →₀ M) (s : Fin n →₀ M)

/-- `tail` for maps `Fin (n + 1) →₀ M`. See `Fin.tail` for more details. -/
def tail (s : Fin (n + 1) →₀ M) : Fin n →₀ M :=
  Finsupp.equivFunOnFinite.symm (Fin.tail s)

/-- `cons` for maps `Fin n →₀ M`. See `Fin.cons` for more details. -/
def cons (y : M) (s : Fin n →₀ M) : Fin (n + 1) →₀ M :=
  Finsupp.equivFunOnFinite.symm (Fin.cons y s : Fin (n + 1) → M)

theorem tail_apply : tail t i = t i.succ :=
  rfl

@[simp]
theorem cons_zero : cons y s 0 = y :=
  rfl

@[simp]
theorem cons_succ : cons y s i.succ = s i :=
  rfl

@[simp]
theorem tail_cons : tail (cons y s) = s :=
  ext fun k => by simp only [tail_apply, cons_succ]

@[simp]
theorem tail_update_zero : tail (update t 0 y) = tail t := by simp [tail]

@[simp]
theorem tail_update_succ : tail (update t i.succ y) = update (tail t) i y := by ext; simp [tail]

@[simp]
theorem cons_tail : cons (t 0) (tail t) = t := by
  ext a
  by_cases c_a : a = 0
  · rw [c_a, cons_zero]
  · rw [← Fin.succ_pred a c_a, cons_succ, ← tail_apply]

lemma cons_zero_eq_single_zero : cons y (0 : Fin n →₀ M) = single 0 y := by
  ext j
  cases j using Fin.cases <;> simp

lemma cons_zero_single_eq_single_succ : cons 0 (single i y) = single i.succ y := by
  ext j
  cases j using Fin.cases <;> simp [single_apply]

@[simp]
theorem cons_zero_zero : cons 0 (0 : Fin n →₀ M) = 0 := by simp [cons_zero_eq_single_zero]

variable {s} {y}

theorem cons_ne_zero_of_left (h : y ≠ 0) : cons y s ≠ 0 := by
  contrapose h with c
  rw [← cons_zero y s, c, Finsupp.coe_zero, Pi.zero_apply]

theorem cons_ne_zero_of_right (h : s ≠ 0) : cons y s ≠ 0 := by
  contrapose h with c
  ext a
  simp [← cons_succ a y s, c]

theorem cons_ne_zero_iff : cons y s ≠ 0 ↔ y ≠ 0 ∨ s ≠ 0 := by
  refine ⟨fun h => ?_, fun h => h.casesOn cons_ne_zero_of_left cons_ne_zero_of_right⟩
  refine imp_iff_not_or.1 fun h' c => h ?_
  rw [h', c, Finsupp.cons_zero_zero]

lemma cons_support : (s.cons y).support ⊆ insert 0 (s.support.map (Fin.succEmb n)) := by
  intro i hi
  suffices i = 0 ∨ ∃ a, ¬s a = 0 ∧ a.succ = i by simpa
  apply (Fin.eq_zero_or_eq_succ i).imp id (Exists.imp _)
  rintro i rfl
  simpa [Finsupp.mem_support_iff] using hi

variable (y) in
lemma cons_right_injective : Injective (Finsupp.cons y : (Fin n →₀ M) → Fin (n + 1) →₀ M) :=
  (equivFunOnFinite.symm.injective.comp ((Fin.cons_right_injective _).comp DFunLike.coe_injective))

/-- As a binary function, `Finsupp.cons` is injective. -/
theorem cons_injective2 : Function.Injective2 (cons (n := n) (M := M)) := by
  refine fun x₀ y₀ x y h ↦ ?_
  have := DFunLike.congr_fun h 0
  simp only [cons_zero] at this
  exact ⟨this, cons_right_injective y₀ (this ▸ h)⟩

lemma cons_eq_single_zero_iff {x : M} : s.cons x = single 0 y ↔ s = 0 ∧ x = y := by
  rw [← cons_zero_eq_single_zero, cons_injective2.eq_iff, and_comm]

lemma cons_eq_single_succ_iff {x : M} : s.cons x = single i.succ y ↔ s = single i y ∧ x = 0 := by
  rw [← cons_zero_single_eq_single_succ, cons_injective2.eq_iff, and_comm]

end Finsupp
```
