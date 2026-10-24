# isSheafFor_pullback_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e29282f11fe49113589d0cb5a6a936553ba03522",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 877,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d83e174-3445-43f6-91cc-a2adf59d8b2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9afe7ec-94af-9ebe-941f-10c0670f2942",
  "kind": "lemma",
  "lexical_name": "isSheafFor_pullback_iff",
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
  "slug": "issheaffor-pullback-iff--e4e3164de4695cebb78c89d6",
  "source": {
    "blob": "e29282f11fe49113589d0cb5a6a936553ba03522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 899,
    "line": 877,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4e3164de4695cebb78c89d672681418b8cdf8540df7b3106b6f870e5fcad94a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9afe7ec-94af-9ebe-941f-10c0670f2942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 877–899.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSheafFor_pullback_iff (P : Cᵒᵖ ⥤ Type w) {X : C} (R : Sieve X)
    {Y : C} (f : Y ⟶ X) [IsIso f] :
    IsSheafFor P (Sieve.pullback f R).arrows ↔ IsSheafFor P R.arrows := by
  obtain ⟨ι, Z, g, rfl⟩ := R.exists_eq_ofArrows
  have := Sieve.pullback_ofArrows_of_iso _ g (asIso f)
  dsimp at this
  let e : Subtype (Arrows.Compatible P g) ≃
    Subtype (Arrows.Compatible P (fun i ↦ g i ≫ inv f)) :=
    { toFun s := ⟨fun i ↦ s.val i, fun i₁ i₂ W g₁ g₂ h ↦ by
        simp only [← cancel_mono f, assoc, IsIso.inv_hom_id, comp_id] at h
        exact s.property _ _ _ _ _ h⟩
      invFun s := ⟨fun i ↦ s.val i, fun i₁ i₂ W g₁ g₂ h ↦ by
        replace h := h =≫ inv f
        simp only [Category.assoc] at h
        exact s.property _ _ _ _ _ h⟩ }
  simp only [this, ← isSheafFor_iff_generate,
    isSheafFor_ofArrows_iff_bijective_toCompabible, ← e.bijective.of_comp_iff',
    ← Function.Bijective.of_comp_iff _ (P.mapIso (asIso f).symm.op).toEquiv.bijective]
  convert! Iff.rfl using 2
  ext
  simp [e]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean#L877).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e29282f11fe49113589d0cb5a6a936553ba03522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
