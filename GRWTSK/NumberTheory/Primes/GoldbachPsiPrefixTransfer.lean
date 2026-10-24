/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachPsiThetaTransfer
import GRWTSK.NumberTheory.Primes.GoldbachCumulativeNormalization
import Mathlib.Tactic

/-!
# Conditional finite psi estimates to exact Goldbach cumulative errors

This interface keeps the mismatch between an arbitrary supplied analytic
main term and the Goldbach inclusive integer model. It supplies no
character-sum estimate or prime-density improvement.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachPsiPrefixTransfer

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.FiniteAbelTransfer
open GRWTSK.NumberTheory.Primes.GoldbachAbelDiscrepancy
open GRWTSK.NumberTheory.Primes.GoldbachCumulativeNormalization
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
open GRWTSK.NumberTheory.Primes.GoldbachPsiThetaTransfer

noncomputable section

/-- The inclusive canonical progression main term. -/
def canonicalMain (n q r : ℕ) : ℂ :=
  if q.Coprime r then
    ((n + 1 : ℕ) : ℂ) * ((Nat.totient q : ℂ)⁻¹)
  else 0

/-- Conditional cumulative bound with separate prime-power and
main-term-normalization errors. -/
theorem prefix_le_of_psi_bounds
    (N q r : ℕ) (M : ℕ → ℂ) (E C : ℕ → ℝ)
    (hpsi : ∀ n ∈ Finset.range (N + 1),
      ‖(finitePsiResidue n q r : ℂ) - M n‖ ≤ E n)
    (hcorr : ∀ n ∈ Finset.range (N + 1),
      finiteProperPrimePowerCorrection n q r ≤ C n) :
    ∀ n ∈ Finset.range (N + 1),
      ‖prefix (residueCoefficient q r) n‖ ≤
        E n + C n + ‖M n - canonicalMain n q r‖ := by
  intro n hn
  rw [prefix_residueCoefficient_eq_theta_sub_main]
  change ‖finiteThetaResidue n q r - canonicalMain n q r‖ ≤ _
  have ht := norm_theta_sub_main_le_of_psi_and_correction
    n q r (M n) (E n) (C n) (hpsi n hn) (hcorr n hn)
  have htri :
      ‖finiteThetaResidue n q r - canonicalMain n q r‖ ≤
        ‖finiteThetaResidue n q r - M n‖ +
          ‖M n - canonicalMain n q r‖ := by
    have heq :
        finiteThetaResidue n q r - canonicalMain n q r =
          (finiteThetaResidue n q r - M n) +
            (M n - canonicalMain n q r) := by ring
    rw [heq]
    exact norm_add_le _ _
  exact htri.trans (add_le_add_right ht _)

end
end GRWTSK.NumberTheory.Primes.GoldbachPsiPrefixTransfer
