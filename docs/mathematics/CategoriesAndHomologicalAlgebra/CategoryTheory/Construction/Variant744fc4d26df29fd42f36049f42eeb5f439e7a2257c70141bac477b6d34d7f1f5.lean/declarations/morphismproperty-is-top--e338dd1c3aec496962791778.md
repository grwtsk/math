# morphismProperty_is_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c75a53b10e2632efdb31390c7a39724cff99a2ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/744fc4d26df29fd42f36049f42eeb5f439e7a2257c70141bac477b6d34d7f1f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:764af793-bf6c-f97d-81fc-a18eb20581c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f972a0f6-230b-af97-8351-8421ec80babe",
  "kind": "theorem",
  "lexical_name": "morphismProperty_is_top",
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
  "slug": "morphismproperty-is-top--e338dd1c3aec496962791778",
  "source": {
    "blob": "c75a53b10e2632efdb31390c7a39724cff99a2ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 232,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant744fc4d26df29fd42f36049f42eeb5f439e7a2257c70141bac477b6d34d7f1f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e338dd1c3aec496962791778e2cfa6af817f9ed98376f094f98ad5bde625e925",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant744fc4d26df29fd42f36049f42eeb5f439e7a2257c70141bac477b6d34d7f1f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f972a0f6-230b-af97-8351-8421ec80babe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem morphismProperty_is_top (P : MorphismProperty W.Localization)
    (hP₁ : ∀ ⦃X Y : C⦄ (f : X ⟶ Y), P (W.Q.map f))
    (hP₂ : ∀ ⦃X Y : C⦄ (w : X ⟶ Y) (hw : W w), P (winv w hw)) (hP₃ : P.StableUnderComposition) :
    P = ⊤ := by
  funext X Y f
  ext
  constructor
  · intro
    apply MorphismProperty.top_apply
  · intro
    let G : _ ⥤ W.Localization := Quotient.functor _
    haveI : Full G := Quotient.fullFunctor _
    suffices ∀ (X₁ X₂ : Paths (LocQuiver W)) (f : X₁ ⟶ X₂), P (G.map f) by
      rcases X with ⟨⟨X⟩⟩
      rcases Y with ⟨⟨Y⟩⟩
      simpa only [Functor.image_preimage] using this _ _ (G.preimage f)
    intros X₁ X₂ p
    induction' p with X₂ X₃ p g hp
    · simpa only [Functor.map_id] using hP₁ (𝟙 X₁.obj)
    · let p' : X₁ ⟶X₂ := p
      rw [show p'.cons g = p' ≫ Quiver.Hom.toPath g by rfl, G.map_comp]
      refine' hP₃ _ _ hp _
      rcases g with (g | ⟨g, hg⟩)
      · apply hP₁
      · apply hP₂
#align category_theory.localization.construction.morphism_property_is_top CategoryTheory.Localization.Construction.morphismProperty_is_top

/-- A `MorphismProperty` in `W.Localization` is satisfied by all
morphisms in the localized category if it contains the image of the
morphisms in the original category, if is stable under composition
and if the property is stable by passing to inverses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant744fc4d26df29fd42f36049f42eeb5f439e7a2257c70141bac477b6d34d7f1f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant744fc4d26df29fd42f36049f42eeb5f439e7a2257c70141bac477b6d34d7f1f5.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c75a53b10e2632efdb31390c7a39724cff99a2ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
