# Hom.inductionOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d2a3e38-a1dc-f772-aff4-067640a51eff",
  "kind": "theorem",
  "lexical_name": "Hom.inductionOn",
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
  "slug": "hom-inductionon--c7c0d5aa7710f4db9ae7ffef",
  "source": {
    "blob": "7f09fb8d8108b1a00d9d870181a2e15a44485856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 255,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant212a4f21db76727fb4003ccec1ba332b6d0564be0f806a98213cf26db7893915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7c0d5aa7710f4db9ae7ffef010b887ff777e19eee75243f054ad2e4036afbc1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant212a4f21db76727fb4003ccec1ba332b6d0564be0f806a98213cf26db7893915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d2a3e38-a1dc-f772-aff4-067640a51eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Hom.inductionOn {motive : {X Y : F C} → (X ⟶ Y) → Prop} {X Y : F C} (t : X ⟶ Y)
    (id : (X : F C) → motive (𝟙 X))
    (α_hom : (X Y Z : F C) → motive (α_ X Y Z).hom)
    (α_inv : (X Y Z : F C) → motive (α_ X Y Z).inv)
    (l_hom : (X : F C) → motive (λ_ X).hom)
    (l_inv : (X : F C) → motive (λ_ X).inv)
    (ρ_hom : (X : F C) → motive (ρ_ X).hom)
    (ρ_inv : (X : F C) → motive (ρ_ X).inv)
    (comp : {X Y Z : F C} → (f : X ⟶ Y) → (g : Y ⟶ Z) → motive f → motive g → motive (f ≫ g))
    (whiskerLeft : (X : F C) → {Y Z : F C} → (f : Y ⟶ Z) → motive f → motive (X ◁ f))
    (whiskerRight : {X Y : F C} → (f : X ⟶ Y) → (Z : F C) → motive f → motive (f ▷ Z)) :
    motive t := by
  apply Quotient.inductionOn
  intro f
  induction f with
  | id X => exact id X
  | α_hom X Y Z => exact α_hom X Y Z
  | α_inv X Y Z => exact α_inv X Y Z
  | l_hom X => exact l_hom X
  | l_inv X => exact l_inv X
  | ρ_hom X => exact ρ_hom X
  | ρ_inv X => exact ρ_inv X
  | comp f g hf hg => exact comp _ _ (hf ⟦f⟧) (hg ⟦g⟧)
  | whiskerLeft X f hf => exact whiskerLeft X _ (hf ⟦f⟧)
  | whiskerRight f X hf => exact whiskerRight _ X (hf ⟦f⟧)
  | @tensor W X Y Z f g hf hg =>
      have : homMk f ⊗ homMk g = homMk f ▷ X ≫ Y ◁ homMk g :=
        Quotient.sound (HomEquiv.tensorHom_def f g)
      change motive (homMk f ⊗ homMk g)
      rw [this]
      exact comp _ _ (whiskerRight _ _ (hf ⟦f⟧)) (whiskerLeft _ _ (hg ⟦g⟧))

section Functor

variable {D : Type u'} [Category.{v'} D] [MonoidalCategory D] (f : C → D)

/-- Auxiliary definition for `free_monoidal_category.project`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant212a4f21db76727fb4003ccec1ba332b6d0564be0f806a98213cf26db7893915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant212a4f21db76727fb4003ccec1ba332b6d0564be0f806a98213cf26db7893915.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f09fb8d8108b1a00d9d870181a2e15a44485856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
