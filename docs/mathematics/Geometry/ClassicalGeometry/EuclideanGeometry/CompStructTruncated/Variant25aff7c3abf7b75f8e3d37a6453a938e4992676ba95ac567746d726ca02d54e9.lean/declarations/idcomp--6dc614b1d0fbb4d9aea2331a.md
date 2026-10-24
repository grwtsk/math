# idComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:700bb9d26b0d6d3b2f24c26bc1b8b8a013e99d99940e8394469cd40b48a1db3d",
  "kind": "def",
  "lexical_name": "idComp",
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
  "slug": "idcomp--6dc614b1d0fbb4d9aea2331a",
  "source": {
    "blob": "135cf81c5685121f8ef03bf8d3d3eaf213a39701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 116,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant25aff7c3abf7b75f8e3d37a6453a938e4992676ba95ac567746d726ca02d54e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6dc614b1d0fbb4d9aea2331ac1307684b28514ec734e67b4485f4c81e378b8ee",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant25aff7c3abf7b75f8e3d37a6453a938e4992676ba95ac567746d726ca02d54e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:700bb9d26b0d6d3b2f24c26bc1b8b8a013e99d99940e8394469cd40b48a1db3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def idComp {x y : X _⦋0⦌₂} (e : Edge x y) :
    CompStruct (.id x) e e where
  simplex := X.map (σ₂ 0).op e.edge
  d₂ := by
    rw [← Functor.map_comp_apply, ← op_comp, δ₂_two_comp_σ₂_zero]
    simp
  d₀ := by
    rw [← Functor.map_comp_apply, ← op_comp, δ₂_zero_comp_σ₂_zero]
    simp
  d₁ := by
    rw [← Functor.map_comp_apply, ← op_comp, δ₂_one_comp_σ₂_zero]
    simp

/-- `e : Edge x y` is a composition of `e` with `Edge.id y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant25aff7c3abf7b75f8e3d37a6453a938e4992676ba95ac567746d726ca02d54e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant25aff7c3abf7b75f8e3d37a6453a938e4992676ba95ac567746d726ca02d54e9.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `135cf81c5685121f8ef03bf8d3d3eaf213a39701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
