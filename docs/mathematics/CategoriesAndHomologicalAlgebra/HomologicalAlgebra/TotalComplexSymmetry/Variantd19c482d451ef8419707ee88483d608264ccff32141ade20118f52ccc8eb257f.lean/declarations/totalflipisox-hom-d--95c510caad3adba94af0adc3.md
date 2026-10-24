# totalFlipIsoX_hom_D₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "055aafaffef7841a260aa6b466291349e483d268",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a51d7066-c8ee-1043-a7af-91a3134a2c5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0dac18ed-a27c-3604-871f-c5a2f46874f1",
  "kind": "lemma",
  "lexical_name": "totalFlipIsoX_hom_D₁",
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
  "slug": "totalflipisox-hom-d--95c510caad3adba94af0adc3",
  "source": {
    "blob": "055aafaffef7841a260aa6b466291349e483d268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95c510caad3adba94af0adc331bf22f7479504c78d3ae5b990ce0efdce3f0fea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dac18ed-a27c-3604-871f-c5a2f46874f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma totalFlipIsoX_hom_D₁ (j j' : J) :
    (K.totalFlipIsoX c j).hom ≫ K.D₁ c j j' =
      K.flip.D₂ c j j' ≫ (K.totalFlipIsoX c j').hom := by
  by_cases h₀ : c.Rel j j'
  · ext i₂ i₁ h₁
    dsimp [totalFlipIsoX]
    rw [ι_totalDesc_assoc, Linear.units_smul_comp, ι_D₁, ι_D₂_assoc]
    dsimp
    by_cases h₂ : c₁.Rel i₁ (c₁.next i₁)
    · have h₃ : ComplexShape.π c₂ c₁ c ⟨i₂, c₁.next i₁⟩ = j' := by
        rw [← ComplexShape.next_π₂ c₂ c i₂ h₂, h₁, c.next_eq' h₀]
      have h₄ : ComplexShape.π c₁ c₂ c ⟨c₁.next i₁, i₂⟩ = j' := by
        rw [← h₃, ComplexShape.π_symm c₁ c₂ c]
      rw [K.d₁_eq _ h₂ _ _ h₄, K.flip.d₂_eq _ _ h₂ _ h₃, Linear.units_smul_comp,
        assoc, ι_totalDesc, Linear.comp_units_smul, smul_smul, smul_smul,
        ComplexShape.σ_ε₁ c₂ c h₂ i₂]
      dsimp only [flip_X_X, flip_X_d]
    · rw [K.d₁_eq_zero _ _ _ _ h₂, K.flip.d₂_eq_zero _ _ _ _ h₂, smul_zero, zero_comp]
  · rw [K.D₁_shape _ _ _ h₀, K.flip.D₂_shape c _ _ h₀, zero_comp, comp_zero]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `055aafaffef7841a260aa6b466291349e483d268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
