# actual_negative_curvature_cost_arbitrarily_large

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f830d49-98fd-59d1-6233-de7c99539849",
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
  "slug": "actual-negative-curvature-cost-arbitrarily-large--5d17a45196ddcf1976682b4d",
  "source": {
    "blob": "634e559a8b45b4677003d7de3811352de542bf18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt04/Variant2e5aab9e9d4a8da8299645da4695b224bc5399b3f877ff1b457c9d04b5e3d938.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d17a45196ddcf1976682b4da125cccd8e0691d724964712eb7f73b98f2f74b3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt04/Variant2e5aab9e9d4a8da8299645da4695b224bc5399b3f877ff1b457c9d04b5e3d938.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f830d49-98fd-59d1-6233-de7c99539849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–167.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt04/Variant2e5aab9e9d4a8da8299645da4695b224bc5399b3f877ff1b457c9d04b5e3d938.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt04/Variant2e5aab9e9d4a8da8299645da4695b224bc5399b3f877ff1b457c9d04b5e3d938.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `634e559a8b45b4677003d7de3811352de542bf18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
