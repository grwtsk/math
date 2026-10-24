# ExactPairing.tensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16f43b59d3d45a6fbc08daef7e22f18d7b4926fe451e032ddf6fe1ec5a077424",
  "kind": "instance",
  "lexical_name": "ExactPairing.tensor",
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
  "slug": "exactpairing-tensor--101fe5068639dd631fc88baa",
  "source": {
    "blob": "58f5c2b7b791d00e2309663a7051bb7cf105a492",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:101fe5068639dd631fc88baa3f21b15469be2f498862689b05b25446e535dda6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16f43b59d3d45a6fbc08daef7e22f18d7b4926fe451e032ddf6fe1ec5a077424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ExactPairing.tensor {X₁ X₂ Y₁ Y₂ : C} [ExactPairing X₁ Y₁] [ExactPairing X₂ Y₂] :
    ExactPairing (X₁ ⊗ X₂) (Y₂ ⊗ Y₁) where
  coevaluation' := η_ X₁ Y₁ ⊗≫ (X₁ ◁ η_ X₂ Y₂) ▷ Y₁ ⊗≫ 𝟙 _
  evaluation' := 𝟙 _ ⊗≫ Y₂ ◁ (ε_ X₁ Y₁ ▷ X₂) ⊗≫ ε_ X₂ Y₂
  coevaluation_evaluation' := by
    calc
      _ = (Y₂ ⊗ Y₁) ◁ η_ X₁ Y₁ ⊗≫
          (Y₂ ⊗ Y₁) ◁ (X₁ ◁ η_ X₂ Y₂) ▷ Y₁ ⊗≫
          (Y₂ ◁ (ε_ X₁ Y₁ ▷ X₂)) ▷ (Y₂ ⊗ Y₁) ⊗≫
          ε_ X₂ Y₂ ▷ (Y₂ ⊗ Y₁) := by monoidal
      -- Group η₂ and ε₁ so they compose with ≫ (both act on the Y₁ ⊗ X₁ factor):
      --
      --   Y₂  Y₁      ╭── X₁ ────────────╮
      --   │    │      │    ╭── X₂ ───╮   │
      --   │    │      │    │         │   │
      --   │    ╰──ε₁──╯    │         │   │
      --   │                │         │   │
      --   ╰────── ε₂ ──────╯         │   │
      --                              Y₂  Y₁
      --
      _ = (Y₂ ⊗ Y₁) ◁ η_ X₁ Y₁ ⊗≫
          Y₂ ◁ ((Y₁ ⊗ X₁) ◁ η_ X₂ Y₂ ≫ ε_ X₁ Y₁ ▷ (X₂ ⊗ Y₂)) ▷ Y₁ ⊗≫
          ε_ X₂ Y₂ ▷ (Y₂ ⊗ Y₁) := by monoidal
      -- Slide the η₂ cup past the ε₁ cap (whisker_exchange), separating the
      -- two zigzags into independent snakes:
      --
      --   Y₂   Y₁
      --   │    │   ╭─X₁──╮
      --   │    │   │     │
      --   │    ╰───╯     │       ← snake for (X₁, Y₁)
      --   │              │
      --   │  ╭─X₂──╮     │
      --   │  │     │     │
      --   ╰──╯     │     │       ← snake for (X₂, Y₂)
      --            Y₂    Y₁
      --
      _ = (Y₂ ⊗ Y₁) ◁ η_ X₁ Y₁ ⊗≫
          Y₂ ◁ (ε_ X₁ Y₁ ▷ (𝟙_ C) ≫ (𝟙_ C) ◁ η_ X₂ Y₂) ▷ Y₁ ⊗≫
          ε_ X₂ Y₂ ▷ (Y₂ ⊗ Y₁) := by
        rw [whisker_exchange]
      -- Separate into two snakes and cancel each.
      _ = 𝟙 _ ⊗≫ Y₂ ◁ (Y₁ ◁ η_ X₁ Y₁ ⊗≫ ε_ X₁ Y₁ ▷ Y₁) ⊗≫
          (Y₂ ◁ η_ X₂ Y₂ ⊗≫ ε_ X₂ Y₂ ▷ Y₂) ▷ Y₁ ⊗≫ 𝟙 _ := by monoidal
      _ = _ := by rw [coevaluation_evaluation'', coevaluation_evaluation'']; monoidal
  evaluation_coevaluation' := by
    calc
      _ = η_ X₁ Y₁ ▷ (X₁ ⊗ X₂) ⊗≫
          (X₁ ◁ η_ X₂ Y₂) ▷ (Y₁ ⊗ X₁ ⊗ X₂) ⊗≫
          (X₁ ⊗ X₂) ◁ (Y₂ ◁ ε_ X₁ Y₁ ▷ X₂) ⊗≫
          (X₁ ⊗ X₂) ◁ ε_ X₂ Y₂ := by monoidal
      -- Group η₂ and ε₁ so they compose with ≫:
      --
      --   ╭── Y₁ ────────────╮       X₁   X₂
      --   │    ╭── Y₂ ───╮   │       │    │
      --   │    │         │   │       │    │
      --   │    │         │   ╰──ε₁───╯    │
      --   │    │         │                │
      --   │    │         ╰──────── ε₂ ────╯
      --   X₁   X₂
      --
      _ = η_ X₁ Y₁ ▷ (X₁ ⊗ X₂) ⊗≫
          X₁ ◁ (η_ X₂ Y₂ ▷ (Y₁ ⊗ X₁) ≫ (X₂ ⊗ Y₂) ◁ ε_ X₁ Y₁) ▷ X₂ ⊗≫
          (X₁ ⊗ X₂) ◁ ε_ X₂ Y₂ := by monoidal
      -- Slide the ε₁ cap past the η₂ cup (← whisker_exchange), separating the
      -- two zigzags into independent snakes:
      --
      --                 X₁   X₂
      --   ╭──Y₁──╮      │    │
      --   │      │      │    │
      --   │      ╰──────╯    │       ← snake for (X₁, Y₁)
      --   │                  │
      --   │   ╭──Y₂──╮       │
      --   │   │      │       │
      --   │   │      ╰───────╯       ← snake for (X₂, Y₂)
      --   X₁  X₂
      --
      _ = η_ X₁ Y₁ ▷ (X₁ ⊗ X₂) ⊗≫
          X₁ ◁ ((𝟙_ C) ◁ ε_ X₁ Y₁ ≫ η_ X₂ Y₂ ▷ (𝟙_ C)) ▷ X₂ ⊗≫
          (X₁ ⊗ X₂) ◁ ε_ X₂ Y₂ := by
        rw [← whisker_exchange]
      -- Separate into two snakes and cancel each.
      _ = 𝟙 _ ⊗≫ (η_ X₁ Y₁ ▷ X₁ ⊗≫ X₁ ◁ ε_ X₁ Y₁) ▷ X₂ ⊗≫
          X₁ ◁ (η_ X₂ Y₂ ▷ X₂ ⊗≫ X₂ ◁ ε_ X₂ Y₂) ⊗≫ 𝟙 _ := by monoidal
      _ = _ := by rw [evaluation_coevaluation'', evaluation_coevaluation'']; monoidal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58f5c2b7b791d00e2309663a7051bb7cf105a492` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
