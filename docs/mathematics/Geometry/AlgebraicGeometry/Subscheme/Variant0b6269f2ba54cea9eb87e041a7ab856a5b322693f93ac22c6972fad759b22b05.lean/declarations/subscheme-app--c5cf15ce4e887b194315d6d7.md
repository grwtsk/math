# subschemeι_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:721ddbd1-8f70-803d-a3df-690409a7b4e1",
  "kind": "lemma",
  "lexical_name": "subschemeι_app",
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
  "slug": "subscheme-app--c5cf15ce4e887b194315d6d7",
  "source": {
    "blob": "cdc31c03361e5e97798706fdc1030713093fd5b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 517,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5cf15ce4e887b194315d6d7728d6a97adbd1489aa345339a7fe85d4b7071bb7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:721ddbd1-8f70-803d-a3df-690409a7b4e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subschemeι_app (U : X.affineOpens) : I.subschemeι.app U =
    CommRingCat.ofHom (Ideal.Quotient.mk (I.ideal U)) ≫
    (I.subschemeObjIso U).inv := by
  have := I.subschemeCover_map_subschemeι U
  simp only [glueDataObjι, Category.assoc, IsAffineOpen.isoSpec_inv_ι] at this
  replace this := Scheme.congr_app this U
  simp only [comp_coeBase, TopologicalSpace.Opens.map_comp_obj, comp_app,
    IsAffineOpen.fromSpec_app_self, eqToHom_op, Category.assoc, Hom.naturality_assoc,
    TopologicalSpace.Opens.map_top, ← ΓSpecIso_inv_naturality_assoc] at this
  simp_rw [← Category.assoc, ← IsIso.comp_inv_eq] at this
  simp only [← this, ← Functor.map_inv, inv_eqToHom, Category.assoc, eqToHom_unop,
    ← Functor.map_comp, IsIso.Iso.inv_inv, subschemeObjIso, Iso.trans_inv, Functor.mapIso_inv,
    Iso.op_inv, eqToIso.inv, eqToHom_op, Iso.hom_inv_id_assoc, Hom.appIso_inv_naturality_assoc,
    Functor.op_obj, Functor.op_map, unop_comp, unop_inv, Quiver.Hom.unop_op,
    Hom.app_appIso_inv_assoc, TopologicalSpace.Opens.carrier_eq_coe, TopologicalSpace.Opens.map_coe,
    homOfLE_leOfHom]
  convert (Category.comp_id _).symm
  exact CategoryTheory.Functor.map_id _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc31c03361e5e97798706fdc1030713093fd5b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
