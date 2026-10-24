# compatibilityUnit_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbc4b324-2c48-9d23-82cb-26e40e725a92",
  "kind": "lemma",
  "lexical_name": "compatibilityUnit_right",
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
  "slug": "compatibilityunit-right--8984014a11516b3ecc8c5093",
  "source": {
    "blob": "e145c5104e05c406ecda3b42145bc6954016fd23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8984014a11516b3ecc8c5093c539cfa43271925118efe51b0fed32c25405b57a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbc4b324-2c48-9d23-82cb-26e40e725a92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compatibilityUnit_right (h : CompatibilityUnit adj e₁ e₂) (Y : D) :
    e₂.inv.app Y = adj.unit.app _ ≫ G.map (e₁.hom.app _) ≫ G.map ((adj.counit.app _)⟦a⟧') := by
  have := h (G.obj Y)
  rw [← cancel_mono (e₂.inv.app _), assoc, assoc, Iso.hom_inv_id_app] at this
  erw [comp_id] at this
  rw [← assoc, ← this, assoc]; erw [← e₂.inv.naturality]
  rw [← cancel_mono (e₂.hom.app _)]
  simp only [Functor.comp_obj, Iso.inv_hom_id_app, Functor.id_obj, Functor.comp_map, assoc, comp_id,
    ← (shiftFunctor C a).map_comp, right_triangle_components, Functor.map_id]

set_option backward.defeqAttrib.useBackward true in
/-- Given an adjunction `adj : F ⊣ G`, `a` in `A` and commutation isomorphisms
`e₁ : shiftFunctor C a ⋙ F ≅ F ⋙ shiftFunctor D a` and
`e₂ : shiftFunctor D a ⋙ G ≅ G ⋙ shiftFunctor C a`, if `e₁` and `e₂` are compatible with the
counit of the adjunction `adj`, then we get a formula for `e₁.hom` in terms of `e₂`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantb175f6be111254fd891e58758e7f4ca481722c71e93f3d4071b954161b0d6b9a.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e145c5104e05c406ecda3b42145bc6954016fd23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
