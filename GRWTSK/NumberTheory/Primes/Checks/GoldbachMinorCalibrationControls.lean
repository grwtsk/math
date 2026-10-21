/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.GoldbachTwoArcMinorCalibration
import GRWTSK.NumberTheory.Primes.Checks.GoldbachScalarSupplierCountermodel

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachMinorCalibrationControls

open GRWTSK.NumberTheory.Primes.GoldbachTwoArcRationalBudget
open GRWTSK.NumberTheory.Primes.GoldbachTwoArcMinorCalibration
open GRWTSK.NumberTheory.Primes.Checks.GoldbachScalarSupplierCountermodel

noncomputable section

/-- Explicitly rejects treating the proxy as the prime-only source weight. -/
theorem proxy_has_composite_support (c : ℝ) : modFourProxyWeight c 9 = 4 := by
  norm_num [modFourProxyWeight]

theorem proxy_zero_endpoint_is_not_free (c : ℝ) : modFourProxyPrefix c 0 = -1 := by
  norm_num [modFourProxyPrefix, modFourProxyTotal, modFourProxyWeight]

/-- The isolated even atom does not repair the missing reflected overlap. -/
theorem proxy_mass_at_eight (c : ℝ) : modFourProxyMass c 8 = 0 := by
  exact modFourProxyMass_zero c (by norm_num) (by norm_num)

/-- A boundary arithmetic check for the new normalized allowance. -/
theorem full_minor_margin_at_six_thousand :
    6000 / 90 ≤ 13 * (6000 : ℝ) / 9 -
      goldbachTwoArcRationalBudget 6000 60 - 6000 := by
  norm_num [goldbachTwoArcRationalBudget]

/-- At equality, the signed reconstruction alone admits zero mass. -/
theorem nonstrict_margin_can_have_zero_mass :
    (1 : ℂ) + 0 + (-1) = (0 : ℂ) ∧
      (0 : ℝ) + 1 = 1 := by
  norm_num

end
end GRWTSK.NumberTheory.Primes.Checks.GoldbachMinorCalibrationControls
