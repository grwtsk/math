# appBasicOpenIsoAwayMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20e1961fde7603d0a3f131140396e9203048a14e5ad2a65780919359d1ab6a3e",
  "kind": "def",
  "lexical_name": "appBasicOpenIsoAwayMap",
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
  "slug": "appbasicopenisoawaymap--e52beea8276f36202c5e3fd8",
  "source": {
    "blob": "51a709e1c18ebb4991a8176c4e71043c9b3d457e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 669,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant65dae3a378d737df437e945891d987920e19f7119c90dfeea1f3d1ec763535dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e52beea8276f36202c5e3fd89b637cd2059d2c98021ba80586a3ad2f85892f9b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variant65dae3a378d737df437e945891d987920e19f7119c90dfeea1f3d1ec763535dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20e1961fde7603d0a3f131140396e9203048a14e5ad2a65780919359d1ab6a3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def appBasicOpenIsoAwayMap {X Y : Scheme.{u}} (f : X ⟶ Y) {U : Y.Opens}
    (hU : IsAffineOpen U) (h : IsAffineOpen (f ⁻¹ᵁ U)) (r : Γ(Y, U)) :
    haveI := hU.isLocalization_basicOpen r
    haveI := h.isLocalization_basicOpen (f.app U r)
    Arrow.mk (f.app (Y.basicOpen r)) ≅
      Arrow.mk (CommRingCat.ofHom (IsLocalization.Away.map Γ(Y, Y.basicOpen r)
        Γ(X, X.basicOpen (f.app U r)) (f.app U).hom r)) :=
  Arrow.isoMk (Iso.refl _) (X.presheaf.mapIso (eqToIso (by simp)).op) <| by
    simp [hU.app_basicOpen_eq_away_map f h]

include hU in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variant65dae3a378d737df437e945891d987920e19f7119c90dfeea1f3d1ec763535dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant65dae3a378d737df437e945891d987920e19f7119c90dfeea1f3d1ec763535dc.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51a709e1c18ebb4991a8176c4e71043c9b3d457e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
