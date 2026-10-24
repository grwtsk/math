# direction_sInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27a949c5746d98dddc95b9b7dbb6c47fd2de22cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 853,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a043ac5e4e0f365488fe0888d0f769175856e46943d00b59c39d661fd8ba799.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b99265ea-a06f-7063-05d7-c105a2c68aa5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbc37016-3bf0-1d08-6749-e04875f0136c",
  "kind": "theorem",
  "lexical_name": "direction_sInf",
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
  "slug": "direction-sinf--eb5c3472efff6da414c2efce",
  "source": {
    "blob": "27a949c5746d98dddc95b9b7dbb6c47fd2de22cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 857,
    "line": 853,
    "path": "GRWTSK/Geometry/ConvexGeometry/Defs/Variant0a043ac5e4e0f365488fe0888d0f769175856e46943d00b59c39d661fd8ba799.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb5c3472efff6da414c2efce9b3b7b32238a4b020896dc9b848f9a28fb2d4014",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Defs/Variant0a043ac5e4e0f365488fe0888d0f769175856e46943d00b59c39d661fd8ba799.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbc37016-3bf0-1d08-6749-e04875f0136c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 853–857.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem direction_sInf (t : Set (AffineSubspace k P)) :
    direction (sInf t) ≤ ⨅ s ∈ t, s.direction := by
  simp only [direction_eq_vectorSpan, vectorSpan_def]
  exact le_iInf₂ fun s hs => Submodule.span_mono <| vsub_self_mono <| biInter_subset_of_mem hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Defs/Variant0a043ac5e4e0f365488fe0888d0f769175856e46943d00b59c39d661fd8ba799.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Defs/Variant0a043ac5e4e0f365488fe0888d0f769175856e46943d00b59c39d661fd8ba799.lean#L853).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a949c5746d98dddc95b9b7dbb6c47fd2de22cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
