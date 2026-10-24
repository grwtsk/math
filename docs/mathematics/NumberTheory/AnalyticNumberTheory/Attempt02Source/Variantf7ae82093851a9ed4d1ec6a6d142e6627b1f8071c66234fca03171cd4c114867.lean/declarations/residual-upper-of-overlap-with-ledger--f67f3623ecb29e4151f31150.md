# residual_upper_of_overlap_with_ledger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfa024f8-969f-e71f-92c2-6efc5ce16369",
  "kind": "theorem",
  "lexical_name": "residual_upper_of_overlap_with_ledger",
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
  "slug": "residual-upper-of-overlap-with-ledger--f67f3623ecb29e4151f31150",
  "source": {
    "blob": "fe3f05cc6aa9b3cd58643a86c4b18ee364f0e9f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantf7ae82093851a9ed4d1ec6a6d142e6627b1f8071c66234fca03171cd4c114867.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f67f3623ecb29e4151f31150b8b916574158ceb216a9643f4f6cfa45ed5e7e3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantf7ae82093851a9ed4d1ec6a6d142e6627b1f8071c66234fca03171cd4c114867.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfa024f8-969f-e71f-92c2-6efc5ce16369`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_upper_of_overlap_with_ledger (D R C_F : ℝ)
    (hledger : ∀ A : ℝ, 1 ≤ A → |betaMainLedger A + independentMainTerm A| ≤ C_F)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D)
    (A : ℝ) (hA : max 91 R ≤ A) :
    mertensResidual A ≤ exactOverlapResidualBudget D (max 91 R) C_F := by
  have hQ : (91 : ℝ) ≤ max 91 R := le_max_left _ _
  have hA1 : (1 : ℝ) ≤ A := by linarith [hQ.trans hA]
  have hoverA := hover A ((le_max_right _ _).trans hA)
  have hstrip := actual_surplus_le_remainingOverlap_add_exact_strip hQ hA
  have hledgerA := (abs_le.mp (hledger A hA1)).2
  rw [actual_residual_decomposition A hA1]
  have hraw : (VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A) +
      (betaMainLedger A + independentMainTerm A) ≤ D + exactStripCost (max 91 R) + C_F := by
    unfold exactStripCost
    linarith
  exact hraw.trans (le_max_right _ _)

/-- The established actual ledger theorem supplies its own constant, without a new premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantf7ae82093851a9ed4d1ec6a6d142e6627b1f8071c66234fca03171cd4c114867.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantf7ae82093851a9ed4d1ec6a6d142e6627b1f8071c66234fca03171cd4c114867.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe3f05cc6aa9b3cd58643a86c4b18ee364f0e9f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
