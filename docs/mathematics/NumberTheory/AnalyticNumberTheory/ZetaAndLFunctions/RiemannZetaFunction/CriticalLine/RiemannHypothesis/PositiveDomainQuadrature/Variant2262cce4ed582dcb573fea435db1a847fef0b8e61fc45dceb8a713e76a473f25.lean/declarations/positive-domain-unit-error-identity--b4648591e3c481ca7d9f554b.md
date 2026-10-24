# positive_domain_unit_error_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bc25f23-8f1e-8f93-ba1c-dbed5960623e",
  "kind": "theorem",
  "lexical_name": "positive_domain_unit_error_identity",
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
  "slug": "positive-domain-unit-error-identity--b4648591e3c481ca7d9f554b",
  "source": {
    "blob": "f4edd358f5d02eee6cf1acf23e159931fb3f2006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveDomainQuadrature/Variant2262cce4ed582dcb573fea435db1a847fef0b8e61fc45dceb8a713e76a473f25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4648591e3c481ca7d9f554bf9c78af0793725c976ed25082e030b7955b00885",
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

Occurrence: `result:5bc25f23-8f1e-8f93-ba1c-dbed5960623e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_domain_unit_error_identity (g d : ℝ → ℝ)
    (hd : ∀ u : ℝ, 0 < u → HasDerivAt g (d u) u)
    (hc : ContinuousOn d (Ioi 0)) {k : ℕ} (hk : 1 ≤ k) :
    g k - (∫ u in (k : ℝ)..(k + 1 : ℝ), g u) =
      -(∫ u in (k : ℝ)..(k + 1 : ℝ), ((k + 1 : ℝ) - u) * d u) := by
  have hi : IntervalIntegrable d volume (k : ℝ) (k + 1 : ℝ) := by
    apply ContinuousOn.intervalIntegrable
    apply hc.mono
    rw [uIcc_of_le (by norm_num : (k : ℝ) ≤ k + 1)]
    intro u hu
    have hkR : (1 : ℝ) ≤ k := by exact_mod_cast hk
    exact lt_of_lt_of_le zero_lt_one (hkR.trans hu.1)
  have h := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (k : ℝ)) (b := (k + 1 : ℝ))
    (u := fun u : ℝ ↦ (k + 1 : ℝ) - u) (v := g)
    (u' := fun _ : ℝ ↦ (-1 : ℝ)) (v' := d)
    (fun u _ ↦ (hasDerivAt_id u).const_sub (k + 1 : ℝ))
    (fun u hu ↦ hd u (by
      have hkR : (1 : ℝ) ≤ k := by exact_mod_cast hk
      rw [uIcc_of_le (by norm_num : (k : ℝ) ≤ k + 1)] at hu
      linarith [hu.1]))
    (continuous_const.intervalIntegrable _ _) hi
  simp only [sub_self, add_sub_cancel_left, zero_mul, one_mul, neg_one_mul,
    intervalIntegral.integral_neg] at h
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveDomainQuadrature/Variant2262cce4ed582dcb573fea435db1a847fef0b8e61fc45dceb8a713e76a473f25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveDomainQuadrature/Variant2262cce4ed582dcb573fea435db1a847fef0b8e61fc45dceb8a713e76a473f25.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4edd358f5d02eee6cf1acf23e159931fb3f2006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
