# image_of_isOpenImmersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15a49372-205e-2d70-ac86-10d8ed29d425",
  "kind": "theorem",
  "lexical_name": "image_of_isOpenImmersion",
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
  "slug": "image-of-isopenimmersion--c523fe3dff70a8dc90741076",
  "source": {
    "blob": "51a709e1c18ebb4991a8176c4e71043c9b3d457e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 448,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant65dae3a378d737df437e945891d987920e19f7119c90dfeea1f3d1ec763535dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c523fe3dff70a8dc90741076a782036f7924374218c165a4db61bb23d8d7e303",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variant65dae3a378d737df437e945891d987920e19f7119c90dfeea1f3d1ec763535dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15a49372-205e-2d70-ac86-10d8ed29d425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_of_isOpenImmersion (f : X ⟶ Y) [H : IsOpenImmersion f] :
    IsAffineOpen (f ''ᵁ U) := by
  have : IsAffine _ := hU
  convert isAffineOpen_opensRange (U.ι ≫ f)
  ext1
  exact Set.image_eq_range _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variant65dae3a378d737df437e945891d987920e19f7119c90dfeea1f3d1ec763535dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant65dae3a378d737df437e945891d987920e19f7119c90dfeea1f3d1ec763535dc.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51a709e1c18ebb4991a8176c4e71043c9b3d457e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
