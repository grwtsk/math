# Convex.convexIndependent_extremePoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "987a227caa15f706e23c8adbda7c78a0a824acb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:756bca7f-c11d-dbe4-0864-27bd17d3cf92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db0122f4-3b9a-eb38-d40f-8ef543232286",
  "kind": "theorem",
  "lexical_name": "Convex.convexIndependent_extremePoints",
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
  "slug": "convex-convexindependent-extremepoints--52e751dd32d75657eb2af10e",
  "source": {
    "blob": "987a227caa15f706e23c8adbda7c78a0a824acb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 191,
    "path": "GRWTSK/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52e751dd32d75657eb2af10ea573a7a1d3428c6e3e5b9613be1cb75dffff4a43",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db0122f4-3b9a-eb38-d40f-8ef543232286`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.convexIndependent_extremePoints (hs : Convex 𝕜 s) :
    ConvexIndependent 𝕜 ((↑) : s.extremePoints 𝕜 → E) :=
  convexIndependent_set_iff_notMem_convexHull_diff.2 fun _ hx h =>
    (extremePoints_convexHull_subset
          (inter_extremePoints_subset_extremePoints_of_subset
            (convexHull_min (Set.diff_subset.trans extremePoints_subset) hs) ⟨h, hx⟩)).2
      (Set.mem_singleton _)

end LinearOrderedField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987a227caa15f706e23c8adbda7c78a0a824acb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
