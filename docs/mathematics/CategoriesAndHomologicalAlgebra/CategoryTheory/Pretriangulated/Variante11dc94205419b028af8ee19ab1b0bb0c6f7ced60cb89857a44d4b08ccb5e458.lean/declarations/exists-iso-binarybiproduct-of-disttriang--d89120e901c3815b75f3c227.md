# exists_iso_binaryBiproduct_of_distTriang

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "334496d1ca65a779532e58d8ad914c532c8ce2ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 574,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14be4ff1-d6dd-bbb7-b722-b1c7bf0823c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f660b872-4e20-25fa-5054-9f3b02f38cbc",
  "kind": "lemma",
  "lexical_name": "exists_iso_binaryBiproduct_of_distTriang",
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
  "slug": "exists-iso-binarybiproduct-of-disttriang--d89120e901c3815b75f3c227",
  "source": {
    "blob": "334496d1ca65a779532e58d8ad914c532c8ce2ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 574,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d89120e901c3815b75f3c2276a9c653c3d74f7b4cc5a9a422ad0e71b05bd9759",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f660b872-4e20-25fa-5054-9f3b02f38cbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_iso_binaryBiproduct_of_distTriang (T : Triangle C) (hT : T ∈ distTriang C)
    (zero : T.mor₃ = 0) :
    ∃ (e : T.obj₂ ≅ T.obj₁ ⊞ T.obj₃), T.mor₁ ≫ e.hom = biprod.inl ∧
      T.mor₂ = e.hom ≫ biprod.snd := by
  have := T.epi₂ hT zero
  have := isSplitEpi_of_epi T.mor₂
  obtain ⟨fst, hfst⟩ := T.coyoneda_exact₂ hT (𝟙 T.obj₂ - T.mor₂ ≫ section_ T.mor₂) (by simp)
  let d := binaryBiproductData _ hT zero (section_ T.mor₂) (by simp) fst
    (by simp only [← hfst, sub_add_cancel])
  refine ⟨biprod.uniqueUpToIso _ _ d.isBilimit, ⟨?_, by simp [d]⟩⟩
  ext
  · simpa [d] using d.bicone.inl_fst
  · simpa [d] using d.bicone.inl_snd

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `334496d1ca65a779532e58d8ad914c532c8ce2ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
