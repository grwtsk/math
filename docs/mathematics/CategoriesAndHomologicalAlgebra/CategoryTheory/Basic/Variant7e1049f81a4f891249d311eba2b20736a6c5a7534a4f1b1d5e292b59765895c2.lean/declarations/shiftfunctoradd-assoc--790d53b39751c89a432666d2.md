# shiftFunctorAdd'_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6671c2cb0503adec306ea2e7b8304b892f8c7bc0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4ff5710-fe9c-6da7-f518-b45d0a6dc34d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bfce6ef-014f-1fcb-53cb-3f0cf7f54e98",
  "kind": "lemma",
  "lexical_name": "shiftFunctorAdd'_assoc",
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
  "slug": "shiftfunctoradd-assoc--790d53b39751c89a432666d2",
  "source": {
    "blob": "6671c2cb0503adec306ea2e7b8304b892f8c7bc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 249,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:790d53b39751c89a432666d2f9bdcd36c7152c3d41aebe9d96186acefb751c8c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bfce6ef-014f-1fcb-53cb-3f0cf7f54e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shiftFunctorAdd'_assoc (a₁ a₂ a₃ a₁₂ a₂₃ a₁₂₃ : A)
    (h₁₂ : a₁ + a₂ = a₁₂) (h₂₃ : a₂ + a₃ = a₂₃) (h₁₂₃ : a₁ + a₂ + a₃ = a₁₂₃) :
    shiftFunctorAdd' C a₁₂ a₃ a₁₂₃ (by rw [← h₁₂, h₁₂₃]) ≪≫
      isoWhiskerRight (shiftFunctorAdd' C a₁ a₂ a₁₂ h₁₂) _ ≪≫ associator _ _ _ =
    shiftFunctorAdd' C a₁ a₂₃ a₁₂₃ (by rw [← h₂₃, ← add_assoc, h₁₂₃]) ≪≫
      isoWhiskerLeft _ (shiftFunctorAdd' C a₂ a₃ a₂₃ h₂₃) := by
  subst h₁₂ h₂₃ h₁₂₃
  ext X
  dsimp
  simp only [shiftFunctorAdd'_eq_shiftFunctorAdd, Category.comp_id]
  dsimp [shiftFunctorAdd']
  simp only [eqToHom_app]
  dsimp [shiftFunctorAdd, shiftFunctor]
  simp only [obj_μ_inv_app, Discrete.addMonoidal_associator, eqToIso.hom, eqToHom_map,
    eqToHom_app]
  erw [δ_μ_app_assoc, Category.assoc]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6671c2cb0503adec306ea2e7b8304b892f8c7bc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
