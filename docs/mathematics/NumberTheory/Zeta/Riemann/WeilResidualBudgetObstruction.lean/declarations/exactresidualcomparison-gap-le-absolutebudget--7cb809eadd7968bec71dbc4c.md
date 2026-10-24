# ExactResidualComparison.gap_le_absoluteBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ead08ad-7a4a-5719-780e-3c5f25bfb8c0",
  "kind": "theorem",
  "lexical_name": "ExactResidualComparison.gap_le_absoluteBudget",
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
  "slug": "exactresidualcomparison-gap-le-absolutebudget--7cb809eadd7968bec71dbc4c",
  "source": {
    "blob": "398b99facdc174d9812ca2596f8bda9ac6766c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cb809eadd7968bec71dbc4c551967f059191dc616c51b60b23388bf05982af6",
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

Occurrence: `result:3ead08ad-7a4a-5719-780e-3c5f25bfb8c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ExactResidualComparison.gap_le_absoluteBudget {T : Type*}
    (comparison : ExactResidualComparison T)
    (n : ℕ) (f : T) (μ : ℝ)
    (hnegative : comparison.target f f ≤ -μ)
    (hstage : 0 ≤ comparison.approximant n f f) :
    μ ≤ comparison.residuals.absoluteBudget n f f := by
  have hgap :
      μ ≤ -(comparison.target f f - comparison.approximant n f f) := by
    linarith
  calc
    μ ≤ -(comparison.target f f - comparison.approximant n f f) := hgap
    _ ≤ |comparison.target f f - comparison.approximant n f f| := neg_le_abs _
    _ = |comparison.residuals.total n f f| := by
      rw [comparison.identity n f f]
    _ ≤ comparison.residuals.absoluteBudget n f f :=
      comparison.residuals.abs_total_le_absoluteBudget n f f

/-- If the witness gap is positive and every stage is nonnegative, the full
nine-channel budget cannot decay to zero. This does not identify which of
the nine channels fails to decay. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `398b99facdc174d9812ca2596f8bda9ac6766c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
