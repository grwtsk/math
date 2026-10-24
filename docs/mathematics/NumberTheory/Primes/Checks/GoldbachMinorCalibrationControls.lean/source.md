# Complete source: GRWTSK.NumberTheory.Primes.Checks.GoldbachMinorCalibrationControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `239a9a575609ba95b5238bcdb7dbdd13429492ff` · SHA-256 `c70b603ff76b43117647b4f8bcb6d075fc922f075e2c0c4adf67b038924b9e46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
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
```
