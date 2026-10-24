# Set.Finite.isCompact_convexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0578d05498a88180488be21ce6a5a96f96d9defd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52cd248c-4285-7c15-db20-f66fe1d0c6de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9efd0604-6fd2-066c-d5ac-558596ad062d",
  "kind": "theorem",
  "lexical_name": "Set.Finite.isCompact_convexHull",
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
  "slug": "set-finite-iscompact-convexhull--cb13e60042f0d369f5eb1a45",
  "source": {
    "blob": "0578d05498a88180488be21ce6a5a96f96d9defd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 375,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb13e60042f0d369f5eb1a45dee27c6fc4118825799a5f19acacee4558e33f02",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9efd0604-6fd2-066c-d5ac-558596ad062d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.Finite.isCompact_convexHull {s : Set E} (hs : s.Finite) :
    IsCompact (convexHull ℝ s) := by
  rw [hs.convexHull_eq_image]
  apply (@isCompact_stdSimplex _ hs.fintype).image
  haveI := hs.fintype
  apply LinearMap.continuous_on_pi

/-- Convex hull of a finite set is closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0578d05498a88180488be21ce6a5a96f96d9defd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
