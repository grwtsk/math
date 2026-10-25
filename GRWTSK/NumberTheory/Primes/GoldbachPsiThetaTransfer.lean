/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
import Mathlib.Tactic

/-!
# Finite psi-to-theta transfer with explicit proper prime powers

This is a quantitative algebraic consequence of the existing finite
prime-power splitting. The supplier for a bound on the prime-power
correction, and identification with the canonical von Mangoldt function,
remain separate. SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachPsiThetaTransfer

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachCumulativeNormalization
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection

noncomputable section

/-- A finite psi estimate and a proper-prime-power correction bound
give a finite theta estimate with the *same* supplied main term. -/
theorem norm_theta_sub_main_le_of_psi_and_correction
    (N q r : ℕ) (main : ℂ) (E C : ℝ)
    (hpsi : ‖(finitePsiResidue N q r : ℂ) - main‖ ≤ E)
    (hcorr : finiteProperPrimePowerCorrection N q r ≤ C) :
    ‖finiteThetaResidue N q r - main‖ ≤ E + C := by
  have hsplit := finitePsiResidue_eq_theta_add_correction N q r
  have hnonneg := finiteProperPrimePowerCorrection_nonneg N q r
  have hnorm :
      ‖(finiteProperPrimePowerCorrection N q r : ℂ)‖ ≤ C := by
    simpa [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hnonneg] using hcorr
  have hdecomp :
      finiteThetaResidue N q r - main =
        ((finitePsiResidue N q r : ℂ) - main) -
          (finiteProperPrimePowerCorrection N q r : ℂ) := by
    rw [hsplit]
    ring
  rw [hdecomp]
  exact (norm_sub_le _ _).trans (add_le_add hpsi hnorm)

end
end GRWTSK.NumberTheory.Primes.GoldbachPsiThetaTransfer
