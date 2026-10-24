# finite_opposite_translate_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b1abe63ba15398493a2d16d90b0fb720f8d99b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d944b6d-6993-5d91-6a55-6726ed1cbd69",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07cc390d-f815-71f8-ab83-5202c7b46525",
  "kind": "theorem",
  "lexical_name": "finite_opposite_translate_factorization",
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
  "slug": "finite-opposite-translate-factorization--79576029f03a7b69cc811ae8",
  "source": {
    "blob": "2b1abe63ba15398493a2d16d90b0fb720f8d99b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79576029f03a7b69cc811ae8dc12c87def423db9257a24af6813a62cee04a833",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07cc390d-f815-71f8-ab83-5202c7b46525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_opposite_translate_factorization (A : ℝ) (hA : 0 < A)
    (S T : Finset ℕ) (a b shiftLeft shiftRight : ℕ → ℝ) :
    (∑ i ∈ S, ∑ j ∈ T,
      (a i * b j) * sourceCorrelation explicitSecondDerivative A (shiftLeft i + shiftRight j)) =
      ∫ u,
        (∑ i ∈ S, a i * normalizedTest explicitSecondDerivative A (u - shiftLeft i)) *
        (∑ j ∈ T, b j * normalizedTest explicitSecondDerivative A (u + shiftRight j)) := by
  have hp (i j : ℕ) := opposite_translate_product_integrable A (shiftLeft i) (shiftRight j) hA
  calc
    _ = ∑ i ∈ S, ∑ j ∈ T, ∫ u,
        (a i * b j) * (normalizedTest explicitSecondDerivative A (u - shiftLeft i) *
          normalizedTest explicitSecondDerivative A (u + shiftRight j)) := by
      simp only [sourceCorrelation_eq_opposite_translate, integral_const_mul]
    _ = ∫ u, ∑ i ∈ S, ∑ j ∈ T,
        (a i * b j) * (normalizedTest explicitSecondDerivative A (u - shiftLeft i) *
          normalizedTest explicitSecondDerivative A (u + shiftRight j)) := by
      rw [integral_finsetSum S]
      · apply Finset.sum_congr rfl
        intro i hi
        exact (integral_finsetSum T fun j _ ↦ (hp i j).const_mul _).symm
      · intro i hi
        exact integrable_finsetSum T fun j _ ↦ (hp i j).const_mul _
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [] with u
      simp only [Finset.sum_mul]
      simp only [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i hi
      apply Finset.sum_congr rfl
      intro j hj
      ring

/-- The exact signed residual is an inner product of opposite translated sums. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1abe63ba15398493a2d16d90b0fb720f8d99b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
