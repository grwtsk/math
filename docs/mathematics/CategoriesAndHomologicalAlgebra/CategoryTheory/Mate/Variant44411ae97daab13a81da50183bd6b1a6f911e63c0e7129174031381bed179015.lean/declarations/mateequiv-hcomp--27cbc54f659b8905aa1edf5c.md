# mateEquiv_hcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e86d712-0712-6d45-3157-a80a0078a260",
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
  "slug": "mateequiv-hcomp--27cbc54f659b8905aa1edf5c",
  "source": {
    "blob": "eccb12c8b39c52d8af43220632ae6c439ceff644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 280,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27cbc54f659b8905aa1edf5cc54d7fe24df967b5edda5a6fa4a1d7a8aee48c07",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e86d712-0712-6d45-3157-a80a0078a260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–318.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eccb12c8b39c52d8af43220632ae6c439ceff644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
