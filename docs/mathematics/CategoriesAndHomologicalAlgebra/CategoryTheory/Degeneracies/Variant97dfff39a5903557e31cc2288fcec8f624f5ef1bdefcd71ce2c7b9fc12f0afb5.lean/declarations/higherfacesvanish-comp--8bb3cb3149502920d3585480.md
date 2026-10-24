# HigherFacesVanish.comp_σ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6e9f50c6208826cd486f82905983b2ef20b9e23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97dfff39a5903557e31cc2288fcec8f624f5ef1bdefcd71ce2c7b9fc12f0afb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:292c4bf6-f038-760d-5461-b0dc7cc848e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:370fb9b4-9778-7f16-31b6-553e3e4ae948",
  "kind": "theorem",
  "lexical_name": "HigherFacesVanish.comp_σ",
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
  "slug": "higherfacesvanish-comp--8bb3cb3149502920d3585480",
  "source": {
    "blob": "f6e9f50c6208826cd486f82905983b2ef20b9e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant97dfff39a5903557e31cc2288fcec8f624f5ef1bdefcd71ce2c7b9fc12f0afb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bb3cb3149502920d35854805ec1b08c09b4d37cecd5702cfb97d5fb1910cee3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant97dfff39a5903557e31cc2288fcec8f624f5ef1bdefcd71ce2c7b9fc12f0afb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:370fb9b4-9778-7f16-31b6-553e3e4ae948`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HigherFacesVanish.comp_σ {Y : C} {X : SimplicialObject C} {n b q : ℕ} {φ : Y ⟶ X _⦋n + 1⦌}
    (v : HigherFacesVanish q φ) (hnbq : n + 1 = b + q) :
    HigherFacesVanish q
      (φ ≫
        X.σ ⟨b, by
          simp only [hnbq, Nat.lt_add_one_iff, le_add_iff_nonneg_right, zero_le]⟩) :=
  fun j hj => by
  rw [assoc, SimplicialObject.δ_comp_σ_of_gt', Fin.pred_succ, v.comp_δ_eq_zero_assoc _ _ hj,
    zero_comp]
  · intro hj'
    simp only [hnbq, add_comm b, add_assoc, hj', Fin.val_zero, zero_add, add_le_iff_nonpos_right,
      nonpos_iff_eq_zero, add_eq_zero, false_and, reduceCtorEq] at hj
  · dsimp
    rw [Fin.lt_def, Fin.val_succ]
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant97dfff39a5903557e31cc2288fcec8f624f5ef1bdefcd71ce2c7b9fc12f0afb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant97dfff39a5903557e31cc2288fcec8f624f5ef1bdefcd71ce2c7b9fc12f0afb5.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6e9f50c6208826cd486f82905983b2ef20b9e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
