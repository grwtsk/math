# affineMap_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d394f76b-45c6-1b22-e99b-b232dc7b39ff",
  "kind": "lemma",
  "lexical_name": "affineMap_id",
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
  "slug": "affinemap-id--f0a32cbda4250f62d3084ccb",
  "source": {
    "blob": "36febc9752899d9e3f36d76e25423bc15e4a20b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 114,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0a32cbda4250f62d3084ccb11bdf8f2fb2f80f42b94a62e23c141330c582704",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d394f76b-45c6-1b22-e99b-b232dc7b39ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma affineMap_id (M : Type*) : affineMap (R := R) (id : M → M) = .id _ := by aesop

/-- Given a map `f : M → X` where `X` is a convex space over `R`, this is the affine
map `StdSimplex R M → X` which sends the vertex corresponding to `m : M` to `f m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36febc9752899d9e3f36d76e25423bc15e4a20b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
