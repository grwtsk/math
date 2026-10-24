# firstPrimeTail_of_balanced_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2240e846-99d2-66dd-d14b-2b3e3be83e98",
  "kind": "theorem",
  "lexical_name": "firstPrimeTail_of_balanced_tail",
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
  "slug": "firstprimetail-of-balanced-tail--f7c1cd6bcf496d39f9b67aae",
  "source": {
    "blob": "8b0de87051175e8f3bfd8230c0623ce7e634130a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 117,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant9cb7aa51a7966a5ef553b72a7440cb5c282408b446fc6a60fc18e265c0df480e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7c1cd6bcf496d39f9b67aaef0f15e74595518702fb22af419128968fa8c34f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant9cb7aa51a7966a5ef553b72a7440cb5c282408b446fc6a60fc18e265c0df480e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2240e846-99d2-66dd-d14b-2b3e3be83e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimeTail_of_balanced_tail (K Q : ℝ) (hK : 0 ≤ K) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ balancedFirstPrimeTailWork A) :
    FirstPrimeTailUpperBound := by
  have hs : 1 ≤ Real.sqrt (7 : ℝ) := by
    nlinarith [Real.sqrt_nonneg (7 : ℝ), Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 7)]
  have hc : 0 ≤ firstPrimeZeroHeadCost Q := by
    unfold firstPrimeZeroHeadCost
    exact mul_nonneg (by positivity) (by linarith)
  have hl : 0 ≤ Real.log Q := Real.log_nonneg (by linarith)
  have hpQ : 0 < Q := by linarith
  refine ⟨balancedFirstPrimeReturnCost K Q, ?_, Q, by linarith, ?_⟩
  · unfold balancedFirstPrimeReturnCost
    positivity
  · intro A hA
    exact firstPrime_main_upper_of_balanced_tail hQ hA (htail A hA)

/-- Exact original RH16 consumer; its uniform signed arithmetic premise is still supplied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant9cb7aa51a7966a5ef553b72a7440cb5c282408b446fc6a60fc18e265c0df480e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant9cb7aa51a7966a5ef553b72a7440cb5c282408b446fc6a60fc18e265c0df480e.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b0de87051175e8f3bfd8230c0623ce7e634130a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
