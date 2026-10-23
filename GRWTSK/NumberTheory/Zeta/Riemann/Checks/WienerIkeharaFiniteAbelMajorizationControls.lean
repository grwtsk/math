/-
Copyright (c) 2026 R. A. Jacob Martone. All rights reserved.
Original contributions: MIT (repository LICENSE).
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaFiniteAbelMajorization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks

open GRWTSK.RiemannHypothesis
open Finset

/-- The exact zero-stage Abel identity has NO hidden first
coefficient, and no boundary term is discarded. -/
theorem wienerAbel_zero_stage
    (a w : ℕ → ℝ) :
    (∑ k ∈ Finset.range 0, a k * w k) =
      wienerAbelPrefix a 0 * w 0 +
        ∑ k ∈ Finset.range 0,
          wienerAbelPrefix a (k + 1) *
            (w k - w (k + 1)) :=
  wienerAbel_finite_identity a w 0

/-- The finite one-stage formula must keep the missing future
weight w(1): it cancels algebraically, rather than being assumed
zero at the endpoint. -/
theorem wienerAbel_one_stage
    (a w : ℕ → ℝ) :
    a 0 * w 0 =
      a 0 * w 1 + a 0 * (w 0 - w 1) := by ring

/-- Full exact source identity for ARBITRARY coefficients, including
signed inputs. Positivity is needed later only to establish the
specific logarithmic Chebyshev kernel properties. -/
theorem wienerAbel_actual_identity
    (a w : ℕ → ℝ) (n : ℕ) :
    (∑ k ∈ Finset.range n, a k * w k) =
      wienerAbelPrefix a n * w n +
        ∑ k ∈ Finset.range n,
          wienerAbelPrefix a (k + 1) *
            (w k - w (k + 1)) :=
  wienerAbel_finite_identity a w n

/-- A fixed linearly bounded cumulative envelope yields a bound for
every decreasing positive weighting, for ALL finite stages. -/
theorem wienerAbel_actual_weighted_majorization
    (a w : ℕ → ℝ) (C : ℝ)
    (hC : 0 ≤ C)
    (hprefix : ∀ n : ℕ,
      wienerAbelPrefix a n ≤ C * (n : ℝ))
    (hwpos : ∀ n : ℕ, 0 ≤ w n)
    (hwanti : ∀ n : ℕ, w (n + 1) ≤ w n)
    (n : ℕ) :
    (∑ k ∈ Finset.range n, a k * w k) ≤
      C * ∑ k ∈ Finset.range n, w k :=
  wienerAbel_weighted_le_linear_envelope
    a w C hC hprefix hwpos hwanti n

/-- Constant weights recover exactly the prefix envelope; this
hostile check guards against a missing factor or sign in Abel's
summation formula. -/
theorem wienerAbel_constant_weight_check
    (a : ℕ → ℝ) (C : ℝ) (hC : 0 ≤ C)
    (hprefix : ∀ n : ℕ,
      wienerAbelPrefix a n ≤ C * (n : ℝ))
    (n : ℕ) :
    (∑ k ∈ Finset.range n, a k) ≤ C * (n : ℝ) := by
  exact hprefix n

/-- The following are separate, actual OPEN Lean obligations.
No string or structure field below inhabits the missing theorem. -/
def wienerAbel_nextObligations : List String :=
  ["match shifted Lambda(k+1) cumulative range sums to pinned Chebyshev.psi(n)",
   "prove W_T(x)=1/[x*(1+(log(x/T)/(2*pi))^2)] positive antitone for x>=1",
   "apply the genuine finite Abel majorization to shifted Lambda coefficients",
   "formalize the integral comparison and arctan tail <= 2*pi^2 uniformly T>=1",
   "deduce historical bound_sum_log' in local Lean with zero-index handling",
   "use uniform kernel as sigma-downarrow-one domination in limiting_fourier_lim1"]

end GRWTSK.RiemannHypothesis.Checks
