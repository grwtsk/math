/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib
import GRWTSK.Analysis.Inequalities.ResidualEnclosure

/-! # Three-channel Sobolev readout bound, with both boundary moments -/
set_option autoImplicit false
noncomputable section
open MeasureTheory
namespace GRWTSK.Analysis.RealAnalysis.Integration.QuadraticReadoutBound.Variants.Variantb02b981231489a39

variable {α : Type*} [MeasurableSpace α] {μ : Measure α}

/-- Real integral Cauchy--Schwarz with explicit L² hypotheses. -/
theorem integral_product_bound (f g : α → ℝ)
    (hf : MemLp f 2 μ) (hg : MemLp g 2 μ) :
    |∫ x, f x*g x ∂μ| ≤
      Real.sqrt (∫ x, (f x)^2 ∂μ)*Real.sqrt (∫ x, (g x)^2 ∂μ) := by
  have hp : (2:ℝ).HolderConjugate 2 := by
    rw [Real.holderConjugate_iff]
    norm_num
  have hf' : MemLp f (ENNReal.ofReal (2:ℝ)) μ := by simpa using hf
  have hg' : MemLp g (ENNReal.ofReal (2:ℝ)) μ := by simpa using hg
  have hH := integral_mul_norm_le_Lp_mul_Lq hp hf' hg'
  have hH' : (∫ x, ‖f x‖*‖g x‖ ∂μ) ≤
      Real.sqrt (∫ x, (f x)^2 ∂μ)*Real.sqrt (∫ x, (g x)^2 ∂μ) := by
    simpa only [Real.rpow_two, Real.norm_eq_abs, sq_abs, ← Real.sqrt_eq_rpow] using hH
  calc
    _ = ‖∫ x, f x*g x ∂μ‖ := by rw [Real.norm_eq_abs]
    _ ≤ ∫ x, ‖f x*g x‖ ∂μ := norm_integral_le_integral_norm _
    _ = ∫ x, ‖f x‖*‖g x‖ ∂μ := by simp only [norm_mul]
    _ ≤ _ := hH'

/-- Exact sharp three-channel squared estimate once the signed readout is reconstructed. -/
theorem reconstructed_readout_sq_le (f g : α → ℝ)
    (hf : MemLp f 2 μ) (hg : MemLp g 2 μ)
    (m₀ m₁ a₀ a₁ : ℝ) :
    (a₀*m₀+a₁*m₁-(∫ x, f x*g x ∂μ))^2 ≤
      ((∫ x, f x^2 ∂μ)+m₀^2+m₁^2)*
        (a₀^2+a₁^2+(∫ x, g x^2 ∂μ)) := by
  let Q := ∫ x, f x^2 ∂μ
  let D := ∫ x, g x^2 ∂μ
  have hQ : 0≤Q := integral_nonneg (fun _ ↦ sq_nonneg _)
  have hD : 0≤D := integral_nonneg (fun _ ↦ sq_nonneg _)
  have hC := integral_product_bound f g hf hg
  have ht : |a₀*m₀+a₁*m₁-(∫ x, f x*g x ∂μ)| ≤
      |m₀|*|a₀|+|m₁|*|a₁|+Real.sqrt Q*Real.sqrt D := by
    calc
      _ ≤ |a₀*m₀+a₁*m₁|+|∫ x, f x*g x ∂μ| := abs_sub_le _ _
      _ ≤ (|a₀*m₀|+|a₁*m₁|)+Real.sqrt Q*Real.sqrt D :=
        add_le_add (abs_add_le _ _) hC
      _ = _ := by simp only [abs_mul]; ring
  have hCS := GRWTSK.Analysis.Inequalities.ResidualEnclosure.three_channel_sq_le
    |m₀| |m₁| (Real.sqrt Q) |a₀| |a₁| (Real.sqrt D)
  rw [sq_abs, sq_abs, sq_abs, sq_abs, Real.sq_sqrt hQ, Real.sq_sqrt hD] at hCS
  have hs := mul_self_le_mul_self (abs_nonneg _) ht
  simp only [← pow_two, sq_abs] at hs
  dsimp [Q,D] at *
  nlinarith

end GRWTSK.Analysis.RealAnalysis.Integration.QuadraticReadoutBound.Variants.Variantb02b981231489a39
