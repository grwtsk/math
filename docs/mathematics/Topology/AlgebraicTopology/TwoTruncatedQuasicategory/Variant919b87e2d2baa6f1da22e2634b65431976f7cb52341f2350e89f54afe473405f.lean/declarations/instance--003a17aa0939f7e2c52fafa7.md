# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6e4bd285e7ead5f5fdd038d2c4e6fb14abfbe0a0c2447a4013b072125387274",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--003a17aa0939f7e2c52fafa7",
  "source": {
    "blob": "2a19a4b33088ab8cbfaac74841f1b6c040cf2b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 27,
    "path": "GRWTSK/Topology/AlgebraicTopology/TwoTruncatedQuasicategory/Variant919b87e2d2baa6f1da22e2634b65431976f7cb52341f2350e89f54afe473405f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:003a17aa0939f7e2c52fafa7fbe195226f918b5404464267f7e62e2d9c959a5c",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/TwoTruncatedQuasicategory/Variant919b87e2d2baa6f1da22e2634b65431976f7cb52341f2350e89f54afe473405f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6e4bd285e7ead5f5fdd038d2c4e6fb14abfbe0a0c2447a4013b072125387274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (X : SSet.{u}) [X.Quasicategory] :
    ((truncation 2).obj X).Quasicategory₂ where
  fill21 {x₀ : X _⦋0⦌} {x₁ : X _⦋0⦌} {x₂ : X _⦋0⦌} (e₀₁ : Edge x₀ x₁) (e₁₂ : Edge x₁ x₂) := by
    change Nonempty ((e₀₂ : Edge x₀ x₂) × Edge.CompStruct e₀₁ e₁₂ e₀₂)
    obtain ⟨σ, hσ₁, hσ₂⟩ :=
      horn₂₁.isPushout.exists_desc (yonedaEquiv.symm e₀₁.edge)
        (yonedaEquiv.symm e₁₂.edge) (by simp)
    obtain ⟨s, hs⟩ := Quasicategory.hornFilling (by simp) (by simp) σ
    have hs₀ : stdSimplex.δ 0 ≫ s = yonedaEquiv.symm e₁₂.edge := by
      simp [← hσ₂, hs]
    have hs₂ : stdSimplex.δ 2 ≫ s = yonedaEquiv.symm e₀₁.edge := by
      simp [← hσ₁, hs]
    obtain ⟨s, rfl⟩ := yonedaEquiv.symm.surjective s
    refine ⟨Edge.mk (X.δ 1 s) (yonedaEquiv.symm.injective ?_) (yonedaEquiv.symm.injective ?_),
      Edge.CompStruct.mk s
        (yonedaEquiv.symm.injective (by simp [← hs₂, stdSimplex.δ_comp_yonedaEquiv_symm]))
        (yonedaEquiv.symm.injective (by simp [← hs₀, stdSimplex.δ_comp_yonedaEquiv_symm]))⟩
    · simp [← stdSimplex.δ_comp_yonedaEquiv_symm,
        dsimp% stdSimplex.δ_comp_δ_self_assoc (i := 1), hs₂]
    · simp [← stdSimplex.δ_comp_yonedaEquiv_symm,
        dsimp% stdSimplex.δ_comp_δ_assoc (n := 0) (i := 0) (j := 0) (by simp), hs₀]
  fill31 {x₀ : X _⦋0⦌} {x₁ : X _⦋0⦌} {x₂ : X _⦋0⦌} {x₃ : X _⦋0⦌}
      (e₀₁ : Edge x₀ x₁) (e₁₂ : Edge x₁ x₂) (e₂₃ : Edge x₂ x₃) (e₀₂ : Edge x₀ x₂)
      (e₁₃ : Edge x₁ x₃) (e₀₃ : Edge x₀ x₃)
      (f₃ : Edge.CompStruct e₀₁ e₁₂ e₀₂) (f₀ : Edge.CompStruct e₁₂ e₂₃ e₁₃)
      (f₂ : Edge.CompStruct e₀₁ e₁₃ e₀₃) := by
    change Nonempty (Edge.CompStruct e₀₂ e₂₃ e₀₃)
    obtain ⟨σ, hσ₀, hσ₂, hσ₃⟩ := horn₃₁.exists_desc (yonedaEquiv.symm f₀.simplex)
      (yonedaEquiv.symm f₂.simplex) (yonedaEquiv.symm f₃.simplex) (by simp) (by simp) (by simp)
    obtain ⟨s, hs⟩ := Quasicategory.hornFilling (by simp) (by simp) σ
    have hs₀ : stdSimplex.δ 0 ≫ s = yonedaEquiv.symm f₀.simplex := by simp [← hσ₀, hs]
    have hs₂ : stdSimplex.δ 2 ≫ s = yonedaEquiv.symm f₂.simplex := by simp [← hσ₂, hs]
    have hs₃ : stdSimplex.δ 3 ≫ s = yonedaEquiv.symm f₃.simplex := by simp [← hσ₃, hs]
    obtain ⟨s, rfl⟩ := yonedaEquiv.symm.surjective s
    refine ⟨Edge.CompStruct.mk (X.δ 1 s) (yonedaEquiv.symm.injective ?_)
      (yonedaEquiv.symm.injective ?_) (yonedaEquiv.symm.injective ?_)⟩
    · simp [← stdSimplex.δ_comp_yonedaEquiv_symm,
        ← dsimp% stdSimplex.δ_comp_δ_assoc (n := 1) (i := 1) (j := 2) (by simp), hs₃]
    · simp [← stdSimplex.δ_comp_yonedaEquiv_symm,
        dsimp% stdSimplex.δ_comp_δ_assoc (n := 1) (i := 0) (j := 0) (by simp), hs₀]
    · simp [← stdSimplex.δ_comp_yonedaEquiv_symm,
        dsimp% stdSimplex.δ_comp_δ_self_assoc (i := 1), hs₂]
  fill32 {x₀ : X _⦋0⦌} {x₁ : X _⦋0⦌} {x₂ : X _⦋0⦌} {x₃ : X _⦋0⦌}
      (e₀₁ : Edge x₀ x₁) (e₁₂ : Edge x₁ x₂) (e₂₃ : Edge x₂ x₃) (e₀₂ : Edge x₀ x₂)
      (e₁₃ : Edge x₁ x₃) (e₀₃ : Edge x₀ x₃)
      (f₃ : Edge.CompStruct e₀₁ e₁₂ e₀₂) (f₀ : Edge.CompStruct e₁₂ e₂₃ e₁₃)
      (f₁ : Edge.CompStruct e₀₂ e₂₃ e₀₃) := by
    change Nonempty (Edge.CompStruct e₀₁ e₁₃ e₀₃)
    obtain ⟨σ, hσ₀, hσ₁, hσ₃⟩ := horn₃₂.exists_desc (yonedaEquiv.symm f₀.simplex)
      (yonedaEquiv.symm f₁.simplex) (yonedaEquiv.symm f₃.simplex) (by simp) (by simp) (by simp)
    obtain ⟨s, hs⟩ := Quasicategory.hornFilling (by simp) (by simp) σ
    have hs₀ : stdSimplex.δ 0 ≫ s = yonedaEquiv.symm f₀.simplex := by simp [← hσ₀, hs]
    have hs₁ : stdSimplex.δ 1 ≫ s = yonedaEquiv.symm f₁.simplex := by simp [← hσ₁, hs]
    have hs₃ : stdSimplex.δ 3 ≫ s = yonedaEquiv.symm f₃.simplex := by simp [← hσ₃, hs]
    obtain ⟨s, rfl⟩ := yonedaEquiv.symm.surjective s
    refine ⟨Edge.CompStruct.mk (X.δ 2 s) (yonedaEquiv.symm.injective ?_)
      (yonedaEquiv.symm.injective ?_) (yonedaEquiv.symm.injective ?_)⟩
    · simp [← stdSimplex.δ_comp_yonedaEquiv_symm,
        dsimp% stdSimplex.δ_comp_δ_self_assoc (n := 1) (i := 2), hs₃]
    · simp [← stdSimplex.δ_comp_yonedaEquiv_symm,
        dsimp% stdSimplex.δ_comp_δ_assoc (n := 1) (i := 0) (j := 1) (by simp), hs₀]
    · simp [← stdSimplex.δ_comp_yonedaEquiv_symm,
        dsimp% stdSimplex.δ_comp_δ_assoc (n := 1) (i := 1) (j := 1) (by simp), hs₁]

end SSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/TwoTruncatedQuasicategory/Variant919b87e2d2baa6f1da22e2634b65431976f7cb52341f2350e89f54afe473405f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/TwoTruncatedQuasicategory/Variant919b87e2d2baa6f1da22e2634b65431976f7cb52341f2350e89f54afe473405f.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a19a4b33088ab8cbfaac74841f1b6c040cf2b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
