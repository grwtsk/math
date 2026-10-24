# isCofiltered_of_isCofiltered_costructuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:128a80bf-ea60-243d-28e7-68aabd6557be",
  "kind": "lemma",
  "lexical_name": "isCofiltered_of_isCofiltered_costructuredArrow",
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
  "slug": "iscofiltered-of-iscofiltered-costructuredarrow--5d4d690db5dc8746b2e03495",
  "source": {
    "blob": "5629f5ad793367400acd445dc64b8cbcf53b25e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d4d690db5dc8746b2e034956e082a871d6326d568b0cdd28ec742010d75a58e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:128a80bf-ea60-243d-28e7-68aabd6557be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCofiltered_of_isCofiltered_costructuredArrow [IsCofiltered A] [IsCofiltered B]
    [∀ b, IsCofiltered (CostructuredArrow L (R.obj b))] : IsCofiltered (Comma L R) where
  nonempty := by
    obtain ⟨b⟩ := IsCofiltered.nonempty (C := B)
    obtain ⟨X⟩ : Nonempty (CostructuredArrow L (R.obj b)) := IsCofiltered.nonempty
    exact ⟨⟨X.left, b, X.hom⟩⟩
  toIsCofilteredOrEmpty := by
    refine ⟨fun j₁ j₂ ↦ ?_, fun j₁ j₂ u v ↦ ?_⟩
    · obtain ⟨Q⟩ : Nonempty (CostructuredArrow L (R.obj (IsCofiltered.min j₁.right j₂.right))) :=
        IsCofiltered.nonempty
      obtain ⟨ia, va₁, va₂, heqa⟩ := exists_eq_of_isCofiltered_costructuredArrow L
        (Q.hom ≫ R.map (IsCofiltered.minToLeft j₁.right j₂.right)) j₁.hom
      obtain ⟨ib, vb₁, vb₂, heqb⟩ := exists_eq_of_isCofiltered_costructuredArrow L
        (Q.hom ≫ R.map (IsCofiltered.minToRight j₁.right j₂.right)) j₂.hom
      obtain ⟨i₀, il₀, ir₀, heq⟩ := IsCofiltered.cospan va₁ vb₁
      exact ⟨⟨i₀, IsCofiltered.min j₁.right j₂.right, L.map (il₀ ≫ va₁) ≫ Q.hom⟩,
        ⟨il₀ ≫ va₂, IsCofiltered.minToLeft _ _, by simp [← heqa]⟩,
        ⟨ir₀ ≫ vb₂, IsCofiltered.minToRight _ _, by cat_disch⟩, trivial⟩
    · obtain ⟨Q⟩ : Nonempty (CostructuredArrow L (R.obj (IsCofiltered.eq u.right v.right))) :=
        IsCofiltered.nonempty
      obtain ⟨ia, va₁, va₂, heqa⟩ := exists_eq_of_isCofiltered_costructuredArrow L
        (Q.hom ≫ R.map (IsCofiltered.eqHom u.right v.right)) j₁.hom
      obtain ⟨i₀, α, β, hα, hβ⟩ := IsCofiltered.bowtie u.left (va₂ ≫ v.left) (𝟙 _) va₂
      have := IsCofiltered.eq_condition u.right v.right
      exact ⟨⟨i₀, IsCofiltered.eq u.right v.right, L.map (β ≫ va₁) ≫ Q.hom⟩,
        ⟨β ≫ va₂, IsCofiltered.eqHom u.right v.right, by cat_disch⟩, by cat_disch⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5629f5ad793367400acd445dc64b8cbcf53b25e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
