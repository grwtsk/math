# actual_negative_curvature_budget_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58679a93-859a-adc1-1a76-a01048332a31",
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
  "slug": "actual-negative-curvature-budget-false--54e643ea81a522fb88d434d2",
  "source": {
    "blob": "4459cbd0518b1da539ac3d34286276194df91303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt02/Variant775967863fa80511ee61ea72aa55a5d2375fa2e6803272e3b16e97fcdf80b69c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54e643ea81a522fb88d434d2d00b37acd02287e1e9abd5da9f8fa2c2a68224eb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt02/Variant775967863fa80511ee61ea72aa55a5d2375fa2e6803272e3b16e97fcdf80b69c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58679a93-859a-adc1-1a76-a01048332a31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negative_curvature_budget_false
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) : ¬ NegativeCurvatureTailBudget := by
  rintro ⟨B,_hB,R,hR,hcost⟩
  let G : ℕ → ℝ → ℝ := fun n => actualNegativeDensity (R+(n:ℝ))
  have hA (n : ℕ) : 1 ≤ R+(n:ℝ) := by
    have hn : 0 ≤ (n:ℝ) := Nat.cast_nonneg n
    linarith
  have hs : Tendsto (fun n : ℕ => R+(n:ℝ)) atTop atTop :=
    tendsto_atTop_add_const_left atTop R
      (tendsto_natCast_atTop_atTop : Tendsto (fun n : ℕ => (n:ℝ)) atTop atTop)
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt02/Variant775967863fa80511ee61ea72aa55a5d2375fa2e6803272e3b16e97fcdf80b69c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt02/Variant775967863fa80511ee61ea72aa55a5d2375fa2e6803272e3b16e97fcdf80b69c.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4459cbd0518b1da539ac3d34286276194df91303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
