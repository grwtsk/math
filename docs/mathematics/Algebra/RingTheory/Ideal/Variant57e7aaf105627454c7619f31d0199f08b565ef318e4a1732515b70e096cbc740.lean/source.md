# Complete source: GRWTSK.Algebra.RingTheory.Ideal.Variant57e7aaf105627454c7619f31d0199f08b565ef318e4a1732515b70e096cbc740

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c38cc22dd81077f3fd47d992c610a2e190adf8cb` · SHA-256 `257ed98f13ae76dd9cfd455368e422951a7e887c38ca26589fbf4f3098172e20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.RingTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingTheory.ISupIInfEqTopIffPairwise.Variant88570cb7cfaa0e8e61f3eb9a3e71f3bacbd243245d7bfad81abac45ff8adbca4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88570cb7cfaa0e8e61f3eb9a3e71f3bacbd243245d7bfad81abac45ff8adbca4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ISupIInfEqTopIffPairwise.Variant88570cb7cfaa0e8e61f3eb9a3e71f3bacbd243245d7bfad81abac45ff8adbca4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"88570cb7cfaa0e8e61f3eb9a3e71f3bacbd243245d7bfad81abac45ff8adbca4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Coprime/Ideal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Pierre-Alexandre Bazin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Pierre-Alexandre Bazin
-/
import Mathlib.LinearAlgebra.DFinsupp
import Mathlib.RingTheory.Ideal.BigOperators
import Mathlib.RingTheory.Ideal.Operations

/-!
# An additional lemma about coprime ideals

This lemma generalises `exists_sum_eq_one_iff_pairwise_coprime` to the case of non-principal ideals.
It is on a separate file due to import requirements.
-/



namespace GRWTSK.Algebra.RingTheory.ISupIInfEqTopIffPairwise.Variant88570cb7cfaa0e8e61f3eb9a3e71f3bacbd243245d7bfad81abac45ff8adbca4

namespace Ideal

variable {ι R : Type*} [CommSemiring R]

/-- A finite family of ideals is pairwise coprime (that is, any two of them generate the whole ring)
iff when taking all the possible intersections of all but one of these ideals, the resulting family
of ideals still generate the whole ring.

For example with three ideals : `I ⊔ J = I ⊔ K = J ⊔ K = ⊤ ↔ (I ⊓ J) ⊔ (I ⊓ K) ⊔ (J ⊓ K) = ⊤`.

When ideals are all of the form `I i = R ∙ s i`, this is equivalent to the
`exists_sum_eq_one_iff_pairwise_coprime` lemma. -/
theorem iSup_iInf_eq_top_iff_pairwise {t : Finset ι} (h : t.Nonempty) (I : ι → Ideal R) :
    (⨆ i ∈ t, ⨅ (j) (_ : j ∈ t) (_ : j ≠ i), I j) = ⊤ ↔
      (t : Set ι).Pairwise fun i j => I i ⊔ I j = ⊤ := by
  haveI : DecidableEq ι := Classical.decEq ι
  rw [eq_top_iff_one, Submodule.mem_iSup_finset_iff_exists_sum]
  refine h.cons_induction ?_ ?_ <;> clear t h
  · simp only [Finset.sum_singleton, Finset.coe_singleton, Set.pairwise_singleton, iff_true]
    refine fun a => ⟨fun i => if h : i = a then ⟨1, ?_⟩ else 0, ?_⟩
    · simp [h]
    · simp only [dif_pos, Submodule.coe_mk, eq_self_iff_true]
  intro a t hat h ih
  rw [Finset.coe_cons,
    Set.pairwise_insert_of_symmetric fun i j (h : I i ⊔ I j = ⊤) ↦ (sup_comm _ _).trans h]
  constructor
  · rintro ⟨μ, hμ⟩
    rw [Finset.sum_cons] at hμ
    -- Porting note: `refine` yields goals in a different order than in lean3.
    refine ⟨ih.mp ⟨Pi.single h.choose ⟨μ a, ?a1⟩ + fun i => ⟨μ i, ?a2⟩, ?a3⟩, fun b hb ab => ?a4⟩
    case a1 =>
      have := Submodule.coe_mem (μ a)
      rw [mem_iInf] at this ⊢
      --for some reason `simp only [mem_iInf]` times out
      intro i
      specialize this i
      rw [mem_iInf, mem_iInf] at this ⊢
      intro hi _
      apply this (Finset.subset_cons _ hi)
      rintro rfl
      exact hat hi
    case a2 =>
      have := Submodule.coe_mem (μ i)
      simp only [mem_iInf] at this ⊢
      intro j hj ij
      exact this _ (Finset.subset_cons _ hj) ij
    case a3 =>
      rw [← @if_pos _ _ h.choose_spec R (μ a) 0, ← Finset.sum_pi_single', ← Finset.sum_add_distrib]
        at hμ
      convert hμ
      rename_i i _
      rw [Pi.add_apply, Submodule.coe_add, Submodule.coe_mk]
      by_cases hi : i = h.choose
      · rw [hi, Pi.single_eq_same, Pi.single_eq_same, Submodule.coe_mk]
      · rw [Pi.single_eq_of_ne hi, Pi.single_eq_of_ne hi, Submodule.coe_zero]
    case a4 =>
      rw [eq_top_iff_one, Submodule.mem_sup]
      rw [add_comm] at hμ
      refine ⟨_, ?_, _, ?_, hμ⟩
      · refine sum_mem _ fun x hx => ?_
        have := Submodule.coe_mem (μ x)
        simp only [mem_iInf] at this
        apply this _ (Finset.mem_cons_self _ _)
        rintro rfl
        exact hat hx
      · have := Submodule.coe_mem (μ a)
        simp only [mem_iInf] at this
        exact this _ (Finset.subset_cons _ hb) ab.symm
  · rintro ⟨hs, Hb⟩
    obtain ⟨μ, hμ⟩ := ih.mpr hs
    have := sup_iInf_eq_top fun b hb => Hb b hb (ne_of_mem_of_not_mem hb hat).symm
    rw [eq_top_iff_one, Submodule.mem_sup] at this
    obtain ⟨u, hu, v, hv, huv⟩ := this
    refine ⟨fun i => if hi : i = a then ⟨v, ?_⟩ else ⟨u * μ i, ?_⟩, ?_⟩
    · simp only [mem_iInf] at hv ⊢
      intro j hj ij
      rw [Finset.mem_cons, ← hi] at hj
      exact hv _ (hj.resolve_left ij)
    · have := Submodule.coe_mem (μ i)
      simp only [mem_iInf] at this ⊢
      intro j hj ij
      rcases Finset.mem_cons.mp hj with (rfl | hj)
      · exact mul_mem_right _ _ hu
      · exact mul_mem_left _ _ (this _ hj ij)
    · dsimp only
      rw [Finset.sum_cons, dif_pos rfl, add_comm]
      rw [← mul_one u] at huv
      rw [← huv, ← hμ, Finset.mul_sum]
      congr 1
      apply Finset.sum_congr rfl
      intro j hj
      rw [dif_neg]
      rintro rfl
      exact hat hj

end Ideal
```
