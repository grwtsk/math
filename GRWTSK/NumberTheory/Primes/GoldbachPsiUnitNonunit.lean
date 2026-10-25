/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachUnitCharacterPsi
import GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
import Mathlib.Tactic

/-!
# Exact finite unit and nonunit prime-power mass decomposition

The reduced-residue character interface only controls unit fibers.
This module retains the complementary nonunit prime-power mass
explicitly. It proves no character orthogonality or cancellation.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachPsiUnitNonunit

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
open GRWTSK.NumberTheory.Primes.FiniteReducedResidueFibers

noncomputable section

/-- Prime-power mass through N on unit residues modulo q. -/
def unitPsiTotal (q N : ℕ) : ℂ :=
  reducedResidueWeight q N (fun n => (primePowerWeight n : ℂ))

/-- Prime-power mass through N on nonunit residues modulo q. -/
def nonunitPsiTotal (q N : ℕ) : ℂ :=
  nonunitResidueWeight q N (fun n => (primePowerWeight n : ℂ))

/-- The complete finite prime-power mass retains its nonunit part. -/
theorem totalPsi_eq_unit_add_nonunit (q N : ℕ) :
    (∑ n ∈ Finset.range (N + 1), (primePowerWeight n : ℂ)) =
      unitPsiTotal q N + nonunitPsiTotal q N := by
  exact total_eq_reduced_add_nonunit q N
    (fun n => (primePowerWeight n : ℂ))

end
end GRWTSK.NumberTheory.Primes.GoldbachPsiUnitNonunit
