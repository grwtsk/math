# upper_even_primePow_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c812154b-de66-2141-397e-d028ac5cc18c",
  "kind": "theorem",
  "lexical_name": "upper_even_primePow_unique",
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
  "slug": "upper-even-primepow-unique--09c746b2ee8efdffa7e49c37",
  "source": {
    "blob": "90d7385fc947279b136d7c001f44b47a0617e7f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 202,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c746b2ee8efdffa7e49c37a1f2942f5fe2beb30b6ca1241173acb6bf9ba802",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c812154b-de66-2141-397e-d028ac5cc18c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem upper_even_primePow_unique {A : ℝ} {n m : ℕ}
    (hn : n ∈ ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)).filter
      (fun n : ℕ => 2 * Real.exp (2 * A) / 3 < (n : ℝ)))
    (hm : m ∈ ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)).filter
      (fun n : ℕ => 2 * Real.exp (2 * A) / 3 < (n : ℝ)))
    (hnP : IsPrimePow n) (hmP : IsPrimePow m) : n = m := by
  obtain ⟨hnE, hnlo⟩ := Finset.mem_filter.mp hn
  obtain ⟨hmE, hmlo⟩ := Finset.mem_filter.mp hm
  obtain ⟨hnI, hn2⟩ := Finset.mem_filter.mp hnE
  obtain ⟨hmI, hm2⟩ := Finset.mem_filter.mp hmE
  obtain ⟨j, hj0, hjn, hjpow⟩ := even_primePow hnP hn2
  obtain ⟨k, hk0, hkm, hkpow⟩ := even_primePow hmP hm2
  have hnu : (n : ℝ) ≤ Real.exp (2 * A) :=
    (Nat.cast_le.mpr (Finset.mem_Icc.mp hnI).2).trans (Nat.floor_le (Real.exp_pos _).le)
  have hmu : (m : ℝ) ≤ Real.exp (2 * A) :=
    (Nat.cast_le.mpr (Finset.mem_Icc.mp hmI).2).trans (Nat.floor_le (Real.exp_pos _).le)
  have hnotlt : ¬j < k := by
    intro hlt
    have hpow : 2 * n ≤ m := by
      rw [← hjpow, ← hkpow]
      have hp := Nat.pow_le_pow_right (by norm_num : 0 < 2) (by omega : j + 1 ≤ k)
      simpa only [pow_succ, Nat.mul_comm] using hp
    have hreal : (2 : ℝ) * n ≤ m := by exact_mod_cast hpow
    nlinarith [Real.exp_pos (2 * A)]
  have hnotgt : ¬k < j := by
    intro hlt
    have hpow : 2 * m ≤ n := by
      rw [← hjpow, ← hkpow]
      have hp := Nat.pow_le_pow_right (by norm_num : 0 < 2) (by omega : k + 1 ≤ j)
      simpa only [pow_succ, Nat.mul_comm] using hp
    have hreal : (2 : ℝ) * m ≤ n := by exact_mod_cast hpow
    nlinarith [Real.exp_pos (2 * A)]
  have hjk : j = k := by omega
  rw [← hjpow, ← hkpow, hjk]

/-- Complete even-product compensation in the upper band has at most one nonzero prime-power atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90d7385fc947279b136d7c001f44b47a0617e7f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
