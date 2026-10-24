# σ_comp_πSummand_id_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b48a3bbd4146651afd89c4e99129153aa7dfaad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7a99385-920b-8e79-3f7d-88fd2aea9a5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af7f23f2-c28c-ebb1-67ed-c2a2a87884f9",
  "kind": "theorem",
  "lexical_name": "σ_comp_πSummand_id_eq_zero",
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
  "slug": "comp-summand-id-eq-zero--c2eeeef4961b2b9b94bfa279",
  "source": {
    "blob": "7b48a3bbd4146651afd89c4e99129153aa7dfaad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2eeeef4961b2b9b94bfa279828cfbcd327612f6347b4d5a9bf8630727de5a35",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af7f23f2-c28c-ebb1-67ed-c2a2a87884f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem σ_comp_πSummand_id_eq_zero {n : ℕ} (i : Fin (n + 1)) :
    X.σ i ≫ s.πSummand (IndexSet.id (op [n + 1])) = 0 := by
  apply s.hom_ext'
  intro A
  dsimp only [SimplicialObject.σ]
  rw [comp_zero, s.ιSummand_epi_naturality_assoc A (SimplexCategory.σ i).op, ι_πSummand_eq_zero]
  rw [ne_comm]
  change ¬(A.epiComp (SimplexCategory.σ i).op).EqId
  rw [IndexSet.eqId_iff_len_eq]
  have h := SimplexCategory.len_le_of_epi (inferInstance : Epi A.e)
  dsimp at h ⊢
  linarith
#align simplicial_object.splitting.σ_comp_π_summand_id_eq_zero SimplicialObject.Splitting.σ_comp_πSummand_id_eq_zero

/-- If a simplicial object `X` in an additive category is split,
then `PInfty` vanishes on all the summands of `X _[n]` which do
not correspond to the identity of `[n]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b48a3bbd4146651afd89c4e99129153aa7dfaad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
