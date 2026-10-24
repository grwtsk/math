# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.1756306d40c57f87b51aSourceActualAdjointColumnTrace.Variantaedcdac911e5452219844a83f412fe4830d8d48f5cf2f8db012b1d9c38034b4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f836426536b7865ecc7680fe29f2d9498dcad8e4` · SHA-256 `96184b8ae9063a62b2ec57aa35bc92e290d092aaa91f038818c6ce624d4d1f12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualCenteredColumnHalfInventory.Variant1756306d40c57f87b51a2932f610e6585fc5361a2dd99735f1fc2d50d95a1c70","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1756306d40c57f87b51a2932f610e6585fc5361a2dd99735f1fc2d50d95a1c70","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualCenteredColumnHalfInventory.Variant1756306d40c57f87b51a2932f610e6585fc5361a2dd99735f1fc2d50d95a1c70","mathematical_subject":"Analysis.Integration","original_sha256":"1756306d40c57f87b51a2932f610e6585fc5361a2dd99735f1fc2d50d95a1c70","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/1756306d40c57f87b51a-SourceActualAdjointColumnTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualLogColumnTransport

/-!
The actual lower column adjoint trace is its closed centered-beta half inventory
minus the retained terminal natural K contribution. The original column prefix
gives a finite critical-half estimate, retaining its upper boundary factor.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualCenteredColumnHalfInventory.Variant1756306d40c57f87b51a2932f610e6585fc5361a2dd99735f1fc2d50d95a1c70

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualAdjointColumnTrace
open MeasureTheory Set
open scoped BigOperators Interval
open SourceActualAdjointAbelPrimitives SourceActualLogColumnTransport
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering
noncomputable section

/-- The original centered long column has a closed critical-half inventory. -/
def actualCenteredColumnHalfInventory (A : ℝ) : ℝ :=
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  ∑ n ∈ Finset.Ioc U (K - 1), centeredBeta U n / Real.sqrt (n : ℝ)

/-- The terminal prefix at K-1 remains divided by the original natural K. -/
def actualCenteredColumnTerminalTrace (A : ℝ) : ℝ :=
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  (∑ n ∈ Finset.Ioc U (K - 1), centeredBeta U n) / Real.sqrt (K : ℝ)

private theorem prefix_telescope (U n : ℕ) (hn : U ≤ n) (b w : ℕ → ℝ) :
    (∑ k ∈ Finset.Ioc U n,
      (∑ j ∈ Finset.Ioc U k, b j) * (w k - w (k + 1))) =
      (∑ j ∈ Finset.Ioc U n, b j * w j) -
        (∑ j ∈ Finset.Ioc U n, b j) * w (n + 1) := by
  refine Nat.le_induction ?_ ?_ n hn
  · simp
  intro n hUn ih
  rw [Finset.sum_Ioc_succ_top hUn, Finset.sum_Ioc_succ_top hUn,
    Finset.sum_Ioc_succ_top hUn, ih]
  ring

private theorem exp_log_half (u : ℝ) (hu : 0 < u) :
    Real.exp (Real.log u / 2) = Real.sqrt u := by
  rw [Real.exp_half, Real.exp_log hu]

private theorem exp_neg_log_half (u : ℝ) (hu : 0 < u) :
    Real.exp (-Real.log u / 2) = 1 / Real.sqrt u := by
  rw [show -Real.log u / 2 = -(Real.log u / 2) by ring, Real.exp_neg,
    exp_log_half u hu, one_div]

