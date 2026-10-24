# opensImagePreimageMap_app'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa8f2c74-100e-63cd-55c9-fca0d1a2e417",
  "kind": "theorem",
  "lexical_name": "opensImagePreimageMap_app'",
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
  "slug": "opensimagepreimagemap-app--1ab24393e5f24c77b65433d5",
  "source": {
    "blob": "3073bc48c7f9bb8329cbd87b2290f3aa40e33f14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 291,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ab24393e5f24c77b65433d5f7c818913c94f62043fe75ac9eacc57a0bcc1f52",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa8f2c74-100e-63cd-55c9-fca0d1a2e417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem opensImagePreimageMap_app' (i j k : D.J) (U : Opens (D.U i).carrier) :
    ∃ eq,
      D.opensImagePreimageMap i j U ≫ (D.f j k).c.app _ =
        ((π₁ j, i, k) ≫ D.t j i ≫ D.f i j).c.app (op U) ≫
          (π₂⁻¹ j, i, k) (unop _) ≫ (D.V (j, k)).presheaf.map (eqToHom eq) := by
  constructor
  delta opensImagePreimageMap
  simp_rw [Category.assoc]
  rw [(D.f j k).c.naturality, f_invApp_f_app_assoc]
  erw [← (D.V (j, k)).presheaf.map_comp]
  simp_rw [← Category.assoc]
  erw [← comp_c_app, ← comp_c_app]
  simp_rw [Category.assoc]
  dsimp only [Functor.op, unop_op, Quiver.Hom.unop_op]
  rw [eqToHom_map (Opens.map _), eqToHom_op, eqToHom_trans]
  congr
#align algebraic_geometry.PresheafedSpace.glue_data.opens_image_preimage_map_app' AlgebraicGeometry.PresheafedSpace.GlueData.opensImagePreimageMap_app'

/-- The red and the blue arrows in ![this diagram](https://i.imgur.com/mBzV1Rx.png) commute. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3073bc48c7f9bb8329cbd87b2290f3aa40e33f14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
