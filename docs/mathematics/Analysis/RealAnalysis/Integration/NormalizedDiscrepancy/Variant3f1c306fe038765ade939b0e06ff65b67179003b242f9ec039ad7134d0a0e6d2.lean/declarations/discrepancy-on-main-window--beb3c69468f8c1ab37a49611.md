# discrepancy_on_main_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4571915-ba73-dcf1-2c32-e7f59eb09b30",
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
  "slug": "discrepancy-on-main-window--beb3c69468f8c1ab37a49611",
  "source": {
    "blob": "ceeaab0f42e24f9ff6acd368020b6a45a00eb4ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 13,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variant3f1c306fe038765ade939b0e06ff65b67179003b242f9ec039ad7134d0a0e6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beb3c69468f8c1ab37a49611727bb9f2e4db034ef44683bfe7de59d2567dcfb1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variant3f1c306fe038765ade939b0e06ff65b67179003b242f9ec039ad7134d0a0e6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4571915-ba73-dcf1-2c32-e7f59eb09b30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–25.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variant3f1c306fe038765ade939b0e06ff65b67179003b242f9ec039ad7134d0a0e6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variant3f1c306fe038765ade939b0e06ff65b67179003b242f9ec039ad7134d0a0e6d2.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceeaab0f42e24f9ff6acd368020b6a45a00eb4ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
