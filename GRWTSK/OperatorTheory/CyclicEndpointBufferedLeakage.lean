/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicActualVariationEndpointTail

set_option autoImplicit false
noncomputable section

/-! Endpoint-corrected actual buffered operator bound. Physical gauge
sector identification remains separate. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicEndpointBufferedLeakage
open CyclicActualVariationEndpointTail CyclicIntegerLiftBufferedBands
open CyclicBufferedPotentialTailBound CyclicPotentialConvolutionConjugacy
open ArithmeticCyclicSecondVariation
variable (N : ℕ) [NeZero N]

theorem actual_endpoint_buffered_leakage (K₀ L K : ℕ) (hK : K₀+L≤K)
    (hL : 0<L) (hLH : L≤N/2) (q : ZMod N → ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) (hx : ∀ l ∉ frequencyBand N K₀, x l=0) :
    ‖outsideMask N (frequencyBand N K) (potentialConvolution N q x)‖ ≤
      (((N : ℝ)*secondVariation N q/8)*(1/(L : ℝ)-1/((N/2 : ℕ) : ℝ)))*‖x‖ := by
  have hb : ∀ r ∈ frequencyBand N L, ∀ l ∈ frequencyBand N K₀,
      l+r ∈ frequencyBand N K := by
    intro r hr l hl
    exact frequencyBand_mono N hK (frequencyBand_add N K₀ L l r hl hr)
  apply (buffered_actual_potential_tail_bound N (frequencyBand N K₀)
    (frequencyBand N K) (frequencyBand N L) hb q x hx).trans
  exact mul_le_mul_of_nonneg_right (actual_band_variation_endpoint_tail N q L hL hLH)
    (norm_nonneg x)

theorem endpoint_weight_nonnegative (L : ℕ) (hL : 0<L) (hLH : L≤N/2) :
    0≤1/(L : ℝ)-1/((N/2 : ℕ) : ℝ) := by
  have hLR : 0<(L : ℝ) := by exact_mod_cast hL
  have hLRH : (L : ℝ)≤((N/2 : ℕ) : ℝ) := by exact_mod_cast hLH
  exact sub_nonneg.mpr (one_div_le_one_div_of_le hLR hLRH)

theorem actual_variation_budget_leakage (K₀ L K : ℕ) (hK : K₀+L≤K)
    (hL : 0<L) (hLH : L≤N/2) (q : ZMod N → ℝ) (V : ℝ)
    (hV : secondVariation N q≤V) (x : EuclideanSpace ℂ (ZMod N))
    (hx : ∀ l ∉ frequencyBand N K₀, x l=0) :
    ‖outsideMask N (frequencyBand N K) (potentialConvolution N q x)‖ ≤
      (((N : ℝ)*V/8)*(1/(L : ℝ)-1/((N/2 : ℕ) : ℝ)))*‖x‖ := by
  apply (actual_endpoint_buffered_leakage N K₀ L K hK hL hLH q x hx).trans
  apply mul_le_mul_of_nonneg_right _ (norm_nonneg x)
  apply mul_le_mul_of_nonneg_right _ (endpoint_weight_nonnegative N L hL hLH)
  exact div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_left hV (Nat.cast_nonneg N)) (by norm_num)

/- For arithmeticPotential, actual_arithmetic_secondVariation_bound supplies
V as the explicit weighted sum of three channel variations. Uniform joint
smallness of that literal budget and a physical mass margin remain missing.
The full input norm, wraparound and buffer-width cost are retained. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicEndpointBufferedLeakage
