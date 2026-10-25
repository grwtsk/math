/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachAbelDiscrepancy
import Mathlib.Tactic

/-!
# Exact cumulative prime-log progression normalization

The canonical Goldbach model subtracts the constant 1/φ(q) at each
integer in the full interval, not only integers in the residue class.
This finite identity isolates that normalization. It does not supply
an asymptotic estimate or a zero-free region.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachCumulativeNormalization

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.FiniteAbelTransfer
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachAbelDiscrepancy

noncomputable section

/-- Prime-only Chebyshev sum in a single residue class, inclusive cutoff. -/
def finiteThetaResidue (N q r : ℕ) : ℂ :=
  ∑ n ∈ Finset.range (N + 1) with n % q = r,
    (primeLogWeight n : ℂ)

/-- The cumulative coefficient is the finite prime-only residue sum
minus the complete-interval main term, including its N+1 endpoint count. -/
theorem prefix_residueCoefficient_eq_theta_sub_main
    (N q r : ℕ) :
    prefix (residueCoefficient q r) N =
      finiteThetaResidue N q r -
        (if q.Coprime r then
          ((N + 1 : ℕ) : ℂ) * ((Nat.totient q : ℂ)⁻¹)
        else 0) := by
  classical
  unfold prefix residueCoefficient finiteThetaResidue
  rw [Finset.sum_sub_distrib]
  have hfilter :
      (∑ n ∈ Finset.range (N + 1),
        if n % q = r then (primeLogWeight n : ℂ) else 0) =
      ∑ n ∈ Finset.range (N + 1) with n % q = r,
        (primeLogWeight n : ℂ) := by
    rw [← Finset.sum_filter]
  rw [hfilter]
  split_ifs <;> simp [Finset.sum_const, nsmul_eq_mul] <;> ring

end
end GRWTSK.NumberTheory.Primes.GoldbachCumulativeNormalization
