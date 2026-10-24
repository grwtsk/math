# Preadditive.exact_of_iso_of_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f56be7810bc13a8b9f04cc90d1d90c0c3163f39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4492cb7f-8499-67f7-c072-2e865b7f365b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bce5806e-dc1f-4aba-9717-c7e1b3b82f50",
  "kind": "theorem",
  "lexical_name": "Preadditive.exact_of_iso_of_exact",
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
  "slug": "preadditive-exact-of-iso-of-exact--68a4ffb8a043412e665cb523",
  "source": {
    "blob": "1f56be7810bc13a8b9f04cc90d1d90c0c3163f39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68a4ffb8a043412e665cb5233914f386bdd61fb8df5d32b1f162fe3a9cc37324",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bce5806e-dc1f-4aba-9717-c7e1b3b82f50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Preadditive.exact_of_iso_of_exact {A₁ B₁ C₁ A₂ B₂ C₂ : V} (f₁ : A₁ ⟶ B₁) (g₁ : B₁ ⟶ C₁)
    (f₂ : A₂ ⟶ B₂) (g₂ : B₂ ⟶ C₂) (α : Arrow.mk f₁ ≅ Arrow.mk f₂) (β : Arrow.mk g₁ ≅ Arrow.mk g₂)
    (p : α.hom.right = β.hom.left) (h : Exact f₁ g₁) : Exact f₂ g₂ := by
  rw [Preadditive.exact_iff_homology_zero] at h ⊢
  rcases h with ⟨w₁, ⟨i⟩⟩
  suffices w₂ : f₂ ≫ g₂ = 0; exact ⟨w₂, ⟨(homology.mapIso w₁ w₂ α β p).symm.trans i⟩⟩
  rw [← cancel_epi α.hom.left, ← cancel_mono β.inv.right, comp_zero, zero_comp, ← w₁]
  have eq₁ := β.inv.w
  have eq₂ := α.hom.w
  dsimp at eq₁ eq₂
  simp only [Category.assoc, Category.assoc, ← eq₁, reassoc_of% eq₂, p,
    ← reassoc_of% (Arrow.comp_left β.hom β.inv), β.hom_inv_id, Arrow.id_left, Category.id_comp]
#align category_theory.preadditive.exact_of_iso_of_exact CategoryTheory.Preadditive.exact_of_iso_of_exact

/-- A reformulation of `Preadditive.exact_of_iso_of_exact` that does not involve the arrow
category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f56be7810bc13a8b9f04cc90d1d90c0c3163f39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
