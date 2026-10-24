# mateEquiv_hcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32177d8f4abf71f94ccb8a9b940fbaaac4b00fd7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6af77b4-4891-f2d8-50c9-51ae3d104a86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36d591d0-8b87-6b70-65ab-9355ce2529f4",
  "kind": "theorem",
  "lexical_name": "mateEquiv_hcomp",
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
  "slug": "mateequiv-hcomp--69d32e1ed3f6cd82b1d88684",
  "source": {
    "blob": "32177d8f4abf71f94ccb8a9b940fbaaac4b00fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 272,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69d32e1ed3f6cd82b1d886847c75a1cf03996f2e741cce95da4e7e2061abebbb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36d591d0-8b87-6b70-65ab-9355ce2529f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mateEquiv_hcomp (α : g ≫ l₂ ⟶ l₁ ≫ h) (β : h ≫ l₄ ⟶ l₃ ≫ k) :
    (mateEquiv (adj₁.comp adj₃) (adj₂.comp adj₄)) (leftAdjointSquare.hcomp α β) =
      rightAdjointSquare.hcomp (mateEquiv adj₁ adj₂ α) (mateEquiv adj₃ adj₄ β) := by
  simp only [mateEquiv_apply']
  dsimp [leftAdjointSquare.hcomp, rightAdjointSquare.hcomp]
  calc
    _ = 𝟙 _ ⊗≫ r₃ ◁ r₁ ◁ g ◁ adj₂.unit ⊗≫
          r₃ ◁ r₁ ◁ ((g ≫ l₂) ◁ adj₄.unit ≫ α ▷ (l₄ ≫ r₄)) ▷ r₂ ⊗≫
            r₃ ◁ ((r₁ ≫ l₁) ◁ β ≫ adj₁.counit ▷ (l₃ ≫ k)) ▷ r₄ ▷ r₂ ⊗≫
              adj₃.counit ▷ k ▷ r₄ ▷ r₂ ⊗≫ 𝟙 _ := by
      bicategory
    _ = 𝟙 _ ⊗≫ r₃ ◁ r₁ ◁ g ◁ adj₂.unit ⊗≫ r₃ ◁ r₁ ◁ α ▷ r₂ ⊗≫
          r₃ ◁ ((r₁ ≫ l₁) ◁ h ◁ adj₄.unit ≫ adj₁.counit ▷ (h ≫ l₄ ≫ r₄)) ▷ r₂ ⊗≫
            r₃ ◁ β ▷ r₄ ▷ r₂ ⊗≫ adj₃.counit ▷ k ▷ r₄ ▷ r₂ ⊗≫ 𝟙 _ := by
      rw [whisker_exchange, whisker_exchange]
      bicategory
    _ = _ := by
      rw [whisker_exchange]
      bicategory

end mateEquivHComp

section mateEquivSquareComp

variable {a b c d e f x y z : B}
variable {g₁ : a ⟶ d} {h₁ : b ⟶ e} {k₁ : c ⟶ f} {g₂ : d ⟶ x} {h₂ : e ⟶ y} {k₂ : f ⟶ z}
variable {l₁ : a ⟶ b} {r₁ : b ⟶ a} {l₂ : b ⟶ c} {r₂ : c ⟶ b} {l₃ : d ⟶ e} {r₃ : e ⟶ d}
variable {l₄ : e ⟶ f} {r₄ : f ⟶ e} {l₅ : x ⟶ y} {r₅ : y ⟶ x} {l₆ : y ⟶ z} {r₆ : z ⟶ y}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂) (adj₃ : l₃ ⊣ r₃)
variable (adj₄ : l₄ ⊣ r₄) (adj₅ : l₅ ⊣ r₅) (adj₆ : l₆ ⊣ r₆)

section leftAdjointSquare.comp

variable (α : g₁ ≫ l₃ ⟶ l₁ ≫ h₁) (β : h₁ ≫ l₄ ⟶ l₂ ≫ k₁)
variable (γ : g₂ ≫ l₅ ⟶ l₃ ≫ h₂) (δ : h₂ ≫ l₆ ⟶ l₄ ≫ k₂)

/-- A square of squares between left adjoints can be composed by iterating vertical and horizontal
composition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32177d8f4abf71f94ccb8a9b940fbaaac4b00fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
