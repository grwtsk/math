# isCardinalPresentable_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3e42036-4487-a4bf-03ec-cbcecabbe670",
  "kind": "lemma",
  "lexical_name": "isCardinalPresentable_mk",
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
  "slug": "iscardinalpresentable-mk--2c949e093f389f4702ae1ff2",
  "source": {
    "blob": "e236b1ee32fcb3a431bb977f90a0eeedbda6db35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb5b44920da24a21b4ab4a7eb069ff5b7e4407afacbba76205864e76a9b5dff1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c949e093f389f4702ae1ff2efbb5dc7f02033b249644a69225dcee70e3116f3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb5b44920da24a21b4ab4a7eb069ff5b7e4407afacbba76205864e76a9b5dff1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3e42036-4487-a4bf-03ec-cbcecabbe670`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalPresentable_mk {X₁ : C₁} {X₂ : C₂}
    [HasCardinalFilteredColimits C₁ κ] [HasCardinalFilteredColimits C₂ κ]
    [F₁.IsCardinalAccessible κ] [F₂.IsCardinalAccessible κ]
    [IsCardinalPresentable X₁ κ] [IsCardinalPresentable X₂ κ]
    [F₁.PreservesCardinalPresentable κ] (f : F₁.obj X₁ ⟶ F₂.obj X₂) :
    IsCardinalPresentable (Comma.mk _ _ f) κ :=
  .mk (fun J _ _ G c hc ↦ by
    have := isFiltered_of_isCardinalFiltered J κ
    have := HasCardinalFilteredColimits.hasColimitsOfShape C₁ κ J
    have := HasCardinalFilteredColimits.hasColimitsOfShape C₂ κ J
    have := Functor.preservesColimitsOfShape_of_isCardinalAccessible F₁ κ J
    have := Functor.preservesColimitsOfShape_of_isCardinalAccessible F₂ κ J
    refine ⟨fun g ↦ ?_, fun j f₁ f₂ hf ↦ ?_⟩
    · /- We need to show that any morphism `g : Comma.mk _ _ f ⟶ c.pt`
      lifts as a morphism `Comma.mk _ _ f ⟶ G.obj j` for a suitable `j`.
      By using that `X₁` and `X₂` are `κ`-presentable, we start by lifting
      the maps `g.left` and `g.right` as `f₁ : X₁ ⟶ (G.obj j).left` and
      `f₂ : X₂ ⟶ (G.obj j).right`. -/
      obtain ⟨j, f₁, f₂, hf₁, hf₂⟩ :
          ∃ (j : J) (f₁ : X₁ ⟶ (G.obj j).left) (f₂ : X₂ ⟶ (G.obj j).right),
            f₁ ≫ (c.ι.app j).left = g.left ∧ f₂ ≫ (c.ι.app j).right = g.right := by
        obtain ⟨j₁, f₁, hf₁⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ
          (isColimitOfPreserves (fst _ _) hc) g.left
        obtain ⟨j₂, f₂, hf₂⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ
          (isColimitOfPreserves (snd _ _) hc) g.right
        dsimp at f₁ f₂ hf₁ hf₂
        refine ⟨max j₁ j₂, f₁ ≫ (G.map (leftToMax j₁ j₂)).left,
          f₂ ≫ (G.map (rightToMax j₁ j₂)).right, ?_, ?_⟩
        · rw [Category.assoc, ← hf₁, ← Comma.comp_left, Cocone.w]
        · rw [Category.assoc, ← hf₂, ← Comma.comp_right, Cocone.w]
      /- Replacing `j` by a "larger" `j'` (i.e. using a morphism `j ⟶ j'`),
      we may obtain a commutative square. This uses that `F₁.obj X₁`
      is `κ`-presentable. -/
      obtain ⟨j', a, ha⟩ := IsCardinalPresentable.exists_eq_of_isColimit'
        κ (isColimitOfPreserves (snd _ _ ⋙ F₂) hc)
        (F₁.map f₁ ≫ (G.obj j).hom) (f ≫ F₂.map f₂) (by
          dsimp
          simp only [Category.assoc, ← Functor.map_comp, hf₂,
            ← (c.ι.app j).w, Functor.const_obj_obj,
            ← Functor.map_comp_assoc, hf₁, g.w])
      refine ⟨j', { left := f₁ ≫ (G.map a).left, right := f₂ ≫ (G.map a).right }, ?_⟩
      ext
      · dsimp
        simp [← hf₁, ← Comma.comp_left]
      · dsimp
        simp [← hf₂, ← Comma.comp_right]
    · /- We need to show that two morphisms `f₁` and `f₂` in `Comma.mk _ _ f ⟶ G.obj j`
      which become equal after postcomposing with `G.obj j ⟶ c.pt` also become equal
      after postcomposing with `G.obj j ⟶ G.obj j'` for a suitable map `j ⟶ j'`.
      The proof proceeds by considering separately the left and the right parts
      of these morphisms in the comma category. -/
      obtain ⟨j₁, a, ha⟩ := IsCardinalPresentable.exists_eq_of_isColimit' κ
        (isColimitOfPreserves (fst _ _) hc) f₁.left f₂.left ((fst _ _).congr_map hf)
      obtain ⟨j₂, b, hb⟩ := IsCardinalPresentable.exists_eq_of_isColimit' κ
        (isColimitOfPreserves (snd _ _) hc) f₁.right f₂.right ((snd _ _).congr_map hf)
      dsimp at ha hb
      obtain ⟨j', a', b', h⟩ := IsFiltered.span a b
      refine ⟨j', a ≫ a', ?_⟩
      ext
      · simp [reassoc_of% ha]
      · simp [h, reassoc_of% hb])

/-- The property of objects in `Comma F₁ F₂` which consists of
morphisms `F₁.obj X₁ ⟶ F₂.obj X₂` where both `X₁` abd `X₂` are `κ`-presentable.
When both `F₁` and `F₂` are `κ`-accessible functors (between `κ`-accessible categories)
and `F₁` preserves `κ`-presentable objects, we show that this property of objects
coincides with the `κ`-presentable objects of `Comma F₁ F₂`,
see the lemma `Comma.isCardinalPresentable_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb5b44920da24a21b4ab4a7eb069ff5b7e4407afacbba76205864e76a9b5dff1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb5b44920da24a21b4ab4a7eb069ff5b7e4407afacbba76205864e76a9b5dff1b.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e236b1ee32fcb3a431bb977f90a0eeedbda6db35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
