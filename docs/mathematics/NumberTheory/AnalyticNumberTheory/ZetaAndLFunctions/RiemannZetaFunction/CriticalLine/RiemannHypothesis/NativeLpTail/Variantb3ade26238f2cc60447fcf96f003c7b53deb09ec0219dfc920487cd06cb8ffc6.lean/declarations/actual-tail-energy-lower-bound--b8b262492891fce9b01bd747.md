# actual_tail_energy_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c50e62c9-7aa1-1bb4-a075-e9e2abf0c89d",
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
  "slug": "actual-tail-energy-lower-bound--b8b262492891fce9b01bd747",
  "source": {
    "blob": "6163b06d1fb9815bb76129adbac655bbcf000f39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variantb3ade26238f2cc60447fcf96f003c7b53deb09ec0219dfc920487cd06cb8ffc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8b262492891fce9b01bd7472f7a824c1aa8786eba3e652930a4068de4b900dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variantb3ade26238f2cc60447fcf96f003c7b53deb09ec0219dfc920487cd06cb8ffc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c50e62c9-7aa1-1bb4-a075-e9e2abf0c89d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–108.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variantb3ade26238f2cc60447fcf96f003c7b53deb09ec0219dfc920487cd06cb8ffc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variantb3ade26238f2cc60447fcf96f003c7b53deb09ec0219dfc920487cd06cb8ffc6.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6163b06d1fb9815bb76129adbac655bbcf000f39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
