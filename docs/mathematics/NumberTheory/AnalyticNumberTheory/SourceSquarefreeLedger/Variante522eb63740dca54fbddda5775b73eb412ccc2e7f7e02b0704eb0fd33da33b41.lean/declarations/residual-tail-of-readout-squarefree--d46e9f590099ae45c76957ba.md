# residual_tail_of_readout_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18be4c2b-edc1-307d-7034-8f71f62d8d45",
  "kind": "theorem",
  "lexical_name": "residual_tail_of_readout_squarefree",
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
  "slug": "residual-tail-of-readout-squarefree--d46e9f590099ae45c76957ba",
  "source": {
    "blob": "7f40bb4e41a37f529cd1457d2cf04354626b7330",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSquarefreeLedger/Variante522eb63740dca54fbddda5775b73eb412ccc2e7f7e02b0704eb0fd33da33b41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d46e9f590099ae45c76957ba8674f23f3a2afbd73fa8e9a6844321634304cca7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceSquarefreeLedger/Variante522eb63740dca54fbddda5775b73eb412ccc2e7f7e02b0704eb0fd33da33b41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18be4c2b-edc1-307d-7034-8f71f62d8d45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_tail_of_readout_squarefree (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, Q <= A -> mertensResidual A <= squarefreeResidualBudget D rho Q := by
  intro A hQA
  have hA : (1 : Real) <= A := by linarith
  have hr := hreadout A hQA
  have hl := (abs_le.mp (actual_ledger_error_tail_squarefree Q hQ A hQA)).2
  rw [actual_residual_decomposition A hA]
  apply le_trans ?_ (le_max_right _ _)
  change _ <= D + rho + squarefreeLedgerCost Q
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSquarefreeLedger/Variante522eb63740dca54fbddda5775b73eb412ccc2e7f7e02b0704eb0fd33da33b41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSquarefreeLedger/Variante522eb63740dca54fbddda5775b73eb412ccc2e7f7e02b0704eb0fd33da33b41.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f40bb4e41a37f529cd1457d2cf04354626b7330` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
