# actual_negative_curvature_cost_arbitrarily_large

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8d4f89b-283c-f4f6-feed-de45729d423c",
  "kind": "theorem",
  "lexical_name": "actual_negative_curvature_cost_arbitrarily_large",
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
  "slug": "actual-negative-curvature-cost-arbitrarily-large--1966c2e4c5061079055af112",
  "source": {
    "blob": "77759cb758ef2194fd4710d6ad2c55eee0ee3516",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt04/Variantf3a2f8babbc627b1b0420d0096b0724829190cd583482363315cb70f7bdaaad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1966c2e4c5061079055af1124d4bc92e0091c35738010b683350f404425ceaab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt04/Variantf3a2f8babbc627b1b0420d0096b0724829190cd583482363315cb70f7bdaaad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8d4f89b-283c-f4f6-feed-de45729d423c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negative_curvature_cost_arbitrarily_large
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) (B R : ℝ) (hR : 1 ≤ R) :
    ∃ A : ℝ, R ≤ A ∧ B < negativeCurvatureWork A := by
  by_contra! h
  by_cases hB : 0 ≤ B
  · exact actual_negative_curvature_budget_false hI ⟨B,hB,R,hR,h⟩
  · have hc := h R le_rfl
    have hn := negativeCurvatureWork_nonneg hR
    linarith

end ContinuousResearch.ActualNegativeCost

/- Full public types, proof terms and transitive trusted dependencies. -/

#print ContinuousResearch.ActualNegativeCost.actualNegativeDensity
#print axioms ContinuousResearch.ActualNegativeCost.actualNegativeDensity

#print ContinuousResearch.ActualNegativeCost.actualNegativeLimit
#print axioms ContinuousResearch.ActualNegativeCost.actualNegativeLimit

#print ContinuousResearch.ActualNegativeCost.actual_negative_density_nonneg
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_density_nonneg

#print ContinuousResearch.ActualNegativeCost.actual_negative_density_integrable
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_density_integrable

#print ContinuousResearch.ActualNegativeCost.actual_negative_density_integral
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_density_integral

#print ContinuousResearch.ActualNegativeCost.actual_negative_density_fixed_tendsto
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_density_fixed_tendsto

#print ContinuousResearch.ActualNegativeCost.actual_prime_intercept_pos
#print axioms ContinuousResearch.ActualNegativeCost.actual_prime_intercept_pos

#print ContinuousResearch.ActualNegativeCost.actual_negative_limit_not_integrable
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_limit_not_integrable

#print ContinuousResearch.ActualNegativeCost.actual_negative_curvature_budget_false
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_curvature_budget_false

#print ContinuousResearch.ActualNegativeCost.actual_negative_curvature_cost_arbitrarily_large
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_curvature_cost_arbitrarily_large
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt04/Variantf3a2f8babbc627b1b0420d0096b0724829190cd583482363315cb70f7bdaaad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt04/Variantf3a2f8babbc627b1b0420d0096b0724829190cd583482363315cb70f7bdaaad0.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77759cb758ef2194fd4710d6ad2c55eee0ee3516` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
