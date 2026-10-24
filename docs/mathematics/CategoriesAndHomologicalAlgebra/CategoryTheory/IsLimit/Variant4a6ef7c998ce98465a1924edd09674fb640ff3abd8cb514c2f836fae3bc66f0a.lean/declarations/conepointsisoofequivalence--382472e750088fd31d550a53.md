# conePointsIsoOfEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfd5af55214d4651c4f9a4d9e6cb579fe3a3914640088705053bba9f11ed6e5b",
  "kind": "def",
  "lexical_name": "conePointsIsoOfEquivalence",
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
  "slug": "conepointsisoofequivalence--382472e750088fd31d550a53",
  "source": {
    "blob": "3256c2b7fac4393fd775fada6fa248192d322bc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 445,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant4a6ef7c998ce98465a1924edd09674fb640ff3abd8cb514c2f836fae3bc66f0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:382472e750088fd31d550a5380a361e11f49182fb76359b74a0680f47500caf5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant4a6ef7c998ce98465a1924edd09674fb640ff3abd8cb514c2f836fae3bc66f0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfd5af55214d4651c4f9a4d9e6cb579fe3a3914640088705053bba9f11ed6e5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conePointsIsoOfEquivalence {F : J ⥤ C} {s : Cone F} {G : K ⥤ C} {t : Cone G} (P : IsLimit s)
    (Q : IsLimit t) (e : J ≌ K) (w : e.functor ⋙ G ≅ F) : s.pt ≅ t.pt :=
  let w' : e.inverse ⋙ F ≅ G := (isoWhiskerLeft e.inverse w).symm ≪≫ invFunIdAssoc e G
  { hom := Q.lift ((Cone.equivalenceOfReindexing e.symm w').functor.obj s)
    inv := P.lift ((Cone.equivalenceOfReindexing e w).functor.obj t)
    hom_inv_id := by
      apply hom_ext P; intro j
      dsimp [w']
      simp only [Limits.Cone.whisker_π, Limits.Cone.postcompose_obj_π, fac, whiskerLeft_app,
        assoc, id_comp, invFunIdAssoc_hom_app, fac_assoc, NatTrans.comp_app]
      rw [counit_app_functor, ← Functor.comp_map, ← w.inv.naturality_assoc]
      simp
    inv_hom_id := by
      apply hom_ext Q
      cat_disch }

end Equivalence

/-- The universal property of a limit cone: a map `W ⟶ t.pt` is the same as
a cone on `F` with cone point `W`. -/
@[to_dual (attr := simps apply)
/-- The universal property of a colimit cocone: a map `X ⟶ W` is the same as
a cocone on `F` with cone point `W`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant4a6ef7c998ce98465a1924edd09674fb640ff3abd8cb514c2f836fae3bc66f0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant4a6ef7c998ce98465a1924edd09674fb640ff3abd8cb514c2f836fae3bc66f0a.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3256c2b7fac4393fd775fada6fa248192d322bc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
