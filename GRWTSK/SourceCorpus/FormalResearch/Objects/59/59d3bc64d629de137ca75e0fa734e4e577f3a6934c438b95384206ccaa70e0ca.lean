import SourcePeanoSignedBudget

/-! Dedicated exact declaration and transitive-axiom audit. -/

set_option linter.hashCommand false
namespace FormalResearch.RiemannHypothesis.SourcePeanoSignedBudget
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check sourcePeanoErrorPairing
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print sourcePeanoErrorPairing
#print axioms sourcePeanoErrorPairing

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check PeanoErrorTailUpperBound
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print PeanoErrorTailUpperBound
#print axioms PeanoErrorTailUpperBound

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check residual_eq_exact_peano
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print residual_eq_exact_peano
#print axioms residual_eq_exact_peano

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check residual_upper_of_peano
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print residual_upper_of_peano
#print axioms residual_upper_of_peano

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check all_real_lower_of_peano
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print all_real_lower_of_peano
#print axioms all_real_lower_of_peano

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check leading_upper_of_peano
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print leading_upper_of_peano
#print axioms leading_upper_of_peano

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check estimate_of_peano_error
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print estimate_of_peano_error
#print axioms estimate_of_peano_error

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check rational_tail_of_full_peano
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print rational_tail_of_full_peano
#print axioms rational_tail_of_full_peano

end FormalResearch.RiemannHypothesis.SourcePeanoSignedBudget
