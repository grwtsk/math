# isColimitCoconeOfFiberwiseCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:946ecd086eb9063718a8333032cbc8114c03cfab0c393d1db69e917c4b453ad9",
  "kind": "def",
  "lexical_name": "isColimitCoconeOfFiberwiseCocone",
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
  "slug": "iscolimitcoconeoffiberwisecocone--e180831058220429dca3138d",
  "source": {
    "blob": "8b7fce224c7590c982ee74210221e8726437cdea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e180831058220429dca3138d49a0249bcac53ada70cd9675f27fa8b2fd6b59cf",
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

Occurrence: `declaration:946ecd086eb9063718a8333032cbc8114c03cfab0c393d1db69e917c4b453ad9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCoconeOfFiberwiseCocone {c : Cocone (fiberwiseColimit G)} (hc : IsColimit c) :
    IsColimit (coconeOfCoconeFiberwiseColimit c) where
  desc s := hc.desc <| Cocone.mk s.pt <|
    { app := fun X => colimit.desc (Grothendieck.ι F X ⋙ G) (s.whisker _) }
  uniq s m hm := hc.hom_ext <| fun X => by
    simp only [fiberwiseColimit_obj, Functor.const_obj_obj, fiberwiseColimit_map,
      Functor.const_obj_map, Cocone.whisker_pt, id_eq, Functor.comp_obj, Cocone.whisker_ι,
      whiskerLeft_app, NatTrans.comp_app, whiskerRight_app, Functor.associator_hom_app,
      whiskerLeft_twice, eq_mpr_eq_cast, IsColimit.fac]
    simp only [coconeOfCoconeFiberwiseColimit_pt, Functor.const_obj_obj,
      coconeOfCoconeFiberwiseColimit_ι_app, Category.assoc] at hm
    ext d
    simp [hm ⟨X, d⟩]

variable [HasColimit (fiberwiseColimit G)]

variable (G)

/-- We can infer that a functor `G : Grothendieck F ⥤ H`, with `F : C ⥤ Cat`, has a colimit from
the fact that each of its fibers has a colimit and that these fiberwise colimits, as a functor
`C ⥤ H` have a colimit. -/
@[local instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b7fce224c7590c982ee74210221e8726437cdea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
