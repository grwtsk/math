# homEquiv₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0a22efc9de916d518d2474d7c09c8e528bb00ee5acd12f4bcb884118cdb25f1",
  "kind": "def",
  "lexical_name": "homEquiv₂",
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
  "slug": "homequiv--e82dd1ca9d0b660fa7974a9a",
  "source": {
    "blob": "32177d8f4abf71f94ccb8a9b940fbaaac4b00fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 91,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e82dd1ca9d0b660fa7974a9a17561d321565a04675183d7d964700f1954805c6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0a22efc9de916d518d2474d7c09c8e528bb00ee5acd12f4bcb884118cdb25f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def homEquiv₂ {g : a ⟶ b} {h : a ⟶ c} : (g ≫ l ⟶ h) ≃ (g ⟶ h ≫ r) where
  toFun α := (ρ_ _).inv ≫ g ◁ adj.unit ≫ (α_ _ _ _).inv ≫ α ▷ r
  invFun γ := γ ▷ l ≫ (α_ _ _ _).hom ≫ h ◁ adj.counit ≫ (ρ_ _).hom
  left_inv α :=
    calc
      _ = 𝟙 _ ⊗≫ g ◁ adj.unit ▷ l ⊗≫ (α ▷ (r ≫ l) ≫ h ◁ adj.counit) ⊗≫ 𝟙 _ := by
        bicategory
      _ = 𝟙 _ ⊗≫ g ◁ leftZigzag adj.unit adj.counit ⊗≫ α := by
        rw [← whisker_exchange]
        bicategory
      _ = α := by
        rw [adj.left_triangle]
        bicategory
  right_inv γ :=
    calc
      _ = 𝟙 _ ⊗≫ (g ◁ adj.unit ≫ γ ▷ (l ≫ r)) ⊗≫ h ◁ adj.counit ▷ r ⊗≫ 𝟙 _ := by
        bicategory
      _ = 𝟙 _ ⊗≫ γ ⊗≫ h ◁ rightZigzag adj.unit adj.counit ⊗≫ 𝟙 _ := by
        rw [whisker_exchange]
        bicategory
      _ = γ := by
        rw [adj.right_triangle]
        bicategory

end Adjunction

section mateEquiv

section

variable {c d e f : B} {g : c ⟶ e} {h : d ⟶ f} {l₁ : c ⟶ d} {r₁ : d ⟶ c} {l₂ : e ⟶ f} {r₂ : f ⟶ e}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂)

/-- Suppose we have a square of 1-morphisms (where the top and bottom are adjunctions `l₁ ⊣ r₁`
and `l₂ ⊣ r₂` respectively).
```
      c ↔ d
    g ↓   ↓ h
      e ↔ f
```

Then we have a bijection between 2-morphisms `g ≫ l₂ ⟶ l₁ ≫ h` and
`r₁ ≫ g ⟶ h ≫ r₂`. This can be seen as a bijection of the 2-cells:

```
         l₁                  r₁
      c --→ d             c ←-- d
    g ↓  ↗  ↓ h         g ↓  ↘  ↓ h
      e --→ f             e ←-- f
         l₂                  r₂
```

Note that if one of the 2-morphisms is an iso, it does not imply the other is an iso.
-/
@[simps! -isSimp]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32177d8f4abf71f94ccb8a9b940fbaaac4b00fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
