# Setoid.IsPartition.ncard_eq_finsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4937dc6d4c6a5fa9bc129c1d7a534ec77076a822",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9eecee0a820b867eb91734b33fc60b542e1946496d3615bee9b29a6faeb96b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c29ff314-b247-e60c-4919-8d2f4b4ed68e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e19283a9-ca00-f2ee-431c-a05b45f4e6e3",
  "kind": "theorem",
  "lexical_name": "Setoid.IsPartition.ncard_eq_finsum",
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
  "slug": "setoid-ispartition-ncard-eq-finsum--ef5dbdc33989ae1464a7b47b",
  "source": {
    "blob": "4937dc6d4c6a5fa9bc129c1d7a534ec77076a822",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantc9eecee0a820b867eb91734b33fc60b542e1946496d3615bee9b29a6faeb96b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef5dbdc33989ae1464a7b47bf6b6f5ab63c56274c5e21a703996a52023adde74",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variantc9eecee0a820b867eb91734b33fc60b542e1946496d3615bee9b29a6faeb96b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e19283a9-ca00-f2ee-431c-a05b45f4e6e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Setoid.IsPartition.ncard_eq_finsum {α : Type*} {P : Set (Set α)}
    (hP : Setoid.IsPartition P) (s : Set α) (hs : s.Finite := by toFinite_tac) :
    s.ncard = finsum fun t : P => (s ∩ t).ncard := by
  classical
  have hst (t : Set α) : (s ∩ t).Finite := hs.inter_of_left t
  have hst' (t : Set α) : Nat.card ↑(s ∩ t) = (hst t).toFinset.card :=
    Nat.card_eq_card_finite_toFinset (hst t)
  suffices hs' : _ by
    rw [finsum_def, dite_eq_left hs']
    simp only [← Nat.card_coe_set_eq, Nat.card_eq_card_finite_toFinset hs]
    rw [Finset.sum_congr rfl (fun t ht ↦ by exact hst' ↑t)]
    rw [← Finset.card_sigma, eq_comm]
    apply Finset.card_nbij' (fun ⟨t, x⟩ ↦ x)
      (fun x ↦ ⟨⟨(hP.2 x).exists.choose, (hP.2 x).exists.choose_spec.1⟩, x⟩)
    · rintro ⟨t, x⟩
      simp +contextual
    · intro x
      simp only [Set.Finite.mem_toFinset, Finset.mem_sigma, Function.mem_support, Set.mem_inter_iff,
        Finset.mem_coe]
      intro hx
      refine ⟨Nat.card_ne_zero.mpr ⟨?_, hst (hP.right x).exists.choose⟩,
        hx, (hP.2 x).exists.choose_spec.2⟩
      simp only [nonempty_subtype, Set.mem_inter_iff]
      use x, hx, (hP.2 x).exists.choose_spec.2
    · rintro ⟨t, x⟩
      simp only [Finset.mem_sigma, Set.Finite.mem_toFinset, Function.mem_support, Nat.card_ne_zero,
        Set.mem_inter_iff, Sigma.mk.inj_iff, heq_eq_eq, and_true, and_imp, Finset.mem_coe]
      simp only [nonempty_subtype, Set.mem_inter_iff, forall_exists_index, and_imp]
      intro y hy hyt _ hxs hxt
      rw [← Subtype.coe_inj]
      exact (hP.2 x).unique (hP.2 x).exists.choose_spec ⟨t.prop, hxt⟩
    · intro t
      simp only [implies_true]
  let f : Function.support (fun (t : P) ↦ (s ∩ (t : Set α)).ncard) → s := fun ⟨t, ht⟩ ↦
    ⟨(Set.nonempty_of_ncard_ne_zero ht).choose, (Set.nonempty_of_ncard_ne_zero ht).choose_spec.1⟩
  have hf (t : Function.support (fun (t : P) ↦ (s ∩ (t : Set α)).ncard)) :
      ↑↑t ∈ P ∧ (f t : α) ∈ (t : Set α) :=
    ⟨(↑t : P).prop, (Set.nonempty_of_ncard_ne_zero t.prop).choose_spec.2⟩
  have : Finite ↑s := hs
  apply Finite.of_injective f
  intro t t' h
  simp only [← Subtype.coe_inj]
  exact (hP.2 (f t)).unique (hf t) (h ▸ hf t')

end Finite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variantc9eecee0a820b867eb91734b33fc60b542e1946496d3615bee9b29a6faeb96b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantc9eecee0a820b867eb91734b33fc60b542e1946496d3615bee9b29a6faeb96b7.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4937dc6d4c6a5fa9bc129c1d7a534ec77076a822` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
