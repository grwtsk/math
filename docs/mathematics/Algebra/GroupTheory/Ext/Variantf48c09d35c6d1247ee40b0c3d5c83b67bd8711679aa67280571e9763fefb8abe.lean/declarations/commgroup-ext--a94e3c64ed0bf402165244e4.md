# CommGroup.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ed1e2d7-1be3-725e-ee12-63a55707c38d",
  "kind": "theorem",
  "lexical_name": "CommGroup.ext",
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
  "slug": "commgroup-ext--a94e3c64ed0bf402165244e4",
  "source": {
    "blob": "89ed7b9dd7489a012fac2e0c8b1cce476b7883ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 170,
    "path": "GRWTSK/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a94e3c64ed0bf402165244e4f6957a33df3567043366bdfd9df9abbcd26973db",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ed1e2d7-1be3-725e-ee12-63a55707c38d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CommGroup.ext {G : Type*} ⦃g₁ g₂ : CommGroup G⦄
    (h_mul : (letI := g₁; HMul.hMul : G → G → G) = (letI := g₂; HMul.hMul : G → G → G)) : g₁ = g₂ :=
  CommGroup.toGroup_injective <| Group.ext h_mul
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ed7b9dd7489a012fac2e0c8b1cce476b7883ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
