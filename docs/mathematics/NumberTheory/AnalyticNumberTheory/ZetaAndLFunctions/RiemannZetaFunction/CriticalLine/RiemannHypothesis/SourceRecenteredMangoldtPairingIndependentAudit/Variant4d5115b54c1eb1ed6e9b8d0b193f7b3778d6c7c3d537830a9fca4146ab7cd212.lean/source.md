# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceRecenteredMangoldtPairingIndependentAudit.Variant4d5115b54c1eb1ed6e9b8d0b193f7b3778d6c7c3d537830a9fca4146ab7cd212

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `624824f1ad22c1bf02ba6f336c54f983568ef4e4` · SHA-256 `4d5115b54c1eb1ed6e9b8d0b193f7b3778d6c7c3d537830a9fca4146ab7cd212`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceRecenteredMangoldtPairing

set_option autoImplicit false
set_option linter.hashCommand false

namespace RH16RecenteredMangoldt

#check @centeredLogPairing
#print centeredLogPairing
#print axioms centeredLogPairing

#check @compensatedLogPairing
#print compensatedLogPairing
#print axioms compensatedLogPairing

#check @actual_derivative_mass
#print actual_derivative_mass
#print axioms actual_derivative_mass

#check @centeredLogPairing_eq_signedCesaroPairing
#print centeredLogPairing_eq_signedCesaroPairing
#print axioms centeredLogPairing_eq_signedCesaroPairing

#check @centeredLogPairing_eq_compensated
#print centeredLogPairing_eq_compensated
#print axioms centeredLogPairing_eq_compensated

#check @boundaryBudget
#print boundaryBudget
#print axioms boundaryBudget

#check @actual_centered_boundary_abs_le
#print actual_centered_boundary_abs_le
#print axioms actual_centered_boundary_abs_le

#check @signed_pairing_lower_of_compensated
#print signed_pairing_lower_of_compensated
#print axioms signed_pairing_lower_of_compensated

#check @estimate_of_compensated_tail
#print estimate_of_compensated_tail
#print axioms estimate_of_compensated_tail

end RH16RecenteredMangoldt
```
