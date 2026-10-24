/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.LaplaceTransform.CausalExponentialResponse
import Mathlib.NumberTheory.LSeries.Dirichlet

/-!
# CCC finite native Möbius signal Laplace exchange

The finite signal retains the actual signed coefficients and actual gated atoms.
It agrees with the original pickup only on the proved finite reading window;
its all-time Laplace integral is not silently substituted for the full pickup.
No open growth or signed cancellation estimate is asserted.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupLaplaceSum

open MeasureTheory Set
open ArithmeticPickupSource ArithmeticPickupEnergy ArithmeticPickupLaplaceAtom

noncomputable section

def finiteSignal (nodes : Finset ℕ) (t : ℝ) : ℝ :=
  ∑ n ∈ nodes, moebiusCoefficient n * response n t

def finiteLaplaceSignal (nodes : Finset ℕ) (z : ℂ) (t : ℝ) : ℂ :=
  Complex.exp (-z * (t : ℂ)) * (finiteSignal nodes t : ℂ)

theorem finite_laplace_signal_expansion (nodes : Finset ℕ) (z : ℂ) :
    finiteLaplaceSignal nodes z = fun t ↦
      ∑ n ∈ nodes, (moebiusCoefficient n : ℂ) * laplaceResponse n z t := by
  funext t
  unfold finiteLaplaceSignal finiteSignal laplaceResponse
  push_cast
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- Every term is integrable before the finite sum is exchanged. -/
theorem finite_laplace_signal_integrable (nodes : Finset ℕ)
    (positiveNodes : ∀ n ∈ nodes, 1 ≤ n) {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (finiteLaplaceSignal nodes z) (Ioi 0) := by
  rw [finite_laplace_signal_expansion]
  exact integrable_finsetSum nodes (fun n hn ↦
    (laplace_response_integrable (positiveNodes n hn) hz).const_mul
      (moebiusCoefficient n : ℂ))

/-- An actual finite signed inventory, with no all-time pickup identification. -/
theorem finite_laplace_signal_integral (nodes : Finset ℕ)
    (positiveNodes : ∀ n ∈ nodes, 1 ≤ n) {z : ℂ} (hz : 0 < z.re) :
    (∫ t in Ioi 0, finiteLaplaceSignal nodes z t) =
      ∑ n ∈ nodes, (moebiusCoefficient n : ℂ) *
        ((n : ℂ) ^ (-(z + 1 / 2)) / (z * (z + 1 / 2))) := by
  rw [finite_laplace_signal_expansion,
    integral_finsetSum nodes (fun n hn ↦
      (laplace_response_integrable (positiveNodes n hn) hz).const_mul
        (moebiusCoefficient n : ℂ))]
  apply Finset.sum_congr rfl
  intro n hn
  rw [integral_const_mul, laplace_response_integral_cpow (positiveNodes n hn) hz]

/-- The finite signal is exactly the original pickup on the proved window. -/
theorem finite_inventory_signal_eq_pickup {t T : ℝ} (ht : 0 ≤ t) (hcutoff : t ≤ T) :
    finiteSignal (inventory T) t = pickup t :=
  (actual_waveform_on_inventory ht hcutoff).symm

theorem finite_inventory_laplace_signal_eq_pickup {t T : ℝ}
    (ht : 0 ≤ t) (hcutoff : t ≤ T) (z : ℂ) :
    finiteLaplaceSignal (inventory T) z t =
      Complex.exp (-z * (t : ℂ)) * (pickup t : ℂ) := by
  unfold finiteLaplaceSignal
  rw [finite_inventory_signal_eq_pickup ht hcutoff]

theorem inventory_laplace_signal_integral (T : ℝ) {z : ℂ} (hz : 0 < z.re) :
    (∫ t in Ioi 0, finiteLaplaceSignal (inventory T) z t) =
      ∑ n ∈ inventory T, (moebiusCoefficient n : ℂ) *
        ((n : ℂ) ^ (-(z + 1 / 2)) / (z * (z + 1 / 2))) :=
  finite_laplace_signal_integral (inventory T)
    (fun _ hn ↦ (Finset.mem_Icc.mp hn).1) hz

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupLaplaceSum
