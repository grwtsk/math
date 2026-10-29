import FormalResearch.RiemannHypothesis.SourceHybridStorage
import FormalResearch.RiemannHypothesis.SourceHybridKapitza
import FormalResearch.RiemannHypothesis.SourceHybridQuadrature


section
open FormalResearch.RiemannHypothesis.SourceHybridStorage
#check flow_integral_bound
#print axioms flow_integral_bound
#check signed_hybrid_telescope
#print axioms signed_hybrid_telescope
#check signed_hybrid_bound
#print axioms signed_hybrid_bound
#check quadraticReadout
#print axioms quadraticReadout
#check FormLE
#print axioms FormLE
#check quadraticReadout_congruence
#print axioms quadraticReadout_congruence
#check formLE_congruence
#print axioms formLE_congruence
#check homogeneousProjector
#print axioms homogeneousProjector
#check homogeneousProjector_readout
#print axioms homogeneousProjector_readout
#check homogeneousProjector_covariance
#print axioms homogeneousProjector_covariance
#check transformedStorageDerivative
#print axioms transformedStorageDerivative
#check flow_defect_covariance
#print axioms flow_defect_covariance
#check event_defect_covariance
#print axioms event_defect_covariance
#check simultaneous_affine_reset
#print axioms simultaneous_affine_reset
#check simultaneous_impulse_mixed_term
#print axioms simultaneous_impulse_mixed_term
#check offset_telescope
#print axioms offset_telescope
end

section
open FormalResearch.RiemannHypothesis.SourceHybridKapitza
#check state
#print axioms state
#check storageMatrix
#print axioms storageMatrix
#check sourceFlow
#print axioms sourceFlow
#check sourceReset
#print axioms sourceReset
#check sourceCost
#print axioms sourceCost
#check storageDerivative
#print axioms storageDerivative
#check readout
#print axioms readout
#check storage_matrix_readout
#print axioms storage_matrix_readout
#check source_cost_readout
#print axioms source_cost_readout
#check source_reset_state
#print axioms source_reset_state
#check source_flow_state
#print axioms source_flow_state
#check source_flow_defect
#print axioms source_flow_defect
#check source_reset_defect
#print axioms source_reset_defect
#check actual_event_reset
#print axioms actual_event_reset
#check first_actual_event
#print axioms first_actual_event
#check actual_flow_defect
#print axioms actual_flow_defect
#check terminal_square_offset_lower
#print axioms terminal_square_offset_lower
#check native_signed_terminal_zero
#print axioms native_signed_terminal_zero
end

section
open FormalResearch.RiemannHypothesis.SourceHybridQuadrature
#check cutoffBaseline
#print axioms cutoffBaseline
#check firstCellPayment
#print axioms firstCellPayment
#check cutoffPhase_intervalIntegrable
#print axioms cutoffPhase_intervalIntegrable
#check kernel_continuous
#print axioms kernel_continuous
#check weightedPhase_intervalIntegrable
#print axioms weightedPhase_intervalIntegrable
#check cutoffBaseline_nonpos
#print axioms cutoffBaseline_nonpos
#check firstCellPayment_gt_tenth
#print axioms firstCellPayment_gt_tenth
#check cutoffBaseline_le_first_cell
#print axioms cutoffBaseline_le_first_cell
#check kernel_sub_half_abs_le
#print axioms kernel_sub_half_abs_le
#check exponential_moment_le_eight
#print axioms exponential_moment_le_eight
#check quadratureError_sub_baseline_abs_le
#print axioms quadratureError_sub_baseline_abs_le
#check quadratureError_le
#print axioms quadratureError_le
#check quadratureError_le_negative
#print axioms quadratureError_le_negative
#check quadratureError_le_neg_ninety_nine_per_thousand
#print axioms quadratureError_le_neg_ninety_nine_per_thousand
#check residual_le_of_compensated_cap
#print axioms residual_le_of_compensated_cap
#check original_lower_of_compensated_cap
#print axioms original_lower_of_compensated_cap
#check estimate_of_compensated_cap
#print axioms estimate_of_compensated_cap
end

section
open FormalResearch.RiemannHypothesis.SourceKapitzaEventBalance
#check nonaffineWork_complete_balance
#print axioms nonaffineWork_complete_balance
end

section
open FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout
#check mertensResidual_eq_compensated_add_moment_error
#print axioms mertensResidual_eq_compensated_add_moment_error
end
