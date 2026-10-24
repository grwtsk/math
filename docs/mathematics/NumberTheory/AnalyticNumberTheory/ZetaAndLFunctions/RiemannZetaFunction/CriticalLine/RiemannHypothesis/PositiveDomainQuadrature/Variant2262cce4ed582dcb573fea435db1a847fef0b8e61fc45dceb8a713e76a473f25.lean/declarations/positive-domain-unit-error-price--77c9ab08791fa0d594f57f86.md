# positive_domain_unit_error_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1f2945b-e7ac-573f-e8bd-829d83cb8381",
  "kind": "theorem",
  "lexical_name": "positive_domain_unit_error_price",
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
  "slug": "positive-domain-unit-error-price--77c9ab08791fa0d594f57f86",
  "source": {
    "blob": "f4edd358f5d02eee6cf1acf23e159931fb3f2006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveDomainQuadrature/Variant2262cce4ed582dcb573fea435db1a847fef0b8e61fc45dceb8a713e76a473f25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77c9ab08791fa0d594f57f8624310e2c7b59dc8df6376fb9aa80ea71b61b9f38",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveDomainQuadrature/Variant2262cce4ed582dcb573fea435db1a847fef0b8e61fc45dceb8a713e76a473f25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1f2945b-e7ac-573f-e8bd-829d83cb8381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_domain_unit_error_price (g d : ℝ → ℝ)
    (hd : ∀ u : ℝ, 0 < u → HasDerivAt g (d u) u)
    (hc : ContinuousOn d (Ioi 0)) {k : ℕ} (hk : 1 ≤ k) :
    |g k - (∫ u in (k : ℝ)..(k + 1 : ℝ), g u)| ≤
      ∫ u in (k : ℝ)..(k + 1 : ℝ), |d u| := by
  rw [positive_domain_unit_error_identity g d hd hc hk, abs_neg]
  have hi : IntervalIntegrable (fun u ↦ |d u|) volume (k : ℝ) (k + 1 : ℝ) := by
    apply ContinuousOn.intervalIntegrable
    apply hc.abs.mono
    rw [uIcc_of_le (by norm_num : (k : ℝ) ≤ k + 1)]
    intro u hu
    have hkR : (1 : ℝ) ≤ k := by exact_mod_cast hk
    exact lt_of_lt_of_le zero_lt_one (hkR.trans hu.1)
  have h : ‖∫ u in (k : ℝ)..(k + 1 : ℝ), ((k + 1 : ℝ) - u) * d u‖ ≤
      ∫ u in (k : ℝ)..(k + 1 : ℝ), |d u| :=
    intervalIntegral.norm_integral_le_of_norm_le (by norm_num)
      (Filter.Eventually.of_forall (fun u hu ↦ by
        have hw0 : 0 ≤ (k + 1 : ℝ) - u := by linarith [hu.2]
        have hw1 : (k + 1 : ℝ) - u ≤ 1 := by linarith [hu.1]
        rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg hw0]
        exact mul_le_of_le_one_left (abs_nonneg _) hw1)) hi
  simpa only [Real.norm_eq_abs] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveDomainQuadrature/Variant2262cce4ed582dcb573fea435db1a847fef0b8e61fc45dceb8a713e76a473f25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveDomainQuadrature/Variant2262cce4ed582dcb573fea435db1a847fef0b8e61fc45dceb8a713e76a473f25.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4edd358f5d02eee6cf1acf23e159931fb3f2006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
