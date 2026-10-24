# complete_pulse_price_le_active_cycle_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2969b941-474b-9d1c-2007-7c2c3dd70135",
  "kind": "theorem",
  "lexical_name": "complete_pulse_price_le_active_cycle_price",
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
  "slug": "complete-pulse-price-le-active-cycle-price--c6b0eb100bb01d100e4b7705",
  "source": {
    "blob": "3009f6a548bc89233ad2e0146d7943cd76999a58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 119,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variantef59c806ddeb19e8f0b9f6ca0eeaf53bea3993bb15c24606e32b6ed8624ad9b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6b0eb100bb01d100e4b77052ffc031b17551a7add8ef44ed41eb289be97104c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variantef59c806ddeb19e8f0b9f6ca0eeaf53bea3993bb15c24606e32b6ed8624ad9b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2969b941-474b-9d1c-2007-7c2c3dd70135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_pulse_price_le_active_cycle_price (j : ℕ) {a p : ℝ}
    (ha : 0 ≤ a) (hp : 1 ≤ p) : realRecordPrice j a p ≤ activeRecordPrice j a p := by
  rw [full_real_record_price_is_exact_native_price j ha,
    exact_full_native_record_price j ha, TriangularPulseRealP.price,
    activeRecordPrice, full_active_cycle_rise_is_complete_pulse_debt j ha]
  apply div_le_div_of_nonneg_left
    (Real.rpow_nonneg ((by positivity : 0 ≤ a / (16 * linearSize j)).trans
      (complete_pulse_debt_lower (by unfold linearSize; omega) ha)) p)
    (Real.rpow_pos_of_pos (active_native_width_positive j) _)
  exact Real.rpow_le_rpow (active_native_width_positive j).le
    (active_width_le_complete_inventory_width j) (sub_nonneg.mpr hp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variantef59c806ddeb19e8f0b9f6ca0eeaf53bea3993bb15c24606e32b6ed8624ad9b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variantef59c806ddeb19e8f0b9f6ca0eeaf53bea3993bb15c24606e32b6ed8624ad9b0.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3009f6a548bc89233ad2e0146d7943cd76999a58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
