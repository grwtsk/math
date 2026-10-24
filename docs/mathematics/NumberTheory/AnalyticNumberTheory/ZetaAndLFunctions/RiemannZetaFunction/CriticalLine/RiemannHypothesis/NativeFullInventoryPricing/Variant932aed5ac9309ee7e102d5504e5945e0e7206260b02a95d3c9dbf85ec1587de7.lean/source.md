# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeFullInventoryPricing.Variant932aed5ac9309ee7e102d5504e5945e0e7206260b02a95d3c9dbf85ec1587de7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cef8542708f593fd68625a196c8cfb99a70145d6` · SHA-256 `932aed5ac9309ee7e102d5504e5945e0e7206260b02a95d3c9dbf85ec1587de7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeCoherentPricing

/-!
# The coherent shell price consumes the complete native inventory

Zero extension into the unchanged full finite inventory retains the shell
quadratic form and its exact squared coordinate norm. The complete matrix
operator norm therefore supplies the shell pricing bound, without replacing
or deleting the other native coordinates. Full signed DPP readout is separate.

Source: RH conversation Batch 3, BL03-05. Human programme: grwtsk contributors.
Local complete-inventory adapter: OpenAI Codex.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeFullInventoryPricing
open WeightedGramPricing MatrixNormPricing NativeCoherentPricing
open scoped BigOperators
noncomputable section

private theorem sum_restricted (s t : Finset ℕ) (hst : s ⊆ t) (f : ℕ → ℝ) :
    (∑ n ∈ t, if n ∈ s then f n else 0) = ∑ n ∈ s, f n := by
  classical
  rw [← Finset.sum_filter]
  have hfilter : t.filter (fun n ↦ n ∈ s) = s := by
    ext n
    simp only [Finset.mem_filter]
    exact ⟨fun h ↦ h.2, fun h ↦ ⟨hst h, h⟩⟩
  rw [hfilter]

theorem anchored_matrix_subshell_bound (s t : Finset ℕ) (hst : s ⊆ t)
    (b₀ : ℝ) (b : ℕ → ℝ) (K : ℕ → ℕ → ℝ) (anchor : ℕ → ℝ) :
    shellForm s b K ≤ operatorNorm (anchoredMatrix t b₀ b K anchor) * shellMass s b := by
  let v : Option ↥t → ℝ := fun i ↦ match i with
    | none => 0
    | some n => if n.val ∈ s then b n.val else 0
  have h := quadraticForm_le_operatorNorm (anchoredMatrix t b₀ b K anchor) v
  have hq : quadraticForm (anchoredMatrix t b₀ b K anchor) v = shellForm s b K := by
    unfold quadraticForm shellForm
    simp only [Fintype.sum_option, v, anchoredMatrix, zero_mul, mul_zero,
      Finset.sum_const_zero, zero_add]
    rw [Finset.sum_coe_sort t (fun n : ℕ ↦ ∑ m : t,
      (if n ∈ s then b n else 0) * weightedGram b K n m * (if m.val ∈ s then b m else 0))]
    have hinner (n : ℕ) :
        (∑ m : t, (if n ∈ s then b n else 0) * weightedGram b K n m *
          (if m.val ∈ s then b m else 0)) =
        if n ∈ s then (∑ m ∈ s, b n * weightedGram b K n m * b m) else 0 := by
      rw [Finset.sum_coe_sort t (fun m : ℕ ↦
        (if n ∈ s then b n else 0) * weightedGram b K n m * (if m ∈ s then b m else 0))]
      by_cases hn : n ∈ s
      · simp only [if_pos hn, mul_ite, mul_zero]
        exact sum_restricted s t hst _
      · simp only [if_neg hn, zero_mul, Finset.sum_const_zero]
    simp_rw [hinner]
    exact sum_restricted s t hst _
  have hv : (∑ i, v i ^ 2) = shellMass s b := by
    simp only [Fintype.sum_option, v, zero_pow (by norm_num : (2 : ℕ) ≠ 0), zero_add]
    rw [Finset.sum_coe_sort t (fun n : ℕ ↦ (if n ∈ s then b n else 0) ^ 2)]
    simp only [ite_pow, zero_pow (by norm_num : (2 : ℕ) ≠ 0)]
    exact sum_restricted s t hst _
  rw [hq, hv] at h
  exact h

/-- The complete inventory in this module, with the following exact parameterization.

def completeInventory (A : ℝ) : Finset ℕ := Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊
-/
def completeInventory (A : ℝ) : Finset ℕ := Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊

