import SourceFullPeanoEnergy

/-! Dedicated exact declaration and transitive-axiom audit. -/

set_option linter.hashCommand false
namespace FormalResearch.RiemannHypothesis.SourceFullPeanoEnergy
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check sourceAtom
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print sourceAtom
#print axioms sourceAtom

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check sourceLog
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print sourceLog
#print axioms sourceLog

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoRaw
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoRaw
#print axioms fullPeanoRaw

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoKernel
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoKernel
#print axioms fullPeanoKernel

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoError
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoError
#print axioms fullPeanoError

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check sourceAtom_nonneg
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print sourceAtom_nonneg
#print axioms sourceAtom_nonneg

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check sourceLog_nonneg
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print sourceLog_nonneg
#print axioms sourceLog_nonneg

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check sourceAtom_summable
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print sourceAtom_summable
#print axioms sourceAtom_summable

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check sourceAtom_log_summable
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print sourceAtom_log_summable
#print axioms sourceAtom_log_summable

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check sourceAtom_tsum
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print sourceAtom_tsum
#print axioms sourceAtom_tsum

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check sourceAtom_log_tsum
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print sourceAtom_log_tsum
#print axioms sourceAtom_log_tsum

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoRaw_summable
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoRaw_summable
#print axioms fullPeanoRaw_summable

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoRaw_measurable
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoRaw_measurable
#print axioms fullPeanoRaw_measurable

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoRaw_bounds
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoRaw_bounds
#print axioms fullPeanoRaw_bounds

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check sourceAtom_weighted_tsum
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print sourceAtom_weighted_tsum
#print axioms sourceAtom_weighted_tsum

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check weightedCorrelation_upper_zero
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print weightedCorrelation_upper_zero
#print axioms weightedCorrelation_upper_zero

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check weightedCorrelation_deriv_upper_zero
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print weightedCorrelation_deriv_upper_zero
#print axioms weightedCorrelation_deriv_upper_zero

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check weightedCorrelation_second_deriv_upper_zero
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print weightedCorrelation_second_deriv_upper_zero
#print axioms weightedCorrelation_second_deriv_upper_zero

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check weightedCorrelation_full_peano
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print weightedCorrelation_full_peano
#print axioms weightedCorrelation_full_peano

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check sourceAtom_weighted_summable
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print sourceAtom_weighted_summable
#print axioms sourceAtom_weighted_summable

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoRaw_fubini
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoRaw_fubini
#print axioms fullPeanoRaw_fubini

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoRaw_pairing
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoRaw_pairing
#print axioms fullPeanoRaw_pairing

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoRaw_pairing_integrable
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoRaw_pairing_integrable
#print axioms fullPeanoRaw_pairing_integrable

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check smoothPeano_pairing
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print smoothPeano_pairing
#print axioms smoothPeano_pairing

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoKernel_pairing
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoKernel_pairing
#print axioms fullPeanoKernel_pairing

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoError_pairing
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoError_pairing
#print axioms fullPeanoError_pairing

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoRaw_eq_affine
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoRaw_eq_affine
#print axioms fullPeanoRaw_eq_affine

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoError_zero
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoError_zero
#print axioms fullPeanoError_zero

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeano_pairing_eq_interval
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeano_pairing_eq_interval
#print axioms fullPeano_pairing_eq_interval

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoKernel_pairing_Ioi
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoKernel_pairing_Ioi
#print axioms fullPeanoKernel_pairing_Ioi

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoError_pairing_Ioi
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoError_pairing_Ioi
#print axioms fullPeanoError_pairing_Ioi

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoKernel_pairing_integrable
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoKernel_pairing_integrable
#print axioms fullPeanoKernel_pairing_integrable

set_option pp.maxSteps 1000000 in
set_option pp.all true in
#check fullPeanoError_pairing_integrable
set_option pp.maxSteps 1000000 in
set_option pp.all true in
#print fullPeanoError_pairing_integrable
#print axioms fullPeanoError_pairing_integrable

end FormalResearch.RiemannHypothesis.SourceFullPeanoEnergy
