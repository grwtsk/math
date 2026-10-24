# ExactResidualComparison.no_vanishing_absoluteBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74819a8d-ef0a-bb1f-6603-19f6bd5140bc",
  "kind": "theorem",
  "lexical_name": "ExactResidualComparison.no_vanishing_absoluteBudget",
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
  "slug": "exactresidualcomparison-no-vanishing-absolutebudget--37b34d15ee1b08b26dba17b2",
  "source": {
    "blob": "398b99facdc174d9812ca2596f8bda9ac6766c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37b34d15ee1b08b26dba17b299a33dc4739579bcc48e2b186775f8a938f2767b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74819a8d-ef0a-bb1f-6603-19f6bd5140bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ExactResidualComparison.no_vanishing_absoluteBudget {T : Type*}
    (comparison : ExactResidualComparison T)
    (f : T) (μ : ℝ)
    (hμ : 0 < μ)
    (hnegative : comparison.target f f ≤ -μ)
    (hstage : ∀ n, 0 ≤ comparison.approximant n f f) :
    ¬ GRWTSK.Analysis.ErrorBounds.VanishesAtInfinity
      (fun n => comparison.residuals.absoluteBudget n f f) := by
  intro hvanishes
  obtain ⟨N, hN⟩ := hvanishes (μ / 2) (by linarith)
  have hlower := comparison.gap_le_absoluteBudget N f μ hnegative (hstage N)
  have hnonnegative := comparison.residuals.absoluteBudget_nonnegative N f f
  have hupper : comparison.residuals.absoluteBudget N f f ≤ μ / 2 := by
    simpa only [abs_of_nonneg hnonnegative] using hN N (le_refl N)
  linarith

/-! A rational sharpness fixture. Every omitted channel is exactly zero, while
the tail is -1. Dropping the tail would yield a false zero comparison budget. -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `398b99facdc174d9812ca2596f8bda9ac6766c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
