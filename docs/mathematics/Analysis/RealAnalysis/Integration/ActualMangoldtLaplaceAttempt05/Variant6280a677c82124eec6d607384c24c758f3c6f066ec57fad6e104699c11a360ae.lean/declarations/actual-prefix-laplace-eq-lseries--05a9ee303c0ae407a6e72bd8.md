# actual_prefix_laplace_eq_LSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38e9e55c-5028-9305-7e4e-2065a76066ec",
  "kind": "theorem",
  "lexical_name": "actual_prefix_laplace_eq_LSeries",
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
  "slug": "actual-prefix-laplace-eq-lseries--05a9ee303c0ae407a6e72bd8",
  "source": {
    "blob": "30d6b53b3195808e30643c8a038bb87a0bdcd5d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 202,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05a9ee303c0ae407a6e72bd8de7db2c39584cc1f4debd5189a8e85dfaa6ec1f2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38e9e55c-5028-9305-7e4e-2065a76066ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prefix_laplace_eq_LSeries {s : ℝ} (hs : 0 < s) :
    ((s * ∫ t in Ioi 0, Real.exp (-s*t)*mangoldtLogPrefix t : ℝ):ℂ) =
      LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) ((s+1:ℝ):ℂ) := by
  rw [actual_prefix_laplace_eq_tsum hs,mul_div_cancel₀ _ (ne_of_gt hs),Complex.ofReal_tsum]
  simp_rw [weighted_exp_eq_term]
  have hS := ArithmeticFunction.LSeriesSummable_vonMangoldt
    (s:=((s+1:ℝ):ℂ)) (by simp only [Complex.ofReal_re]; linarith)
  have hh := hS.sum_add_tsum_nat_add 2
  have hz : (∑ n ∈ Finset.range 2, LSeries.term
    (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) ((s+1:ℝ):ℂ) n) = 0 := by
    norm_num [Finset.sum_range_succ,LSeries.term]
  rw [hz,zero_add] at hh
  exact hh

end ContinuousResearch.ActualMangoldtLaplace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30d6b53b3195808e30643c8a038bb87a0bdcd5d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
