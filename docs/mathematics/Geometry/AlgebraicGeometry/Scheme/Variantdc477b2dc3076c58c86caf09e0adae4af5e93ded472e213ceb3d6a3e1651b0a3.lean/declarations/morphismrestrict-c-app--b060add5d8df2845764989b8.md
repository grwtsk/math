# morphismRestrict_c_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1983a895-d661-7054-3468-8cad61b68fd8",
  "kind": "theorem",
  "lexical_name": "morphismRestrict_c_app",
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
  "slug": "morphismrestrict-c-app--b060add5d8df2845764989b8",
  "source": {
    "blob": "83eaa0289eaf8fd200ee135abb4e3faa358d9a94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1046,
    "line": 1027,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b060add5d8df2845764989b85799d666e6f17d7952e19f99d27275452f0bdbd4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1983a895-d661-7054-3468-8cad61b68fd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1027–1046.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem morphismRestrict_c_app {X Y : Scheme} (f : X ⟶ Y) (U : Opens Y) (V : Opens U) :
    (f ∣_ U).1.c.app (op V) =
      f.1.c.app (op (U.openEmbedding.isOpenMap.functor.obj V)) ≫
        X.presheaf.map (eqToHom (image_morphismRestrict_preimage f U V)).op := by
  have :=
    Scheme.congr_app (morphismRestrict_ι f U) (op (U.openEmbedding.isOpenMap.functor.obj V))
  rw [Scheme.comp_val_c_app, Scheme.comp_val_c_app_assoc] at this
  have e : (Opens.map U.inclusion).obj (U.openEmbedding.isOpenMap.functor.obj V) = V := by
    ext1; exact Set.preimage_image_eq _ Subtype.coe_injective
  have : _ ≫ X.presheaf.map _ = _ :=
    (((f ∣_ U).1.c.naturality (eqToHom e).op).symm.trans ?_).trans this
  · rw [← IsIso.eq_comp_inv, ← Functor.map_inv, Category.assoc] at this
    rw [this]
    congr 1
    erw [← X.presheaf.map_comp, ← X.presheaf.map_comp]
    congr 1
  · change Y.presheaf.map _ ≫ _ = Y.presheaf.map _ ≫ _
    congr 1
#align algebraic_geometry.morphism_restrict_c_app AlgebraicGeometry.morphismRestrict_c_app

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantdc477b2dc3076c58c86caf09e0adae4af5e93ded472e213ceb3d6a3e1651b0a3.lean#L1027).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83eaa0289eaf8fd200ee135abb4e3faa358d9a94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
