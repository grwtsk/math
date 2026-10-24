# discrepancy_on_main_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a08888a8-c264-db83-ad0a-71f8e214934e",
  "kind": "theorem",
  "lexical_name": "discrepancy_on_main_window",
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
  "slug": "discrepancy-on-main-window--84d7e69f9fb7ad66a9ea2c79",
  "source": {
    "blob": "683e6a9262213a3abfb1a32ff90889e5c8b05494",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 21,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variantc3ec4ce60c67aae0e67873094520f1bf86053e73b42668fedabe994d02e5cd6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84d7e69f9fb7ad66a9ea2c79c1fba781a01ebf71828172a4564f20325c45f1e2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variantc3ec4ce60c67aae0e67873094520f1bf86053e73b42668fedabe994d02e5cd6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a08888a8-c264-db83-ad0a-71f8e214934e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrepancy_on_main_window {A c γ : ℝ} {E : ℝ → ℝ}
    (hA : 1 ≤ A) (hc : 0 ≤ c)
    (hE : ∀ t : ℝ, 0 < t → |E t + γ| ≤ c / t ^ 2)
    {y : ℝ} (hy : y ∈ Icc 0 A) :
    |E (2 * A - y) + γ| ≤ c / A ^ 2 := by
  have hAp : 0 < A := by linarith
  have ht : A ≤ 2 * A - y := by linarith [hy.2]
  have htp : 0 < 2 * A - y := lt_of_lt_of_le hAp ht
  have hs : A ^ 2 ≤ (2 * A - y) ^ 2 := by nlinarith
  exact (hE _ htp).trans ((div_le_div_iff₀ (sq_pos_of_pos htp)
    (sq_pos_of_pos hAp)).mpr (mul_le_mul_of_nonneg_left hs hc))

/-- The negative-axis term is retained through the positive-part discrepancy majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variantc3ec4ce60c67aae0e67873094520f1bf86053e73b42668fedabe994d02e5cd6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variantc3ec4ce60c67aae0e67873094520f1bf86053e73b42668fedabe994d02e5cd6f.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `683e6a9262213a3abfb1a32ff90889e5c8b05494` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
