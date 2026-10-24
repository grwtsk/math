# componentwiseDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ccbe6d846901da4f67a4cfebf204b06a5d2c4660f049e08cecbc1008e72c953",
  "kind": "def",
  "lexical_name": "componentwiseDiagram",
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
  "slug": "componentwisediagram--e82f4192785b7e8745251535",
  "source": {
    "blob": "914371331cf3bb85c507374ad3bc475c0152e7d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e82f4192785b7e8745251535fd009732c03881d7a59ac8f9c456a8be7e2808bb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ccbe6d846901da4f67a4cfebf204b06a5d2c4660f049e08cecbc1008e72c953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def componentwiseDiagram (F : J ⥤ PresheafedSpace.{_, _, v} C) [HasColimit F]
    (U : Opens (Limits.colimit F).carrier) : Jᵒᵖ ⥤ C where
  obj j := (F.obj (unop j)).presheaf.obj (op ((Opens.map (colimit.ι F (unop j)).base).obj U))
  map {j k} f := (F.map f.unop).c.app _ ≫
    (F.obj (unop k)).presheaf.map (eqToHom (by rw [← colimit.w F f.unop, comp_base]; rfl))
  map_comp {i j k} f g := by
    dsimp
    simp_rw [map_comp_c_app]
    simp only [op_obj, unop_op, eqToHom_op, id_eq, id_comp, assoc, eqToHom_trans]
    congr 1
    rw [TopCat.Presheaf.Pushforward.comp_inv_app, TopCat.Presheaf.pushforwardEq_hom_app,
      CategoryTheory.NatTrans.naturality_assoc, TopCat.Presheaf.pushforwardMap_app]
    congr 1
    simp
  map_id x := by
    dsimp
    simp [map_id_c_app, pushforwardObj_obj, op_obj, unop_op, pushforwardEq_hom_app, eqToHom_op,
      id_eq, eqToHom_map, assoc, eqToHom_trans, eqToHom_refl, comp_id,
      TopCat.Presheaf.Pushforward.id_inv_app']
    rw [TopCat.Presheaf.Pushforward.id_inv_app']
    simp only [Opens.carrier_eq_coe, Opens.mk_coe, map_id]
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.PresheafedSpace.componentwise_diagram AlgebraicGeometry.PresheafedSpace.componentwiseDiagram

variable [HasColimitsOfShape J TopCat.{v}]

/-- Given a diagram of presheafed spaces,
we can push all the presheaves forward to the colimit `X` of the underlying topological spaces,
obtaining a diagram in `(Presheaf C X)ᵒᵖ`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `914371331cf3bb85c507374ad3bc475c0152e7d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
