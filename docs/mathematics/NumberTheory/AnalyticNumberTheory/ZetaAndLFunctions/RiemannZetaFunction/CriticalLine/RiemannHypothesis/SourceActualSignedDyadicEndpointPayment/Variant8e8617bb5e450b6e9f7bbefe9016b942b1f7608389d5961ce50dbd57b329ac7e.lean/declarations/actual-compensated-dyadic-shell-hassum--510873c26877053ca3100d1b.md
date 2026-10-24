# actual_compensated_dyadic_shell_hasSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:965ec298-60e4-0063-d208-5a819d671a05",
  "kind": "theorem",
  "lexical_name": "actual_compensated_dyadic_shell_hasSum",
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
  "slug": "actual-compensated-dyadic-shell-hassum--510873c26877053ca3100d1b",
  "source": {
    "blob": "287e1ed62aa4ed02a2d02b866d90d05760e936c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variant8e8617bb5e450b6e9f7bbefe9016b942b1f7608389d5961ce50dbd57b329ac7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:510873c26877053ca3100d1bedc18bb9ed02915264617d9807793a5ff1077c4a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variant8e8617bb5e450b6e9f7bbefe9016b942b1f7608389d5961ce50dbd57b329ac7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:965ec298-60e4-0063-d208-5a819d671a05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_compensated_dyadic_shell_hasSum (A c E : ℝ) (R : ℕ → ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hc2 : c ≤ 3 / 2) (h7 : ∀ k, 7 ≤ R k)
    (horder : ∀ k, R k ≤ R (k + 1))
    (hgood : ∀ k s, (s.im = R k ∨ s.im = -R k) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0)
    (hb : ∀ k, ‖actualFiniteHorizontalCorrection A c (R k)‖ ≤ E * (1 / 16 : ℝ) ^ k) :
    HasSum (fun k => (actualOffAxisZeroHeightHead A (R (k + 1)) -
      actualOffAxisZeroHeightHead A (R k)) +
      (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) -
      (actualCompletedVerticalHead A c (R (k + 1)) - actualCompletedVerticalHead A c (R k)))
      (-actualFiniteHorizontalCorrection A c (R 0)) ∧
    ‖∑' k, (actualOffAxisZeroHeightHead A (R (k + 1)) - actualOffAxisZeroHeightHead A (R k)) +
      (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) -
      (actualCompletedVerticalHead A c (R (k + 1)) - actualCompletedVerticalHead A c (R k))‖ ≤ E := by
  have hs := (actual_compensated_dyadic_shell_errors_summable A c E R hA hc hc2
    h7 horder hgood hb).1
  have ht : Tendsto (fun k => actualFiniteHorizontalCorrection A c (R k)) atTop (𝓝 0) := by
    apply squeeze_zero_norm hb
    simpa using (tendsto_pow_atTop_nhds_zero_of_lt_one
      (by norm_num : (0 : ℝ) ≤ 1 / 16) (by norm_num : (1 / 16 : ℝ) < 1)).const_mul E
  have he (k : ℕ) := error_eq_boundary A c (R k) (R (k + 1)) hA hc hc2
    (h7 k) (horder k) (hgood k) (hgood (k + 1))
  have hsum : HasSum (fun k => (actualOffAxisZeroHeightHead A (R (k + 1)) -
      actualOffAxisZeroHeightHead A (R k)) +
      (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) -
      (actualCompletedVerticalHead A c (R (k + 1)) - actualCompletedVerticalHead A c (R k)))
      (-actualFiniteHorizontalCorrection A c (R 0)) := by
    apply (hasSum_iff_tendsto_nat_of_summable_norm hs).mpr
    simp_rw [he]
    simp only [Finset.sum_range_sub]
    simpa using ht.sub tendsto_const_nhds
  refine ⟨hsum, ?_⟩
  rw [hsum.tsum_eq, norm_neg]
  simpa using hb 0

end FormalResearch.RiemannHypothesis.SourceActualSignedDyadicEndpointPayment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variant8e8617bb5e450b6e9f7bbefe9016b942b1f7608389d5961ce50dbd57b329ac7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variant8e8617bb5e450b6e9f7bbefe9016b942b1f7608389d5961ce50dbd57b329ac7e.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `287e1ed62aa4ed02a2d02b866d90d05760e936c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
