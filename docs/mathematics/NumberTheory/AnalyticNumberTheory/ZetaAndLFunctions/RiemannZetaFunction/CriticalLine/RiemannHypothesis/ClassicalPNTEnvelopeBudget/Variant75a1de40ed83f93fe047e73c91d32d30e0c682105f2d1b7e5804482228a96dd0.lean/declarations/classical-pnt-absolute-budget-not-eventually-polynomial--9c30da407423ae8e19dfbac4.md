# classical_pnt_absolute_budget_not_eventually_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1b490ac-5cb2-6a83-9151-4ec6434ffaad",
  "kind": "theorem",
  "lexical_name": "classical_pnt_absolute_budget_not_eventually_polynomial",
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
  "slug": "classical-pnt-absolute-budget-not-eventually-polynomial--9c30da407423ae8e19dfbac4",
  "source": {
    "blob": "2804f684d1d9a8833e61e1e99f48caa15e10022d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ClassicalPNTEnvelopeBudget/Variant75a1de40ed83f93fe047e73c91d32d30e0c682105f2d1b7e5804482228a96dd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c30da407423ae8e19dfbac42b7764c864b91a0848370c1bd7271e949ffb9380",
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

Occurrence: `result:a1b490ac-5cb2-6a83-9151-4ec6434ffaad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classical_pnt_absolute_budget_not_eventually_polynomial {c : ℝ} (hc : 0 ≤ c) :
    ¬ EventuallyPolynomialUpper (paidBudget (envelope c)) := by
  apply proposed_absolute_payment_has_no_eventual_polynomial_upper (envelope c)
    (R := entrance c) (le_max_left _ _)
  · intro A hA
    exact classical_source_window_payment_integrable ((le_max_left _ _).trans hA)
  · intro A hA
    exact full_source_window_has_quarter_envelope hc hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ClassicalPNTEnvelopeBudget/Variant75a1de40ed83f93fe047e73c91d32d30e0c682105f2d1b7e5804482228a96dd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ClassicalPNTEnvelopeBudget/Variant75a1de40ed83f93fe047e73c91d32d30e0c682105f2d1b7e5804482228a96dd0.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2804f684d1d9a8833e61e1e99f48caa15e10022d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
