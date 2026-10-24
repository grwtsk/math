# embedded_matching_input_attains_complete_complex_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7b4f2ca-7237-39a5-0daa-58fcde519eb0",
  "kind": "theorem",
  "lexical_name": "embedded_matching_input_attains_complete_complex_price",
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
  "slug": "embedded-matching-input-attains-complete-complex-price--de3c5412526210a8c6e7b79d",
  "source": {
    "blob": "38e5bd7bb792728a55a71115302c180cf264b074",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantb5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de3c5412526210a8c6e7b79d146d8bde95ff519c62c7af6a43db15fe42f86a91",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantb5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7b4f2ca-7237-39a5-0daa-58fcde519eb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embedded_matching_input_attains_complete_complex_price {A a Z : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) :
    ‖complexTransformAt A (fun x ↦ (inputAt A a Z x : ℂ)) Z‖ =
      Z ^ a * normPrice A (a + 3 / 16) := by
  rw [embedded_real_input_retains_literal_transform,
    matching_input_attains_norm_at_every_positive_scale hZ, Complex.norm_real,
    Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (Real.rpow_nonneg hZ.le a)
      (full_native_norm_price_nonnegative hA _))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantb5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantb5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38e5bd7bb792728a55a71115302c180cf264b074` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
