# proposed_scaled_source_cost_not_eventually_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4306368-a5fc-7bd1-2af5-35b423338d93",
  "kind": "theorem",
  "lexical_name": "proposed_scaled_source_cost_not_eventually_polynomial",
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
  "slug": "proposed-scaled-source-cost-not-eventually-polynomial--566b17b1c4c7683e858a578c",
  "source": {
    "blob": "2804f684d1d9a8833e61e1e99f48caa15e10022d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ClassicalPNTEnvelopeBudget/Variant75a1de40ed83f93fe047e73c91d32d30e0c682105f2d1b7e5804482228a96dd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:566b17b1c4c7683e858a578c8780801f72eecb27e65c93ebb50d30ed691cd3e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ClassicalPNTEnvelopeBudget/Variant75a1de40ed83f93fe047e73c91d32d30e0c682105f2d1b7e5804482228a96dd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4306368-a5fc-7bd1-2af5-35b423338d93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proposed_scaled_source_cost_not_eventually_polynomial {c : ℝ} (hc : 0 ≤ c) :
    ¬ EventuallyPolynomialUpper (proposedSourceCost c) := by
  rintro ⟨m, C, R, hC, hR, hcap⟩
  apply classical_pnt_absolute_budget_not_eventually_polynomial hc
  let S : ℝ := max R (max (entrance c) 16)
  refine ⟨m, C, S, hC, hR.trans (le_max_left _ _), ?_⟩
  intro A hA
  have hRA : R ≤ A := (le_max_left _ _).trans hA
  have heA : entrance c ≤ A :=
    ((le_max_left _ _).trans (le_max_right _ _)).trans hA
  have h16 : 16 ≤ A := ((le_max_right _ _).trans (le_max_right _ _)).trans hA
  have hA1 : 1 ≤ A := by linarith
  have hbudget := source_quarter_budget_le_proposed_absolute_payment hA1 (envelope c)
    (classical_source_window_payment_integrable hA1)
    (full_source_window_has_quarter_envelope hc heA)
  have hquarter := exact_quarter_budget_dominates_subexponential_profile h16
  have hpaid : 0 ≤ paidBudget (envelope c) A := by
    have hp : 0 < SubexponentialCountermodel.comparisonProfile A := by
      unfold SubexponentialCountermodel.comparisonProfile
      positivity
    linarith
  have hfactor : 1 ≤ 8 + 20 / A := by
    have hp : 0 ≤ 20 / A := by positivity
    linarith
  have hle : paidBudget (envelope c) A ≤ proposedSourceCost c A := by
    unfold proposedSourceCost
    nlinarith
  exact hle.trans (hcap A hRA)

end
end GRWTSK.RiemannHypothesis.Conversation.ClassicalPNTEnvelopeBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ClassicalPNTEnvelopeBudget/Variant75a1de40ed83f93fe047e73c91d32d30e0c682105f2d1b7e5804482228a96dd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ClassicalPNTEnvelopeBudget/Variant75a1de40ed83f93fe047e73c91d32d30e0c682105f2d1b7e5804482228a96dd0.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2804f684d1d9a8833e61e1e99f48caa15e10022d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
