/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.FunctionsOfAComplexVariable.VerticalLineResolvent
import Mathlib.Analysis.Calculus.LogDeriv
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic.Convert
import Mathlib.Tactic.NormNum

set_option autoImplicit false

noncomputable section

/-!
# Finite root products: derivative localization and a transfer obstruction

For P(z) = product (z - rho_i), logarithmic differentiation gives the exact
identity P'/P = sum (z - rho_i)^(-1) away from the roots. If all rho_i have
real part sigma and the index set is nonempty, the previous module gives a
strict sign on either side. Hence every zero of P' lies on the same line.
This is the vertical-line special case of the classical Gauss-Lucas phenomenon;
it is not asserted as new mathematics. Repeated roots are permitted.

A separate geometric proof supplies norm P(z) >= delta^(number of indices)
when the real-part distance is at least delta. Neither argument forgets the
number of factors. Empty products are retained but excluded from the derivative
claim: the derivative of the constant product is zero everywhere.

The final hostile example is entire and source-exact: exp(z) * (z - 1/2)
has its only zero at 1/2, but its derivative vanishes at -1/2. Therefore these
finite-product conclusions do NOT transfer to zeta, a completed L-function,
or any infinite product merely from equality of their zero locations. A
zero-free multiplier contributes its own logarithmic derivative.

Consumer: ConditionalFiniteZeroCalculus applies this finite theorem to selected
actual zeta or Dirichlet zeros under explicit RH/GRH premises. Mathlib's
logDeriv_prod is reused at d13f23b723b8a846827a245b89c10fc7d3f11612
(Chris Birkbeck and upstream contributors; upstream attribution unchanged).
AI-assisted formalization. Independent review: NOT_RUN; novelty not claimed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.Analysis.VerticalLine

open scoped BigOperators

variable {ι : Type*} {σ : ℝ}

/-- A product of functions, allowing different indices to name the same root. -/
def rootProduct (s : Finset ι) (roots : ι → ℂ) : ℂ → ℂ :=
  ∏ i ∈ s, (fun z => z - roots i)

theorem rootProduct_apply (s : Finset ι) (roots : ι → ℂ) (z : ℂ) :
    rootProduct s roots z = ∏ i ∈ s, (z - roots i) := by
  simp only [rootProduct, Finset.prod_apply]

theorem rootProduct_ne_zero (s : Finset ι) (roots : ι → ℂ)
    (hline : ∀ i ∈ s, (roots i).re = σ) {z : ℂ} (hz : z.re ≠ σ) :
    rootProduct s roots z ≠ 0 := by
  rw [rootProduct_apply]
  exact Finset.prod_ne_zero_iff.mpr (fun i hi => sub_ne_zero (hline i hi) hz)

/-- The logarithmic derivative is computed, not assumed as an explicit-formula premise. -/
theorem logDeriv_rootProduct (s : Finset ι) (roots : ι → ℂ)
    (hline : ∀ i ∈ s, (roots i).re = σ) {z : ℂ} (hz : z.re ≠ σ) :
    logDeriv (rootProduct s roots) z = resolvent s roots (fun _ => 1) z := by
  have hd (i : ι) : HasDerivAt (fun u : ℂ => u - roots i) 1 z :=
    (hasDerivAt_id z).sub_const (roots i)
  calc
    logDeriv (rootProduct s roots) z =
        ∑ i ∈ s, logDeriv (fun u : ℂ => u - roots i) z :=
      logDeriv_prod (fun i hi => sub_ne_zero (hline i hi) hz)
        (fun i _ => (hd i).differentiableAt)
    _ = resolvent s roots (fun _ => 1) z := by
      simp only [resolvent, Complex.ofReal_one, one_mul]
      apply Finset.sum_congr rfl
      intro i _
      rw [logDeriv_apply, (hd i).deriv, one_div]

/-- Nonempty root products have no derivative zero off the supporting line. -/
theorem derivative_ne_zero_off_line (s : Finset ι) (roots : ι → ℂ)
    (hs : s.Nonempty) (hline : ∀ i ∈ s, (roots i).re = σ)
    {z : ℂ} (hz : z.re ≠ σ) : deriv (rootProduct s roots) z ≠ 0 := by
  have hpos : ∃ i ∈ s, (0 : ℝ) < 1 := by
    obtain ⟨i, hi⟩ := hs
    exact ⟨i, hi, zero_lt_one⟩
  have hn := resolvent_ne_zero s roots (fun _ => 1) hline
    (fun _ _ => zero_le_one) hpos hz
  rw [← logDeriv_rootProduct s roots hline hz] at hn
  intro hd
  exact hn (by rw [logDeriv_apply, hd, zero_div])

/-- A finite Gauss-Lucas consumer, not a statement about the derivative of zeta. -/
theorem derivative_zero_on_line (s : Finset ι) (roots : ι → ℂ)
    (hs : s.Nonempty) (hline : ∀ i ∈ s, (roots i).re = σ)
    {z : ℂ} (hz : deriv (rootProduct s roots) z = 0) : z.re = σ := by
  by_contra h
  exact derivative_ne_zero_off_line s roots hs hline h hz

/-- An explicit product margin; no compactness-only constant is hidden here. -/
theorem rootProduct_norm_lower (s : Finset ι) (roots : ι → ℂ)
    (hline : ∀ i ∈ s, (roots i).re = σ)
    {z : ℂ} {δ : ℝ} (hδ : 0 < δ) (hz : δ ≤ |z.re - σ|) :
    δ ^ s.card ≤ ‖rootProduct s roots z‖ := by
  calc
    δ ^ s.card = ∏ _i ∈ s, δ := by simp
    _ ≤ ∏ i ∈ s, ‖z - roots i‖ :=
      Finset.prod_le_prod (fun _ _ => hδ.le)
        (fun i hi => hz.trans (distance_lower_bound (hline i hi)))
    _ = ‖rootProduct s roots z‖ := by rw [rootProduct_apply, norm_prod]

/-- The nonempty premise in the derivative theorem cannot be omitted. -/
theorem empty_product_derivative (roots : ι → ℂ) (z : ℂ) :
    deriv (rootProduct ∅ roots) z = 0 := by
  simp [rootProduct, Pi.one_def]

namespace Obstruction

/-- A zero-free factor changes derivative geometry without changing any zero. -/
def exponentialFactor (z : ℂ) : ℂ := Complex.exp z * (z - 1 / 2)

theorem exponentialFactor_zero_iff (z : ℂ) :
    exponentialFactor z = 0 ↔ z = 1 / 2 := by
  simp [exponentialFactor, mul_eq_zero, Complex.exp_ne_zero, sub_eq_zero]

theorem exponentialFactor_hasDerivAt (z : ℂ) :
    HasDerivAt exponentialFactor (Complex.exp z * (z + 1 / 2)) z := by
  change HasDerivAt (fun u : ℂ => Complex.exp u * (u - 1 / 2)) _ z
  convert (Complex.hasDerivAt_exp z).mul ((hasDerivAt_id z).sub_const (1 / 2)) using 1 <;>
    ring

/-- An exact counterexample to transporting the finite-product conclusion through units. -/
theorem zero_free_multiplier_moves_derivative_zero :
    (∀ z : ℂ, exponentialFactor z = 0 → z.re = 1 / 2) ∧
    deriv exponentialFactor (-(1 / 2 : ℂ)) = 0 ∧
    (-(1 / 2 : ℂ)).re ≠ (1 / 2 : ℝ) := by
  constructor
  · intro z hz
    rw [(exponentialFactor_zero_iff z).mp hz]
    norm_num
  · constructor
    · rw [(exponentialFactor_hasDerivAt _).deriv]
      norm_num
    · norm_num

end Obstruction
end GRWTSK.Analysis.VerticalLine
