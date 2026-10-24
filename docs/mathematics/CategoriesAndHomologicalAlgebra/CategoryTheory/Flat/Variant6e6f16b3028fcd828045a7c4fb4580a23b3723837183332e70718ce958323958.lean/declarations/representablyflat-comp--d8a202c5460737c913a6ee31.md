# RepresentablyFlat.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a9d9eeccb41b2631209c58e17fcb2196dae33c27870c587ce90f16d8092c4a7",
  "kind": "instance",
  "lexical_name": "RepresentablyFlat.comp",
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
  "slug": "representablyflat-comp--d8a202c5460737c913a6ee31",
  "source": {
    "blob": "48dabd82aa7b3be221ea572cf6bd92847b339d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8a202c5460737c913a6ee3171229918dfef850a79d972c234b3d43a64fab972",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a9d9eeccb41b2631209c58e17fcb2196dae33c27870c587ce90f16d8092c4a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance RepresentablyFlat.comp (F : C ⥤ D) (G : D ⥤ E) [RepresentablyFlat F]
    [RepresentablyFlat G] : RepresentablyFlat (F ⋙ G) := by
  constructor
  intro X
  have : Nonempty (StructuredArrow X (F ⋙ G)) := by
    have f₁ : StructuredArrow X G := Nonempty.some inferInstance
    have f₂ : StructuredArrow f₁.right F := Nonempty.some inferInstance
    exact ⟨StructuredArrow.mk (f₁.hom ≫ G.map f₂.hom)⟩
  suffices : IsCofilteredOrEmpty (StructuredArrow X (F ⋙ G))
  · constructor
  constructor
  · intro Y Z
    let W :=
      @IsCofiltered.min (StructuredArrow X G) _ _ (StructuredArrow.mk Y.hom)
        (StructuredArrow.mk Z.hom)
    let Y' : W ⟶ _ := IsCofiltered.minToLeft _ _
    let Z' : W ⟶ _ := IsCofiltered.minToRight _ _
    let W' :=
      @IsCofiltered.min (StructuredArrow W.right F) _ _ (StructuredArrow.mk Y'.right)
        (StructuredArrow.mk Z'.right)
    let Y'' : W' ⟶ _ := IsCofiltered.minToLeft _ _
    let Z'' : W' ⟶ _ := IsCofiltered.minToRight _ _
    use StructuredArrow.mk (W.hom ≫ G.map W'.hom)
    use StructuredArrow.homMk Y''.right (by simp [← G.map_comp])
    use StructuredArrow.homMk Z''.right (by simp [← G.map_comp])
  · intro Y Z f g
    let W :=
      @IsCofiltered.eq (StructuredArrow X G) _ _ (StructuredArrow.mk Y.hom)
        (StructuredArrow.mk Z.hom) (StructuredArrow.homMk (F.map f.right) (StructuredArrow.w f))
        (StructuredArrow.homMk (F.map g.right) (StructuredArrow.w g))
    let h : W ⟶ _ := IsCofiltered.eqHom _ _
    let h_cond : h ≫ _ = h ≫ _ := IsCofiltered.eq_condition _ _
    let W' :=
      @IsCofiltered.eq (StructuredArrow W.right F) _ _ (StructuredArrow.mk h.right)
        (StructuredArrow.mk (h.right ≫ F.map f.right)) (StructuredArrow.homMk f.right rfl)
        (StructuredArrow.homMk g.right (congr_arg CommaMorphism.right h_cond).symm)
    let h' : W' ⟶ _ := IsCofiltered.eqHom _ _
    let h'_cond : h' ≫ _ = h' ≫ _ := IsCofiltered.eq_condition _ _
    use StructuredArrow.mk (W.hom ≫ G.map W'.hom)
    use StructuredArrow.homMk h'.right (by simp [← G.map_comp])
    ext
    exact (congr_arg CommaMorphism.right h'_cond : _)
#align category_theory.representably_flat.comp CategoryTheory.RepresentablyFlat.comp

end RepresentablyFlat

section HasLimit

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₁} D]

attribute [local instance] hasFiniteLimits_of_hasFiniteLimits_of_size

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48dabd82aa7b3be221ea572cf6bd92847b339d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
