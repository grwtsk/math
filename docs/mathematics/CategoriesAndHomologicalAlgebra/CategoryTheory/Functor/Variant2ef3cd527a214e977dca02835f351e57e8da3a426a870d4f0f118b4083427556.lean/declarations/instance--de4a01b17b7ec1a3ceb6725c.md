# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc0b3662b66d894d49c7c4c037f7f6fe21f1ed7634c1bfc6a886a286c0054aff",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--de4a01b17b7ec1a3ceb6725c",
  "source": {
    "blob": "68bb750593486128ed6d43177bb525afb4f7c13c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 696,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2ef3cd527a214e977dca02835f351e57e8da3a426a870d4f0f118b4083427556.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de4a01b17b7ec1a3ceb6725cd1eb4c33922b3ac376221e34fe3eb891161010cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2ef3cd527a214e977dca02835f351e57e8da3a426a870d4f0f118b4083427556.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc0b3662b66d894d49c7c4c037f7f6fe21f1ed7634c1bfc6a886a286c0054aff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (prod F G).LaxMonoidal where
  ε' := (ε F, ε G)
  μ' X Y := (μ F _ _, μ G _ _)
  μ'_natural_left _ _ := by
    ext
    all_goals
      simp only [prod_obj, prodMonoidal_tensorObj, prod_map,
        prodMonoidal_whiskerRight, prod_comp, μ_natural_left]
  μ'_natural_right _ _ := by
    ext
    all_goals
      simp only [prod_obj, prodMonoidal_tensorObj, prod_map, prodMonoidal_whiskerLeft, prod_comp,
        μ_natural_right]
  associativity' _ _ _ := by
    ext
    all_goals
      simp only [prod_obj, prodMonoidal_tensorObj, prodMonoidal_whiskerRight,
        prodMonoidal_associator, Iso.prod_hom, prod_map, prod_comp,
        LaxMonoidal.associativity, prodMonoidal_whiskerLeft]
  left_unitality' _ := by
    ext
    all_goals
      simp only [prodMonoidal_tensorUnit, prod_obj, prodMonoidal_tensorObj,
        prodMonoidal_leftUnitor_hom_fst, LaxMonoidal.left_unitality, prodMonoidal_whiskerRight,
        prod_map, prodMonoidal_leftUnitor_hom_snd, prod_comp]
  right_unitality' _ := by
    ext
    all_goals
      simp only [prod_obj, prodMonoidal_tensorUnit, prodMonoidal_tensorObj,
        prodMonoidal_rightUnitor_hom_fst, LaxMonoidal.right_unitality, prodMonoidal_whiskerLeft,
        prod_map, prodMonoidal_rightUnitor_hom_snd, prod_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2ef3cd527a214e977dca02835f351e57e8da3a426a870d4f0f118b4083427556.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2ef3cd527a214e977dca02835f351e57e8da3a426a870d4f0f118b4083427556.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68bb750593486128ed6d43177bb525afb4f7c13c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
