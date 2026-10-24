# sourceCorrelation_eq_zero_of_two_mul_le_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fea3c63ddad056d174f79b8ad06624e405adeb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9011d35-1dbf-b9e3-6fb8-31db46a6657b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe2cbb43-917b-ee5b-a390-6c2a6b4f7625",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_eq_zero_of_two_mul_le_abs",
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
  "slug": "sourcecorrelation-eq-zero-of-two-mul-le-abs--8dc1389eeacef5e1d1ee9549",
  "source": {
    "blob": "4fea3c63ddad056d174f79b8ad06624e405adeb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 213,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dc1389eeacef5e1d1ee9549ab61060b88dcc5ea23a2f7251a43eddfc1af75b7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe2cbb43-917b-ee5b-a390-6c2a6b4f7625`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_eq_zero_of_two_mul_le_abs (A t : ℝ)
    (hA : 0 < A) (ht : 2 * A ≤ |t|) :
    sourceCorrelation explicitSecondDerivative A t = 0 := by
  unfold sourceCorrelation
  apply integral_eq_zero_of_ae
  filter_upwards [] with x
  change normalizedTest explicitSecondDerivative A x *
    normalizedTest explicitSecondDerivative A (x - t) = 0
  by_cases hx : A ≤ |x|
  · rw [normalizedTest_zero_of_le_abs A x hA hx, zero_mul]
  · have hxt : A ≤ |x - t| := by
      have htbound : |t| ≤ |x| + |x - t| := by
        calc
          |t| = |x - (x - t)| := by congr 1; ring
          _ ≤ |x| + |x - t| := abs_sub _ _
      linarith [lt_of_not_ge hx]
    rw [normalizedTest_zero_of_le_abs A (x - t) hA hxt, mul_zero]

/-- The exact upper support endpoint vanishes for every positive radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fea3c63ddad056d174f79b8ad06624e405adeb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
