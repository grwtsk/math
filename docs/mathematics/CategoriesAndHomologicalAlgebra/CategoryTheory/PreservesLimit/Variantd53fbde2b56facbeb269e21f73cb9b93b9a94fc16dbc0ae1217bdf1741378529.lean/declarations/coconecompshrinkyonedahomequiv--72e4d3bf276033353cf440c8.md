# coconeCompShrinkYonedaHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1536a95e8e8de00bdfa65239a3113b8f5eb0fe153e78806cbfeb3a8cf22b33c",
  "kind": "def",
  "lexical_name": "coconeCompShrinkYonedaHomEquiv",
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
  "slug": "coconecompshrinkyonedahomequiv--72e4d3bf276033353cf440c8",
  "source": {
    "blob": "e28cb4c9e10b26ead02a7a0158687e71b31666e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72e4d3bf276033353cf440c825db7932beb329784494e416e4beef112ab704b9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1536a95e8e8de00bdfa65239a3113b8f5eb0fe153e78806cbfeb3a8cf22b33c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coconeCompShrinkYonedaHomEquiv :
    (c'.pt ⟶ P) ≃ (F ⋙ P).sections where
  toFun f :=
    { val j := shrinkYonedaEquiv (c'.ι.app (op j) ≫ f)
      property {X X'} g := by
        dsimp
        rw [← dsimp% c'.w g.op, Category.assoc]
        conv_rhs => rw [shrinkYonedaEquiv_comp]
        rw [shrinkYonedaEquiv_shrinkYoneda_map]
        apply map_shrinkYonedaEquiv }
  invFun s := hc'.desc (Cocone.mk _
    { app j := shrinkYonedaEquiv.symm (s.val j.unop)
      naturality j₁ j₂ f := by
        rw [← s.property f.unop]
        dsimp
        rw [shrinkYonedaEquiv_symm_map, Category.comp_id] })
  left_inv f := hc'.hom_ext (by simp)
  right_inv u := by cat_disch

/-- Let `F : J ⥤ Cᵒᵖ` be a functor, `c'` a colimit cocone for `F.leftOp ⋙ shrinkYoneda.{w}`.
For any cone `c` for `F`, this is the canonical natural transformation
`c'.pt ⟶ shrinkYoneda.{w}.obj c.pt.unop`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e28cb4c9e10b26ead02a7a0158687e71b31666e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
