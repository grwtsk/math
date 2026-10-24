# imageBasicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87fdc60869a01eb8f11e5bbc2eb9dd50435026542eef46fcd7fe5ca750df6865",
  "kind": "def",
  "lexical_name": "imageBasicOpen",
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
  "slug": "imagebasicopen--47ed7fb3d3a6c3d22773ff59",
  "source": {
    "blob": "8eed74b203e72864e5f5ba91f1ef741c7e1d27d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 182,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47ed7fb3d3a6c3d22773ff594f53997d40e9814f292ac8d281012edca96f863c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87fdc60869a01eb8f11e5bbc2eb9dd50435026542eef46fcd7fe5ca750df6865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def imageBasicOpen : Opens Y :=
  Y.toRingedSpace.basicOpen
    (show Y.presheaf.obj (op (unop _)) from ((coequalizer.π f.1 g.1).c.app (op U)) s)
#align algebraic_geometry.LocallyRingedSpace.has_coequalizer.image_basic_open AlgebraicGeometry.LocallyRingedSpace.HasCoequalizer.imageBasicOpen

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eed74b203e72864e5f5ba91f1ef741c7e1d27d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
