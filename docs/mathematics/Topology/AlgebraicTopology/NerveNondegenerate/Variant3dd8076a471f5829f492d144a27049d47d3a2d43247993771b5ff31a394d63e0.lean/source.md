# Complete source: GRWTSK.Topology.AlgebraicTopology.NerveNondegenerate.Variant3dd8076a471f5829f492d144a27049d47d3a2d43247993771b5ff31a394d63e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f5d0496b455781055e63160d074354d3eee12d9` · SHA-256 `7544a89e38a506d68007fb461d1639ba79d315bb4a538ad8840eaa5a2ef0bba8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.MemRangeNerve.Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.MemRangeNerve.Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/NerveNondegenerate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplicialSet.Degenerate
public import Mathlib.AlgebraicTopology.SimplicialSet.Nerve

/-!
# The nondegenerate simplices in the nerve of a partially ordered type

In this file, we show that if `X` is a partially ordered type,
then an `n`-simplex `s` of the nerve is nondegenerate iff
the monotone map `s.obj : Fin (n + 1) → X` is strictly monotone.

-/


namespace GRWTSK.Topology.AlgebraicTopology.MemRangeNerve.Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69

public section

universe u

open CategoryTheory SSet

open scoped Simplicial

namespace PartialOrder

variable {X : Type*} [PartialOrder X] {n m : ℕ}

set_option backward.isDefEq.respectTransparency.types false in
lemma mem_range_nerve_σ_iff (s : (nerve X) _⦋n + 1⦌) (i : Fin (n + 1)) :
    s ∈ Set.range ((nerve X).σ i) ↔
      s.obj i.castSucc = s.obj i.succ := by
  constructor
  · rintro ⟨s, rfl⟩
    simp [-nerve_obj, nerve.σ_obj]
  · intro h
    refine ⟨(nerve X).δ i.castSucc s, ?_⟩
    ext j
    rw [nerve.σ_obj, nerve.δ_obj]
    by_cases h₁ : i.castSucc < j
    · obtain ⟨j, rfl⟩ := Fin.eq_succ_of_ne_zero (Fin.ne_zero_of_lt h₁)
      rw [Fin.predAbove_of_castSucc_lt _ _ h₁, Fin.pred_succ,
        Fin.succAbove_of_le_castSucc _ _ (Fin.le_castSucc_iff.2 h₁)]
    · simp only [not_lt] at h₁
      grind [→ Fin.succAbove_of_castSucc_lt,
        → Fin.predAbove_of_le_castSucc, Fin.castSucc_castPred, Fin.castPred_castSucc,
        Fin.succAbove_castSucc_self, → LE.le.lt_or_eq]

lemma mem_nerve_degenerate_of_eq (s : (nerve X) _⦋n + 1⦌) {i : Fin (n + 1)}
    (hi : s.obj i.castSucc = s.obj i.succ) :
    s ∈ (nerve X).degenerate (n + 1) := by
  simp only [SSet.degenerate_eq_iUnion_range_σ, Set.mem_iUnion]
  exact ⟨i, by rwa [← mem_range_nerve_σ_iff] at hi⟩

lemma mem_nerve_nonDegenerate_iff_strictMono (s : (nerve X) _⦋n⦌) :
    s ∈ (nerve X).nonDegenerate n ↔ StrictMono s.obj := by
  obtain _ | n := n
  · simpa using Subsingleton.strictMono _
  · rw [← not_iff_not, ← SSet.mem_degenerate_iff_notMem_nonDegenerate,
      Fin.strictMono_iff_lt_succ, SSet.degenerate_eq_iUnion_range_σ, Set.mem_iUnion]
    simp only [mem_range_nerve_σ_iff, not_forall]
    apply exists_congr
    intro i
    have := s.monotone i.castSucc_le_succ
    grind [lt_self_iff_false, LE.le.lt_or_eq]

lemma mem_nerve_nonDegenerate_iff_injective (s : (nerve X) _⦋n⦌) :
    s ∈ (nerve X).nonDegenerate n ↔ Function.Injective s.obj := by
  rw [mem_nerve_nonDegenerate_iff_strictMono]
  refine ⟨fun h ↦ h.injective, fun h i j hij ↦ ?_⟩
  obtain h' | h' := (s.monotone hij.le).lt_or_eq
  · exact h'
  · exact ((h h').not_lt hij).elim

lemma nerve_ofSimplex_le_ofSimplex_iff
    (s : (nerve X) _⦋n⦌) (t : (nerve X) _⦋m⦌) :
    Subcomplex.ofSimplex s ≤ Subcomplex.ofSimplex t ↔
      Set.range s.obj ⊆ Set.range t.obj := by
  refine ⟨?_, ?_⟩
  · rintro hst _ ⟨i, rfl⟩
    rw [Subcomplex.ofSimplex_le_iff] at hst
    obtain ⟨⟨f⟩, rfl⟩ := hst
    exact ⟨_, rfl⟩
  · wlog ht : t ∈ (nerve X).nonDegenerate m generalizing m t
    · intro hst
      obtain ⟨m', f, _, ⟨t', h₁⟩, rfl⟩ := exists_nonDegenerate _ t
      rw [Subcomplex.ofSimplex_map_of_epi]
      refine this _ h₁ ?_
      rintro _ ⟨i, rfl⟩
      obtain ⟨j, hj⟩ := hst (Set.mem_range_self i)
      aesop
    rw [mem_nerve_nonDegenerate_iff_strictMono] at ht
    intro hst
    rw [Subcomplex.ofSimplex_le_iff]
    have (i : Fin (n + 1)) : ∃ (j : Fin (m + 1)), t.obj j = s.obj i := by aesop
    choose f hf using this
    have hf' : Monotone f := fun i₁ i₂ hi ↦ by
      rw [← ht.le_iff_le, hf, hf]
      exact s.monotone hi
    exact ⟨Quiver.Hom.op (SimplexCategory.Hom.mk ⟨f, hf'⟩), by aesop⟩

end PartialOrder
```
