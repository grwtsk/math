# nodup_theFourteen_of_nodup_theClosedSix_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c502d976b5ece215992f9f26cb8f0b3825b37327",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4a9378da94dea60c13dd99ba8f781b08f2534cbf6c76d401467623cd15c2e68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8e7f50b-89e6-c60b-3d66-1ce742bd5fb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00605152-50f9-5dae-6638-a8271a19e58d",
  "kind": "theorem",
  "lexical_name": "nodup_theFourteen_of_nodup_theClosedSix_of_disjoint",
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
  "slug": "nodup-thefourteen-of-nodup-theclosedsix-of-disjoint--7434866d0c5be491168ced45",
  "source": {
    "blob": "c502d976b5ece215992f9f26cb8f0b3825b37327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/Kuratowski/Variantb4a9378da94dea60c13dd99ba8f781b08f2534cbf6c76d401467623cd15c2e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7434866d0c5be491168ced4576857e047992da9cee2992ae84d05f7fc05519da",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Kuratowski/Variantb4a9378da94dea60c13dd99ba8f781b08f2534cbf6c76d401467623cd15c2e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00605152-50f9-5dae-6638-a8271a19e58d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_theFourteen_of_nodup_theClosedSix_of_disjoint
    (nodup : (theClosedSix s).Nodup) (disj : Disjoint (theClosedSix s) (theOpenSix s)) :
    (theFourteen s).Nodup := by
  rw [theFourteen_eq_pair_add_theClosedSix_add_theOpenSix, add_assoc, nodup_add, nodup_add]
  refine ⟨?_, ⟨nodup, nodup.map compl_injective, disj⟩, ?_⟩
  -- The two goals now are {s, sᶜ}.Nodup and Disjoint {s, sᶜ} (theClosedSix s + theOpenSix s).
  · -- The first follows from nontriviality of the topological space.
    have : Nontrivial (Set X) := ⟨_, _, (List.pairwise_cons.mp nodup).1 _ (.head _)⟩
    simp
  have hs : ¬ IsClosed s := fun h ↦ by simp [theClosedSix] at nodup
  have hsc : ¬ IsClosed sᶜ := fun h ↦ by simp [theClosedSix] at nodup
  -- Show `s ∉ theClosedSix s ∧ sᶜ ∉ theClosedSix s` and `s ∉ theOpenSix s ∧ sᶜ ∉ theOpenSix s`.
  simp only [insert_eq_cons, disjoint_add_right, disjoint_cons_left, singleton_disjoint,
    mem_theOpenSix_iff, compl_compl, and_comm, and_self]
  exact ⟨(hs <| isClosed_of_mem_theClosedSix ·), (hsc <| isClosed_of_mem_theClosedSix ·)⟩

open Set

/-- A set in `ℝ` from which the maximum of 14 distinct sets can be obtained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Kuratowski/Variantb4a9378da94dea60c13dd99ba8f781b08f2534cbf6c76d401467623cd15c2e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Kuratowski/Variantb4a9378da94dea60c13dd99ba8f781b08f2534cbf6c76d401467623cd15c2e68.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c502d976b5ece215992f9f26cb8f0b3825b37327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
