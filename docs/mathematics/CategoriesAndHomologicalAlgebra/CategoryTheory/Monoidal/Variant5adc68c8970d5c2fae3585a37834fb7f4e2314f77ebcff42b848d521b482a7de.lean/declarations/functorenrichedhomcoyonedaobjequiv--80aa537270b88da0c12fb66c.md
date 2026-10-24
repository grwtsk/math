# functorEnrichedHomCoyonedaObjEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e7f440b5951e1d0294ab7c36b89836c3aaa415610ba5bea39765c1a5ada5404",
  "kind": "def",
  "lexical_name": "functorEnrichedHomCoyonedaObjEquiv",
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
  "slug": "functorenrichedhomcoyonedaobjequiv--80aa537270b88da0c12fb66c",
  "source": {
    "blob": "d385b9f4c02ca417f151bf1b4dab94b9ef2590a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80aa537270b88da0c12fb66c0b11b78e6fb0d5143cfe8720af15eec7cb61d5aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e7f440b5951e1d0294ab7c36b89836c3aaa415610ba5bea39765c1a5ada5404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def functorEnrichedHomCoyonedaObjEquiv (M : A) (F G : Cᵒᵖ ⥤ A)
    [HasFunctorEnrichedHom A F G] (X : C) :
    (functorEnrichedHom A F G ⋙ coyoneda.obj (op M)).obj (op X) ≃
    (presheafHom (F ⊗ (Functor.const _).obj M) G).obj (op X) where
  toFun f :=
    { app j := MonoidalClosed.uncurry (f ≫ enrichedHomπ A _ _ (Under.mk j.unop.hom.op))
      naturality j j' φ := by
        dsimp
        rw [tensorHom_id, ← uncurry_natural_right, ← uncurry_pre_app, Category.assoc,
          Category.assoc, ← enrichedOrdinaryCategorySelf_eHomWhiskerRight,
          ← enrichedOrdinaryCategorySelf_eHomWhiskerLeft]
        congr 2
        exact (enrichedHom_condition A (Under.forget (op X) ⋙ F) (Under.forget (op X) ⋙ G)
          (i := Under.mk j.unop.hom.op) (j := Under.mk j'.unop.hom.op)
            (Under.homMk φ.unop.left.op (Quiver.Hom.unop_inj (by simp)))).symm }
  invFun g :=
    end_.lift (fun j ↦ MonoidalClosed.curry (g.app (op (Over.mk j.hom.unop)))) (fun j j' φ ↦ by
      dsimp
      rw [enrichedOrdinaryCategorySelf_eHomWhiskerRight,
        enrichedOrdinaryCategorySelf_eHomWhiskerLeft,
        curry_pre_app, ← curry_natural_right]
      congr 1
      let α : Over.mk j'.hom.unop ⟶ Over.mk j.hom.unop := Over.homMk φ.right.unop
        (Quiver.Hom.op_inj (by simp))
      simpa using (g.naturality α.op).symm )
  left_inv f := by
    dsimp
    ext j
    dsimp
    simp only [curry_uncurry, end_.lift_π]
    rfl
  right_inv g := by
    dsimp
    ext j
    dsimp
    simp only [uncurry_curry, end_.lift_π]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant5adc68c8970d5c2fae3585a37834fb7f4e2314f77ebcff42b848d521b482a7de.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d385b9f4c02ca417f151bf1b4dab94b9ef2590a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
