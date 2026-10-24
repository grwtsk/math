# exists_clopen_of_closed_subset_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cd27492-98e3-29b4-5b3d-88bdbae242b9",
  "kind": "lemma",
  "lexical_name": "exists_clopen_of_closed_subset_open",
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
  "slug": "exists-clopen-of-closed-subset-open--d19f2ccf7163c1f40a9a1c7a",
  "source": {
    "blob": "9c5533255509f8c895e8776c928cecebf3620b0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variantcde42455a3745cb8df8093fcb844aba7a4c9b8ac92a6171ec7858a1bd0a4ac82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d19f2ccf7163c1f40a9a1c7a39605a5d1cf551d632e3fa8aaddedc3b283e2f13",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variantcde42455a3745cb8df8093fcb844aba7a4c9b8ac92a6171ec7858a1bd0a4ac82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cd27492-98e3-29b4-5b3d-88bdbae242b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_clopen_of_closed_subset_open {X : Type*}
    [TopologicalSpace X] [CompactSpace X] [T2Space X] [TotallyDisconnectedSpace X]
    {Z U : Set X} (hZ : IsClosed Z) (hU : IsOpen U) (hZU : Z ⊆ U) :
    ∃ C : Set X, IsClopen C ∧ Z ⊆ C ∧ C ⊆ U := by
  -- every `z ∈ Z` has clopen neighborhood `V z ⊆ U`
  choose V hV using fun (z : Z) ↦ compact_exists_isClopen_in_isOpen hU (hZU z.property)
  -- the `V z` cover `Z`
  have V_cover : Z ⊆ ⋃ z, V z := fun z hz ↦ mem_iUnion.mpr ⟨⟨z, hz⟩, (hV ⟨z, hz⟩).2.1⟩
  -- choose a finite subcover
  choose I hI using hZ.isCompact.elim_finite_subcover V (fun z ↦ (hV z).1.isOpen) V_cover
  -- the union of this finite subcover does the job
  exact ⟨⋃ (i ∈ I), V i, I.finite_toSet.isClopen_biUnion (fun i _ ↦ (hV i).1), hI, by simp_all⟩

/-- Let `X` be a totally disconnected compact Hausdorff space, `D i ⊆ X` a finite family of clopens,
and `Z i ⊆ D i` closed. Assume that the `Z i` are pairwise disjoint. Then there exist clopens
`Z i ⊆ C i ⊆ D i` with the `C i` disjoint, and such that `∪ D i ⊆ ∪ C i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variantcde42455a3745cb8df8093fcb844aba7a4c9b8ac92a6171ec7858a1bd0a4ac82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variantcde42455a3745cb8df8093fcb844aba7a4c9b8ac92a6171ec7858a1bd0a4ac82.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5533255509f8c895e8776c928cecebf3620b0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
