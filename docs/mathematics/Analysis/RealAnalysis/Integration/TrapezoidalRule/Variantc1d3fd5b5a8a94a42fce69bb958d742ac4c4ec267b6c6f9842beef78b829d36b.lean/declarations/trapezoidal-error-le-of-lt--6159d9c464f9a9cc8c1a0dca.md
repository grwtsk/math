# trapezoidal_error_le_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ade5edfecdaede77825cfc313a5a58d8ae303a92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:810d605a-0f38-ec05-1f41-a06a25d9e57c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f12b186c-35a2-4406-2419-f162be33a847",
  "kind": "lemma",
  "lexical_name": "trapezoidal_error_le_of_lt",
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
  "slug": "trapezoidal-error-le-of-lt--6159d9c464f9a9cc8c1a0dca",
  "source": {
    "blob": "ade5edfecdaede77825cfc313a5a58d8ae303a92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 184,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6159d9c464f9a9cc8c1a0dcaf0a80633ad3062cc8cc164ddb0185fce038e4127",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f12b186c-35a2-4406-2419-f162be33a847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma trapezoidal_error_le_of_lt {f : ℝ → ℝ} {ζ : ℝ} {a b : ℝ} (a_lt_b : a < b)
    (h_df : DifferentiableOn ℝ f (Icc a b))
    (h_ddf : DifferentiableOn ℝ (derivWithin f (Icc a b)) (Icc a b))
    (fpp_bound : ∀ x, |iteratedDerivWithin 2 f (Icc a b) x| ≤ ζ)
    {N : ℕ} (N_nonzero : 0 < N) :
    |trapezoidal_error f N a b| ≤ (b - a) ^ 3 * ζ / (12 * N ^ 2) := by
  let h := (b - a) / N
  let ak (k : ℕ) := a + k * h
  have h0 : ∀ k : ℕ, ak (k + 1) - ak k = h := by simp [ak, ← sub_mul]
  have hab : 0 < b - a := sub_pos.mpr a_lt_b
  have hpos : 0 < h := by positivity
  have hb : b = a + N * h := by field
  rw [hb, ← sum_trapezoidal_error_adjacent_intervals N_nonzero
    (hb ▸ h_df.continuousOn.intervalIntegrable_of_Icc a_lt_b.le)]
  grw [abs_sum_le_sum_abs]
  suffices ∀ k ∈ range N, |trapezoidal_error f 1 (ak k) (ak (k + 1))| ≤ (ζ / 12) * h ^ 3 by
    norm_cast
    calc
      _ ≤ ∑ k ∈ range N, ζ / 12 * h ^ 3 := sum_le_sum this
      _ = N * (ζ / 12 * h ^ 3)          := by simp [sum_const]
      _ = _                             := by push_cast; field
  intro k hk
  rw [Finset.mem_range] at hk
  have h1 : a ≤ ak k := by simp only [ak, le_add_iff_nonneg_right]; positivity
  have h2 : ak (k + 1) ≤ b := by simp only [ak, hb]; grw [Nat.lt_iff_add_one_le.mp hk]
  have h3 : Icc (ak k) (ak (k + 1)) ⊆ Icc a b := Icc_subset_Icc h1 h2
  have h4 : ak k < ak (k + 1) := by rwa [← sub_pos, h0]
  have h5 : EqOn (derivWithin f (Icc a b))
      (derivWithin f (Icc (ak k) (ak (k + 1)))) (Icc (ak k) (ak (k + 1))) := by
    intro x hx
    rw [← derivWithin_subset h3 (uniqueDiffOn_Icc h4 x hx) (h_df x (h3 hx))]
  have h6 : EqOn (iteratedDerivWithin 2 f (Icc a b))
    (iteratedDerivWithin 2 f (Icc (ak k) (ak (k + 1)))) (Icc (ak k) (ak (k + 1))) := by
    intro x hx
    simp only [iteratedDerivWithin_succ', iteratedDerivWithin_zero]
    rw [← derivWithin_subset h3 (uniqueDiffOn_Icc h4 x hx) (h_ddf x (h3 hx))]
    exact derivWithin_congr h5 (h5 hx)
  have h7 (x : ℝ) : |iteratedDerivWithin 2 f (Set.Icc (ak k) (ak (k + 1))) x| ≤ ζ := by
    by_cases hx : x ∈ Icc (ak k) (ak (k + 1))
    · grw [← h6 hx, fpp_bound]
    · rw [iteratedDerivWithin_succ, derivWithin_zero_of_notMem_closure
        (by rwa [closure_Icc]), abs_zero]
      exact (abs_nonneg _).trans (fpp_bound 0)
  refine (trapezoidal_error_le_of_lt' (ζ := ζ) h4 (h_df.mono h3) ?_ h7).trans_eq ?_
  · refine h_ddf.congr_mono (fun x hx ↦ ?_) h3
    exact derivWithin_subset h3 (uniqueDiffOn_Icc h4 x hx) (h_df x (h3 hx))
  · rw [h0, mul_div_assoc, mul_comm]

/-- The standard error bound for trapezoidal integration on the general interval `[[a, b]]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ade5edfecdaede77825cfc313a5a58d8ae303a92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
