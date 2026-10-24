# totalFlipIsoX_hom_D₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe400e6e-19e4-8b7b-8eee-7e910c1f5a3a",
  "kind": "lemma",
  "lexical_name": "totalFlipIsoX_hom_D₂",
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
  "slug": "totalflipisox-hom-d--2d2743fe44a144f56cd016d6",
  "source": {
    "blob": "399f31e17348b855463e48e5d8e8b1771d9f473e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 99,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Varianta9b81ff7d2fa64b1a2bd353f483c526bf05bbecc3a44878be4e313e41ab61d01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d2743fe44a144f56cd016d6f2115bdb4acb4fec05944b024054510461fdb895",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Varianta9b81ff7d2fa64b1a2bd353f483c526bf05bbecc3a44878be4e313e41ab61d01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe400e6e-19e4-8b7b-8eee-7e910c1f5a3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma totalFlipIsoX_hom_D₂ (j j' : J) :
    (K.totalFlipIsoX c j).hom ≫ K.D₂ c j j' =
      K.flip.D₁ c j j' ≫ (K.totalFlipIsoX c j').hom := by
  by_cases h₀ : c.Rel j j'
  · ext i₂ i₁ h₁
    dsimp [totalFlipIsoX]
    rw [ι_totalDesc_assoc, Linear.units_smul_comp, ι_D₂, ι_D₁_assoc]
    dsimp
    by_cases h₂ : c₂.Rel i₂ (c₂.next i₂)
    · have h₃ : ComplexShape.π c₂ c₁ c (ComplexShape.next c₂ i₂, i₁) = j' := by
        rw [← ComplexShape.next_π₁ c₁ c h₂ i₁, h₁, c.next_eq' h₀]
      have h₄ : ComplexShape.π c₁ c₂ c (i₁, ComplexShape.next c₂ i₂) = j' := by
        rw [← h₃, ComplexShape.π_symm c₁ c₂ c]
      rw [K.d₂_eq _ _ h₂ _ h₄, K.flip.d₁_eq _ h₂ _ _ h₃, Linear.units_smul_comp,
        assoc, ι_totalDesc, Linear.comp_units_smul, smul_smul, smul_smul,
        ComplexShape.σ_ε₂ c₁ c i₁ h₂]
      rfl
    · rw [K.d₂_eq_zero _ _ _ _ h₂, K.flip.d₁_eq_zero _ _ _ _ h₂, smul_zero, zero_comp]
  · rw [K.D₂_shape _ _ _ h₀, K.flip.D₁_shape c _ _ h₀, zero_comp, comp_zero]

/-- The symmetry isomorphism `K.flip.total c ≅ K.total c` of the total complex of a
bicomplex when we have `[TotalComplexShapeSymmetry c₁ c₂ c]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Varianta9b81ff7d2fa64b1a2bd353f483c526bf05bbecc3a44878be4e313e41ab61d01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Varianta9b81ff7d2fa64b1a2bd353f483c526bf05bbecc3a44878be4e313e41ab61d01.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `399f31e17348b855463e48e5d8e8b1771d9f473e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
