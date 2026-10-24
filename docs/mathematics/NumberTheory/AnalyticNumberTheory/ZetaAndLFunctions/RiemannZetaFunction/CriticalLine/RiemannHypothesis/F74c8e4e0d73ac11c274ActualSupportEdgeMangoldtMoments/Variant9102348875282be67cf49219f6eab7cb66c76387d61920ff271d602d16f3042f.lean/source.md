# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments.Variant9102348875282be67cf49219f6eab7cb66c76387d61920ff271d602d16f3042f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2857beeefd5b493f9e4964de22a0c5cb060fb474` · SHA-256 `a0ba4512309f82f730f9c3b1383ed2fa0f425fd23aeb272f54365c9803a213f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualHalfMangoldtPrefix.Variantf74c8e4e0d73ac11c274f6407c8aeff681a8b9a2115dcc0be874d9a2c6fb7363","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f74c8e4e0d73ac11c274f6407c8aeff681a8b9a2115dcc0be874d9a2c6fb7363","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualHalfMangoldtPrefix.Variantf74c8e4e0d73ac11c274f6407c8aeff681a8b9a2115dcc0be874d9a2c6fb7363","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f74c8e4e0d73ac11c274f6407c8aeff681a8b9a2115dcc0be874d9a2c6fb7363","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/f74c8e4e0d73ac11c274-ActualSupportEdgeMangoldtMoments.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualLowerTraceArithmeticExpansion
import SourceShortSamplingInventory
import FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

/-!
Closed logarithmic edge moments of the genuine full Mangoldt half inventory.
The finite step identity and actual Chebyshev half bound retain every prime power.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualHalfMangoldtPrefix.Variantf74c8e4e0d73ac11c274f6407c8aeff681a8b9a2115dcc0be874d9a2c6fb7363

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualSupportEdgeMangoldtMoments
open MeasureTheory Set
open scoped BigOperators Interval
open SourceShortSamplingInventory SourceSamplingCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerDescent
noncomputable section

/-- The genuine closed half-weighted Mangoldt prefix. -/
def actualHalfMangoldtPrefix (t : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp t⌋₊,
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)

/-- Logarithmic distance from the real endpoint, on its closed natural inventory. -/
def actualHalfMangoldtEdgeMoment (j : ℕ) (L : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp L⌋₊,
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * (L - Real.log n) ^ j

theorem actualHalfMangoldtPrefix_le (t : ℝ) :
    actualHalfMangoldtPrefix t ≤ 2 * (Real.log 4 + 4) * Real.exp (t / 2) := by
  have h := sum_vonMangoldt_div_sqrt_le ⌊Real.exp t⌋₊
  have hf : (⌊Real.exp t⌋₊ : ℝ) ≤ Real.exp t := Nat.floor_le (Real.exp_pos t).le
  have hh := mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt hf)
    (by positivity : 0 ≤ 2 * (Real.log 4 + 4))
  rw [← Real.exp_half] at hh
  exact h.trans hh

private theorem halfPrefix_eq_steps {L t : ℝ} (ht : t ≤ L) :
    actualHalfMangoldtPrefix t =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp L⌋₊,
        if Real.log n ≤ t then ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)
          else 0 := by
  rw [← Finset.sum_filter]
  have hs : (Finset.Icc 1 ⌊Real.exp L⌋₊).filter (fun n : ℕ => Real.log n ≤ t) =
      Finset.Icc 1 ⌊Real.exp t⌋₊ := by
    ext n
    simp only [Finset.mem_filter, Finset.mem_Icc]
    by_cases hn : 1 ≤ n
    · have hn0 : 0 < (n : ℝ) := by exact_mod_cast hn
      rw [Real.log_le_iff_le_exp hn0,
        Nat.le_floor_iff (Real.exp_pos L).le, Nat.le_floor_iff (Real.exp_pos t).le]
      exact ⟨fun h => ⟨h.1.1, h.2⟩,
        fun h => ⟨⟨h.1, h.2.trans (Real.exp_le_exp.mpr ht)⟩, h.2⟩⟩
    · simp [hn]
  rw [hs]
  rfl

