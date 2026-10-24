# actual_closed_prefix_eq_period_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40ea90f2-cbe6-19e4-ef9a-730f13c63c0b",
  "kind": "theorem",
  "lexical_name": "actual_closed_prefix_eq_period_mean",
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
  "slug": "actual-closed-prefix-eq-period-mean--656564b1f31a02a8e6636756",
  "source": {
    "blob": "cb55ae09c9826bf209d294fc907ffbeae1268c79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8fb69249a12240879645cb9005c7f6665f8bee95ddc9ceb24d799b1b6d2513fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:656564b1f31a02a8e66367567d777686ad36f8e901d6f627dc00e01c4623d162",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8fb69249a12240879645cb9005c7f6665f8bee95ddc9ceb24d799b1b6d2513fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40ea90f2-cbe6-19e4-ef9a-730f13c63c0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_closed_prefix_eq_period_mean (U M : ℕ) (hU : 1 ≤ U) (hUM : U ≤ M) :
    (∑ n ∈ Finset.Ioc U M, centeredBeta U n) =
      actualCenteredPrefixPeriodMean U +
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d M := by
  rw [closed_centered_prefix_eq_divisor_quotients U M hU hUM]
  have hc : (∑ d ∈ Finset.Icc 1 U,
      (moebius d : ℝ) * (((d : ℝ) - 1) / (2 * d))) =
      ((∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ)) - alpha U) / 2 := by
    unfold alpha
    rw [Finset.sum_sub_distrib, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro d hd
    have hz : (d : ℝ) ≠ 0 := by
      have := (Finset.mem_Icc.mp hd).1
      exact_mod_cast (show d ≠ 0 by omega)
    field_simp
    ring
  have hr : (∑ d ∈ Finset.Icc 1 U,
      (moebius d : ℝ) * (((M % d : ℕ) : ℝ) / d)) =
      alpha U * (M : ℝ) -
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((M / d : ℕ) : ℝ) := by
    unfold alpha
    rw [Finset.sum_mul, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro d hd
    rw [← quotient_remainder_real M d (Finset.mem_Icc.mp hd).1]
    ring
  unfold actualCenteredPrefixPeriodMean actualDivisorPeriodicResidual
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, hr, hc]
  ring

/-- The divisor residual has the actual integer period d. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8fb69249a12240879645cb9005c7f6665f8bee95ddc9ceb24d799b1b6d2513fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8fb69249a12240879645cb9005c7f6665f8bee95ddc9ceb24d799b1b6d2513fb.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb55ae09c9826bf209d294fc907ffbeae1268c79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
