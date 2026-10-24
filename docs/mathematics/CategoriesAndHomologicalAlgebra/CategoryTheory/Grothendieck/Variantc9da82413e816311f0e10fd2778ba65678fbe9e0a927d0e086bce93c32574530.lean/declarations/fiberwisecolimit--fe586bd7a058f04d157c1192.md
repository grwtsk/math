# fiberwiseColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86b67e8e2faad8459603da2874e0bdbace05919285237e2b8c3dcec474144b87",
  "kind": "def",
  "lexical_name": "fiberwiseColimit",
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
  "slug": "fiberwisecolimit--fe586bd7a058f04d157c1192",
  "source": {
    "blob": "8b7fce224c7590c982ee74210221e8726437cdea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe586bd7a058f04d157c1192ea34e326a63dc811e37e641e93131d363b863a97",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86b67e8e2faad8459603da2874e0bdbace05919285237e2b8c3dcec474144b87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fiberwiseColimit : C ⥤ H where
  obj X := colimit (Grothendieck.ι F X ⋙ G)
  map {X Y} f := colimMap (whiskerRight (Grothendieck.ιNatTrans f) G ≫
    (Functor.associator _ _ _).hom) ≫ colimit.pre (Grothendieck.ι F Y ⋙ G) (F.map f)
  map_id X := by
    ext d
    simp only [Functor.comp_obj, Grothendieck.ιNatTrans, Grothendieck.ι_obj, ι_colimMap_assoc,
      NatTrans.comp_app, whiskerRight_app, Functor.associator_hom_app, Category.comp_id,
      colimit.ι_pre]
    conv_rhs => rw [← colimit.eqToHom_comp_ι (Grothendieck.ι F X ⋙ G)
      (j := (F.map (𝟙 X)).obj d) (by simp)]
    rw [← eqToHom_map G (by simp), Grothendieck.eqToHom_eq]
    rfl
  map_comp {X Y Z} f g := by
    ext d
    simp only [Functor.comp_obj, Grothendieck.ιNatTrans, ι_colimMap_assoc, NatTrans.comp_app,
      whiskerRight_app, Functor.associator_hom_app, Category.comp_id, colimit.ι_pre, Category.assoc,
      colimit.ι_pre_assoc]
    rw [← Category.assoc, ← G.map_comp]
    conv_rhs => rw [← colimit.eqToHom_comp_ι (Grothendieck.ι F Z ⋙ G)
      (j := (F.map (f ≫ g)).obj d) (by simp)]
    rw [← Category.assoc, ← eqToHom_map G (by simp), ← G.map_comp, Grothendieck.eqToHom_eq]
    congr 2
    fapply Grothendieck.ext
    · simp only [Cat.comp_obj, eqToHom_refl, Category.assoc, Grothendieck.comp_base,
        Category.comp_id]
    · simp only [Grothendieck.ι_obj, Cat.comp_obj, eqToHom_refl, Cat.id_obj,
        Grothendieck.comp_base, Category.comp_id, Grothendieck.comp_fiber, Functor.map_id]
      conv_rhs => enter [2, 1]; rw [eqToHom_map (F.map (𝟙 Z))]
      conv_rhs => rw [eqToHom_trans, eqToHom_trans]

variable (H) (F) in
/-- Similar to `colimit` and `colim`, taking fiberwise colimits is a functor
`(Grothendieck F ⥤ H) ⥤ (C ⥤ H)` between functor categories. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b7fce224c7590c982ee74210221e8726437cdea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