private theorem prefix_polynomial_intervalIntegrable (j : ℕ) {L : ℝ} (hL : 0 ≤ L) :
    IntervalIntegrable (fun t => actualHalfMangoldtPrefix t * (L - t) ^ j) volume 0 L := by
  have hi : IntervalIntegrable (fun t =>
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp L⌋₊,
        (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
          (if Real.log n ≤ t then (L - t) ^ j else 0)) volume 0 L := by
    have hs := IntervalIntegrable.sum (Finset.Icc 1 ⌊Real.exp L⌋₊) (fun n _ =>
      (intervalIntegrable_closed_step 0 L (Real.log n) (fun t : ℝ => (L - t) ^ j)
        ((by fun_prop : Continuous (fun t : ℝ => (L - t) ^ j)).intervalIntegrable 0 L)).const_mul
          (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)))
    have heq : (∑ n ∈ Finset.Icc 1 ⌊Real.exp L⌋₊, fun t : ℝ =>
        (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
          (if Real.log n ≤ t then (L - t) ^ j else 0)) =
        (fun t : ℝ => ∑ n ∈ Finset.Icc 1 ⌊Real.exp L⌋₊,
          (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
            (if Real.log n ≤ t then (L - t) ^ j else 0)) := by
      ext t
      simp
    rw [heq] at hs
    exact hs
  apply hi.congr
  intro t ht
  dsimp only
  rw [halfPrefix_eq_steps ((uIoc_of_le hL ▸ ht).2), Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro n _
  split_ifs <;> simp

/-- Closed finite Abel writes the entire edge moment as a positive prefix integral. -/
theorem actualHalfMangoldtEdgeMoment_eq_prefix_integral (j : ℕ) {L : ℝ} (hL : 0 ≤ L) :
    actualHalfMangoldtEdgeMoment (j + 1) L =
      (j + 1 : ℝ) * (∫ t in 0..L, actualHalfMangoldtPrefix t * (L - t) ^ j) := by
  have hF : ContDiff ℝ 1 (fun t : ℝ => (L - t) ^ (j + 1)) := by fun_prop
  have hd : deriv (fun t : ℝ => (L - t) ^ (j + 1)) =
      fun t => -(j + 1 : ℝ) * (L - t) ^ j := by
    funext t
    have hh := ((hasDerivAt_const t L).sub (hasDerivAt_id t)).pow (j + 1)
    have hv : HasDerivAt (fun t : ℝ => (L - t) ^ (j + 1))
        (-(j + 1 : ℝ) * (L - t) ^ j) t := by
      apply hh.congr_deriv
      simp
      ring
    exact hv.deriv
  have hb (n : ℕ) (hn : n ∈ Finset.Icc 1 ⌊Real.exp L⌋₊) :
      0 ≤ Real.log (n : ℝ) ∧ Real.log (n : ℝ) ≤ L := by
    have hn0 : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hn).1
    exact ⟨Real.log_nonneg (by exact_mod_cast (Finset.mem_Icc.mp hn).1),
      (Real.log_le_iff_le_exp hn0).mpr
        ((Nat.le_floor_iff (Real.exp_pos L).le).mp (Finset.mem_Icc.mp hn).2)⟩
  have he := integral_finite_steps_deriv 0 L (Finset.Icc 1 ⌊Real.exp L⌋₊)
    (fun n => Real.log n) (fun n => ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ))
    hb (fun t => (L - t) ^ (j + 1)) hF
  have heq : (fun t : ℝ => ∑ n ∈ Finset.Icc 1 ⌊Real.exp L⌋₊,
      (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
        (if Real.log n ≤ t then deriv (fun t : ℝ => (L - t) ^ (j + 1)) t else 0))
        =ᵐ[volume.restrict (uIoc (0 : ℝ) L)]
      (fun t => -(j + 1 : ℝ) * (actualHalfMangoldtPrefix t * (L - t) ^ j)) := by
    filter_upwards [ae_restrict_mem measurableSet_uIoc] with t ht
    rw [halfPrefix_eq_steps ((uIoc_of_le hL ▸ ht).2), Finset.sum_mul, hd,
      Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    split_ifs <;> ring
  rw [intervalIntegral.integral_congr_ae_restrict heq,
    intervalIntegral.integral_const_mul] at he
  simp only [sub_self, zero_pow (by omega : j + 1 ≠ 0), zero_sub, mul_neg,
    Finset.sum_neg_distrib, actualHalfMangoldtEdgeMoment] at he ⊢
  linarith

private theorem exponential_truncated_moment_le (j : ℕ) {L : ℝ} (hL : 0 ≤ L) :
    (∫ t in 0..L, (L - t) ^ j * Real.exp (t / 2)) ≤
      Real.exp (L / 2) * ((2 : ℝ) ^ (j + 1) * (j.factorial : ℝ)) := by
  have hi := exponential_half_integrable j
  have hn : ∀ᵐ t ∂volume.restrict (Ioi (0 : ℝ)),
      0 ≤ t ^ j * Real.exp (-t / 2) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact mul_nonneg (pow_nonneg (show 0 ≤ t from ht.le) j) (Real.exp_pos _).le
  have hm := setIntegral_mono_set (s := Ioc (0 : ℝ) L) (t := Ioi (0 : ℝ)) hi hn
    (Filter.Eventually.of_forall (fun _ ht => ht.1))
  rw [← intervalIntegral.integral_of_le hL, exponential_half_integral] at hm
  have hs := intervalIntegral.integral_comp_sub_left
    (fun t : ℝ => t ^ j * Real.exp (-t / 2)) (a := (0 : ℝ)) (b := L) L
  simp only [sub_self, sub_zero] at hs
  calc
    _ = Real.exp (L / 2) * (∫ t in 0..L, (L - t) ^ j * Real.exp (-(L - t) / 2)) := by
      rw [← intervalIntegral.integral_const_mul]
      apply intervalIntegral.integral_congr
      intro t _
      dsimp only
      have he : Real.exp (t / 2) = Real.exp (L / 2) * Real.exp (-(L - t) / 2) := by
        rw [← Real.exp_add]
        congr 1
        ring
      rw [he]
      ring
    _ = Real.exp (L / 2) * (∫ t in 0..L, t ^ j * Real.exp (-t / 2)) := by rw [hs]
    _ ≤ _ := mul_le_mul_of_nonneg_left hm (Real.exp_pos _).le

/-- All genuine closed Mangoldt edge moments have the exact factorial half-density budget. -/
theorem actualHalfMangoldtEdgeMoment_le (j : ℕ) {L : ℝ} (hL : 0 ≤ L) :
    actualHalfMangoldtEdgeMoment (j + 1) L ≤
      (Real.log 4 + 4) * Real.exp (L / 2) *
        ((2 : ℝ) ^ (j + 2) * ((j + 1).factorial : ℝ)) := by
  rw [actualHalfMangoldtEdgeMoment_eq_prefix_integral j hL]
  have hb := intervalIntegral.integral_mono_on hL
    (prefix_polynomial_intervalIntegrable j hL)
    ((by fun_prop : Continuous (fun t : ℝ =>
      2 * (Real.log 4 + 4) * Real.exp (t / 2) * (L - t) ^ j)).intervalIntegrable 0 L)
    (fun t ht => mul_le_mul_of_nonneg_right (actualHalfMangoldtPrefix_le t)
      (pow_nonneg (by linarith [ht.2]) j))
  have he := exponential_truncated_moment_le j hL
  have heq : (∫ t in 0..L, 2 * (Real.log 4 + 4) * Real.exp (t / 2) * (L - t) ^ j) =
      2 * (Real.log 4 + 4) * (∫ t in 0..L, (L - t) ^ j * Real.exp (t / 2)) := by
    rw [← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro t _
    ring
  rw [heq] at hb
  have h := mul_le_mul_of_nonneg_left hb (by positivity : 0 ≤ (j + 1 : ℝ))
  have h2 := mul_le_mul_of_nonneg_left he
    (by positivity : 0 ≤ (j + 1 : ℝ) * (2 * (Real.log 4 + 4)))
  rw [Nat.factorial_succ, Nat.cast_mul, Nat.cast_add, Nat.cast_one, pow_succ]
  nlinarith

end
end FormalResearch.RiemannHypothesis.ActualSupportEdgeMangoldtMoments
```
