# invRotCompRot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcc698964b126c5378e15b42cd5933723a588075935909544ce0c0991cc2f373",
  "kind": "def",
  "lexical_name": "invRotCompRot",
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
  "slug": "invrotcomprot--9d1fe13146379c8d5ba581c3",
  "source": {
    "blob": "cb16745146e06647884ec88bede767c9ccd35928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 121,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d1fe13146379c8d5ba581c3c5926cc9e53a76a21d49fe7a89870f4e667cb74a",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcc698964b126c5378e15b42cd5933723a588075935909544ce0c0991cc2f373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invRotCompRot : invRotate C ⋙ rotate C ≅ 𝟭 (Triangle C) :=
  NatIso.ofComponents fun T => Triangle.isoMk _ _ (Iso.refl _) (Iso.refl _)
    ((shiftEquiv C (1 : ℤ)).counitIso.app T.obj₃)

variable (C) in
/-- Rotating triangles gives an auto-equivalence on the category of triangles in `C`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb16745146e06647884ec88bede767c9ccd35928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
