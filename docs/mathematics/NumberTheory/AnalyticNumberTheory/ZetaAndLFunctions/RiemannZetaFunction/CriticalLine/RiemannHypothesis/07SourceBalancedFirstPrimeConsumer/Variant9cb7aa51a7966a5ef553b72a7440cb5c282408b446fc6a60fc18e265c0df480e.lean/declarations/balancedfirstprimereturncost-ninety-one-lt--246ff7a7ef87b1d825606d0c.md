# balancedFirstPrimeReturnCost_ninety_one_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd0f44e5-6045-c871-11c0-808ca7a2f699",
  "kind": "theorem",
  "lexical_name": "balancedFirstPrimeReturnCost_ninety_one_lt",
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
  "slug": "balancedfirstprimereturncost-ninety-one-lt--246ff7a7ef87b1d825606d0c",
  "source": {
    "blob": "8b0de87051175e8f3bfd8230c0623ce7e634130a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant9cb7aa51a7966a5ef553b72a7440cb5c282408b446fc6a60fc18e265c0df480e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:246ff7a7ef87b1d825606d0c12d502c2c058d45e45c183509042343f5adf4998",
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

Occurrence: `result:dd0f44e5-6045-c871-11c0-808ca7a2f699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balancedFirstPrimeReturnCost_ninety_one_lt (K : ℝ) :
    balancedFirstPrimeReturnCost K 91 < K + 11 / 2 := by
  have hlog4 : Real.log (4 : ℝ) < 7 / 5 := by
    have hp := Real.log_pow (2 : ℝ) 2
    norm_num at hp
    linarith [Real.log_two_lt_d9]
  have hlog91 : Real.log (91 : ℝ) < 5 := by
    have hp := Real.log_pow (2 : ℝ) 7
    norm_num at hp
    have hm := Real.log_lt_log (by norm_num : (0 : ℝ) < 91)
      (by norm_num : (91 : ℝ) < 128)
    linarith [Real.log_two_lt_d9]
  have hs : Real.sqrt (7 : ℝ) < 8 / 3 :=
    (Real.sqrt_lt' (by norm_num : (0 : ℝ) < 8 / 3)).mpr (by norm_num)
  have hsn : 1 ≤ Real.sqrt (7 : ℝ) := by
    nlinarith [Real.sqrt_nonneg (7 : ℝ), Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 7)]
  have hm := mul_le_mul hlog4.le (sub_le_sub_right hs.le 1)
    (by linarith : 0 ≤ Real.sqrt (7 : ℝ) - 1) (by norm_num : (0 : ℝ) ≤ 7 / 5)
  have hc : firstPrimeZeroHeadCost 91 ≤ (7 / 3 + 70 / 8281 : ℝ) := by
    unfold firstPrimeZeroHeadCost
    norm_num
    nlinarith
  have hhead : 20 * Real.log (91 : ℝ) / 91 < 100 / 91 := by nlinarith
  unfold balancedFirstPrimeReturnCost
  linarith

end RH16BalancedFirstPrimeConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant9cb7aa51a7966a5ef553b72a7440cb5c282408b446fc6a60fc18e265c0df480e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant9cb7aa51a7966a5ef553b72a7440cb5c282408b446fc6a60fc18e265c0df480e.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b0de87051175e8f3bfd8230c0623ce7e634130a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
