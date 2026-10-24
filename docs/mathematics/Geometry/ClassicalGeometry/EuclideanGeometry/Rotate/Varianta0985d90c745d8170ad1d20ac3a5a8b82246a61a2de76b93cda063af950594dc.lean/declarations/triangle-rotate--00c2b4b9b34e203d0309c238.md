# Triangle.rotate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1da5842f088ca9a285ccf28397760ac373e4b66ce5350b6a32c4b1f4e814596e",
  "kind": "def",
  "lexical_name": "Triangle.rotate",
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
  "slug": "triangle-rotate--00c2b4b9b34e203d0309c238",
  "source": {
    "blob": "cb16745146e06647884ec88bede767c9ccd35928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 49,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00c2b4b9b34e203d0309c2384ba067ce0cd60ca70320e5b8e1b8a20d8eb3ef16",
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

Occurrence: `declaration:1da5842f088ca9a285ccf28397760ac373e4b66ce5350b6a32c4b1f4e814596e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def Triangle.rotate (T : Triangle C) : Triangle C :=
  Triangle.mk T.mor₂ T.mor₃ (-T.mor₁⟦1⟧')

section

/-- Given a triangle of the form:
```
      f       g       h
  X  ───> Y  ───> Z  ───> X⟦1⟧
```
applying `invRotate` gives a triangle that can be thought of as:
```
        -h⟦-1⟧'     f       g
  Z⟦-1⟧  ───>  X  ───> Y  ───> Z
```
(note that this diagram doesn't technically fit the definition of triangle, as `Z⟦-1⟧⟦1⟧` is
not necessarily equal to `Z`, but it is isomorphic, by the `counitIso` of `shiftEquiv C 1`)
-/
@[simps!]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Varianta0985d90c745d8170ad1d20ac3a5a8b82246a61a2de76b93cda063af950594dc.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb16745146e06647884ec88bede767c9ccd35928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
