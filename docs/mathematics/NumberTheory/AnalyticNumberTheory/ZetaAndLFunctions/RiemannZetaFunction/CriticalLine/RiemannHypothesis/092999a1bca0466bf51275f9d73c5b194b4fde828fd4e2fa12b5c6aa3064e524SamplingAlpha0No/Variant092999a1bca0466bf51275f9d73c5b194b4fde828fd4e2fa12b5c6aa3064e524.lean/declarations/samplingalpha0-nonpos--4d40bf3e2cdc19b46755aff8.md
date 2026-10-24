# samplingAlpha0_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e93099604390055884de0de7d82dd906dfea97c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f103c077-e18c-030e-3489-4880e02e26d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73c49824-b450-be50-d7c9-96dfd10b3043",
  "kind": "theorem",
  "lexical_name": "samplingAlpha0_nonpos",
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
  "slug": "samplingalpha0-nonpos--4d40bf3e2cdc19b46755aff8",
  "source": {
    "blob": "e93099604390055884de0de7d82dd906dfea97c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 19,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524SamplingAlpha0No/Variant092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d40bf3e2cdc19b46755aff878f6e8a92941aa4c810d52b46d4729ce107e148f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524SamplingAlpha0No/Variant092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73c49824-b450-be50-d7c9-96dfd10b3043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem samplingAlpha0_nonpos : samplingAlpha0 ≤ 0 := by
  have hmoment : 0 ≤ signedCoefficientMoment 0 := by
    unfold signedCoefficientMoment
    apply setIntegral_nonneg measurableSet_Ioi
    intro u hu
    simp only [coefficientWeight, pow_zero, mul_one]
    exact mul_nonneg (Int.fract_nonneg u) (Real.rpow_pos_of_pos hu _).le
  unfold samplingAlpha0
  linarith

end FormalResearch.RiemannHypothesis.SourceSamplingCoefficients
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524SamplingAlpha0No/Variant092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524SamplingAlpha0No/Variant092999a1bca0466bf51275f9d73c5b194b4fde828fd4e2fa12b5c6aa3064e524.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e93099604390055884de0de7d82dd906dfea97c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
