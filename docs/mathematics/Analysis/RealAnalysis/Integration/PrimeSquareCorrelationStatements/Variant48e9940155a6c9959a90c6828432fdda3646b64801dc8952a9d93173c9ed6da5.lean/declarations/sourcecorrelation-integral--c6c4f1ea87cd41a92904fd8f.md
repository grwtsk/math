# sourceCorrelation_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b56d42cb84ff1f4bc2d2ee82edb2a26cfc42b90e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48e9940155a6c9959a90c6828432fdda3646b64801dc8952a9d93173c9ed6da5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a27ce1d3-e786-2b39-44c7-8b38d3db847a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c24aade1-aab7-f257-b50a-2eb3525cca9a",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_integral",
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
  "slug": "sourcecorrelation-integral--c6c4f1ea87cd41a92904fd8f",
  "source": {
    "blob": "b56d42cb84ff1f4bc2d2ee82edb2a26cfc42b90e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 118,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationStatements/Variant48e9940155a6c9959a90c6828432fdda3646b64801dc8952a9d93173c9ed6da5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6c4f1ea87cd41a92904fd8f748b251e45068a45a1aff454a67fa7f5a59b6478",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationStatements/Variant48e9940155a6c9959a90c6828432fdda3646b64801dc8952a9d93173c9ed6da5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c24aade1-aab7-f257-b50a-2eb3525cca9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t, sourceCorrelation explicitSecondDerivative A t) =
      (256 / 315) ^ 2 * A / (16 * sourceNormalization A) := by
  have hf := weighted_normalizedTest_integrable A 0 hA
  have hfull := weighted_correlation_integral
    (normalizedTest explicitSecondDerivative A) 0 hf (by simpa using hf)
  simp only [zero_mul, neg_zero, Real.exp_zero, one_mul] at hfull
  change (∫ t, sourceCorrelation explicitSecondDerivative A t) =
    (∫ x, normalizedTest explicitSecondDerivative A x) *
      (∫ x, normalizedTest explicitSecondDerivative A x) at hfull
  rw [hfull, normalizedTest_integral A hA]
  have hsa : Real.sqrt A ^ 2 = A := Real.sq_sqrt (by linarith)
  have hsz : Real.sqrt (sourceNormalization A) ^ 2 = sourceNormalization A :=
    Real.sq_sqrt (source_normalization_pos A hA).le
  have hnA : A ≠ 0 := by linarith
  have hnZ : sourceNormalization A ≠ 0 := ne_of_gt (source_normalization_pos A hA)
  have hnsa : Real.sqrt A ≠ 0 := ne_of_gt (Real.sqrt_pos.mpr (by linarith))
  have hnsz : Real.sqrt (sourceNormalization A) ≠ 0 :=
    ne_of_gt (Real.sqrt_pos.mpr (source_normalization_pos A hA))
  field_simp
  nlinarith [hsa, hsz]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationStatements/Variant48e9940155a6c9959a90c6828432fdda3646b64801dc8952a9d93173c9ed6da5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationStatements/Variant48e9940155a6c9959a90c6828432fdda3646b64801dc8952a9d93173c9ed6da5.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b56d42cb84ff1f4bc2d2ee82edb2a26cfc42b90e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
