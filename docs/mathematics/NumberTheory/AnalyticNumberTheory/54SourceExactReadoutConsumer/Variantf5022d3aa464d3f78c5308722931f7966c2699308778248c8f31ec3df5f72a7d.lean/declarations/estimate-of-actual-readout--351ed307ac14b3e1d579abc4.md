# estimate_of_actual_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93bc6762-624b-48d7-9e74-49d2e2625273",
  "kind": "theorem",
  "lexical_name": "estimate_of_actual_readout",
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
  "slug": "estimate-of-actual-readout--351ed307ac14b3e1d579abc4",
  "source": {
    "blob": "74fb54ef4d42ab3a90ee138d3c55c4af51fde6d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/54SourceExactReadoutConsumer/Variantf5022d3aa464d3f78c5308722931f7966c2699308778248c8f31ec3df5f72a7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:351ed307ac14b3e1d579abc4824959920d4bfe8e4925369e5068784d9cf66f12",
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

Occurrence: `result:93bc6762-624b-48d7-9e74-49d2e2625273`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_actual_readout (D rho Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨C_D, _, hres⟩ := residual_tail_of_actual_readout D rho Q hQ hreadout
  exact estimate_of_mertens_residual_tail
    ⟨exactReadoutResidualBudget D rho Q C_D,
      exactReadoutResidualBudget_nonneg _ _ _ _, Q, by linarith, hres⟩

end RH16ExactReadoutConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/54SourceExactReadoutConsumer/Variantf5022d3aa464d3f78c5308722931f7966c2699308778248c8f31ec3df5f72a7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/54SourceExactReadoutConsumer/Variantf5022d3aa464d3f78c5308722931f7966c2699308778248c8f31ec3df5f72a7d.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74fb54ef4d42ab3a90ee138d3c55c4af51fde6d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
