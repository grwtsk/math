# exists_iso_of_arrow_iso

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
      "line": 619,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cc70a2c494a0ea352afacba1c91c9110bdfbf31f23301fabc8d0805cd0154a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d38ba345-4b7e-7378-5c25-a2d37f52ad91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9efd26d7-4a67-1bcb-76db-09f89c5d6f0f",
  "kind": "lemma",
  "lexical_name": "exists_iso_of_arrow_iso",
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
  "slug": "exists-iso-of-arrow-iso--86a265474d91ed09afb903b4",
  "source": {
    "blob": "553fd66efc6ca0c67586f9f15a965fe370477a01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 619,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant2cc70a2c494a0ea352afacba1c91c9110bdfbf31f23301fabc8d0805cd0154a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86a265474d91ed09afb903b49a69cf157ce8e002611ccc45b7505475c210967d",
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

Occurrence: `result:9efd26d7-4a67-1bcb-76db-09f89c5d6f0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_iso_of_arrow_iso (T₁ T₂ : Triangle C) (hT₁ : T₁ ∈ distTriang C)
    (hT₂ : T₂ ∈ distTriang C) (e : Arrow.mk T₁.mor₁ ≅ Arrow.mk T₂.mor₁) :
    ∃ (e' : T₁ ≅ T₂), e'.hom.hom₁ = e.hom.left ∧ e'.hom.hom₂ = e.hom.right := by
  let φ := completeDistinguishedTriangleMorphism T₁ T₂ hT₁ hT₂ e.hom.left e.hom.right e.hom.w.symm
  have : IsIso φ.hom₁ := by dsimp [φ]; infer_instance
  have : IsIso φ.hom₂ := by dsimp [φ]; infer_instance
  have : IsIso φ.hom₃ := isIso₃_of_isIso₁₂ φ hT₁ hT₂ inferInstance inferInstance
  have : IsIso φ := by
    apply Triangle.isIso_of_isIsos
    all_goals infer_instance
  exact ⟨asIso φ, by simp [φ], by simp [φ]⟩

/-- A choice of isomorphism `T₁ ≅ T₂` between two distinguished triangles
when we are given two isomorphisms `e₁ : T₁.obj₁ ≅ T₂.obj₁` and `e₂ : T₁.obj₂ ≅ T₂.obj₂`. -/
@[simps! hom_hom₁ hom_hom₂ inv_hom₁ inv_hom₂]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant2cc70a2c494a0ea352afacba1c91c9110bdfbf31f23301fabc8d0805cd0154a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant2cc70a2c494a0ea352afacba1c91c9110bdfbf31f23301fabc8d0805cd0154a6.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553fd66efc6ca0c67586f9f15a965fe370477a01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
