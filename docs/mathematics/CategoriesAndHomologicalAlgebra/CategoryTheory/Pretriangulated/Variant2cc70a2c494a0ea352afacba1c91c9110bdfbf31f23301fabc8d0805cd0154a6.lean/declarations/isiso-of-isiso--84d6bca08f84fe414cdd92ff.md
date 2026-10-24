# isIso₂_of_isIso₁₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "553fd66efc6ca0c67586f9f15a965fe370477a01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 420,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cc70a2c494a0ea352afacba1c91c9110bdfbf31f23301fabc8d0805cd0154a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10057e09-27cf-e9df-8b82-910fce1aeb52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3c2f6dd-e23e-02ce-ad09-4c4e176ad95c",
  "kind": "lemma",
  "lexical_name": "isIso₂_of_isIso₁₃",
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
  "slug": "isiso-of-isiso--84d6bca08f84fe414cdd92ff",
  "source": {
    "blob": "553fd66efc6ca0c67586f9f15a965fe370477a01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 420,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant2cc70a2c494a0ea352afacba1c91c9110bdfbf31f23301fabc8d0805cd0154a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84d6bca08f84fe414cdd92ff3bed0d47fd2f7fa9033086a214f9d11b5d30b95e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant2cc70a2c494a0ea352afacba1c91c9110bdfbf31f23301fabc8d0805cd0154a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3c2f6dd-e23e-02ce-ad09-4c4e176ad95c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso₂_of_isIso₁₃ {T T' : Triangle C} (φ : T ⟶ T') (hT : T ∈ distTriang C)
    (hT' : T' ∈ distTriang C) (h₁ : IsIso φ.hom₁) (h₃ : IsIso φ.hom₃) : IsIso φ.hom₂ := by
  have : Mono φ.hom₂ := by
    rw [mono_iff_cancel_zero]
    intro A f hf
    obtain ⟨g, rfl⟩ := Triangle.coyoneda_exact₂ _ hT f
      (by rw [← cancel_mono φ.hom₃, assoc, φ.comm₂, reassoc_of% hf, zero_comp, zero_comp])
    rw [assoc] at hf
    obtain ⟨h, hh⟩ := Triangle.coyoneda_exact₂ T'.invRotate (inv_rot_of_distTriang _ hT')
      (g ≫ φ.hom₁) (by dsimp; rw [assoc, ← φ.comm₁, hf])
    obtain ⟨k, rfl⟩ : ∃ (k : A ⟶ T.invRotate.obj₁), k ≫ T.invRotate.mor₁ = g := by
      refine ⟨h ≫ inv (φ.hom₃⟦(-1 : ℤ)⟧'), ?_⟩
      have eq := ((invRotate C).map φ).comm₁
      dsimp only [invRotate] at eq
      rw [← cancel_mono φ.hom₁, assoc, assoc, eq, IsIso.inv_hom_id_assoc, hh]
    erw [assoc, comp_distTriang_mor_zero₁₂ _ (inv_rot_of_distTriang _ hT), comp_zero]
  refine isIso_of_yoneda_map_bijective _ (fun A => ⟨?_, ?_⟩)
  · intro f₁ f₂ h
    simpa only [← cancel_mono φ.hom₂] using h
  · intro y₂
    obtain ⟨x₃, hx₃⟩ : ∃ (x₃ : A ⟶ T.obj₃), x₃ ≫ φ.hom₃ = y₂ ≫ T'.mor₂ :=
      ⟨y₂ ≫ T'.mor₂ ≫ inv φ.hom₃, by simp⟩
    obtain ⟨x₂, hx₂⟩ := Triangle.coyoneda_exact₃ _ hT x₃
      (by rw [← cancel_mono (φ.hom₁⟦(1 : ℤ)⟧'), assoc, zero_comp, φ.comm₃, reassoc_of% hx₃,
        comp_distTriang_mor_zero₂₃ _ hT', comp_zero])
    obtain ⟨y₁, hy₁⟩ := Triangle.coyoneda_exact₂ _ hT' (y₂ - x₂ ≫ φ.hom₂)
      (by rw [sub_comp, assoc, ← φ.comm₂, ← reassoc_of% hx₂, hx₃, sub_self])
    obtain ⟨x₁, hx₁⟩ : ∃ (x₁ : A ⟶ T.obj₁), x₁ ≫ φ.hom₁ = y₁ := ⟨y₁ ≫ inv φ.hom₁, by simp⟩
    refine ⟨x₂ + x₁ ≫ T.mor₁, ?_⟩
    dsimp
    rw [add_comp, assoc, φ.comm₁, reassoc_of% hx₁, ← hy₁, add_sub_cancel]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant2cc70a2c494a0ea352afacba1c91c9110bdfbf31f23301fabc8d0805cd0154a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant2cc70a2c494a0ea352afacba1c91c9110bdfbf31f23301fabc8d0805cd0154a6.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553fd66efc6ca0c67586f9f15a965fe370477a01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
