# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:507ad8400cf26d6b06a7bbeb807e115c0c234ab28e246b7cf8a675fcb216b190",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--aac00a733eac422d53610b85",
  "source": {
    "blob": "43d7dce3a01d4b2ead5228d685b10029994ceaee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aac00a733eac422d53610b85c804552d06bab9df0b914b2e97671f17fc2058cf",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:507ad8400cf26d6b06a7bbeb807e115c0c234ab28e246b7cf8a675fcb216b190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) SmoothRing.toLieAddGroup (I : ModelWithCorners 𝕜 E H) (R : Type*)
    [Ring R] [TopologicalSpace R] [ChartedSpace H R] [SmoothRing I R] : LieAddGroup I R where
  compatible := StructureGroupoid.compatible (contDiffGroupoid ⊤ I)
  smooth_add := smooth_add I
  smooth_neg := by simpa only [neg_one_mul] using @smooth_mul_left 𝕜 _ H _ E _ _ I R _ _ _ _ (-1)
#align smooth_ring.to_lie_add_group SmoothRing.toLieAddGroup

end SmoothRing

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43d7dce3a01d4b2ead5228d685b10029994ceaee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
