# actual_negative_curvature_budget_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:226c3927-89d2-5639-f8f1-e491b8a49b0e",
  "kind": "theorem",
  "lexical_name": "actual_negative_curvature_budget_false",
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
  "slug": "actual-negative-curvature-budget-false--b4130fecc4169d496b43aad0",
  "source": {
    "blob": "508154e67c0786f7de4aeabc3ab7ac043e6887fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4130fecc4169d496b43aad098f8ca59dc5ea6fd00e1bc74c88e6f4d4660feaa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:226c3927-89d2-5639-f8f1-e491b8a49b0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negative_curvature_budget_false
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) : ¬ NegativeCurvatureTailBudget := by
  rintro ⟨B,_hB,R,hR,hcost⟩
  let G : ℕ → ℝ → ℝ := fun n => actualNegativeDensity (R+(n:ℝ))
  have hA (n : ℕ) : 1 ≤ R+(n:ℝ) := by positivity
  have hs : Tendsto (fun n : ℕ => R+(n:ℝ)) atTop atTop :=
    tendsto_natCast_atTop_atTop.const_add R
  apply no_uniform_nonnegative_integrals_of_nonintegrable_limit
    (G:=G) (f:=actualNegativeLimit)
    (fun n => actual_negative_density_integrable (hA n))
    (fun n => ae_of_all volume (actual_negative_density_nonneg _))
    (ae_of_all volume (fun u => (actual_negative_density_fixed_tendsto hI u).comp hs))
    (actual_negative_limit_not_integrable hI)
  refine ⟨B,fun n => ?_⟩
  change (∫ u, actualNegativeDensity (R+(n:ℝ)) u) ≤ B
  rw [actual_negative_density_integral (hA n)]
  exact hcost _ (by positivity)

end ContinuousResearch.ActualNegativeCost
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variant9b19adb3a0ba8df8bdb583d088006dff8012638e9330814d33b3d5bff68ded53.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `508154e67c0786f7de4aeabc3ab7ac043e6887fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
