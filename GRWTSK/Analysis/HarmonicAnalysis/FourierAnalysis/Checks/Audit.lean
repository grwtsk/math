import GRWTSK.Algebra.LinearAlgebra.Schrodinger.Sampling
import GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.QuadraticError
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.WindowCertificates
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure
import GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform
example (s : ℕ → ℤ) : ContDiff ℝ 1 (coefficientWaveform (carrier s)) := encoded_sequence_contDiff s
example (b : ℕ → ℕ) (hb : ∀ n, 1 ≤ b n) (j : ℕ) :
    ∃ n, Scheduling.serves b n j := Scheduling.coverage b hb j
example (K : ℝ) : ∃ E V, (transfer E V).det = 1 ∧ K < Matrix.trace (transfer E V) :=
  transfer_unbounded_trace K
example {E : Type*} [SeminormedAddCommGroup E] (f g : E) (δ : ℝ) (h : ‖f-g‖ ≤ δ) :
    |‖f‖^2-‖g‖^2| ≤ δ*(2*‖g‖+δ) := reconstruction_energy_error f g δ h
example : SameSampledPotential (fun x => Real.sin x+Real.sin (2*x)) (fun _ => 0) 0 0 :=
  sampled_alias.1
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.eta_abs_lt_one
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.eta_abs_lt_one
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.eta_injective
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.eta_injective
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.carrier_norm_bound
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.carrier_norm_bound
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.carrier_summable
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.carrier_summable
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.coefficientWaveform_summable
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.coefficientWaveform_summable
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.coefficientWaveform_continuous
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.coefficientWaveform_continuous
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.coefficientWaveform_periodic
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.coefficientWaveform_periodic
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.coefficientWaveform_hasDerivAt
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.coefficientWaveform_hasDerivAt
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.carrier_derivative_summable
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.carrier_derivative_summable
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.coefficientWaveform_contDiff
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.coefficientWaveform_contDiff
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.coefficientWaveform_lipschitz
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.coefficientWaveform_lipschitz
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.encoded_sequence_contDiff
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.encoded_sequence_contDiff
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.frequency_derivative_bound
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.frequency_derivative_bound
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.workClock_ge_index
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.workClock_ge_index
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.prefix_obligation_covered
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.prefix_obligation_covered
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.batchSize_bounds
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.batchSize_bounds
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.unbounded_clock_does_not_imply_channel_service
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.unbounded_clock_does_not_imply_channel_service
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.fractional_rounding_starves
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.fractional_rounding_starves
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.transfer_det
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.transfer_det
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.transfer_trace
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.transfer_trace
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.transfer_unbounded_trace
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.transfer_unbounded_trace
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.finite_ordered_energy
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.finite_ordered_energy
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.l2_parseval
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.l2_parseval
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.l2_cross_parseval
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.l2_cross_parseval
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.polynomial_return
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.polynomial_return
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.same_total_different_diagonal
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.same_total_different_diagonal
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.clock_ge
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.clock_ge
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.coverage
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.coverage
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.starvation_counterexample
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.starvation_counterexample
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.maximal_exists
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.maximal_exists
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.step_sum
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.step_sum
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.step_lower
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.step_lower
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.upper_from_lower
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.upper_from_lower
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.debt_invariant
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.debt_invariant
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.debt_accounting
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.debt_accounting
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.service_bound
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.service_bound
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.no_starvation
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling.no_starvation
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.equal_samples_equal_action
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.equal_samples_equal_action
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.sampled_alias
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.sampled_alias
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.waveform_equality_implies_samples
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.waveform_equality_implies_samples
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.reconstruction_energy_error
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.reconstruction_energy_error
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.reconstructed_cross_error
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.reconstructed_cross_error
#check GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.p04_conditional
#print axioms GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.p04_conditional
