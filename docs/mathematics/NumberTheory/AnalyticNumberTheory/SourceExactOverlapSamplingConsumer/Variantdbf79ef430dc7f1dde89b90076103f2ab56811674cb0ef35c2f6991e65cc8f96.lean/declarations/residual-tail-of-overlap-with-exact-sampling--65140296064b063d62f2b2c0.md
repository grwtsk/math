# residual_tail_of_overlap_with_exact_sampling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06fe6842-3c52-71ee-9521-e3b854d1c360",
  "kind": "theorem",
  "lexical_name": "residual_tail_of_overlap_with_exact_sampling",
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
  "slug": "residual-tail-of-overlap-with-exact-sampling--65140296064b063d62f2b2c0",
  "source": {
    "blob": "45f7d5366821707d728b095f65135565b8e3deb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65140296064b063d62f2b2c0c631f1d3d9b692689aa1d3ed1f1a8310c81be2d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06fe6842-3c52-71ee-9521-e3b854d1c360`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_tail_of_overlap_with_exact_sampling (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∃ C_D : ℝ, 0 ≤ C_D ∧ ∀ A : ℝ, max 91 R ≤ A →
      mertensResidual A ≤ exactOverlapSamplingResidualBudget D (max 91 R) C_D := by
  have hQ : (91 : ℝ) ≤ max 91 R := le_max_left _ _
  have hQ1 : (1 : ℝ) ≤ max 91 R := by linarith
  obtain ⟨C_D, hD0, hledger⟩ := actual_ledger_tail_error hQ1
  refine ⟨C_D, hD0, ?_⟩
  intro A hQA
  have hA1 : (1 : ℝ) ≤ A := hQ1.trans hQA
  have hoverA := hover A ((le_max_right _ _).trans hQA)
  have hstrip := actual_surplus_le_remainingOverlap_add_exact_strip hQ hQA
  have hledgerA := (abs_le.mp (hledger A hQA)).2
  rw [actual_residual_decomposition A hA1]
  have hraw : (VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A) +
      (betaMainLedger A + independentMainTerm A) ≤ D + exactStripCost (max 91 R) +
        exactSamplingLedgerCost C_D (max 91 R) := by
    unfold exactStripCost exactSamplingLedgerCost
    linarith
  exact hraw.trans (le_max_right _ _)

/-- The direct exact original observable uses the same strict finite prefix and tail radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variantdbf79ef430dc7f1dde89b90076103f2ab56811674cb0ef35c2f6991e65cc8f96.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45f7d5366821707d728b095f65135565b8e3deb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
