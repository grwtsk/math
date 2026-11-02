/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusResidueFibreSharpArithmetic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusResidueSignedFibreArithmetic
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Sharp signed complex square for the true finite residue inventory

For every positive modulus q, residue a, and N>=0,
the previous finite Hermitian arithmetic already gives
  |sum_(n in S) v_n|² - sum_(n in S)|v_n|²
    <= (#S-1)*sum_(n in S)|v_n|²
when S is nonempty. The new SHARP positive-index quotient
n|->(n-1)/q establishes
  #S <= floor((N-1)/q)+1.
Thus the source signed offdiagonal has the improved allowance
  <= floor((N-1)/q)*sum_(n in S)|v_n|².
For N=0, S=empty, so both sides vanish; the same displayed
formula is still true.

At q>=N, #S<=1, and the finite signed square minus diagonal
is EXACTLY zero, not merely nonpositive. These are purely
finite complex algebra and do not use Möbius, physical time,
character orthogonality, RH or GRH assumptions.

All Lean bodies are SOURCE PROOF CANDIDATES, native checks NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.ResidueSharpSignedFibre

open GRWTSK.NumberTheory.Moebius.ResidueFibreArithmetic
open GRWTSK.NumberTheory.Moebius.ResidueFibreSharpArithmetic
open GRWTSK.NumberTheory.Moebius.ResidueSignedFibreArithmetic

variable (q : ℕ) [NeZero q]
classical

/-- The signed square minus its COMPLETE finite diagonal uses
only the sharp fiber capacity floor((N-1)/q)+1. -/
theorem residueFibre_signed_square_le_sharp
    (a : ZMod q) (N : ℕ) (v : ℕ → ℂ) :
    ‖∑ n ∈ residueFibre q a N, v n‖^2 -
      (∑ n ∈ residueFibre q a N, ‖v n‖^2) ≤
        (((N-1)/q : ℕ) : ℝ) *
        (∑ n ∈ residueFibre q a N, ‖v n‖^2) := by
  have hcNat := residueFibre_card_le_sharp_quotient q a N
  have hc :
      ((residueFibre q a N).card : ℝ) ≤
        (((N-1)/q : ℕ) : ℝ) + 1 := by
    exact_mod_cast hcNat
  exact complex_signed_square_le_of_card
    (residueFibre q a N) v (((N-1)/q : ℕ) : ℝ) hc

/-- A source fiber of cardinality 0 or 1 has no offdiagonal
pairs whatsoever; the complete complex norm square equals
its literal single-index diagonal. -/
theorem complex_signed_square_zero_of_card_le_one
    (S : Finset ℕ) (v : ℕ → ℂ)
    (hc : S.card ≤ 1) :
    ‖∑ n ∈ S, v n‖^2 -
      (∑ n ∈ S, ‖v n‖^2) = 0 := by
  by_cases h0 : S.card = 0
  · have he : S = ∅ := Finset.card_eq_zero.mp h0
    simp [he]
  · have h1 : S.card = 1 := by omega
    obtain ⟨n, hn⟩ := Finset.card_eq_one.mp h1
    rw [hn]
    simp

/-- Exactly ZERO complex signed offdiagonal in every residue
fiber once q>=N, INCLUDING the equality boundary q=N. -/
theorem residueFibre_signed_square_zero_of_modulus_ge
    (a : ZMod q) (N : ℕ) (v : ℕ → ℂ)
    (hq : N ≤ q) :
    ‖∑ n ∈ residueFibre q a N, v n‖^2 -
      (∑ n ∈ residueFibre q a N, ‖v n‖^2) = 0 := by
  exact complex_signed_square_zero_of_card_le_one
    (residueFibre q a N) v
    (residueFibre_card_le_one_of_modulus_ge q a N hq)

end GRWTSK.NumberTheory.Moebius.ResidueSharpSignedFibre
