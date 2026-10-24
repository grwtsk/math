# isSheafFor_pullback_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfc26fba-8fdf-138c-759d-adabc01cdaa6",
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
  "slug": "issheaffor-pullback-iff--096906bf21d79b9a7eb220eb",
  "source": {
    "blob": "8485a07ed9e2e94ce5dc8de624236eeef4406f9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 907,
    "line": 885,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variant7315fcd91f8f532de0f285dea273ca4508ea2b48a6ec0e045fe742925fc33a8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:096906bf21d79b9a7eb220ebde69bf89da1abaabba620cc24e84711b403023d8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variant7315fcd91f8f532de0f285dea273ca4508ea2b48a6ec0e045fe742925fc33a8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfc26fba-8fdf-138c-759d-adabc01cdaa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 885–907.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variant7315fcd91f8f532de0f285dea273ca4508ea2b48a6ec0e045fe742925fc33a8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variant7315fcd91f8f532de0f285dea273ca4508ea2b48a6ec0e045fe742925fc33a8e.lean#L885).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8485a07ed9e2e94ce5dc8de624236eeef4406f9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
