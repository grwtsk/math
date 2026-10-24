# Proj.stalkIso'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8c8f1a5f13a1bf427416e547e4e986583fef2564004c06e50f12f6fa8cd123b",
  "kind": "def",
  "lexical_name": "Proj.stalkIso'",
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
  "slug": "proj-stalkiso--db6e35aa401feb7e9ef5e85c",
  "source": {
    "blob": "8ae40f9026bbd9e9887a89f933432c1b0acab2c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 354,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db6e35aa401feb7e9ef5e85cd57e3d8b1a7eb195e6a7e2def43a2d123182aff6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8c8f1a5f13a1bf427416e547e4e986583fef2564004c06e50f12f6fa8cd123b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Proj.stalkIso' (x : ProjectiveSpectrum.top 𝒜) :
    (Proj.structureSheaf 𝒜).presheaf.stalk x ≃+* at x where
  __ := (stalkToFiberRingHom _ x).hom
  invFun := homogeneousLocalizationToStalk 𝒜 x
  left_inv := homogeneousLocalizationToStalk_stalkToFiberRingHom 𝒜 x
  right_inv := stalkToFiberRingHom_homogeneousLocalizationToStalk 𝒜 x

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae40f9026bbd9e9887a89f933432c1b0acab2c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
