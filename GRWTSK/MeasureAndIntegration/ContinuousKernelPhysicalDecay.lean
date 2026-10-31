/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.MeasureAndIntegration.ContinuousKernelMinorizationPowers
import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Physical separation from a quantitative minorization threshold

A conditional quantitative bridge consuming actual kernel powers. The uniform
threshold and prefactor are hypotheses, not supplied by the Wilson model.
The index n represents n+1 transitions, retaining the one-spacing correction.
SOURCE_PROOF_CANDIDATE; compilation, kernel replay, axioms and interfaces NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.ContinuousKernelPhysicalDecay
open MeasureTheory
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
open GRWTSK.Analysis.Integration.ContinuousKernelMinorizationPowers

/-- Scalar rate conversion; all uniform quantitative premises remain explicit. -/
theorem geometric_physical_bound (a M Mstar h hstar Δ : ℝ)
    (ha : a < 1) (hM : 0 ≤ M) (hMM : M ≤ Mstar)
    (hh : h ≤ hstar) (hΔ : 0 ≤ Δ)
    (hthreshold : 1-Real.exp (-Δ*h) ≤ a) (n : ℕ) :
    (1-a)^n*M ≤ Mstar*Real.exp (Δ*hstar)*
      Real.exp (-Δ*((n+1 : ℕ):ℝ)*h) := by
  have hq : 0 ≤ 1-a := by linarith
  have hp := pow_le_pow_left₀ hq (show 1-a ≤ Real.exp (-Δ*h) by linarith) n
  have hMs : 0 ≤ Mstar := hM.trans hMM
  calc
    _ ≤ (Real.exp (-Δ*h))^n*Mstar :=
      mul_le_mul hp hMM hM (pow_nonneg (le_of_lt (Real.exp_pos _)) _)
    _ = Mstar*Real.exp (-Δ*(n:ℝ)*h) := by
      rw [← Real.exp_nat_mul]
      rw [show (n:ℝ)*(-Δ*h) = -Δ*(n:ℝ)*h by ring]
      ring
    _ ≤ Mstar*Real.exp (Δ*hstar-Δ*((n+1 : ℕ):ℝ)*h) := by
      apply mul_le_mul_of_nonneg_left _ hMs
      apply Real.exp_le_exp.mpr
      push_cast
      nlinarith [mul_le_mul_of_nonneg_left hh hΔ]
    _ = _ := by
      rw [show Δ*hstar-Δ*((n+1 : ℕ):ℝ)*h =
        Δ*hstar+(-Δ*((n+1 : ℕ):ℝ)*h) by ring, Real.exp_add]
      ring

variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]

/-- The rate conversion applied to the maintained literal continuous kernel. -/
theorem positivePower_physical_bound (μ : Measure X) [IsProbabilityMeasure μ]
    (K : C(X × X, ℝ)) (a M Mstar h hstar Δ : ℝ)
    (ha : a < 1) (hM : 0 ≤ M) (hMM : M ≤ Mstar)
    (hh : h ≤ hstar) (hΔ : 0 ≤ Δ)
    (hthreshold : 1-Real.exp (-Δ*h) ≤ a)
    (hK : ∀ x y, a ≤ K (x,y))
    (hrow : ∀ x, (∫ y, K (x,y) ∂μ) = 1)
    (hcol : ∀ y, (∫ x, K (x,y) ∂μ) = 1)
    (hbase : ∀ x y, |K (x,y)-1| ≤ M) (n : ℕ) (x y : X) :
    |positivePower μ K n (x,y)-1| ≤
      Mstar*Real.exp (Δ*hstar)*Real.exp (-Δ*((n+1 : ℕ):ℝ)*h) :=
  (positivePower_residual_bound μ K a M ha hK hrow hcol hbase n x y).trans
    (geometric_physical_bound a M Mstar h hstar Δ ha hM hMM hh hΔ hthreshold n)

end GRWTSK.Analysis.Integration.ContinuousKernelPhysicalDecay
