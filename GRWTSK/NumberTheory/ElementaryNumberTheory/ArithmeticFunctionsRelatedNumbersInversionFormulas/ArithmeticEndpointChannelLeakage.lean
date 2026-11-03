/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicEndpointBufferedLeakage

set_option autoImplicit false
noncomputable section

/-! Actual arithmetic channel budgets in endpoint-corrected leakage.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticEndpointChannelLeakage
open ArithmeticCyclicSecondVariation CyclicEndpointBufferedLeakage
open CyclicIntegerLiftBufferedBands CyclicBufferedPotentialTailBound CyclicPotentialConvolutionConjugacy
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
variable (N : ℕ) [NeZero N]

def actualChannelVariationBudget (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (u v w : ℝ) : ℝ :=
  |u|*secondVariation N (fun j => ArithmeticFunction.vonMangoldt (m j))+
  |v|*secondVariation N (fun j => Real.log (UniqueFactorizationMonoid.radical (m j) : ℝ))+
  |w|*secondVariation N (fun j => (χ (m j : ZMod level)).re)

theorem actual_arithmetic_endpoint_leakage (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (u v w : ℝ) (K₀ L K : ℕ) (hK : K₀+L≤K)
    (hL : 0<L) (hLH : L≤N/2) (x : EuclideanSpace ℂ (ZMod N))
    (hx : ∀ l ∉ frequencyBand N K₀, x l=0) :
    ‖outsideMask N (frequencyBand N K)
      (potentialConvolution N (arithmeticPotential N level χ m u v w) x)‖ ≤
    (((N : ℝ)*actualChannelVariationBudget N level χ m u v w/8)*
      (1/(L : ℝ)-1/((N/2 : ℕ) : ℝ)))*‖x‖ := by
  exact actual_variation_budget_leakage N K₀ L K hK hL hLH _ _
    (actual_arithmetic_secondVariation_bound N level χ m u v w) x hx

theorem actual_arithmetic_epsilon_leakage (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (u v w : ℝ) (K₀ L K : ℕ) (hK : K₀+L≤K)
    (hL : 0<L) (hLH : L≤N/2) (x : EuclideanSpace ℂ (ZMod N))
    (hx : ∀ l ∉ frequencyBand N K₀, x l=0) (ε : ℝ)
    (hbudget : ((N : ℝ)*actualChannelVariationBudget N level χ m u v w/8)*
      (1/(L : ℝ)-1/((N/2 : ℕ) : ℝ))≤ε) :
    ‖outsideMask N (frequencyBand N K)
      (potentialConvolution N (arithmeticPotential N level χ m u v w) x)‖ ≤ ε*‖x‖ := by
  exact (actual_arithmetic_endpoint_leakage N level χ m u v w K₀ L K hK hL hLH x hx).trans
    (mul_le_mul_of_nonneg_right hbudget (norm_nonneg x))

/- Uniform smallness of this exact label/character/channel budget is not
supplied by bounded labels. Physical sector embeddings, vacuum projection,
compatible form-core domains and joint positive mass margins remain missing. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticEndpointChannelLeakage
