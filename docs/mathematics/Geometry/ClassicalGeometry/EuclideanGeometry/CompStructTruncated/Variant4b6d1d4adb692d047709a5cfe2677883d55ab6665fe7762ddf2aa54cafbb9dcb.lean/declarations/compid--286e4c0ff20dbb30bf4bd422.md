# compId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3831c3c6862a215576333a66ab05fca4ff91908100a1d4fa5e54f5fc63fa3bd4",
  "kind": "def",
  "lexical_name": "compId",
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
  "slug": "compid--286e4c0ff20dbb30bf4bd422",
  "source": {
    "blob": "17782282f9a11a29d5986c9b81816f410600d02d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 138,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant4b6d1d4adb692d047709a5cfe2677883d55ab6665fe7762ddf2aa54cafbb9dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:286e4c0ff20dbb30bf4bd422e74237e434f1c13d756c18c51e1b008553650e32",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant4b6d1d4adb692d047709a5cfe2677883d55ab6665fe7762ddf2aa54cafbb9dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3831c3c6862a215576333a66ab05fca4ff91908100a1d4fa5e54f5fc63fa3bd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compId {x y : X _⦋0⦌₂} (e : Edge x y) :
    CompStruct e (.id y) e where
  simplex := X.map (σ₂ 1).op e.edge
  d₂ := by
    rw [← Functor.map_comp_apply, ← op_comp, δ₂_two_comp_σ₂_one]
    simp
  d₀ := by
    rw [← Functor.map_comp_apply, ← op_comp, δ₂_zero_comp_σ₂_one]
    simp
  d₁ := by
    rw [← Functor.map_comp_apply, ← op_comp, δ₂_one_comp_σ₂_one]
    simp

/-- `Edge.id x` is a composition of `Edge.id x` with `Edge.id x`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant4b6d1d4adb692d047709a5cfe2677883d55ab6665fe7762ddf2aa54cafbb9dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant4b6d1d4adb692d047709a5cfe2677883d55ab6665fe7762ddf2aa54cafbb9dcb.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17782282f9a11a29d5986c9b81816f410600d02d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
