# exists_superset_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cc78a89-e795-5171-33ad-8186dd88a635",
  "kind": "theorem",
  "lexical_name": "exists_superset_of_isCompact",
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
  "slug": "exists-superset-of-iscompact--1c92a7edc54e7c08aeba881d",
  "source": {
    "blob": "f4cb963afa9e1678f649743f8e227ec21a8887aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 384,
    "path": "GRWTSK/Topology/GeneralTopology/SigmaCompact/Variantfe467c799e27cf14c30e8e8e43a5859f589419bfb079e6a7a600cab202850956.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c92a7edc54e7c08aeba881d427aa304ecdcb0fa9063ee2e4c3bdf06af7cd5b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SigmaCompact/Variantfe467c799e27cf14c30e8e8e43a5859f589419bfb079e6a7a600cab202850956.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cc78a89-e795-5171-33ad-8186dd88a635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_superset_of_isCompact {s : Set X} (hs : IsCompact s) : ∃ n, s ⊆ K n := by
  suffices ∃ n, s ⊆ interior (K n) from this.imp fun _ ↦ (Subset.trans · interior_subset)
  refine hs.elim_directed_cover (interior ∘ K) (fun _ ↦ isOpen_interior) ?_ ?_
  · intro x _
    rcases K.exists_mem x with ⟨k, hk⟩
    exact mem_iUnion.2 ⟨k + 1, K.subset_interior_succ _ hk⟩
  · exact Monotone.directed_le fun _ _ h ↦ interior_mono <| K.subset h

open scoped Classical in
/-- The minimal `n` such that `x ∈ K n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SigmaCompact/Variantfe467c799e27cf14c30e8e8e43a5859f589419bfb079e6a7a600cab202850956.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SigmaCompact/Variantfe467c799e27cf14c30e8e8e43a5859f589419bfb079e6a7a600cab202850956.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4cb963afa9e1678f649743f8e227ec21a8887aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
