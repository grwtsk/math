# affineBasisCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:976343058e7d13069a66047b6d0d5ec852c1ed13e7996d48e60924047eadceb8",
  "kind": "def",
  "lexical_name": "affineBasisCover",
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
  "slug": "affinebasiscover--d88575c220299618bf0ad613",
  "source": {
    "blob": "cd9c77ce1245e4f72cb3164cde52ca6b001ed9ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 267,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d88575c220299618bf0ad613a35fc0c2b727aa223129ce1a05f35280338b0cbc",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:976343058e7d13069a66047b6d0d5ec852c1ed13e7996d48e60924047eadceb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def affineBasisCover (X : Scheme.{u}) : OpenCover X :=
  X.affineCover.bind fun _ => affineBasisCoverOfAffine _

/-- The coordinate ring of a component in the `affine_basis_cover`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd9c77ce1245e4f72cb3164cde52ca6b001ed9ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
