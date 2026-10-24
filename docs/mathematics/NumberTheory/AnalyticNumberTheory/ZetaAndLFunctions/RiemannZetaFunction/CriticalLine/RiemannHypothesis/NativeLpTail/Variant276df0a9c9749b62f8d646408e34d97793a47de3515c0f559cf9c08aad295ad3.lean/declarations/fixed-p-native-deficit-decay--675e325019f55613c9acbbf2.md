# fixed_p_native_deficit_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e135ef1-437d-06e7-74c6-30e109c06c85",
  "kind": "theorem",
  "lexical_name": "fixed_p_native_deficit_decay",
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
  "slug": "fixed-p-native-deficit-decay--675e325019f55613c9acbbf2",
  "source": {
    "blob": "9c81cdb3515fe2ad1912214fda44060c6b9abe46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 133,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variant276df0a9c9749b62f8d646408e34d97793a47de3515c0f559cf9c08aad295ad3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:675e325019f55613c9acbbf284161a94af02d3348dc256e8995c83800a209638",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variant276df0a9c9749b62f8d646408e34d97793a47de3515c0f559cf9c08aad295ad3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e135ef1-437d-06e7-74c6-30e109c06c85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_p_native_deficit_decay {N : ℕ} {p : ℝ} (hN : 1 ≤ N) (hp : 1 ≤ p)
    (hfinite : Summable (energyTerm N p)) :
    Tendsto (fun J => NativeRecordTailEnergy.remainingRecordHeight N J *
      (N + J : ℕ) ^ ((1 - p⁻¹) / 2)) atTop (𝓝 0) := by
  have htail : Tendsto (tailEnergy N p) atTop (𝓝 0) := tendsto_sum_nat_add (energyTerm N p)
  have hpinv : 0 < p⁻¹ := inv_pos.mpr (lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hp)
  have hupper : Tendsto (fun J => (2 : ℝ) ^ (1 - p⁻¹) * (tailEnergy N p J) ^ p⁻¹)
      atTop (𝓝 0) := by
    simpa only [mul_zero] using tendsto_const_nhds.mul (htail.rpow_const_nhds_zero hpinv)
  apply squeeze_zero (fun J => mul_nonneg
    (tsum_nonneg (fun j => CausalRecords.recordIncrement_nonneg _ _))
    (Real.rpow_nonneg (Nat.cast_nonneg _) _)) _ hupper
  intro J
  change NativeRecordTailEnergy.remainingRecordHeight N J *
    (N + J : ℕ) ^ ((1 - p⁻¹) / 2) ≤ _
  have h := mul_le_mul_of_nonneg_right (actual_tail_holder hN hp hfinite J)
    (Real.rpow_nonneg (Nat.cast_nonneg (N + J)) ((1 - p⁻¹) / 2))
  have hx : (0 : ℝ) < (N + J : ℕ) := by exact_mod_cast (by omega : 0 < N + J)
  calc
    _ ≤ _ := h
    _ = _ := by
      rw [mul_assoc, mul_comm ((tailEnergy N p J) ^ p⁻¹), ← mul_assoc, native_scale_cancels hx]

end
end GRWTSK.RiemannHypothesis.Conversation.NativeLpTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variant276df0a9c9749b62f8d646408e34d97793a47de3515c0f559cf9c08aad295ad3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variant276df0a9c9749b62f8d646408e34d97793a47de3515c0f559cf9c08aad295ad3.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c81cdb3515fe2ad1912214fda44060c6b9abe46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
