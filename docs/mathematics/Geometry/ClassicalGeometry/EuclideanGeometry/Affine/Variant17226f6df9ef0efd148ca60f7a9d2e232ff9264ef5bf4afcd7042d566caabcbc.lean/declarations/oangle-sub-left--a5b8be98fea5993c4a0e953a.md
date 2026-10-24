# oangle_sub_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59c98357-c881-0400-2923-5cfcc0c6a106",
  "kind": "theorem",
  "lexical_name": "oangle_sub_left",
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
  "slug": "oangle-sub-left--a5b8be98fea5993c4a0e953a",
  "source": {
    "blob": "865abc9f8f6a0a7473995d10d0a560913e9f4621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 259,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5b8be98fea5993c4a0e953ae5f59a7fa0a77cfbd487e7eaf3b90d130c2ae1e4",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59c98357-c881-0400-2923-5cfcc0c6a106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_sub_left {p p₁ p₂ p₃ : P} (hp₁ : p₁ ≠ p) (hp₂ : p₂ ≠ p) (hp₃ : p₃ ≠ p) :
    ∡ p₁ p p₃ - ∡ p₁ p p₂ = ∡ p₂ p p₃ :=
  o.oangle_sub_left (vsub_ne_zero.2 hp₁) (vsub_ne_zero.2 hp₂) (vsub_ne_zero.2 hp₃)

/-- Given three points not equal to `p`, the angle between the first and the third at `p` minus
the angle between the second and the third equals the angle between the first and the second. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865abc9f8f6a0a7473995d10d0a560913e9f4621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
