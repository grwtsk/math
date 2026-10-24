# smoothWithinAt_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ffc11bb-17d4-e9f8-d32d-de247305fc9c",
  "kind": "theorem",
  "lexical_name": "smoothWithinAt_const",
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
  "slug": "smoothwithinat-const--4b6c82099f14b37e53717de8",
  "source": {
    "blob": "606ffb771552285b2831ba6b0395f2331728ac9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1298,
    "line": 1294,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b6c82099f14b37e53717de820c993e3405db5cff4512a49983f62d083c7de41",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ffc11bb-17d4-e9f8-d32d-de247305fc9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1294–1298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothWithinAt_const : SmoothWithinAt I I' (fun _ : M => c) s x :=
  contMDiffWithinAt_const
#align smooth_within_at_const smoothWithinAt_const

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean#L1294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `606ffb771552285b2831ba6b0395f2331728ac9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
