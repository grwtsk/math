import FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

#check FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.boundaryPeano_contDiff_two
#print axioms FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.boundaryPeano_contDiff_two
#check FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.boundaryPeano_second_deriv
#print axioms FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.boundaryPeano_second_deriv
#check FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.boundaryPeano_nonneg
#print axioms FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.boundaryPeano_nonneg
#check FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.peanoScale_mul_closedPrimeMoment_eq_atoms
#print axioms FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.peanoScale_mul_closedPrimeMoment_eq_atoms
#check FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.peanoScale_mul_mertensResidual_eq_atoms
#print axioms FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.peanoScale_mul_mertensResidual_eq_atoms

noncomputable section
namespace FormalResearch.RiemannHypothesis.BoundaryAtomWorkerAudit
open SourcePeanoBoundaryAtoms SourceMangoldtAbel SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent EstimateCorrelation EstimateMertensResidual

example {A : ℝ} (hA : 0 < A) : 0 < peanoScale A := by unfold peanoScale; positivity

example {A : ℝ} (hA : 1 ≤ A) :
    deriv (deriv (boundaryPeano A)) (2*A) = peanoScale A := by
  rw [boundaryPeano_second_deriv (by linarith)]
  unfold boundaryKernel peanoScale
  rw [sub_self, actual_correlation_at_zero A hA]
  have he : -(2*A)/2 = -A := by ring
  rw [he]
  ring

example {A : ℝ} (hA : 0 < A) : deriv (deriv (boundaryPeano A)) 0 = 0 := by
  rw [boundaryPeano_second_deriv hA]
  unfold boundaryKernel
  rw [sub_zero, sourceCorrelation_upper_endpoint A hA]
  ring

example {A : ℝ} {n : ℕ} (hn : n ∈ primePowerInventory (2*A)) :
    0 ≤ 2*A - Real.log (n:ℝ) ∧ 2*A - Real.log (n:ℝ) ≤ 2*A := by
  have h := mangoldtInventory_log_bounds (2*A) n hn
  constructor <;> linarith

example : ArithmeticFunction.vonMangoldt 4 = Real.log 2 := by
  rw [show (4:ℕ) = 2^2 by norm_num,
    ArithmeticFunction.vonMangoldt_apply_pow (by norm_num),
    ArithmeticFunction.vonMangoldt_apply_prime (by norm_num)]

example {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A =
      (∑ n ∈ primePowerInventory (2*A), ArithmeticFunction.vonMangoldt n / (n:ℝ) *
        deriv (deriv (boundaryPeano A)) (2*A-Real.log n)) / peanoScale A := by
  have hp : 0 < peanoScale A := by unfold peanoScale; positivity
  apply (eq_div_iff hp.ne').mpr
  rw [mul_comm]
  exact peanoScale_mul_mertensResidual_eq_atoms hA

end FormalResearch.RiemannHypothesis.BoundaryAtomWorkerAudit
