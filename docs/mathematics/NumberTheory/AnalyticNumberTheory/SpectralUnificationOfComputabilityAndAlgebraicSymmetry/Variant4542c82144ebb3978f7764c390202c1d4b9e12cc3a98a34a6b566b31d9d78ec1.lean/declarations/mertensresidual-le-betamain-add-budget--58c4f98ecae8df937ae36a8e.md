# mertensResidual_le_betaMain_add_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be0363d053c3ec7a2338545d61ee54542ddb8cbd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4542c82144ebb3978f7764c390202c1d4b9e12cc3a98a34a6b566b31d9d78ec1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b515776-7631-d0b3-16cd-5f540a940462",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b24d04e-d9ea-c436-af7e-b24b481fa9b3",
  "kind": "theorem",
  "lexical_name": "mertensResidual_le_betaMain_add_budget",
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
  "slug": "mertensresidual-le-betamain-add-budget--58c4f98ecae8df937ae36a8e",
  "source": {
    "blob": "be0363d053c3ec7a2338545d61ee54542ddb8cbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 194,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4542c82144ebb3978f7764c390202c1d4b9e12cc3a98a34a6b566b31d9d78ec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58c4f98ecae8df937ae36a8e3dd7c0e0175fc467c377500aa4cb0eb79e459d29",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4542c82144ebb3978f7764c390202c1d4b9e12cc3a98a34a6b566b31d9d78ec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b24d04e-d9ea-c436-af7e-b24b481fa9b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_le_betaMain_add_budget (A K : ℝ) (hA : 1 ≤ A) (hK : 1 ≤ K)
    (hSlope : ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K) :
    mertensResidual A ≤ betaMainLedger A +
      ∑ c ∈ logCells A, deterministicBlockBudget A K c := by
  rw [mertensResidual_eq_centered_blocks_add_betaMain A hA]
  have hs : (∑ c ∈ logCells A, centeredTypeTwoLogBlock A c) ≤
      ∑ c ∈ logCells A, deterministicBlockBudget A K c := by
    apply Finset.sum_le_sum
    intro c hc
    exact (le_abs_self _).trans (centeredTypeTwoLogBlock_abs_le_budget A K c hA hK hSlope)
  linarith

/-- An admissible cell family exposing the unbalanced deterministic loss. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4542c82144ebb3978f7764c390202c1d4b9e12cc3a98a34a6b566b31d9d78ec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4542c82144ebb3978f7764c390202c1d4b9e12cc3a98a34a6b566b31d9d78ec1.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be0363d053c3ec7a2338545d61ee54542ddb8cbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
