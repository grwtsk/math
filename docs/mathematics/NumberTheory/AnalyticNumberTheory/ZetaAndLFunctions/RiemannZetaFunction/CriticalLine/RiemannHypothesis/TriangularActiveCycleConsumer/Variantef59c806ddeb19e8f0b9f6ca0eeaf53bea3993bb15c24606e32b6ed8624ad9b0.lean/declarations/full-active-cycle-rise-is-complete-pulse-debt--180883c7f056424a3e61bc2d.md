# full_active_cycle_rise_is_complete_pulse_debt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4358048d-9dc4-fd93-e73e-d616e8b65a85",
  "kind": "theorem",
  "lexical_name": "full_active_cycle_rise_is_complete_pulse_debt",
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
  "slug": "full-active-cycle-rise-is-complete-pulse-debt--180883c7f056424a3e61bc2d",
  "source": {
    "blob": "3009f6a548bc89233ad2e0146d7943cd76999a58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variantef59c806ddeb19e8f0b9f6ca0eeaf53bea3993bb15c24606e32b6ed8624ad9b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:180883c7f056424a3e61bc2d12cf1a25be0325c05707eff53057eac1cd10ccca",
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

Occurrence: `result:4358048d-9dc4-fd93-e73e-d616e8b65a85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_active_cycle_rise_is_complete_pulse_debt (j : ℕ) {a : ℝ} (ha : 0 ≤ a) :
    runningRecord linearSize a ((linearSize j) ^ 2 + 2 * linearSize j : ℕ) -
      runningRecord linearSize a ((linearSize j) ^ 2 + 1 : ℕ) = debt (linearSize j) a := by
  have hM : 2 ≤ linearSize j := by unfold linearSize; omega
  have hn : 1 ≤ (linearSize j) ^ 2 := by nlinarith
  have hlo : (1 : ℝ) ≤ ((linearSize j) ^ 2 + 1 : ℕ) := by exact_mod_cast (by omega : 1 ≤
    (linearSize j) ^ 2 + 1)
  have hhi : (1 : ℝ) ≤ ((linearSize j) ^ 2 + 2 * linearSize j : ℕ) := by exact_mod_cast (by
    omega : 1 ≤ (linearSize j) ^ 2 + 2 * linearSize j)
  rw [full_real_running_record_is_unchanged_primitive linearSize linear_size_sufficient ha hhi,
    full_real_running_record_is_unchanged_primitive linearSize linear_size_sufficient ha hlo,
    exact_integer_bank_primitive, exact_integer_bank_primitive]
  have hzero := literal_cycle_has_zero_boundary_storage j a
  have hfirst := unchanged_bank_primitive_increment linearSize linear_size_sufficient hn a
  have hlast := unchanged_bank_primitive_increment linearSize linear_size_sufficient
    (by omega : 1 ≤ (linearSize j) ^ 2 + 2 * linearSize j) a
  rw [hzero.1, zero_mul] at hfirst
  rw [hzero.2, zero_mul] at hlast
  have h := full_linear_pulse_is_exact_record_growth j ha
  rw [every_endpoint_is_its_bank_record linearSize linear_size_sufficient ha] at h
  simp only [Nat.add_assoc] at h hlast
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variantef59c806ddeb19e8f0b9f6ca0eeaf53bea3993bb15c24606e32b6ed8624ad9b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variantef59c806ddeb19e8f0b9f6ca0eeaf53bea3993bb15c24606e32b6ed8624ad9b0.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3009f6a548bc89233ad2e0146d7943cd76999a58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
