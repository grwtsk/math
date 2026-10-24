# new_products_zero_of_product_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ab87ca5-45d9-2328-95d6-eed00690e6cb",
  "kind": "theorem",
  "lexical_name": "new_products_zero_of_product_cutoff",
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
  "slug": "new-products-zero-of-product-cutoff--17726d15a63a3b2c16d3968d",
  "source": {
    "blob": "70b3589dae9518e62379cf2f8c5df271996897af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 164,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variantf8dd6559c142ebe12b2a3e6afe110d19a3a87bb81aad1fe46c30675828395652.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17726d15a63a3b2c16d3968db8446505e70898a187999de146f4dacd7fd4ea39",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variantf8dd6559c142ebe12b2a3e6afe110d19a3a87bb81aad1fe46c30675828395652.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ab87ca5-45d9-2328-95d6-eed00690e6cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem new_products_zero_of_product_cutoff (A : ℝ) (hA : 1 ≤ A) (U N : ℕ)
    (hprod : sourceKernelCutoff A < (U + 1) * (N + 1)) :
    ∀ n ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((n * (N + 1) : ℕ) : ℝ) = 0 := by
  intro n hn
  apply sourcePlainWeight_zero_of_cutoff_lt A hA
  exact hprod.trans_le (Nat.mul_le_mul_right _ (by have := (Finset.mem_Ioc.mp hn).1; omega))

/-- The strengthened support criterion permits events below the old support-complete cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variantf8dd6559c142ebe12b2a3e6afe110d19a3a87bb81aad1fe46c30675828395652.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variantf8dd6559c142ebe12b2a3e6afe110d19a3a87bb81aad1fe46c30675828395652.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70b3589dae9518e62379cf2f8c5df271996897af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
