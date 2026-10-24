# weighted_column_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9eac8442-5de0-a36a-d68e-d4f029efb898",
  "kind": "theorem",
  "lexical_name": "weighted_column_integral_eq",
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
  "slug": "weighted-column-integral-eq--4d76819d4163caa0cfbf0cfd",
  "source": {
    "blob": "2b6865df4b55ffef7276d17cfff39234fe2e6876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variant5aa3c93a803516e0ffc25b4a0fc7471257949c23c8e2149a09469798611a79ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d76819d4163caa0cfbf0cfd45d033f7aeafa8c6f7fa10f8a2f33cf33d6f981b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variant5aa3c93a803516e0ffc25b4a0fc7471257949c23c8e2149a09469798611a79ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9eac8442-5de0-a36a-d68e-d4f029efb898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_column_integral_eq {A : ℝ} (hA : 1 ≤ A) :
    (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      Real.exp (-s / 2) * actualLogColumnPrefix A s) =
        2 * (actualCenteredColumnHalfInventory A - actualCenteredColumnTerminalTrace A) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  have hK : U + 1 ≤ K := actual_column_window_nonempty hA
  have hK0 : 0 < K := by omega
  have hn : U ≤ K - 1 := by omega
  have heq : Finset.Ico (U + 1) K = Finset.Ioc U (K - 1) := by
    ext k
    simp only [Finset.mem_Ico, Finset.mem_Ioc]
    omega
  have ht := actual_finite_log_prefix_transport A K hK
    (fun s : ℝ => Real.exp (-s / 2)) (by fun_prop)
  have hc (k : ℕ) (hk : k ∈ Finset.Ico (U + 1) K) :
      (∫ s in Real.log (k : ℝ)..Real.log ((k : ℝ) + 1), Real.exp (-s / 2)) =
        2 * (1 / Real.sqrt (k : ℝ) - 1 / Real.sqrt ((k + 1 : ℕ) : ℝ)) := by
    have hk0 : 0 < (k : ℝ) := by
      have := (Finset.mem_Ico.mp hk).1
      exact_mod_cast (show 0 < k by omega)
    rw [exp_neg_half_integral _ _ (Real.log_le_log hk0 (by linarith)),
      exp_neg_log_half _ hk0, exp_neg_log_half _ (by positivity)]
    simp
  have hsum : (∑ k ∈ Finset.Ico (U + 1) K,
      (∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
        ∫ s in Real.log (k : ℝ)..Real.log ((k : ℝ) + 1), Real.exp (-s / 2)) =
      2 * (actualCenteredColumnHalfInventory A - actualCenteredColumnTerminalTrace A) := by
    calc
      _ = ∑ k ∈ Finset.Ico (U + 1) K,
          (∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
            (2 * (1 / Real.sqrt (k : ℝ) - 1 / Real.sqrt ((k + 1 : ℕ) : ℝ))) := by
        apply Finset.sum_congr rfl
        intro k hk
        rw [hc k hk]
      _ = _ := by
        simp_rw [show ∀ k : ℕ, (∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
          (2 * (1 / Real.sqrt (k : ℝ) - 1 / Real.sqrt ((k + 1 : ℕ) : ℝ))) =
            2 * ((∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
              (1 / Real.sqrt (k : ℝ) - 1 / Real.sqrt ((k + 1 : ℕ) : ℝ))) by intro k; ring]
        rw [← Finset.mul_sum, heq, prefix_telescope U (K - 1) hn]
        simp only [Nat.sub_add_cancel hK0, mul_one_div]
        rfl
  calc
    _ = ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..Real.log (K : ℝ),
        actualLogColumnPrefix A s * Real.exp (-s / 2) := by
      apply intervalIntegral.integral_congr
      intro s _
      ring
    _ = _ := ht.symm.trans hsum

/-- Exact closed centered-beta half inventory with its true terminal K prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variant5aa3c93a803516e0ffc25b4a0fc7471257949c23c8e2149a09469798611a79ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variant5aa3c93a803516e0ffc25b4a0fc7471257949c23c8e2149a09469798611a79ca.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b6865df4b55ffef7276d17cfff39234fe2e6876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
