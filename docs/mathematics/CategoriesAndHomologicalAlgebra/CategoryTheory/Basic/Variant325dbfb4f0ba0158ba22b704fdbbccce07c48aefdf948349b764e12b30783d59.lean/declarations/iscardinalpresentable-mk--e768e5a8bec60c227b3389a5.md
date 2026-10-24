# IsCardinalPresentable.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e455e2e8-a5bf-f414-d9f2-69e19fd4ef36",
  "kind": "lemma",
  "lexical_name": "IsCardinalPresentable.mk",
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
  "slug": "iscardinalpresentable-mk--e768e5a8bec60c227b3389a5",
  "source": {
    "blob": "9f2e0db8592b16b31b2d4b09843ea2f18729a283",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 250,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant325dbfb4f0ba0158ba22b704fdbbccce07c48aefdf948349b764e12b30783d59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e768e5a8bec60c227b3389a58719788382844123ecb93acc18d2e59c6f5e02a3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant325dbfb4f0ba0158ba22b704fdbbccce07c48aefdf948349b764e12b30783d59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e455e2e8-a5bf-f414-d9f2-69e19fd4ef36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCardinalPresentable.mk
    (hX : ∀ (J : Type w) [SmallCategory J] [IsCardinalFiltered J κ]
      (F : J ⥤ C) (c : Cocone F) (_ : IsColimit c),
      (∀ (g : X ⟶ c.pt), ∃ (j : J) (f : X ⟶ F.obj j), f ≫ c.ι.app j = g) ∧
      (∀ (j : J) (f₁ f₂ : X ⟶ F.obj j) (_ : f₁ ≫ c.ι.app j = f₂ ≫ c.ι.app j),
        ∃ (j' : J) (a : j ⟶ j'), f₁ ≫ F.map a = f₂ ≫ F.map a)) :
    IsCardinalPresentable X κ where
  preservesColimitOfShape J _ _ :=
    ⟨fun {F} ↦ ⟨fun {c} hc ↦ by
      have := isFiltered_of_isCardinalFiltered J κ
      rw [Types.isColimit_iff_coconeTypesIsColimit]
      refine ⟨fun f₁ f₂ hf ↦ ?_, fun g ↦ ?_⟩
      · obtain ⟨j₁, f₁, rfl⟩ := Functor.ιColimitType_jointly_surjective _ f₁
        obtain ⟨j₂, f₂, rfl⟩ := Functor.ιColimitType_jointly_surjective _ f₂
        dsimp at f₁ f₂ hf
        obtain ⟨j', a, ha⟩ := (hX J F c hc).2 _ (f₁ ≫ F.map (leftToMax j₁ j₂))
          (f₂ ≫ F.map (rightToMax j₁ j₂)) (by simpa)
        simp only [Category.assoc] at ha
        exact Functor.ιColimitType_eq_of_map_eq_map _ _ _
          (leftToMax j₁ j₂ ≫ a) (rightToMax j₁ j₂ ≫ a) (by simpa)
      · obtain ⟨j, f, rfl⟩ := (hX J F c hc).1 g
        exact ⟨Functor.ιColimitType _ j f, rfl⟩⟩⟩

section

variable {J : Type*} [Category* J] {D : J ⥤ C}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant325dbfb4f0ba0158ba22b704fdbbccce07c48aefdf948349b764e12b30783d59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant325dbfb4f0ba0158ba22b704fdbbccce07c48aefdf948349b764e12b30783d59.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f2e0db8592b16b31b2d4b09843ea2f18729a283` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
