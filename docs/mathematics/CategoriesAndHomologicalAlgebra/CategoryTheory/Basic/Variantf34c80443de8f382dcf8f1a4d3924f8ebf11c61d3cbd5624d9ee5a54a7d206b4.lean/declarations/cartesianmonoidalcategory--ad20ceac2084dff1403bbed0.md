# CartesianMonoidalCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aebc2b74acab95ec28a95017ec07132c18dfda8f4b71aabd5f9cc8ba8fa17c9e",
  "kind": "class",
  "lexical_name": "CartesianMonoidalCategory",
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
  "slug": "cartesianmonoidalcategory--ad20ceac2084dff1403bbed0",
  "source": {
    "blob": "e4755b6c0d9448bab61b4bd942518c36b5071fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf34c80443de8f382dcf8f1a4d3924f8ebf11c61d3cbd5624d9ee5a54a7d206b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad20ceac2084dff1403bbed087967ef0275dfb39e029ffbc340a0981ac7b54b6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf34c80443de8f382dcf8f1a4d3924f8ebf11c61d3cbd5624d9ee5a54a7d206b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aebc2b74acab95ec28a95017ec07132c18dfda8f4b71aabd5f9cc8ba8fa17c9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CartesianMonoidalCategory (C : Type u) [Category.{v} C] extends MonoidalCategory C where
  /-- The tensor unit is a terminal object. -/
  isTerminalTensorUnit : IsTerminal (𝟙_ C)
  /-- The first projection from the product. -/
  fst (X Y : C) : X ⊗ Y ⟶ X
  /-- The second projection from the product. -/
  snd (X Y : C) : X ⊗ Y ⟶ Y
  /-- The monoidal product is the categorical product. -/
  tensorProductIsBinaryProduct (X Y : C) : IsLimit <| BinaryFan.mk (fst X Y) (snd X Y)
  fst_def (X Y : C) : fst X Y = X ◁ isTerminalTensorUnit.from Y ≫ (ρ_ X).hom := by aesop_cat
  snd_def (X Y : C) : snd X Y = isTerminalTensorUnit.from X ▷ Y ≫ (λ_ Y).hom := by aesop_cat

@[deprecated (since := "2025-05-15")] alias ChosenFiniteProducts := CartesianMonoidalCategory

namespace CartesianMonoidalCategory

variable {C : Type u} [Category.{v} C]

section OfChosenFiniteProducts
variable (𝒯 : LimitCone (Functor.empty.{0} C)) (ℬ : ∀ X Y : C, LimitCone (pair X Y))
  {X₁ X₂ X₃ Y₁ Y₂ Y₃ Z₁ Z₂ : C}

namespace ofChosenFiniteProducts

/-- Implementation of the tensor product for `CartesianMonoidalCategory.ofChosenFiniteProducts`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf34c80443de8f382dcf8f1a4d3924f8ebf11c61d3cbd5624d9ee5a54a7d206b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf34c80443de8f382dcf8f1a4d3924f8ebf11c61d3cbd5624d9ee5a54a7d206b4.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4755b6c0d9448bab61b4bd942518c36b5071fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
