# actual_tail_energy_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78242967-12b5-8b31-7c07-a042e0b1487b",
  "kind": "theorem",
  "lexical_name": "actual_tail_energy_lower_bound",
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
  "slug": "actual-tail-energy-lower-bound--01ce51a85a350cd633e9f867",
  "source": {
    "blob": "9c81cdb3515fe2ad1912214fda44060c6b9abe46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variant276df0a9c9749b62f8d646408e34d97793a47de3515c0f559cf9c08aad295ad3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01ce51a85a350cd633e9f86789b0548bbea4e4025c6520476fcbd3c8bcb024c6",
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

Occurrence: `result:78242967-12b5-8b31-7c07-a042e0b1487b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_tail_energy_lower_bound {N : ℕ} {p : ℝ} (hN : 1 ≤ N) (hp : 1 ≤ p)
    (hfinite : Summable (energyTerm N p)) (J : ℕ) :
    (NativeRecordTailEnergy.remainingRecordHeight N J) ^ p /
      (2 / Real.sqrt (N + J : ℕ)) ^ (p - 1) ≤ tailEnergy N p J := by
  have hppos : 0 < p := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hp
  have hW : 0 < (2 : ℝ) / Real.sqrt (N + J : ℕ) := by
    apply div_pos (by norm_num)
    apply Real.sqrt_pos.mpr
    exact_mod_cast (by omega : 0 < N + J)
  have hE : 0 ≤ tailEnergy N p J := tsum_nonneg (fun j => energy_term_nonneg hN p (j + J))
  have hρ : 0 ≤ NativeRecordTailEnergy.remainingRecordHeight N J :=
    tsum_nonneg (fun j => CausalRecords.recordIncrement_nonneg _ _)
  have h := Real.rpow_le_rpow hρ (actual_tail_holder hN hp hfinite J) hppos.le
  rw [Real.mul_rpow (Real.rpow_nonneg hW.le _) (Real.rpow_nonneg hE _),
    ← Real.rpow_mul hW.le, ← Real.rpow_mul hE] at h
  have ha : (1 - p⁻¹) * p = p - 1 := by field_simp
  rw [ha, inv_mul_cancel₀ hppos.ne', Real.rpow_one] at h
  apply (div_le_iff₀ (Real.rpow_pos_of_pos hW (p - 1))).mpr
  simpa only [mul_comm] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variant276df0a9c9749b62f8d646408e34d97793a47de3515c0f559cf9c08aad295ad3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variant276df0a9c9749b62f8d646408e34d97793a47de3515c0f559cf9c08aad295ad3.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c81cdb3515fe2ad1912214fda44060c6b9abe46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
