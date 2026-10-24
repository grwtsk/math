# D₂_D₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e4d80bf9f4c4592c727bcff16c6ad48c85b8231",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e223f14193a2a9de9cb0d62c9eaf71a4d5ce90d644a8b088dd3e40c7b7ca4e9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06b11826-e5eb-35c8-a8ed-6bcea589dd7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:247a57bd-b212-6380-5df2-fd32f40e7ff3",
  "kind": "lemma",
  "lexical_name": "D₂_D₂",
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
  "slug": "d-d--ea8ebd422f2a64d6f8cbdb08",
  "source": {
    "blob": "2e4d80bf9f4c4592c727bcff16c6ad48c85b8231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 208,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variante223f14193a2a9de9cb0d62c9eaf71a4d5ce90d644a8b088dd3e40c7b7ca4e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea8ebd422f2a64d6f8cbdb082541dd298573bb7a439f7eecb1c73bb0d29f81a5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variante223f14193a2a9de9cb0d62c9eaf71a4d5ce90d644a8b088dd3e40c7b7ca4e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:247a57bd-b212-6380-5df2-fd32f40e7ff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma D₂_D₂ (i₁₂ i₁₂' i₁₂'' : I₁₂) : K.D₂ c₁₂ i₁₂ i₁₂' ≫ K.D₂ c₁₂ i₁₂' i₁₂'' = 0 := by
  by_cases h₁ : c₁₂.Rel i₁₂ i₁₂'
  · by_cases h₂ : c₁₂.Rel i₁₂' i₁₂''
    · ext ⟨i₁, i₂⟩ h
      simp only [totalAux.ιMapObj_D₂_assoc, comp_zero]
      by_cases h₃ : c₂.Rel i₂ (c₂.next i₂)
      · rw [totalAux.d₂_eq K c₁₂ i₁ h₃ i₁₂']; swap
        · rw [← ComplexShape.next_π₂ c₁ c₁₂ i₁ h₃, ← c₁₂.next_eq' h₁, h]
        simp only [Linear.units_smul_comp, assoc, totalAux.ιMapObj_D₂]
        by_cases h₄ : c₂.Rel (c₂.next i₂) (c₂.next (c₂.next i₂))
        · rw [totalAux.d₂_eq K c₁₂ i₁ h₄ i₁₂'', Linear.comp_units_smul,
            HomologicalComplex.d_comp_d_assoc, zero_comp, smul_zero, smul_zero]
          rw [← ComplexShape.next_π₂ c₁ c₁₂ i₁ h₄, ← ComplexShape.next_π₂ c₁ c₁₂ i₁ h₃,
            h, c₁₂.next_eq' h₁, c₁₂.next_eq' h₂]
        · rw [K.d₂_eq_zero c₁₂ _ _ _ h₄, comp_zero, smul_zero]
      · rw [K.d₂_eq_zero c₁₂ _ _ _ h₃, zero_comp]
    · rw [K.D₂_shape c₁₂ _ _ h₂, comp_zero]
  · rw [K.D₂_shape c₁₂ _ _ h₁, zero_comp]

set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variante223f14193a2a9de9cb0d62c9eaf71a4d5ce90d644a8b088dd3e40c7b7ca4e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variante223f14193a2a9de9cb0d62c9eaf71a4d5ce90d644a8b088dd3e40c7b7ca4e9e.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e4d80bf9f4c4592c727bcff16c6ad48c85b8231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
