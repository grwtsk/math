/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ActualMobiusIncrementMatrixBridge
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MobiusFullGcdKernelSum

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Literal pulled kernel at natural source labels. Values outside [1,N]
are a totalization only; all sums below retain the bounded source domain.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensNaturalGcdKernel
open MertensCoefficientKernelCongruence
open GRWTSK.NumberTheory.Moebius.MobiusBoundedGcdEquivalence
open GRWTSK.NumberTheory.Moebius.MobiusFullGcdKernelSum
open GRWTSK.RiemannHypothesis.CCC
variable (N : ℕ) [NeZero N]

def naturalSourceSite (e : ZMod N ≃ Fin N) (r : ℕ) : ZMod N :=
  e.symm ⟨(r-1)%N,Nat.mod_lt _ (Nat.pos_of_ne_zero (NeZero.ne N))⟩

def actualNaturalKernel (e : ZMod N ≃ Fin N) (r s : ℕ) : ℝ :=
  pulledKernel N (mertensIncrementMatrix N e)
    (naturalSourceSite N e r) (naturalSourceSite N e s)

theorem natural_source_site_label (e : ZMod N ≃ Fin N) (i : ZMod N) :
    naturalSourceSite N e ((e i).val+1)=i := by
  unfold naturalSourceSite
  have hf : (⟨(((e i).val+1-1)%N),Nat.mod_lt _
      (Nat.pos_of_ne_zero (NeZero.ne N))⟩ : Fin N)=e i := by
    apply Fin.ext
    simp [Nat.mod_eq_of_lt (e i).isLt]
  rw [hf,Equiv.symm_apply_apply]

theorem actual_natural_kernel_label (e : ZMod N ≃ Fin N) (i j : ZMod N) :
    actualNaturalKernel N e ((e i).val+1) ((e j).val+1)=
      pulledKernel N (mertensIncrementMatrix N e) i j := by
  simp [actualNaturalKernel,natural_source_site_label]

theorem actual_natural_gcd_kernel_sum (e : ZMod N ≃ Fin N) :
    (∑ p : PositivePairs N, moebiusReal p.val.1*moebiusReal p.val.2*
      actualNaturalKernel N e p.val.1 p.val.2) =
    ∑ q : GcdTriples N,
      (if Nat.Coprime q.val.1 (q.val.2.1*q.val.2.2)
       then moebiusReal q.val.1^2*moebiusReal (q.val.2.1*q.val.2.2) else 0)*
      actualNaturalKernel N e (q.val.1*q.val.2.1) (q.val.1*q.val.2.2) := by
  exact full_ordered_kernel_transport N (actualNaturalKernel N e)

/- The complete B^T(J-I)B is retained, including its -B^TB term. The
remaining double-sum/index equality with sampleSignedMixedPrefix and
uniform signed cancellation/analytic identification are separate. This
congruence kernel is not a unitary realization by nearest-neighbor H. -/
end GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensNaturalGcdKernel
