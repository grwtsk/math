/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusResidueFibreArithmetic
import Mathlib.Algebra.Order.Chebyshev
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Pure complex finite signed off-diagonal bound after subtraction

Let S be any finite set, v:S->Complex and D=sum_i |v_i|².
Finite triangle inequality followed by the PINNED
sq_sum_le_card_mul_sum_sq gives
  |sum_i v_i|² <= #S * D.
If #S<=B+1, subtracting the EXACT diagonal D first gives
  -D <= |sum_i v_i|²-D <= B*D.
There is no arithmetic cancellation assertion in this lemma.

For the genuine integer residue fiber
  {1<=n<=N | (n:ZMod q)=a},
the earlier Mathlib-only quotient injection gives
  #fiber <= floor(N/q)+1.
Therefore the off-diagonal residue-wave contribution is
bounded by floor(N/q)*its OWN diagonal, not the larger
(floor(N/q)+1) factor needed for the full square energy.

This module is PURE FINITE Mathlib algebra. It does not
import any physical Möbius source, GRH theorem or analytic
energy module. Full Lean compilation, fresh kernel and
transitive axiom audit are NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.ResidueSignedFibreArithmetic

open GRWTSK.NumberTheory.Moebius.ResidueFibreArithmetic

variable {α : Type*} [DecidableEq α]
classical

/-- The finite complex off-diagonal square, with the actual
complete diagonal removed, has coefficient #S-1 or less. -/
theorem complex_signed_square_le_of_card
    (S : Finset α) (v : α → ℂ) (B : ℝ)
    (hcard : (S.card : ℝ) ≤ B + 1) :
    ‖∑ i ∈ S, v i‖^2 -
      (∑ i ∈ S, ‖v i‖^2) ≤
        B * (∑ i ∈ S, ‖v i‖^2) := by
  have htriangle :
      ‖∑ i ∈ S, v i‖ ≤
        ∑ i ∈ S, ‖v i‖ :=
    norm_sum_le _ _
  have hsum_nonneg :
      0 ≤ ∑ i ∈ S, ‖v i‖ :=
    Finset.sum_nonneg (fun i hi => norm_nonneg _)
  have hsquare :
      ‖∑ i ∈ S, v i‖^2 ≤
        (∑ i ∈ S, ‖v i‖)^2 :=
    (sq_le_sq₀ (norm_nonneg _) hsum_nonneg).mpr htriangle
  have hcauchy :
      (∑ i ∈ S, ‖v i‖)^2 ≤
        (S.card : ℝ) * (∑ i ∈ S, ‖v i‖^2) :=
    sq_sum_le_card_mul_sum_sq
  have hdiag_nonneg :
      0 ≤ ∑ i ∈ S, ‖v i‖^2 :=
    Finset.sum_nonneg (fun i hi => sq_nonneg _)
  have hmul :=
    mul_le_mul_of_nonneg_right hcard hdiag_nonneg
  nlinarith [hsquare, hcauchy, hmul]

/-- The opposite signed excursion is paid by the ORIGINAL
diagonal alone because every complex square is nonnegative. -/
theorem complex_signed_square_ge_neg_diagonal
    (S : Finset α) (v : α → ℂ) :
    -(∑ i ∈ S, ‖v i‖^2) ≤
      ‖∑ i ∈ S, v i‖^2 -
        (∑ i ∈ S, ‖v i‖^2) := by
  nlinarith [sq_nonneg (‖∑ i ∈ S, v i‖)]

variable (q : ℕ) [NeZero q]

/-- The requested coefficient is the integer quotient N/q,
rather than N/q+1, because the source diagonal is removed
BEFORE applying the finite Cauchy–Schwarz bound. -/
theorem residueFibre_signed_square_le_quotient
    (a : ZMod q) (N : ℕ) (v : ℕ → ℂ) :
    ‖∑ n ∈ residueFibre q a N, v n‖^2 -
      (∑ n ∈ residueFibre q a N, ‖v n‖^2) ≤
        ((N / q : ℕ) : ℝ) *
          (∑ n ∈ residueFibre q a N, ‖v n‖^2) := by
  have hcard_nat :=
    residueFibre_card_le_quotient_succ q a N
  have hcard :
      ((residueFibre q a N).card : ℝ) ≤
        ((N / q : ℕ) : ℝ) + 1 := by
    exact_mod_cast hcard_nat
  exact complex_signed_square_le_of_card
    (residueFibre q a N) v ((N / q : ℕ) : ℝ) hcard

end GRWTSK.NumberTheory.Moebius.ResidueSignedFibreArithmetic
