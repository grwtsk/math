import Mathlib.Analysis.SpecialFunctions.Pow.Continuity
import Mathlib.Order.Filter.Basic
import Mathlib.Tactic

/-!
# Positive pole residue forces the polynomial growth exponent

The final pickup-growth refinement (message 688d3406-9932-47c2-8c16-254c70d2b61a)
uses this local limiting argument. Its two analytic inputs, the positive
scaled-residue limit and the scaled Laplace bound, are explicit. Identifying
them with a critical-line zeta zero and proving the native Laplace bound are
separate obligations; this module does not assert a zero-multiplicity theorem
from RH alone. Human direction: grwtsk contributors. Proofs: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.BranchPoleGrowthBudget
open Filter
open scoped Topology

theorem positive_residue_forces_exponent_le (g : ℝ → ℝ) (L C m p : ℝ)
    (hL : 0 < L) (hlim : Tendsto g (𝓝[>] (0 : ℝ)) (𝓝 L))
    (hbound : ∀ᶠ σ in 𝓝[>] (0 : ℝ), g σ ≤ C * σ ^ (m - p - 1)) :
    m ≤ p + 1 := by
  by_contra h
  have he : 0 < m - p - 1 := by linarith
  have hr : Tendsto (fun σ : ℝ ↦ σ ^ (m - p - 1)) (𝓝[>] (0 : ℝ)) (𝓝 0) := by
    have hc := (Real.continuousAt_rpow_const 0 (m - p - 1) (Or.inr he.le)).tendsto
    simpa only [Real.zero_rpow he.ne', nhdsWithin] using hc.mono_left inf_le_left
  have hb : Tendsto (fun σ : ℝ ↦ C * σ ^ (m - p - 1)) (𝓝[>] (0 : ℝ)) (𝓝 0) := by
    simpa using tendsto_const_nhds.mul hr
  have hzero : L ≤ 0 := le_of_tendsto_of_tendsto hlim hb hbound
  linarith

theorem positive_integer_residue_budget (g : ℝ → ℝ) (L C p : ℝ) (m : ℕ)
    (hL : 0 < L) (hlim : Tendsto g (𝓝[>] (0 : ℝ)) (𝓝 L))
    (hbound : ∀ᶠ σ in 𝓝[>] (0 : ℝ), g σ ≤ C * σ ^ ((m : ℝ) - p - 1)) :
    (m : ℝ) ≤ p + 1 := positive_residue_forces_exponent_le g L C m p hL hlim hbound

theorem sublinear_growth_forces_simple (m : ℕ) (p : ℝ) (hm : 1 ≤ m)
    (hp : p < 1) (hbudget : (m : ℝ) ≤ p + 1) : m = 1 := by
  have hm2 : m < 2 := by exact_mod_cast (show (m : ℝ) < 2 by linarith)
  omega

theorem borderline_residue_lower_bound (m : ℕ) (C γ ρ derivativeNorm : ℝ)
    (hC : 0 < C) (hγ : 0 < γ) (hρ : 0 < ρ) (hd : 0 < derivativeNorm)
    (hresidue : (m : ℝ) / (γ * ρ * derivativeNorm) ≤ C) :
    (m : ℝ) / (C * γ * ρ) ≤ derivativeNorm := by
  have hden : 0 < γ * ρ * derivativeNorm := by positivity
  have hcden : 0 < C * γ * ρ := by positivity
  apply (div_le_iff₀ hcden).mpr
  have h := (div_le_iff₀ hden).mp hresidue
  nlinarith

end FormalResearch.RiemannHypothesis.Conversation.BranchPoleGrowthBudget