private theorem exp_neg_half_integral (l b : ℝ) (hlb : l ≤ b) :
    (∫ s in l..b, Real.exp (-s / 2)) =
      2 * (Real.exp (-l / 2) - Real.exp (-b / 2)) := by
  have hd (s : ℝ) : HasDerivAt (fun s : ℝ => -2 * Real.exp (-s / 2))
      (Real.exp (-s / 2)) s := by
    convert (((hasDerivAt_id s).neg.div_const 2).exp).const_mul (-2) using 1 <;> try rfl
    simp only [Pi.neg_apply, id_eq]
    ring
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hlb
    (by fun_prop : Continuous (fun s : ℝ => -2 * Real.exp (-s / 2))).continuousOn
    (fun s _ => hd s)
    ((by fun_prop : Continuous (fun s : ℝ => Real.exp (-s / 2))).intervalIntegrable _ _)
  linarith

private theorem column_orders {A : ℝ} (hA : 1 ≤ A) :
    actualTimeLower A ≤ Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ∧
    Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualColumnUpper A := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A hA
  have hUa : (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by norm_num
  have hK : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    exact_mod_cast actual_column_window_nonempty hA
  exact ⟨Real.log_le_log hU hUa, Real.log_le_log (hU.trans_le hUa) hK⟩

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
theorem actualAdjointColumnPrimitive_at_lower_closed_inventory {A : ℝ} (hA : 1 ≤ A) :
    actualAdjointColumnPrimitive A (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) =
      -2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
        (actualCenteredColumnHalfInventory A - actualCenteredColumnTerminalTrace A) := by
  unfold actualAdjointColumnPrimitive
  rw [intervalIntegral.integral_symm, weighted_column_integral_eq hA,
    exp_log_half _ (by positivity)]
  ring

/-- The genuine centered prefix gives a finite trace budget retaining its terminal factor. -/
theorem actualCenteredColumnHalfInventory_sub_terminal_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualCenteredColumnHalfInventory A - actualCenteredColumnTerminalTrace A| ≤
      ((vaughanCutoff A : ℝ) - 1) *
        (1 / Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) -
          1 / Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)) := by
  have hl := (column_orders hA).1
  have hab := (column_orders hA).2
  let C : ℝ := (vaughanCutoff A : ℝ) - 1
  have hi : IntervalIntegrable (fun s : ℝ => C * Real.exp (-s / 2)) volume
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A) :=
    (by fun_prop : Continuous (fun s : ℝ => C * Real.exp (-s / 2))).intervalIntegrable _ _
  have hb : ∀ᵐ s, s ∈ Ioc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))
      (actualColumnUpper A) →
      ‖Real.exp (-s / 2) * actualLogColumnPrefix A s‖ ≤ C * Real.exp (-s / 2) := by
    filter_upwards with s hs
    simpa only [Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _), mul_comm]
      using mul_le_mul_of_nonneg_left (actualLogColumnPrefix_abs_le hA (hl.trans hs.1.le))
        (Real.exp_pos (-s / 2)).le
  have hn := intervalIntegral.norm_integral_le_of_norm_le hab hb hi
  rw [intervalIntegral.integral_const_mul, exp_neg_half_integral _ _ hab,
    weighted_column_integral_eq hA, Real.norm_eq_abs, abs_mul] at hn
  have hK : 0 < ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    exact_mod_cast (show 0 < sourceKernelCutoff A / (vaughanCutoff A + 1) by
      have := actual_column_window_nonempty hA
      omega)
  rw [show actualColumnUpper A =
      Real.log ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) by rfl,
    exp_neg_log_half _ (by positivity), exp_neg_log_half _ hK] at hn
  norm_num at hn
  dsimp only [C] at hn
  simp only [Nat.cast_add, Nat.cast_one, one_div] at hn ⊢
  nlinarith

