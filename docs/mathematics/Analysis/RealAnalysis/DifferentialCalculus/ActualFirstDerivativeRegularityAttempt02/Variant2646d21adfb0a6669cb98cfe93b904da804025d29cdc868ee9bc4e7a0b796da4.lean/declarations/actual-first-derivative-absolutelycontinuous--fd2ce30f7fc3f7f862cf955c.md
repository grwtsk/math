# actual_first_derivative_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f85ccb998bf4a9376cc430b2cfb0decf5e1f18f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31feb7da-2f90-01aa-9917-f7d69ca74af8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f08ad97d-25ef-8994-6ec2-831258644edf",
  "kind": "theorem",
  "lexical_name": "actual_first_derivative_absolutelyContinuous",
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
  "slug": "actual-first-derivative-absolutelycontinuous--fd2ce30f7fc3f7f862cf955c",
  "source": {
    "blob": "f85ccb998bf4a9376cc430b2cfb0decf5e1f18f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd2ce30f7fc3f7f862cf955c107ba15919bd4c5f99805c4a57919afc7259bef0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f08ad97d-25ef-8994-6ec2-831258644edf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_derivative_absolutelyContinuous (A : ℝ) (hA : 0 < A) (a b : ℝ) :
    AbsolutelyContinuousOnInterval (deriv (normalizedTest explicitSecondDerivative A)) a b := by
  obtain ⟨K, hK⟩ := actual_first_derivative_lipschitz A hA
  exact hK.lipschitzOnWith.absolutelyContinuousOnInterval

/-- Ordinary derivatives away from both support seams have the actual weak polynomial values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f85ccb998bf4a9376cc430b2cfb0decf5e1f18f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