theorem actual_shell_subset_complete {A : ℝ} (hA : 8 ≤ A) :
    actualShell A ⊆ completeInventory A := by
  intro n hn
  obtain ⟨hnlo, hnhi⟩ := Finset.mem_Ioc.mp hn
  have hlo := (ShellArithmetic.literal_exponential_shell_endpoints hA).1
  have hfloor : 2 ≤ ⌊Real.exp (2 * A - 2)⌋₊ := by
    apply Nat.le_floor
    norm_num
    linarith
  have hupper : ⌊Real.exp (2 * A - 1)⌋₊ ≤ ⌊Real.exp (2 * A)⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))
  exact Finset.mem_Icc.mpr ⟨by omega, hnhi.trans hupper⟩

theorem actual_complete_inventory_decoder_price (b ĉ : ℕ → ℝ) {A b₀ : ℝ}
    (hA : 8 ≤ A) (hb₀ : 0 < b₀) (hb : ∀ n ∈ actualShell A, 0 < b n) :
    Real.sqrt (319 / 384 : ℝ) *
      ((Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12 -
        (∑ n ∈ actualShell A, |ShellArithmetic.coefficient n - ĉ n|)) ≤
      operatorNorm (actualNativeMatrix A (completeInventory A) b₀ b) *
        Real.sqrt (∑ n ∈ actualShell A, (ĉ n / (b₀ * b n)) ^ 2) := by
  apply actual_native_replacement_decoder_price b ĉ hA hb₀ hb
  · exact anchored_matrix_anchor_bound _ _ _ _ _
  · exact anchored_matrix_subshell_bound _ _ (actual_shell_subset_complete hA) _ _ _ _

/-- The decoder vector in this module, with the following exact parameterization.

def decoderVector (s : Finset ℕ) (b₀ : ℝ) (b ĉ : ℕ → ℝ) : EuclideanSpace ℝ (Option ↥s) :=
WithLp.toLp 2 (fun i ↦ match i with | none => 0 | some n => ĉ n.val / (b₀ * b n.val))
-/
def decoderVector (s : Finset ℕ) (b₀ : ℝ) (b ĉ : ℕ → ℝ) : EuclideanSpace ℝ (Option ↥s) :=
  WithLp.toLp 2 (fun i ↦ match i with | none => 0 | some n => ĉ n.val / (b₀ * b n.val))

theorem exact_decoder_vector_norm (s : Finset ℕ) (b₀ : ℝ) (b ĉ : ℕ → ℝ) :
    ‖decoderVector s b₀ b ĉ‖ = Real.sqrt (∑ n ∈ s, (ĉ n / (b₀ * b n)) ^ 2) := by
  have hsq : ‖decoderVector s b₀ b ĉ‖ ^ 2 = ∑ n ∈ s, (ĉ n / (b₀ * b n)) ^ 2 := by
    rw [EuclideanSpace.real_norm_sq_eq]
    change (∑ i : Option ↥s, (match i with | none => (0 : ℝ) | some n => ĉ n.val / (b₀ * b
      n.val)) ^ 2) = _
    simp only [Fintype.sum_option, zero_pow (by norm_num : (2 : ℕ) ≠ 0), zero_add]
    exact Finset.sum_coe_sort s (fun n : ℕ ↦ (ĉ n / (b₀ * b n)) ^ 2)
  rw [← hsq, Real.sqrt_sq_eq_abs, abs_of_nonneg (norm_nonneg _)]

/-- The complete native matrix and complete decoder vector retain every source coordinate. -/
theorem actual_complete_native_packet_price (b ĉ : ℕ → ℝ) {A b₀ : ℝ}
    (hA : 8 ≤ A) (hb₀ : 0 < b₀) (hb : ∀ n ∈ actualShell A, 0 < b n) :
    Real.sqrt (319 / 384 : ℝ) *
      ((Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12 -
        (∑ n ∈ actualShell A, |ShellArithmetic.coefficient n - ĉ n|)) ≤
      operatorNorm (actualNativeMatrix A (completeInventory A) b₀ b) *
        ‖decoderVector (completeInventory A) b₀ b ĉ‖ := by
  rw [exact_decoder_vector_norm]
  apply (actual_complete_inventory_decoder_price b ĉ hA hb₀ hb).trans
  apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
  apply Real.sqrt_le_sqrt
  exact Finset.sum_le_sum_of_subset_of_nonneg (actual_shell_subset_complete hA)
    (fun n hn hns ↦ sq_nonneg _)

end
end GRWTSK.RiemannHypothesis.Conversation.NativeFullInventoryPricing
```