/-- The actual lower Q trace retains the finite upper-anchor decay factor. -/
theorem actualAdjointColumnPrimitive_at_lower_abs_le_refined {A : ℝ} (hA : 1 ≤ A) :
    |actualAdjointColumnPrimitive A (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))| ≤
      2 * ((vaughanCutoff A : ℝ) - 1) *
        (1 - Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) /
          Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)) := by
  have hd := actualCenteredColumnHalfInventory_sub_terminal_abs_le hA
  have ha : Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) ≠ 0 := by positivity
  have he : |actualAdjointColumnPrimitive A
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))| =
      2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
        |actualCenteredColumnHalfInventory A - actualCenteredColumnTerminalTrace A| := by
    rw [actualAdjointColumnPrimitive_at_lower_closed_inventory hA, abs_mul, abs_mul,
      abs_of_nonneg (Real.sqrt_nonneg _)]
    norm_num
  rw [he]
  calc
    _ ≤ 2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
        (((vaughanCutoff A : ℝ) - 1) *
          (1 / Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) -
            1 / Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ))) :=
      mul_le_mul_of_nonneg_left hd (by positivity)
    _ = _ := by field_simp [ha]

/-- The terminal K prefix is bounded independently, without assuming touching support. -/
theorem actualCenteredColumnTerminalTrace_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualCenteredColumnTerminalTrace A| ≤
      ((vaughanCutoff A : ℝ) - 1) /
        Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  have hK : U + 1 ≤ K := actual_column_window_nonempty hA
  have hb := RH16IndependentChallengeNext.actualVaughanCenteredColumn_prefix_abs_le
    hA (K - 1) (by omega : U ≤ K - 1)
  dsimp only [actualCenteredColumnTerminalTrace]
  rw [abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
  exact div_le_div_of_nonneg_right hb (Real.sqrt_nonneg _)

/-- The true closed centered-beta critical-half inventory has no exponential cutoff cost. -/
theorem actualCenteredColumnHalfInventory_abs_le_cutoff {A : ℝ} (hA : 1 ≤ A) :
    |actualCenteredColumnHalfInventory A| ≤
      ((vaughanCutoff A : ℝ) - 1) / Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
  have hd := actualCenteredColumnHalfInventory_sub_terminal_abs_le hA
  have ht := actualCenteredColumnTerminalTrace_abs_le hA
  have ha := abs_add_le (actualCenteredColumnHalfInventory A -
    actualCenteredColumnTerminalTrace A) (actualCenteredColumnTerminalTrace A)
  rw [sub_add_cancel] at ha
  have he : ((vaughanCutoff A : ℝ) - 1) *
      (1 / Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) -
        1 / Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)) +
      ((vaughanCutoff A : ℝ) - 1) /
        Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) =
      ((vaughanCutoff A : ℝ) - 1) / Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by ring
  linarith

/-- At every real A at least one, that literal centered-beta half inventory is at most A. -/
theorem actualCenteredColumnHalfInventory_abs_le_scale {A : ℝ} (hA : 1 ≤ A) :
    |actualCenteredColumnHalfInventory A| ≤ A := by
  have hU : 0 ≤ (vaughanCutoff A : ℝ) := Nat.cast_nonneg _
  have hUa : (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by norm_num
  have hsA : Real.sqrt (vaughanCutoff A : ℝ) ≤ A := by
    calc
      _ ≤ Real.sqrt (A ^ 2) := Real.sqrt_le_sqrt (Nat.floor_le (sq_nonneg A))
      _ = A := Real.sqrt_sq (by linarith)
  have hs : Real.sqrt (vaughanCutoff A : ℝ) ≤
      Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := Real.sqrt_le_sqrt hUa
  have hm : (vaughanCutoff A : ℝ) ≤
      A * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
    calc
      _ = Real.sqrt (vaughanCutoff A : ℝ) * Real.sqrt (vaughanCutoff A : ℝ) :=
        (Real.mul_self_sqrt hU).symm
      _ ≤ _ := mul_le_mul hsA hs (Real.sqrt_nonneg _) (by linarith)
  apply (actualCenteredColumnHalfInventory_abs_le_cutoff hA).trans
  exact (div_le_iff₀ (by positivity :
    0 < Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ))).mpr (by linarith)

end
end FormalResearch.RiemannHypothesis.SourceActualAdjointColumnTrace
```
