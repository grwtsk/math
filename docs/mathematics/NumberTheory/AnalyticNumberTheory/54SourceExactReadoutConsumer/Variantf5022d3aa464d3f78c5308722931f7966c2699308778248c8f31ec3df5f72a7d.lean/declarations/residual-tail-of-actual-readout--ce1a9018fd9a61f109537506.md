# residual_tail_of_actual_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b224bc23-6c3a-0e0c-fb27-ef31d76bc866",
  "kind": "theorem",
  "lexical_name": "residual_tail_of_actual_readout",
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
  "slug": "residual-tail-of-actual-readout--ce1a9018fd9a61f109537506",
  "source": {
    "blob": "74fb54ef4d42ab3a90ee138d3c55c4af51fde6d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/54SourceExactReadoutConsumer/Variantf5022d3aa464d3f78c5308722931f7966c2699308778248c8f31ec3df5f72a7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce1a9018fd9a61f109537506ded83df0981ebb305a03533be1ee7559fc02eea8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/54SourceExactReadoutConsumer/Variantf5022d3aa464d3f78c5308722931f7966c2699308778248c8f31ec3df5f72a7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b224bc23-6c3a-0e0c-fb27-ef31d76bc866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_tail_of_actual_readout (D rho Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∃ C_D : ℝ, 0 ≤ C_D ∧ ∀ A : ℝ, Q ≤ A →
      mertensResidual A ≤ exactReadoutResidualBudget D rho Q C_D := by
  have hQ1 : (1 : ℝ) ≤ Q := by linarith
  obtain ⟨C_D, hD0, hledger⟩ := actual_ledger_tail_error hQ1
  refine ⟨C_D, hD0, ?_⟩
  intro A hQA
  have hA1 := hQ1.trans hQA
  have hr := hreadout A hQA
  have hl := (abs_le.mp (hledger A hQA)).2
  rw [actual_residual_decomposition A hA1]
  apply le_trans ?_ (le_max_right _ _)
  unfold exactSamplingLedgerCost
  linarith

/-- Original all-real observable with its original strict prime-prefix inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/54SourceExactReadoutConsumer/Variantf5022d3aa464d3f78c5308722931f7966c2699308778248c8f31ec3df5f72a7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/54SourceExactReadoutConsumer/Variantf5022d3aa464d3f78c5308722931f7966c2699308778248c8f31ec3df5f72a7d.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74fb54ef4d42ab3a90ee138d3c55c4af51fde6d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
