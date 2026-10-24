# Bicategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0b667b8565b9b208352e329965ad1598d2838c09f2aaee5b5c06c55192c2d64",
  "kind": "class",
  "lexical_name": "Bicategory",
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
  "slug": "bicategory--90cb53320460f5a29cbfa624",
  "source": {
    "blob": "526a6c295e8c96676060c0eb1ab7466e8394d87c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90cb53320460f5a29cbfa6242e1a78a16c41244ec06c3c409a009f8b30c91079",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0b667b8565b9b208352e329965ad1598d2838c09f2aaee5b5c06c55192c2d64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Bicategory (B : Type u) extends CategoryStruct.{v} B where
  -- category structure on the collection of 1-morphisms:
  homCategory : ∀ a b : B, Category.{w} (a ⟶ b) := by infer_instance
  -- left whiskering:
  whiskerLeft {a b c : B} (f : a ⟶ b) {g h : b ⟶ c} (η : g ⟶ h) : f ≫ g ⟶ f ≫ h
  -- right whiskering:
  whiskerRight {a b c : B} {f g : a ⟶ b} (η : f ⟶ g) (h : b ⟶ c) : f ≫ h ⟶ g ≫ h
  -- associator:
  associator {a b c d : B} (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d) : (f ≫ g) ≫ h ≅ f ≫ g ≫ h
  -- left unitor:
  leftUnitor {a b : B} (f : a ⟶ b) : 𝟙 a ≫ f ≅ f
  -- right unitor:
  rightUnitor {a b : B} (f : a ⟶ b) : f ≫ 𝟙 b ≅ f
  -- axioms for left whiskering:
  whiskerLeft_id : ∀ {a b c} (f : a ⟶ b) (g : b ⟶ c), whiskerLeft f (𝟙 g) = 𝟙 (f ≫ g) :=
    by aesop_cat
  whiskerLeft_comp :
    ∀ {a b c} (f : a ⟶ b) {g h i : b ⟶ c} (η : g ⟶ h) (θ : h ⟶ i),
      whiskerLeft f (η ≫ θ) = whiskerLeft f η ≫ whiskerLeft f θ := by
    aesop_cat
  id_whiskerLeft :
    ∀ {a b} {f g : a ⟶ b} (η : f ⟶ g),
      whiskerLeft (𝟙 a) η = (leftUnitor f).hom ≫ η ≫ (leftUnitor g).inv := by
    aesop_cat
  comp_whiskerLeft :
    ∀ {a b c d} (f : a ⟶ b) (g : b ⟶ c) {h h' : c ⟶ d} (η : h ⟶ h'),
      whiskerLeft (f ≫ g) η =
        (associator f g h).hom ≫ whiskerLeft f (whiskerLeft g η) ≫ (associator f g h').inv := by
    aesop_cat
  -- axioms for right whiskering:
  id_whiskerRight : ∀ {a b c} (f : a ⟶ b) (g : b ⟶ c), whiskerRight (𝟙 f) g = 𝟙 (f ≫ g) := by
    aesop_cat
  comp_whiskerRight :
    ∀ {a b c} {f g h : a ⟶ b} (η : f ⟶ g) (θ : g ⟶ h) (i : b ⟶ c),
      whiskerRight (η ≫ θ) i = whiskerRight η i ≫ whiskerRight θ i := by
    aesop_cat
  whiskerRight_id :
    ∀ {a b} {f g : a ⟶ b} (η : f ⟶ g),
      whiskerRight η (𝟙 b) = (rightUnitor f).hom ≫ η ≫ (rightUnitor g).inv := by
    aesop_cat
  whiskerRight_comp :
    ∀ {a b c d} {f f' : a ⟶ b} (η : f ⟶ f') (g : b ⟶ c) (h : c ⟶ d),
      whiskerRight η (g ≫ h) =
        (associator f g h).inv ≫ whiskerRight (whiskerRight η g) h ≫ (associator f' g h).hom := by
    aesop_cat
  -- associativity of whiskerings:
  whisker_assoc :
    ∀ {a b c d} (f : a ⟶ b) {g g' : b ⟶ c} (η : g ⟶ g') (h : c ⟶ d),
      whiskerRight (whiskerLeft f η) h =
        (associator f g h).hom ≫ whiskerLeft f (whiskerRight η h) ≫ (associator f g' h).inv := by
    aesop_cat
  -- exchange law of left and right whiskerings:
  whisker_exchange :
    ∀ {a b c} {f g : a ⟶ b} {h i : b ⟶ c} (η : f ⟶ g) (θ : h ⟶ i),
      whiskerLeft f θ ≫ whiskerRight η i = whiskerRight η h ≫ whiskerLeft g θ := by
    aesop_cat
  -- pentagon identity:
  pentagon :
    ∀ {a b c d e} (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d) (i : d ⟶ e),
      whiskerRight (associator f g h).hom i ≫
          (associator f (g ≫ h) i).hom ≫ whiskerLeft f (associator g h i).hom =
        (associator (f ≫ g) h i).hom ≫ (associator f g (h ≫ i)).hom := by
    aesop_cat
  -- triangle identity:
  triangle :
    ∀ {a b c} (f : a ⟶ b) (g : b ⟶ c),
      (associator f (𝟙 b) g).hom ≫ whiskerLeft f (leftUnitor g).hom
      = whiskerRight (rightUnitor f).hom g := by
    aesop_cat
#align category_theory.bicategory CategoryTheory.Bicategory
#align category_theory.bicategory.hom_category CategoryTheory.Bicategory.homCategory
#align category_theory.bicategory.whisker_left CategoryTheory.Bicategory.whiskerLeft
#align category_theory.bicategory.whisker_right CategoryTheory.Bicategory.whiskerRight
#align category_theory.bicategory.left_unitor CategoryTheory.Bicategory.leftUnitor
#align category_theory.bicategory.right_unitor CategoryTheory.Bicategory.rightUnitor
#align category_theory.bicategory.whisker_left_id' CategoryTheory.Bicategory.whiskerLeft_id
#align category_theory.bicategory.whisker_left_comp' CategoryTheory.Bicategory.whiskerLeft_comp
#align category_theory.bicategory.id_whisker_left' CategoryTheory.Bicategory.id_whiskerLeft
#align category_theory.bicategory.comp_whisker_left' CategoryTheory.Bicategory.comp_whiskerLeft
#align category_theory.bicategory.id_whisker_right' CategoryTheory.Bicategory.id_whiskerRight
#align category_theory.bicategory.comp_whisker_right' CategoryTheory.Bicategory.comp_whiskerRight
#align category_theory.bicategory.whisker_right_id' CategoryTheory.Bicategory.whiskerRight_id
#align category_theory.bicategory.whisker_right_comp' CategoryTheory.Bicategory.whiskerRight_comp
#align category_theory.bicategory.whisker_assoc' CategoryTheory.Bicategory.whisker_assoc
#align category_theory.bicategory.whisker_exchange' CategoryTheory.Bicategory.whisker_exchange
#align category_theory.bicategory.pentagon' CategoryTheory.Bicategory.pentagon
#align category_theory.bicategory.triangle' CategoryTheory.Bicategory.triangle

namespace Bicategory

scoped infixr:81 " ◁ " => Bicategory.whiskerLeft
scoped infixl:81 " ▷ " => Bicategory.whiskerRight
scoped notation "α_" => Bicategory.associator
scoped notation "λ_" => Bicategory.leftUnitor
scoped notation "ρ_" => Bicategory.rightUnitor

/-!
### Simp-normal form for 2-morphisms

Rewriting involving associators and unitors could be very complicated. We try to ease this
complexity by putting carefully chosen simp lemmas that rewrite any 2-morphisms into simp-normal
form defined below. Rewriting into simp-normal form is also useful when applying (forthcoming)
`coherence` tactic.

The simp-normal form of 2-morphisms is defined to be an expression that has the minimal number of
parentheses. More precisely,
1. it is a composition of 2-morphisms like `η₁ ≫ η₂ ≫ η₃ ≫ η₄ ≫ η₅` such that each `ηᵢ` is
  either a structural 2-morphisms (2-morphisms made up only of identities, associators, unitors)
  or non-structural 2-morphisms, and
2. each non-structural 2-morphism in the composition is of the form `f₁ ◁ f₂ ◁ f₃ ◁ η ▷ f₄ ▷ f₅`,
  where each `fᵢ` is a 1-morphism that is not the identity or a composite and `η` is a
  non-structural 2-morphisms that is also not the identity or a composite.

Note that `f₁ ◁ f₂ ◁ f₃ ◁ η ▷ f₄ ▷ f₅` is actually `f₁ ◁ (f₂ ◁ (f₃ ◁ ((η ▷ f₄) ▷ f₅)))`.
-/

attribute [instance] homCategory

attribute [reassoc]
  whiskerLeft_comp id_whiskerLeft comp_whiskerLeft comp_whiskerRight whiskerRight_id
  whiskerRight_comp whisker_assoc whisker_exchange

attribute [reassoc (attr := simp)] pentagon triangle
/-
The following simp attributes are put in order to rewrite any 2-morphisms into normal forms. There
are associators and unitors in the RHS in the several simp lemmas here (e.g. `id_whiskerLeft`),
which at first glance look more complicated than the LHS, but they will be eventually reduced by
the pentagon or the triangle identities, and more generally, (forthcoming) `coherence` tactic.
-/
attribute [simp]
  whiskerLeft_id whiskerLeft_comp id_whiskerLeft comp_whiskerLeft id_whiskerRight comp_whiskerRight
  whiskerRight_id whiskerRight_comp whisker_assoc


variable {B : Type u} [Bicategory.{w, v} B] {a b c d e : B}

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `526a6c295e8c96676060c0eb1ab7466e8394d87c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
