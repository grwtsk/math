/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human direction: R.A. Jacob Martone; OpenAI Codex formalization assistance.
Classical implications; imported Mathlib contributions retain their authorship. -/
import GRWTSK.Analysis.Waveform.Basic
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform
open MeasureTheory

/-- Labels classify formula families; observational equality requires its own proof. -/
inductive PotentialFamily where
  | almostMathieu | oneFrequency | multiFrequency | nonstationary
  deriving DecidableEq, Repr

def SameSampledPotential (v w : ℝ → ℝ) (α θ : ℝ) : Prop :=
  ∀ n : ℤ, sampledPotential v α θ n = sampledPotential w α θ n

def discreteAction (V : ℤ → ℝ) (ψ : ℤ → ℝ) (n : ℤ) : ℝ :=
  ψ (n+1) + ψ (n-1) + V n * ψ n

theorem equal_samples_equal_action {v w : ℝ → ℝ} {α θ : ℝ}
    (h : SameSampledPotential v w α θ) (ψ : ℤ → ℝ) (n : ℤ) :
    discreteAction (sampledPotential v α θ) ψ n =
      discreteAction (sampledPotential w α θ) ψ n := by
  simp only [discreteAction,h n]

/-- Fixed sampling can alias distinct continuous periodic formulas. -/
theorem sampled_alias :
    SameSampledPotential (fun x => Real.sin x + Real.sin (2*x)) (fun _ => 0) 0 0 ∧
    (fun x : ℝ => Real.sin x + Real.sin (2*x)) ≠ (fun _ => (0:ℝ)) := by
  constructor
  · intro n; simp [sampledPotential]
  · intro h
    have hx := congrFun h (Real.pi/2)
    have h2 : 2*(Real.pi/2)=Real.pi := by ring
    simp [h2] at hx

theorem waveform_equality_implies_samples {v w : ℝ → ℝ} (h : v = w) (α θ : ℝ) :
    SameSampledPotential v w α θ := by subst w; intro n; rfl

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

/-- Merely defines the angular change of variable; it supplies no Parseval theorem. -/
def angularTransform (normalized : ℝ → ℂ) (ξ : ℝ) : ℂ := normalized (ξ/(2*Real.pi))

/-- Supplier obligations for the hard-window, angular, pointwise interpretation.
No instance is inferred from a finite sample manifest or normalized L² isometry. -/
structure AngularWindowCertificate (T : ℝ) (f : ℝ → ℂ) (F : Lp (α := ℝ) ℂ 2) where
  nonnegativeWindow : 0 ≤ T
  zeroOutside : ∀ u, u ∉ Set.Icc 0 T → f u = 0
  integrable : Integrable f
  l2Representative : (F : ℝ → ℂ) =ᵐ[volume] f
  angularSpectrum : ℝ → ℂ
  exactKernel : ∀ ξ, angularSpectrum ξ = ∫ u : ℝ,
    Complex.exp (-Complex.I * (ξ:ℂ) * (u:ℂ)) * f u
  angularParseval : ‖F‖^2 = (2*Real.pi)⁻¹ * ∫ ξ : ℝ, ‖angularSpectrum ξ‖^2

/-- A reconstruction certificate binds an actual error, rather than a calibration label. -/
structure ReconstructionCertificate (F G : Lp (α := ℝ) ℂ 2) where
  error : ℝ
  provedError : ‖F-G‖ ≤ error

/-- Cross-spectrum orientation: the first Hilbert-inner argument is conjugated. -/
def orderedCrossSpectrum (fm fn : ℝ → ℂ) (ξ : ℝ) : ℂ := fm ξ * star (fn ξ)

theorem p04_conditional {X R e : ℝ → ℝ} {CR Ce r s : ℝ}
    (hCR : 0 ≤ CR) (hCe : 0 ≤ Ce) (hr : 0 ≤ r) (_hs : 0 ≤ s)
    (hid : ∀ T, 0 ≤ T → X T = R T + e T)
    (hR : ∀ T, 0 ≤ T → R T ≤ CR*(1+T)^r)
    (he : ∀ T, 0 ≤ T → |e T| ≤ Ce*(1+T)^s) :
    ∃ C p : ℝ, 0 ≤ C ∧ 0 ≤ p ∧ ∀ T, 0 ≤ T → X T ≤ C*(1+T)^p := by
  exact ⟨CR+Ce,max r s,add_nonneg hCR hCe,(le_max_left r s).trans' hr,
    polynomial_return hCR hCe hid hR he⟩
end GRWTSK.Analysis.Waveform
