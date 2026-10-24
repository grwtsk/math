# InducedLawfulDayConvolutionMonoidalCategoryStructCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb236cc1e64f8a89f317007e94df79816debbc011b26242e0b4aae64bb87c0b6",
  "kind": "class",
  "lexical_name": "InducedLawfulDayConvolutionMonoidalCategoryStructCore",
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
  "slug": "inducedlawfuldayconvolutionmonoidalcategorystructcore--148c1b6b15c63d763da945f1",
  "source": {
    "blob": "4855534a709cd95d7105a597df2707345582ae2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1125,
    "line": 1057,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:148c1b6b15c63d763da945f19ed4cddc7432ff89b8f92e13374f342da04a9411",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb236cc1e64f8a89f317007e94df79816debbc011b26242e0b4aae64bb87c0b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1057–1125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class InducedLawfulDayConvolutionMonoidalCategoryStructCore
    (C : Type u₁) [Category.{v₁} C] (V : Type u₂) [Category.{v₂} V]
    [MonoidalCategory C] [MonoidalCategory V]
    (D : Type u₃) [Category.{v₃} D] where
  /-- A functor that interprets elements of `D` as functors `C ⥤ V`. -/
  ι (C V D) : D ⥤ C ⥤ V
  /-- The functor `ι` is fully faithful. -/
  fullyFaithulι : ι.FullyFaithful
  /-- Candidate function for the tensor product of objects. -/
  tensorObj (C) (V) : D → D → D
  /-- First candidate Day convolutions between objects.
  Note that the name here is primed as in fact, we will use the other fields
  in this class to produce convolutions with more controlled defeq properties. -/
  convolutions' : ∀ (d d' : D), DayConvolution (ι.obj d) (ι.obj d')
  /-- Isomorphisms that exhibits the essential image of `ι` as closed under day
  convolution. -/
  tensorObjIsoConvolution (C) (V) : ∀ (d d' : D),
    ι.obj (tensorObj d d') ≅ (convolutions' d d').convolution
  /-- Candidate component of units for the `LawfulDayConvolutionMonoidalCategoryStruct`,
  this defaults to the ones deduced by `convolutions'` and `tensorObjIsoConvolution`. -/
  convolutionUnitApp (V) :
      ∀ (d d' : D) (x y : C),
        (ι.obj d).obj x ⊗ (ι.obj d').obj y ⟶ (ι.obj (tensorObj d d')).obj (x ⊗ y) :=
    fun d d' x y =>
      (convolutions' d d').unit.app (x, y) ≫
        (tensorObjIsoConvolution d d').inv.app (x ⊗ y)
  /-- Lawfulness of `convolutionUnitApp`. -/
  convolutionUnitApp_eq (V) :
      ∀ (d d' : D) (x y : C),
        convolutionUnitApp d d' x y =
        (convolutions' d d').unit.app (x, y) ≫
          (tensorObjIsoConvolution d d').inv.app (x ⊗ y) := by
    cat_disch
  /-- Candidate `tensorHom`. This defaults to the one that corresponds to
  `DayConvolution.map` through `convolutions'`. -/
  tensorHom :
      ∀ {d₁ d₂ : D} {d₁' d₂' : D},
        (d₁ ⟶ d₂) → (d₁' ⟶ d₂') → (tensorObj d₁ d₁' ⟶ tensorObj d₂ d₂') :=
    fun {d₁ d₂} {d₁' d₂' : D} f f' => fullyFaithulι.preimage <|
      (tensorObjIsoConvolution d₁ d₁').hom ≫
        (DayConvolution.map (ι.map f) (ι.map f')) ≫ (tensorObjIsoConvolution d₂ d₂').inv
  /-- Lawfulness of `tensorHom`. -/
  tensorHom_eq :
      ∀ {d₁ d₂ : D} {d₁' d₂' : D} (f : d₁ ⟶ d₂) (f' : d₁' ⟶ d₂'),
        ι.map (tensorHom f f') = (tensorObjIsoConvolution d₁ d₁').hom ≫
          (DayConvolution.map (ι.map f) (ι.map f')) ≫
          (tensorObjIsoConvolution d₂ d₂').inv := by
    cat_disch
  /-- Candidate tensor unit. -/
  tensorUnit (C) (V) (D) : D
  /-- DayConvolutionUnit structure on the candidate. -/
  tensorUnitConvolutionUnit : DayConvolutionUnit (ι.obj tensorUnit)

namespace InducedLawfulDayConvolutionMonoidalCategoryStructCore

attribute [instance_reducible, local instance] tensorUnitConvolutionUnit

section

variable (D : Type u₃) [Category.{v₃} D]
    [InducedLawfulDayConvolutionMonoidalCategoryStructCore C V D]

variable {D} in
/-- With the data of chosen isomorphic objects to given day convolutions,
and provably equal unit maps through these isomorphisms,
we can transform a given family of Day convolutions to one with
convolutions definitionally equals to the given objects, and component of units
definitionally equal to the provided map family. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean#L1057).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4855534a709cd95d7105a597df2707345582ae2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
