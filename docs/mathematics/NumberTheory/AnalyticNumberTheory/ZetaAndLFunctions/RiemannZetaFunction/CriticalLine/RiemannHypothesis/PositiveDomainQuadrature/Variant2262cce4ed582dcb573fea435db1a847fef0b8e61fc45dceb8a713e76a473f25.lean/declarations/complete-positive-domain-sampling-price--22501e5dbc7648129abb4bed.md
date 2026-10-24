# complete_positive_domain_sampling_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18bba2eb-6566-aeca-ad03-c937b1666163",
  "kind": "theorem",
  "lexical_name": "complete_positive_domain_sampling_price",
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
  "slug": "complete-positive-domain-sampling-price--22501e5dbc7648129abb4bed",
  "source": {
    "blob": "f4edd358f5d02eee6cf1acf23e159931fb3f2006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 93,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveDomainQuadrature/Variant2262cce4ed582dcb573fea435db1a847fef0b8e61fc45dceb8a713e76a473f25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22501e5dbc7648129abb4bed9cecbf3b2c037baff85da0a89a639d60768f4336",
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

Occurrence: `result:18bba2eb-6566-aeca-ad03-c937b1666163`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_positive_domain_sampling_price (g d : ℝ → ℝ)
    (hd : ∀ u : ℝ, 0 < u → HasDerivAt g (d u) u)
    (hc : ContinuousOn d (Ioi 0)) (N : ℕ) :
    |leftSampleSum g N - (∫ u in (1 : ℝ)..(N + 1 : ℝ), g u)| ≤
      ∫ u in (1 : ℝ)..(N + 1 : ℝ), |d u| := by
  have hg : ContinuousOn g (Ioi 0) := fun x hx ↦ (hd x hx).continuousAt.continuousWithinAt
  rw [positive_domain_integral_retains_every_unit_cell g hg N]
  unfold leftSampleSum
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ k ∈ Finset.Icc 1 N, |g k - (∫ u in (k : ℝ)..(k + 1 : ℝ), g u)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ Finset.Icc 1 N, ∫ u in (k : ℝ)..(k + 1 : ℝ), |d u| := by
      apply Finset.sum_le_sum
      intro k hk
      exact positive_domain_unit_error_price g d hd hc (Finset.mem_Icc.mp hk).1
    _ = _ := (positive_domain_integral_retains_every_unit_cell _ hc.abs N).symm

end
end GRWTSK.RiemannHypothesis.Conversation.PositiveDomainQuadrature
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveDomainQuadrature/Variant2262cce4ed582dcb573fea435db1a847fef0b8e61fc45dceb8a713e76a473f25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveDomainQuadrature/Variant2262cce4ed582dcb573fea435db1a847fef0b8e61fc45dceb8a713e76a473f25.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4edd358f5d02eee6cf1acf23e159931fb3f2006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
