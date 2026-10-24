# pairedTailTest_ge_one_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33c586f26ab25ab26e8358a4d783a6d24759b106",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f32fe61cf67d807cf0d5984918ebff5a0afe6fa3e1a9bfa2e8f4a59d3d39c2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a9e931b-d57e-3d0e-b50b-e813b500845a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bb9a309-297d-0eea-8993-0cc5582c8cfa",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_ge_one_left",
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
  "slug": "pairedtailtest-ge-one-left--73f9ec35546e702526d20dc1",
  "source": {
    "blob": "33c586f26ab25ab26e8358a4d783a6d24759b106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailQuadrature/Variant3f32fe61cf67d807cf0d5984918ebff5a0afe6fa3e1a9bfa2e8f4a59d3d39c2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73f9ec35546e702526d20dc1beeb640c4665f64c1a3a7e9ed3d6a45cd36ec987",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailQuadrature/Variant3f32fe61cf67d807cf0d5984918ebff5a0afe6fa3e1a9bfa2e8f4a59d3d39c2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bb9a309-297d-0eea-8993-0cc5582c8cfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_ge_one_left {A u : ℝ} (hA : 1 ≤ A) (hu : u ≤ -(2 * A)) :
    1 ≤ pairedTailTest A u := by
  have hu0 : u ≤ 0 := by linarith
  have hc := sourceCorrelation_eq_zero_of_two_mul_le_abs A u
    (show 0 < A by linarith) (show 2 * A ≤ |u| by rw [abs_of_nonpos hu0]; linarith)
  rw [pairedTailTest, criticalPrimeTest, hc, mul_zero, neg_zero, zero_add]
  exact negativeSurvival_ge_one_left hA hu0

/-- The exact survival arithmetic correction is the already bounded negative mean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailQuadrature/Variant3f32fe61cf67d807cf0d5984918ebff5a0afe6fa3e1a9bfa2e8f4a59d3d39c2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailQuadrature/Variant3f32fe61cf67d807cf0d5984918ebff5a0afe6fa3e1a9bfa2e8f4a59d3d39c2b.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33c586f26ab25ab26e8358a4d783a6d24759b106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
