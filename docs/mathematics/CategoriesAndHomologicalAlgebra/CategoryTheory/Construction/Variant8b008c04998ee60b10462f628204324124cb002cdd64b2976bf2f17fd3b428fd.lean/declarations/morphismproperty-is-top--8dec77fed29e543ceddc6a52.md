# morphismProperty_is_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:946729d6-cadc-4dde-c1d3-0f43755f1b00",
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
  "slug": "morphismproperty-is-top--8dec77fed29e543ceddc6a52",
  "source": {
    "blob": "a39d0c8fd608a75eae797d0526e0020ee5d2a66f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant8b008c04998ee60b10462f628204324124cb002cdd64b2976bf2f17fd3b428fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dec77fed29e543ceddc6a52895862aaa1bceffecedf99ea1d2bd98b21931ab1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant8b008c04998ee60b10462f628204324124cb002cdd64b2976bf2f17fd3b428fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:946729d6-cadc-4dde-c1d3-0f43755f1b00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem morphismProperty_is_top (P : MorphismProperty W.Localization)
    [P.IsStableUnderComposition] (hP₁ : ∀ ⦃X Y : C⦄ (f : X ⟶ Y), P (W.Q.map f))
    (hP₂ : ∀ ⦃X Y : C⦄ (w : X ⟶ Y) (hw : W w), P (wInv w hw)) :
    P = ⊤ := by
  funext X Y f
  ext
  constructor
  · intro
    apply MorphismProperty.top_apply
  · intro
    let G : _ ⥤ W.Localization := Quotient.functor _
    haveI : G.Full := Quotient.full_functor _
    suffices ∀ (X₁ X₂ : Paths (LocQuiver W)) (f : X₁ ⟶ X₂), P (G.map f) by
      rcases X with ⟨⟨X⟩⟩
      rcases Y with ⟨⟨Y⟩⟩
      simpa only [Functor.map_preimage] using this _ _ (G.preimage f)
    intros X₁ X₂ p
    induction p with
    | nil => simpa only [Functor.map_id] using hP₁ (𝟙 X₁.obj)
    | @cons X₂ X₃ p g hp =>
      let p' : X₁ ⟶X₂ := p
      rw [show p'.cons g = p' ≫ Quiver.Hom.toPath g by rfl, G.map_comp]
      refine P.comp_mem _ _ hp ?_
      rcases g with (g | ⟨g, hg⟩)
      · apply hP₁
      · apply hP₂

/-- A `MorphismProperty` in `W.Localization` is satisfied by all
morphisms in the localized category if it contains the image of the
morphisms in the original category, if is stable under composition
and if the property is stable by passing to inverses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant8b008c04998ee60b10462f628204324124cb002cdd64b2976bf2f17fd3b428fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant8b008c04998ee60b10462f628204324124cb002cdd64b2976bf2f17fd3b428fd.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a39d0c8fd608a75eae797d0526e0020ee5d2a66f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
