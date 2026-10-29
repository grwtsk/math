/- Copyright (c) 2026 grwtsk contributors. MIT.
Human direction: grwtsk contributors; OpenAI Codex formalization assistance.
Classical implications; imported Mathlib contributions retain their authorship. -/
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform

/-- Reconstruction error controls energy, independently of the reconstruction method. -/
theorem reconstruction_energy_error {E : Type*} [SeminormedAddCommGroup E]
    (f g : E) (δ : ℝ) (hδ : ‖f-g‖ ≤ δ) :
    |‖f‖^2-‖g‖^2| ≤ δ*(2*‖g‖+δ) := by
  have hd : |‖f‖-‖g‖| ≤ δ := (abs_norm_sub_norm_le f g).trans hδ
  have hδ0 : 0 ≤ δ := (norm_nonneg _).trans hδ
  have hn : ‖f‖ ≤ ‖g‖+δ := by have := (le_abs_self (‖f‖-‖g‖)).trans hd; linarith
  have heq : ‖f‖^2-‖g‖^2 = (‖f‖-‖g‖)*(‖f‖+‖g‖) := by ring
  rw [heq,abs_mul,abs_of_nonneg (add_nonneg (norm_nonneg _) (norm_nonneg _))]
  calc
    _ ≤ δ*(‖f‖+‖g‖) := mul_le_mul_of_nonneg_right hd (by positivity)
    _ ≤ _ := mul_le_mul_of_nonneg_left (by linarith) hδ0

/-- Diagonal identification error is charged in addition to waveform reconstruction. -/
theorem reconstructed_cross_error {E : Type*} [SeminormedAddCommGroup E]
    (f g : E) (D Dapprox δ η : ℝ) (hδ : ‖f-g‖ ≤ δ) (hη : |D-Dapprox| ≤ η) :
    |(‖f‖^2-D)-(‖g‖^2-Dapprox)| ≤ δ*(2*‖g‖+δ)+η := by
  have heq : (‖f‖^2-D)-(‖g‖^2-Dapprox) = (‖f‖^2-‖g‖^2)-(D-Dapprox) := by ring
  rw [heq]
  exact (abs_sub _ _).trans (add_le_add (reconstruction_energy_error f g δ hδ) hη)

end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform
