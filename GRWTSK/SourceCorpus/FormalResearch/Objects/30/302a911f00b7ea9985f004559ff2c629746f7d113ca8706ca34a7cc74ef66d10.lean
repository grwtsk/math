import SourceRecenteredMangoldtPairing

set_option linter.style.setOption false
set_option pp.maxSteps 1000000
set_option pp.all true
set_option pp.proofs true

namespace RH16RecenteredMangoldt

#print centeredLogPairing
#print axioms centeredLogPairing

#print compensatedLogPairing
#print axioms compensatedLogPairing

#print actual_derivative_mass
#print axioms actual_derivative_mass

#print centeredLogPairing_eq_signedCesaroPairing
#print axioms centeredLogPairing_eq_signedCesaroPairing

#print centeredLogPairing_eq_compensated
#print axioms centeredLogPairing_eq_compensated

#print boundaryBudget
#print axioms boundaryBudget

#print actual_centered_boundary_abs_le
#print axioms actual_centered_boundary_abs_le

#print signed_pairing_lower_of_compensated
#print axioms signed_pairing_lower_of_compensated

#print estimate_of_compensated_tail
#print axioms estimate_of_compensated_tail

end RH16RecenteredMangoldt
