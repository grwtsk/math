/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitComplexNorm
import Mathlib.Tactic

/-!
# Full finite psi norm from unit contribution and nonunit correction

The unit term remains an explicit norm, not an assumed character
cancellation estimate. The nonunit term uses the finite positive-
modulus logarithmic correction. No orthogonality or nonprincipal
twisted-sum hypothesis is discharged.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtUnitNonunitNorm

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachPsiUnitNonunit
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitComplexNorm

/-- Full complex finite psi mass is controlled by the exact unit
term plus the explicit nonunit logarithmic correction. -/
theorem norm_totalPsi_le_unit_add_log_correction
    (q N : ℕ) (hq : q ≠ 0) :
    ‖∑ n ∈ Finset.range (N + 1),
        (GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection.primePowerWeight n : ℂ)‖ ≤
      ‖unitPsiTotal q N‖ +
        ((GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport.finitePrimeDivisorCount q N : ℝ) *
            Real.log (N : ℝ) +
          (Nat.log2 N : ℝ) * Real.log (q : ℝ)) := by
  rw [totalPsi_eq_unit_add_nonunit q N]
  exact (norm_add_le _ _).trans
    (add_le_add_left (norm_nonunitPsiTotal_le_log_correction q N hq) _)

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtUnitNonunitNorm
