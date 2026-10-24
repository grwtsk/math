# bPart_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ec86848-84b0-5e31-7fb5-5a3d28dbcdb8",
  "kind": "theorem",
  "lexical_name": "bPart_le",
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
  "slug": "bpart-le--cf3c8efab950cac14a45d4ee",
  "source": {
    "blob": "0ef34d40b3c1cb9c6869450e8416da1cbfe03320",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant2fa4376ff40135e7c9fa4cc6ca184a5e91ddca070a7381b58f50302764704b87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf3c8efab950cac14a45d4ee944844f9fc6dba6abdb2a79c684869076750ebc6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant2fa4376ff40135e7c9fa4cc6ca184a5e91ddca070a7381b58f50302764704b87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ec86848-84b0-5e31-7fb5-5a3d28dbcdb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bPart_le (K : ℕ) (hK : 1 ≤ K) :
    ∃ Cn : ℕ → ℝ, (∀ i, 0 ≤ Cn i) ∧ ∀ (Λs : ℂ) (y : ℝ), 0 ≤ y → ‖Λs‖⁻¹ * y ≤ 4 →
      32 * Real.exp 1 * KM ≤ ‖Λs‖ →
      bPart Λs K y ≤ 2 * Cdef + 2 * y ^ 2 *
        ((∑ i ∈ (range ⌊Real.exp y⌋₊).filter (fun i => K ≤ i),
            2 ^ (i + 1) * ‖Λs‖⁻¹ ^ (2 * (i + 1)) * y ^ (i + 1) * Sdiv (Λ ^ (i + 1)) y)
         + ∑ i ∈ range K, 2 ^ (i + 1) * ‖Λs‖⁻¹ ^ (2 * (i + 1)) * y ^ (i + 1) * (Cn i * (1 + y) ^ i)) := by
  choose Cn hCn0 hCn using fun i : ℕ => Nsf_le_poly (i + 1) (Nat.succ_le_succ (Nat.zero_le i))
  refine ⟨Cn, hCn0, fun Λs y hy hxy hbig => ?_⟩
  set X : ℕ := ⌊Real.exp y⌋₊ with hX
  set x : ℝ := ‖Λs‖⁻¹ with hxdef
  have hΛpos : 0 < ‖Λs‖ := lt_of_lt_of_le (mul_pos (by positivity) KM_pos) hbig
  have hx : 0 ≤ x := by positivity
  set B := (Ioc 0 X).filter (fun N => ¬ (Squarefree N ∧ ω N ≤ K)) with hBdef
  have hBsub : B ⊆ Ioc 0 X := filter_subset _ _
  -- (1) ‖C‖² ≤ 2Λ² + 2log²N F², and log N ≤ y on the range
  have hstep1 : bPart Λs K y ≤ 2 * (∑ N ∈ B, Λ N ^ 2 / N) + 2 * y ^ 2 * ∑ N ∈ B, Fmaj x N ^ 2 / N := by
    have hb : bPart Λs K y = ∑ N ∈ B, ‖xiCoeff Λs N‖ ^ 2 / N := by unfold bPart; rw [← hX, ← hBdef]
    rw [hb]
    calc ∑ N ∈ B, ‖xiCoeff Λs N‖ ^ 2 / N
        ≤ ∑ N ∈ B, (2 * (Λ N ^ 2 / N) + 2 * (y ^ 2 * (Fmaj x N ^ 2 / N))) := sum_le_sum fun N hN => ?_
      _ = 2 * (∑ N ∈ B, Λ N ^ 2 / N) + 2 * (y ^ 2 * ∑ N ∈ B, Fmaj x N ^ 2 / N) := by
          rw [sum_add_distrib, ← mul_sum, ← mul_sum, ← mul_sum]
      _ = _ := by ring
    have hN' := hBsub hN
    have hlogN : Real.log N ≤ y := log_le_of_mem_Ioc_floor_exp hN'
    have hlog0 : 0 ≤ Real.log N := Real.log_natCast_nonneg N
    have hN0 : (0:ℝ) ≤ (N:ℝ)⁻¹ := inv_nonneg.mpr (Nat.cast_nonneg N)
    have h := norm_xiCoeff_sq_le Λs N
    have hlog2 : Real.log N ^ 2 ≤ y ^ 2 := pow_le_pow_left₀ hlog0 hlogN 2
    calc ‖xiCoeff Λs N‖ ^ 2 / N = ‖xiCoeff Λs N‖ ^ 2 * (N:ℝ)⁻¹ := div_eq_mul_inv _ _
      _ ≤ (2 * Λ N ^ 2 + 2 * Real.log N ^ 2 * Fmaj x N ^ 2) * (N:ℝ)⁻¹ := mul_le_mul_of_nonneg_right h hN0
      _ ≤ (2 * Λ N ^ 2 + 2 * y ^ 2 * Fmaj x N ^ 2) * (N:ℝ)⁻¹ := by gcongr
      _ = 2 * (Λ N ^ 2 / N) + 2 * (y ^ 2 * (Fmaj x N ^ 2 / N)) := by ring
  -- (2) the Λ² part: supported on non-squarefree N
  have hΛ2 : ∑ N ∈ B, Λ N ^ 2 / N ≤ Cdef := by
    calc ∑ N ∈ B, Λ N ^ 2 / N = ∑ N ∈ B.filter (fun N => Λ N ≠ 0), Λ N ^ 2 / N := by
          refine (sum_filter_of_ne fun N _ h => ?_).symm
          intro h0; apply h; rw [h0]; simp
      _ ≤ ∑ N ∈ (Ioc 0 X).filter (fun N => ¬ Squarefree N), Λ N ^ 2 / N := by
          refine sum_le_sum_of_subset_of_nonneg ?_ fun N _ _ => div_nonneg (sq_nonneg _) (Nat.cast_nonneg N)
          intro N hN
          obtain ⟨hNB, hne⟩ := mem_filter.mp hN
          obtain ⟨hNI, hB⟩ := mem_filter.mp hNB
          exact mem_filter.mpr ⟨hNI, not_squarefree_of_bLayer_lam hK hB hne⟩
      _ ≤ Cdef := sum_not_squarefree_vonMangoldt_sq_div_le X
  -- (3) the F² part: dyadic Cauchy–Schwarz, swap, split at K
  have hF : ∑ N ∈ B, Fmaj x N ^ 2 / N
      ≤ (∑ i ∈ (range X).filter (fun i => K ≤ i), 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) * Sdiv (Λ ^ (i + 1)) y)
        + ∑ i ∈ range K, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) * (Cn i * (1 + y) ^ i) := by
    -- pointwise
    have hpt : ∀ N ∈ B, Fmaj x N ^ 2 / N
        ≤ ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) * ((Λ ^ (i + 1)) N / N) := by
      intro N hN
      have hN' := hBsub hN
      have hNX : N ≤ X := (mem_Ioc.mp hN').2
      have hΩ : Ω N ≤ X := (cardFactors_le_self N).trans hNX
      have hlogN : Real.log N ≤ y := log_le_of_mem_Ioc_floor_exp hN'
      have hlog0 : 0 ≤ Real.log N := Real.log_natCast_nonneg N
      rw [Fmaj_eq_sum_range_of_le x hΩ, div_eq_mul_inv]
      calc (∑ i ∈ range X, x ^ (i + 1) * (Λ ^ (i + 1)) N) ^ 2 * (N:ℝ)⁻¹
          ≤ (∑ i ∈ range X, 2 ^ (i + 1) * (x ^ (i + 1) * (Λ ^ (i + 1)) N) ^ 2) * (N:ℝ)⁻¹ :=
            mul_le_mul_of_nonneg_right (sq_sum_range_le_sum_two_pow_mul_sq X _) (by positivity)
        _ = ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * ((Λ ^ (i + 1)) N * (Λ ^ (i + 1)) N) * (N:ℝ)⁻¹ := by
            rw [sum_mul]; refine sum_congr rfl fun i _ => by ring
        _ ≤ ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * (y ^ (i + 1) * (Λ ^ (i + 1)) N) * (N:ℝ)⁻¹ := by
            refine sum_le_sum fun i _ => ?_
            refine mul_le_mul_of_nonneg_right ?_ (by positivity)
            refine mul_le_mul_of_nonneg_left ?_ (by positivity)
            refine mul_le_mul_of_nonneg_right ?_ (lamPow_nonneg _ _)
            exact (lamPow_le_log_pow _ _).trans (pow_le_pow_left₀ hlog0 hlogN _)
        _ = _ := sum_congr rfl fun i _ => by ring
    -- swap and split
    have hswap : ∑ N ∈ B, ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) * ((Λ ^ (i + 1)) N / N)
        = ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) * ∑ N ∈ B, (Λ ^ (i + 1)) N / N := by
      rw [sum_comm]
      exact sum_congr rfl fun i _ => by rw [← mul_sum]
    have hcoef : ∀ i, 0 ≤ 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) := fun i => by positivity
    -- inner sums: ≤ Sdiv always; ≤ Nsf (i+1) y when i+1 ≤ K
    have hinner_all : ∀ i, ∑ N ∈ B, (Λ ^ (i + 1)) N / N ≤ Sdiv (Λ ^ (i + 1)) y := fun i =>
      sum_le_sum_of_subset_of_nonneg hBsub fun N _ _ => div_nonneg (lamPow_nonneg _ _) (Nat.cast_nonneg N)
    have hinner_nsf : ∀ i, i < K → ∑ N ∈ B, (Λ ^ (i + 1)) N / N ≤ Cn i * (1 + y) ^ i := by
      intro i hi
      have h1 : ∑ N ∈ B, (Λ ^ (i + 1)) N / N ≤ Nsf (i + 1) y := by
        calc ∑ N ∈ B, (Λ ^ (i + 1)) N / N = ∑ N ∈ B.filter (fun N => (Λ ^ (i + 1)) N ≠ 0), (Λ ^ (i + 1)) N / N := by
              refine (sum_filter_of_ne fun N _ h => ?_).symm
              intro h0; apply h; rw [h0, zero_div]
          _ ≤ Nsf (i + 1) y := by
              unfold Nsf SdivP
              refine sum_le_sum_of_subset_of_nonneg ?_ fun N _ _ => div_nonneg (lamPow_nonneg _ _) (Nat.cast_nonneg N)
              intro N hN
              obtain ⟨hNB, hne⟩ := mem_filter.mp hN
              obtain ⟨hNI, hB⟩ := mem_filter.mp hNB
              exact mem_filter.mpr ⟨hNI, not_squarefree_of_bLayer (by omega) hB hne⟩
      have h2 := hCn i y hy
      simp only [Nat.add_sub_cancel] at h2
      exact h1.trans h2
    calc ∑ N ∈ B, Fmaj x N ^ 2 / N
        ≤ ∑ N ∈ B, ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) * ((Λ ^ (i + 1)) N / N) := sum_le_sum hpt
      _ = ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) * ∑ N ∈ B, (Λ ^ (i + 1)) N / N := hswap
      _ = (∑ i ∈ (range X).filter (fun i => K ≤ i), 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) * ∑ N ∈ B, (Λ ^ (i + 1)) N / N)
          + ∑ i ∈ (range X).filter (fun i => ¬ K ≤ i), 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) * ∑ N ∈ B, (Λ ^ (i + 1)) N / N :=
          (sum_filter_add_sum_filter_not _ _ _).symm
      _ ≤ (∑ i ∈ (range X).filter (fun i => K ≤ i), 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) * Sdiv (Λ ^ (i + 1)) y)
          + ∑ i ∈ (range X).filter (fun i => ¬ K ≤ i), 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) * (Cn i * (1 + y) ^ i) := by
          refine add_le_add (sum_le_sum fun i _ => mul_le_mul_of_nonneg_left (hinner_all i) (hcoef i))
            (sum_le_sum fun i hi => mul_le_mul_of_nonneg_left (hinner_nsf i ?_) (hcoef i))
          exact not_le.mp (mem_filter.mp hi).2
      _ ≤ (∑ i ∈ (range X).filter (fun i => K ≤ i), 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) * Sdiv (Λ ^ (i + 1)) y)
          + ∑ i ∈ range K, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * y ^ (i + 1) * (Cn i * (1 + y) ^ i) := by
          refine add_le_add le_rfl (sum_le_sum_of_subset_of_nonneg ?_ ?_)
          · intro i hi
            obtain ⟨-, hi2⟩ := mem_filter.mp hi
            exact mem_range.mpr (not_le.mp hi2)
          · intro i _ _
            exact mul_nonneg (hcoef i) (mul_nonneg (hCn0 i) (pow_nonneg (by linarith) i))
  -- (4) combine
  have h2y : 0 ≤ 2 * y ^ 2 := by positivity
  calc bPart Λs K y ≤ 2 * (∑ N ∈ B, Λ N ^ 2 / N) + 2 * y ^ 2 * ∑ N ∈ B, Fmaj x N ^ 2 / N := hstep1
    _ ≤ 2 * Cdef + 2 * y ^ 2 * _ := add_le_add (by linarith) (mul_le_mul_of_nonneg_left hF h2y)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant2fa4376ff40135e7c9fa4cc6ca184a5e91ddca070a7381b58f50302764704b87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant2fa4376ff40135e7c9fa4cc6ca184a5e91ddca070a7381b58f50302764704b87.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ef34d40b3c1cb9c6869450e8416da1cbfe03320` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
