# iSup_iInf_eq_top_iff_pairwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65538281c90cf2b8db5b6bb9d3756c135f22f74e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba2bba7f1642acdec4692d1f249a95ac19122eec298244dd599341514c056be4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8732f8de-bee3-f8d9-6e91-3b90a2312aa8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebabd3b0-740b-fc5b-f193-2cba594d18c4",
  "kind": "theorem",
  "lexical_name": "iSup_iInf_eq_top_iff_pairwise",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "isup-iinf-eq-top-iff-pairwise--1fd7169d067d5387a43c1b42",
  "source": {
    "blob": "65538281c90cf2b8db5b6bb9d3756c135f22f74e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 34,
    "path": "GRWTSK/Algebra/RingTheory/Ideal/Variantba2bba7f1642acdec4692d1f249a95ac19122eec298244dd599341514c056be4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fd7169d067d5387a43c1b42d6af74c067a22da34a85795ed054801190c350e3",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Ideal/Variantba2bba7f1642acdec4692d1f249a95ac19122eec298244dd599341514c056be4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebabd3b0-740b-fc5b-f193-2cba594d18c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_iInf_eq_top_iff_pairwise {t : Finset ι} (h : t.Nonempty) (I : ι → Ideal R) :
    (⨆ i ∈ t, ⨅ (j) (_ : j ∈ t) (_ : j ≠ i), I j) = ⊤ ↔
      (t : Set ι).Pairwise fun i j => I i ⊔ I j = ⊤ := by
  have : DecidableEq ι := Classical.decEq ι
  rw [eq_top_iff_one, Submodule.mem_iSup_finset_iff_exists_sum]
  refine h.cons_induction ?_ ?_ <;> clear t h
  · simp only [Finset.sum_singleton, Finset.coe_singleton, Set.pairwise_singleton, iff_true]
    refine fun a => ⟨fun i => if h : i = a then ⟨1, ?_⟩ else 0, ?_⟩
    · simp [h]
    · simp only [dite_eq_left, Submodule.coe_mk]
  intro a t hat h ih
  have : Std.Symm (I · ⊔ I · = ⊤) := { symm i j := sup_comm .. |>.trans }
  rw [Finset.coe_cons, Set.pairwise_insert_of_symm]
  constructor
  · rintro ⟨μ, hμ⟩
    rw [Finset.sum_cons] at hμ
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
      rw [← @ite_eq_left _ _ h.choose_spec R (μ a) 0, ← Finset.sum_pi_single',
        ← Finset.sum_add_distrib]
        at hμ
      convert! hμ
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
      rw [Finset.sum_cons, dite_eq_left rfl, add_comm]
      rw [← mul_one u] at huv
      rw [← huv, ← hμ, Finset.mul_sum]
      congr 1
      apply Finset.sum_congr rfl
      intro j hj
      rw [dite_eq_right]
      rintro rfl
      exact hat hj

end Ideal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Ideal/Variantba2bba7f1642acdec4692d1f249a95ac19122eec298244dd599341514c056be4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Ideal/Variantba2bba7f1642acdec4692d1f249a95ac19122eec298244dd599341514c056be4.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65538281c90cf2b8db5b6bb9d3756c135f22f74e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
