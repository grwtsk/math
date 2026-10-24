# modelWithCornersSelf_boundaryless

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72249210cd618f74390341c5a8d465b2d0b2dc90e4fee093196314885538352b",
  "kind": "instance",
  "lexical_name": "modelWithCornersSelf_boundaryless",
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
  "slug": "modelwithcornersself-boundaryless--8693c9032d74c69aef6b6df9",
  "source": {
    "blob": "2062e7f052f9d6dfdd318cf0e2ecfb6d74d2e572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 503,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8693c9032d74c69aef6b6df91058b3ea2d3b837115ca97665848fc333de6131d",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72249210cd618f74390341c5a8d465b2d0b2dc90e4fee093196314885538352b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance modelWithCornersSelf_boundaryless (𝕜 : Type*) [NontriviallyNormedField 𝕜] (E : Type*)
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] : (modelWithCornersSelf 𝕜 E).Boundaryless :=
  ⟨by simp⟩
#align model_with_corners_self_boundaryless modelWithCornersSelf_boundaryless

/-- If two model with corners are boundaryless, their product also is -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2062e7f052f9d6dfdd318cf0e2ecfb6d74d2e572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
