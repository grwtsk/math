# quotient_sample_sub_main_minus_short_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b62b149f1453d8293e8327838e5bd121e0ea9e93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c9f867972402a405a0c3a6585b3962c95376b3b05a8fb3eac4725cf845d3070.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9dda3782-088d-0d21-3579-9813f079f718",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff2eb969-f79c-90a9-b3c7-9e3676e78769",
  "kind": "theorem",
  "lexical_name": "quotient_sample_sub_main_minus_short_abs_le",
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
  "slug": "quotient-sample-sub-main-minus-short-abs-le--04858840d4bbf563b69e0e31",
  "source": {
    "blob": "b62b149f1453d8293e8327838e5bd121e0ea9e93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2c9f867972402a405a0cSourceDivisorQuotientRemainder/Variant2c9f867972402a405a0c3a6585b3962c95376b3b05a8fb3eac4725cf845d3070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04858840d4bbf563b69e0e31bbb51b9fe196923f4691527f22bb0ba842076618",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2c9f867972402a405a0cSourceDivisorQuotientRemainder/Variant2c9f867972402a405a0c3a6585b3962c95376b3b05a8fb3eac4725cf845d3070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff2eb969-f79c-90a9-b3c7-9e3676e78769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotient_sample_sub_main_minus_short_abs_le
    (A : ℝ) (hA : 1 ≤ A) (m d : ℕ) (hm : 0 < m) (hd : 0 < d) :
    |(∑ j ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
        sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) -
      (sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ) -
        ∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))| ≤
      16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ)) := by
  rw [quotient_sample_eq_full_sub_short A hA m d hm hd]
  convert actual_full_multiple_sample_sub_main_abs_le A hA m d hm hd using 1
  congr 1
  ring

end FormalResearch.RiemannHypothesis.SourceDivisorQuotientRemainder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2c9f867972402a405a0cSourceDivisorQuotientRemainder/Variant2c9f867972402a405a0c3a6585b3962c95376b3b05a8fb3eac4725cf845d3070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2c9f867972402a405a0cSourceDivisorQuotientRemainder/Variant2c9f867972402a405a0c3a6585b3962c95376b3b05a8fb3eac4725cf845d3070.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b62b149f1453d8293e8327838e5bd121e0ea9e93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
