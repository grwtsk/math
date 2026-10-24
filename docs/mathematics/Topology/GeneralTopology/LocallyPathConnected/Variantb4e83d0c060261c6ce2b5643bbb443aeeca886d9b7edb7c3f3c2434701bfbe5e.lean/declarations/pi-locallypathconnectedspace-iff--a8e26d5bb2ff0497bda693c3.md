# Pi.locallyPathConnectedSpace_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5faaf687-8357-22d2-5d51-c0a355a96253",
  "kind": "theorem",
  "lexical_name": "Pi.locallyPathConnectedSpace_iff",
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
  "slug": "pi-locallypathconnectedspace-iff--a8e26d5bb2ff0497bda693c3",
  "source": {
    "blob": "da4d508c57a855d9235fb2c7df053c9f58394fb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 371,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8e26d5bb2ff0497bda693c36c73d8e45987be8d2d06dd743c049716b71e101c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5faaf687-8357-22d2-5d51-c0a355a96253`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pi.locallyPathConnectedSpace_iff {Z : ι → Type*} [∀ i, TopologicalSpace (Z i)] :
    LocallyPathConnectedSpace (∀ i, Z i) ↔
      IsEmpty (∀ i, Z i) ∨
        (∀ i, LocallyPathConnectedSpace (Z i)) ∧ {i | ¬PathConnectedSpace (Z i)}.Finite := by
  refine ⟨fun h ↦ ?_, ?_⟩
  · rcases isEmpty_or_nonempty (∀ i, Z i) with he | hne
    · exact .inl he
    obtain ⟨x⟩ := hne
    classical
    have : ∀ i, Nonempty (Z i) := Classical.nonempty_pi.mp ⟨x⟩
    refine .inr ⟨fun i ↦ ((isOpenMap_eval i).isQuotientMap (continuous_apply i)
      (surjective_eval i)).locallyPathConnectedSpace, ?_⟩
    have hVn : pathComponent x ∈ 𝓝 x :=
      (IsOpen.pathComponent x).mem_nhds (mem_pathComponent_self x)
    rw [nhds_pi, Filter.mem_pi] at hVn
    obtain ⟨J, hJ, t, ht, htV⟩ := hVn
    refine hJ.subset fun i hi ↦ by_contra fun hiJ ↦ hi ?_
    suffices himg : eval i '' pathComponent x = univ from pathConnectedSpace_iff_univ.mpr
      (himg ▸ isPathConnected_pathComponent.image (continuous_apply i))
    refine (subset_univ _).antisymm fun z _ ↦ ⟨update x i z, htV fun j hj ↦ ?_, by simp⟩
    rw [update_of_ne (ne_of_mem_of_not_mem hj hiJ)]
    exact mem_of_mem_nhds (ht j)
  · rintro (he | ⟨hloc, hfin⟩)
    · exact ⟨he.elim⟩
    · exact locallyPathConnectedSpace_of_finite_not_pathConnectedSpace hfin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantb4e83d0c060261c6ce2b5643bbb443aeeca886d9b7edb7c3f3c2434701bfbe5e.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da4d508c57a855d9235fb2c7df053c9f58394fb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
