# logDeriv_partial_fraction_two_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a29352be-bbed-1c5a-758f-28e3b4e2fc17",
  "kind": "theorem",
  "lexical_name": "logDeriv_partial_fraction_two_line",
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
  "slug": "logderiv-partial-fraction-two-line--eaa295d14068cba21ddc729c",
  "source": {
    "blob": "ed166c6aaf888dfc00f84b130d40418343d23f72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant59f6344188b37871be9c75f89aab57ba541a220e4a8dc293df753639c7f8c8a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaa295d14068cba21ddc729c93080eb90513f1f400d0d2d9c8712f0a32ae9fe4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant59f6344188b37871be9c75f89aab57ba541a220e4a8dc293df753639c7f8c8a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a29352be-bbed-1c5a-758f-28e3b4e2fc17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_partial_fraction_two_line {f : ℂ → ℂ} {Cf t₀ : ℝ} {k : ℕ}
    (hfa : ∀ t : ℝ, t₀ ≤ |t| → AnalyticOnNhd ℂ f (closedBall (2 + t * I) (91 / 50)))
    (hCf : 0 < Cf)
    (hgrow : ∀ s : ℂ, 1 / 8 ≤ s.re → s.re ≤ 4 → 2 ≤ |s.im| → ‖f s‖ ≤ Cf * |s.im| ^ k)
    (hlow' : ∀ t : ℝ, t₀ ≤ |t| → 1 ≤ ‖f (2 + t * I)‖) :
    ∃ C t₁ : ℝ, 0 < C ∧ 4 ≤ t₁ ∧ t₀ ≤ t₁ ∧ ∀ t : ℝ, t₁ ≤ |t| →
    f (2 + t * I) ≠ 0 ∧
    ∃ Z : Finset ℂ,
      (↑Z = {ρ ∈ closedBall (2 + t * I) (22 / 25 * (91 / 50)) | f ρ = 0}) ∧
      ((∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℝ)) ≤ C * Real.log (|t| + 3)) ∧
      ∀ s ∈ closedBall (2 + t * I) (3 / 2), f s ≠ 0 →
        ‖logDeriv f s - ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) / (s - ρ)‖
          ≤ C * Real.log (|t| + 3) := by
  set CY := Cf with hCYdef
  have hCY : 0 < CY := hCf
  set C' : ℝ := CY + 2 with hC'
  have hC'2 : 2 ≤ C' := by rw [hC']; linarith
  have hlogC' : 0 ≤ Real.log C' := Real.log_nonneg (by linarith)
  set C : ℝ := (44795000 * 50 / 91) * (Real.log C' + k) with hC
  have hCpos : 0 < C := by
    rw [hC]
    have : 0 < Real.log C' + k := by
      have : 0 < Real.log C' := Real.log_pos (by linarith)
      positivity
    positivity
  refine ⟨C, max t₀ 4, hCpos, le_max_right _ _, le_max_left _ _, fun t ht => ?_⟩
  have ht₁ : t₀ ≤ |t| := le_trans (le_max_left _ _) ht
  have ht4 : 4 ≤ |t| := le_trans (le_max_right _ _) ht
  set s₀ : ℂ := 2 + t * I with hs₀
  have hY0 : 1 ≤ ‖f s₀‖ := hlow' t ht₁
  have hne : f s₀ ≠ 0 := by
    intro h; rw [h, norm_zero] at hY0; linarith
  have hfa : AnalyticOnNhd ℂ f (closedBall s₀ (91 / 50)) := hfa t ht₁
  set B : ℝ := C' * (|t| + 2) ^ k with hB
  have hpow1 : (1 : ℝ) ≤ (|t| + 2) ^ k := one_le_pow₀ (by linarith [abs_nonneg t])
  have hB2 : 2 ≤ B := by
    rw [hB]; nlinarith
  have hfB : ∀ w ∈ closedBall s₀ (24 / 25 * (91 / 50)), ‖f w‖ ≤ B * ‖f s₀‖ := by
    intro w hw
    rw [mem_closedBall, Complex.dist_eq] at hw
    have hwre : |w.re - 2| ≤ 24 / 25 * (91 / 50) := by
      have := Complex.abs_re_le_norm (w - s₀)
      have hre : (w - s₀).re = w.re - 2 := by simp [hs₀]
      rw [hre] at this; linarith
    have hwim : |w.im - t| ≤ 24 / 25 * (91 / 50) := by
      have := Complex.abs_im_le_norm (w - s₀)
      have him : (w - s₀).im = w.im - t := by simp [hs₀]
      rw [him] at this; linarith
    rw [abs_le] at hwre hwim
    have h1 : (1 / 8 : ℝ) ≤ w.re := by linarith [hwre.1]
    have h2 : w.re ≤ 4 := by linarith [hwre.2]
    have h3 : 2 ≤ |w.im| := by
      rcases le_abs'.mp ht4 with h | h
      · rw [abs_of_neg (by linarith [hwim.2])]; linarith [hwim.2]
      · rw [abs_of_pos (by linarith [hwim.1])]; linarith [hwim.1]
    have h4 : |w.im| ≤ |t| + 2 := by
      have := abs_sub_abs_le_abs_sub w.im t
      have h5 : |w.im - t| ≤ 2 := abs_le.mpr ⟨by linarith [hwim.1], by linarith [hwim.2]⟩
      linarith
    calc ‖f w‖ ≤ CY * |w.im| ^ k := hgrow w h1 h2 h3
      _ ≤ CY * (|t| + 2) ^ k := by gcongr
      _ ≤ C' * (|t| + 2) ^ k := by gcongr; linarith
      _ = B * 1 := by rw [hB]; ring
      _ ≤ B * ‖f s₀‖ := by gcongr
  obtain ⟨Z, hZset, hZcount, hZpf⟩ := Zeta23.WeilEF.logDeriv_partial_fraction_disk (f := f)
    (by norm_num : (0:ℝ) < 91 / 50) hfa hne hB2 hfB
  have hlog3 := one_le_log_add_three t
  have hlogB : Real.log B ≤ (Real.log C' + k) * Real.log (|t| + 3) := by
    rw [hB, Real.log_mul (by positivity) (by positivity), Real.log_pow]
    have h1 : Real.log (|t| + 2) ≤ Real.log (|t| + 3) :=
      Real.log_le_log (by linarith [abs_nonneg t]) (by linarith)
    have h0 : 0 ≤ Real.log (|t| + 2) := Real.log_nonneg (by linarith [abs_nonneg t])
    have h2 : Real.log C' ≤ Real.log C' * Real.log (|t| + 3) := le_mul_of_one_le_right hlogC' hlog3
    have h3 : (k : ℝ) * Real.log (|t| + 2) ≤ (k : ℝ) * Real.log (|t| + 3) :=
      mul_le_mul_of_nonneg_left h1 (Nat.cast_nonneg k)
    linarith
  have hlogBnn : 0 ≤ Real.log B := Real.log_nonneg (by linarith)
  refine ⟨hne, Z, hZset, ?_, ?_⟩
  · refine hZcount.trans ?_
    have hratio : ((24 / 25 : ℝ)) / (22 / 25) = 12 / 11 := by norm_num
    have hlogpos : (0:ℝ) < Real.log ((24 / 25) / (22 / 25)) := by
      rw [hratio]; exact Real.log_pos (by norm_num)
    have hlog1211 : (1:ℝ) / 12 ≤ Real.log ((24 / 25) / (22 / 25)) := by
      rw [hratio]
      have h := Real.log_le_sub_one_of_pos (show (0:ℝ) < 11 / 12 by norm_num)
      rw [show (11 / 12 : ℝ) = (12 / 11)⁻¹ by norm_num, Real.log_inv] at h
      linarith
    calc 1 / Real.log ((24 / 25) / (22 / 25)) * Real.log B ≤ 12 * Real.log B := by
          refine mul_le_mul_of_nonneg_right ?_ hlogBnn
          rw [div_le_iff₀ hlogpos]; linarith
      _ ≤ 12 * ((Real.log C' + k) * Real.log (|t| + 3)) := by gcongr
      _ ≤ C * Real.log (|t| + 3) := by
          rw [hC]
          have : (0:ℝ) ≤ (Real.log C' + k) * Real.log (|t| + 3) := by positivity
          nlinarith
  · intro s hs hYs
    have hs' : s ∈ closedBall s₀ (83 / 100 * (91 / 50)) :=
      closedBall_subset_closedBall (by norm_num) hs
    refine (hZpf s hs' hYs).trans ?_
    calc 44795000 / (91 / 50) * Real.log B
        ≤ 44795000 / (91 / 50) * ((Real.log C' + k) * Real.log (|t| + 3)) := by gcongr
      _ = C * Real.log (|t| + 3) := by rw [hC]; ring


/-- **Horizontal sides, generic**: with the data of `logDeriv_partial_fraction_two_line`, for every T with
|T| ≥ t₁ such that no zero of f in the right half-plane has ordinate T,
|Im ∫_{1/2}^{2} f′/f(σ+iT) dσ| ≤ C·log(|T|+3). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant59f6344188b37871be9c75f89aab57ba541a220e4a8dc293df753639c7f8c8a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant59f6344188b37871be9c75f89aab57ba541a220e4a8dc293df753639c7f8c8a6.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed166c6aaf888dfc00f84b130d40418343d23f72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
