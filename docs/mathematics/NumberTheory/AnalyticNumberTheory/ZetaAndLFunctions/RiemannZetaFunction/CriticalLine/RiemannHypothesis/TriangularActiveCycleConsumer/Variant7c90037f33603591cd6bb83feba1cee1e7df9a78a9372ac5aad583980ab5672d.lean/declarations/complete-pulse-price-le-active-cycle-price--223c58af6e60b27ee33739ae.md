# complete_pulse_price_le_active_cycle_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:077f7dd3-4062-16e5-5520-7cdb2f18248b",
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
  "slug": "complete-pulse-price-le-active-cycle-price--223c58af6e60b27ee33739ae",
  "source": {
    "blob": "de680b176ac3009191bd9aac4fc60b41bc5589af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variant7c90037f33603591cd6bb83feba1cee1e7df9a78a9372ac5aad583980ab5672d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:223c58af6e60b27ee33739ae540841d1cc347d52740363dd4ad40b583f932b9e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variant7c90037f33603591cd6bb83feba1cee1e7df9a78a9372ac5aad583980ab5672d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:077f7dd3-4062-16e5-5520-7cdb2f18248b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–117.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variant7c90037f33603591cd6bb83feba1cee1e7df9a78a9372ac5aad583980ab5672d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variant7c90037f33603591cd6bb83feba1cee1e7df9a78a9372ac5aad583980ab5672d.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de680b176ac3009191bd9aac4fc60b41bc5589af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
