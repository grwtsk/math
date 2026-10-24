# exists_gt_t2space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3ef08a5f6a7e0a2c9bca8d17105ea95cf00ca2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70e48373-27b4-1513-9a18-fd2e399c0826",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a334f6f-daa5-80ec-d4cd-22e424f1651e",
  "kind": "theorem",
  "lexical_name": "exists_gt_t2space",
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
  "slug": "exists-gt-t2space--cf62fb438f14f40c14925447",
  "source": {
    "blob": "f3ef08a5f6a7e0a2c9bca8d17105ea95cf00ca2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf62fb438f14f40c1492544796727fec356b05a457c1eff0cbcf369e070bbff5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a334f6f-daa5-80ec-d4cd-22e424f1651e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_gt_t2space (v : PartialRefinement u s (fun w => IsCompact (closure w)))
    (hs : IsCompact s) (i : ι) (hi : i ∉ v.carrier) :
    ∃ v' : PartialRefinement u s (fun w => IsCompact (closure w)),
      v < v' ∧ IsCompact (closure (v' i)) := by
  -- take `v i` such that `closure (v i)` is compact
  set si := s ∩ (⋃ j ≠ i, v j)ᶜ with hsi
  simp only [ne_eq, compl_iUnion] at hsi
  have hsic : IsCompact si := by
    apply IsCompact.of_isClosed_subset hs _ Set.inter_subset_left
    · have : IsOpen (⋃ j ≠ i, v j) := by
        apply isOpen_biUnion
        intro j _
        exact v.isOpen j
      exact IsClosed.inter (IsCompact.isClosed hs) (IsOpen.isClosed_compl this)
  have : si ⊆ v i := by
    intro x hx
    have (j) (hj : j ≠ i) : x ∉ v j := by
      rw [hsi] at hx
      apply Set.notMem_of_mem_compl
      have hsi' : x ∈ (⋂ i_1, ⋂ (_ : ¬i_1 = i), (v.toFun i_1)ᶜ) := Set.mem_of_mem_inter_right hx
      rw [ne_eq] at hj
      rw [Set.mem_iInter₂] at hsi'
      exact hsi' j hj
    obtain ⟨j, hj⟩ := Set.mem_iUnion.mp
      (v.subset_iUnion (Set.mem_of_mem_inter_left hx))
    obtain rfl : j = i := by
      by_contra! h
      exact this j h hj
    exact hj
  obtain ⟨vi, hvi⟩ := exists_open_between_and_isCompact_closure hsic (v.isOpen i) this
  classical
  refine ⟨⟨update v i vi, insert i v.carrier, ?_, ?_, ?_, ?_, ?_⟩, ⟨?_, ?_⟩, ?_⟩
  · intro j
    rcases eq_or_ne j i with (rfl| hne) <;> simp [*, v.isOpen]
  · refine fun x hx => mem_iUnion.2 ?_
    rcases em (∃ j ≠ i, x ∈ v j) with (⟨j, hji, hj⟩ | h)
    · use j
      rwa [update_of_ne hji]
    · push_neg at h
      use i
      rw [update_self]
      apply hvi.2.1
      rw [hsi]
      exact ⟨hx, mem_iInter₂_of_mem h⟩
  · rintro j (rfl | hj)
    · rw [update_self]
      exact subset_trans hvi.2.2.1 <| PartialRefinement.subset v j
    · rw [update_of_ne (ne_of_mem_of_not_mem hj hi)]
      exact v.closure_subset hj
  · intro j hj
    rw [mem_insert_iff] at hj
    by_cases h : j = i
    · rw [← h]
      simp only [update_self]
      exact hvi.2.2.2
    · apply hj.elim
      · intro hji
        exact False.elim (h hji)
      · intro hjmemv
        rw [update_of_ne h]
        exact v.pred_of_mem hjmemv
  · intro j hj
    rw [mem_insert_iff, not_or] at hj
    rw [update_of_ne hj.1, v.apply_eq hj.2]
  · refine ⟨subset_insert _ _, fun j hj => ?_⟩
    exact (update_of_ne (ne_of_mem_of_not_mem hj hi) _ _).symm
  · exact fun hle => hi (hle.1 <| mem_insert _ _)
  · simp only [update_self]
    exact hvi.2.2.2

/-- **Shrinking lemma** . A point-finite open cover of a compact subset of a `T2Space`
`LocallyCompactSpace` can be "shrunk" to a new open cover so that the closure of each new open set
is contained in the corresponding original open set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3ef08a5f6a7e0a2c9bca8d17105ea95cf00ca2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
