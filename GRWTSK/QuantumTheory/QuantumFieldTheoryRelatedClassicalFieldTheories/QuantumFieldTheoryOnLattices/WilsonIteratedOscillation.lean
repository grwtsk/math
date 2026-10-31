/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonRowOscillation

/-!
# Iterated oscillation of the actual continuous Wilson row map

The zero iterate is identity on observables, not an asserted continuous
zero-length integral kernel. SOURCE_PROOF_CANDIDATE; compilation, fresh
replay, transitive axioms and expected interfaces NOT_RUN. Stationary centering,
pointwise kernel bounds and finite-loop covariance remain separate obligations.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonIteratedOscillation
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonRowOscillation
variable (L : ℕ) [NeZero L]

def theta (β : ℝ) : ℝ := 1 - Real.exp (-12 * β * (L : ℝ)^3)

theorem theta_nonneg (β : ℝ) (hβ : 0 ≤ β) : 0 ≤ theta L β := by
  have hp : 0 ≤ (L : ℝ)^3 := pow_nonneg (Nat.cast_nonneg L) _
  have he : Real.exp (-12 * β * (L : ℝ)^3) ≤ 1 :=
    Real.exp_le_one_iff.mpr (by nlinarith [mul_nonneg hβ hp])
  exact sub_nonneg.mpr he

theorem theta_lt_one (β : ℝ) : theta L β < 1 := by
  have he := Real.exp_pos (-12 * β * (L : ℝ)^3)
  unfold theta
  linarith

variable (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
variable (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)
variable (hn : ‖f‖ = 1)
variable (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)

/-- Iterate only the constructed continuous row map. -/
def rowIterate : ℕ → Obs L → Obs L
  | 0, h => h
  | m+1, h => evolve L β hβ f hf hne hn he (rowIterate L β hβ f hf hne hn he m h)

@[simp] theorem rowIterate_zero (h : Obs L) : rowIterate L β hβ f hf hne hn he 0 h = h := rfl

@[simp] theorem rowIterate_succ (m : ℕ) (h : Obs L) :
    rowIterate L β hβ f hf hne hn he (m+1) h =
      evolve L β hβ f hf hne hn he (rowIterate L β hβ f hf hne hn he m h) := rfl

/-- Quantitative oscillation bound for every actual continuous observable iterate. -/
theorem oscillation_rowIterate (m : ℕ) (h : Obs L) :
    oscillation L (rowIterate L β hβ f hf hne hn he m h) ≤
      (theta L β)^m * oscillation L h := by
  induction m with
  | zero => simp
  | succ m ih =>
    rw [rowIterate_succ]
    calc
      _ ≤ theta L β * oscillation L (rowIterate L β hβ f hf hne hn he m h) :=
        oscillation_evolve L β hβ f hf hne hn he _
      _ ≤ theta L β * ((theta L β)^m * oscillation L h) :=
        mul_le_mul_of_nonneg_left ih (theta_nonneg L β hβ.le)
      _ = _ := by rw [pow_succ']; ring

end GRWTSK.Geometry.GaugeTheory.WilsonIteratedOscillation
