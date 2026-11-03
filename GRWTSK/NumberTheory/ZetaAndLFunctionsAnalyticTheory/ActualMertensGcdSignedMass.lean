/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ActualMertensPositivePairStatistic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact actual signed mass decomposition; no arithmetic domination.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensGcdSignedMass
open ActualMertensNaturalGcdKernel ActualMertensPositivePairStatistic
open GRWTSK.NumberTheory.Moebius.MobiusBoundedGcdEquivalence
open GRWTSK.NumberTheory.Moebius.MobiusFullGcdKernelSum
open GRWTSK.RiemannHypothesis.CCC GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
variable (N : ℕ) [NeZero N]

def actualGcdAtom (e : ZMod N ≃ Fin N) (q : GcdTriples N) : ℝ :=
  (if Nat.Coprime q.val.1 (q.val.2.1*q.val.2.2)
   then moebiusReal q.val.1^2*moebiusReal (q.val.2.1*q.val.2.2) else 0)*
    actualNaturalKernel N e (q.val.1*q.val.2.1) (q.val.1*q.val.2.2)

def coefficientDiagonal (e : ZMod N ≃ Fin N) : ℝ :=
  ∑ q : GcdTriples N, if q.val.2.1=q.val.2.2 then actualGcdAtom N e q else 0

def positiveOffDiagonal (e : ZMod N ≃ Fin N) : ℝ :=
  ∑ q : GcdTriples N, if q.val.2.1=q.val.2.2 then 0 else max (actualGcdAtom N e q) 0

def negativeOffDiagonal (e : ZMod N ≃ Fin N) : ℝ :=
  ∑ q : GcdTriples N, if q.val.2.1=q.val.2.2 then 0 else max (-actualGcdAtom N e q) 0

theorem actual_signed_mass_identity (e : ZMod N ≃ Fin N) :
    sampleSignedMixedPrefix N=coefficientDiagonal N e+
      positiveOffDiagonal N e-negativeOffDiagonal N e := by
  have hs : sampleSignedMixedPrefix N=∑ q : GcdTriples N, actualGcdAtom N e q :=
    (actual_positive_pair_statistic N e).symm.trans (actual_natural_gcd_kernel_sum N e)
  rw [hs]
  unfold coefficientDiagonal positiveOffDiagonal negativeOffDiagonal
  rw [← Finset.sum_add_distrib,← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro q _
  by_cases hd : q.val.2.1=q.val.2.2
  · simp [hd]
  · simp only [hd,if_false,zero_add]
    by_cases hp : 0≤actualGcdAtom N e q
    · rw [max_eq_left hp,max_eq_right (by linarith)]
      ring
    · rw [max_eq_right (by linarith),max_eq_left (by linarith)]
      ring

theorem actual_signed_upper_iff (e : ZMod N ≃ Fin N) (B : ℝ) :
    sampleSignedMixedPrefix N≤B ↔ coefficientDiagonal N e+positiveOffDiagonal N e≤
      negativeOffDiagonal N e+B := by
  rw [actual_signed_mass_identity N e]
  constructor <;> intro h <;> linarith

/- The coefficient diagonal is not the increment energy sum g(n)^2 M(n)^2.
The displayed domination with B=Cepsilon*(N+1)^epsilon is the UNSUPPLIED
arithmetic estimate. Exact signed bookkeeping supplies no such bound. -/
end GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensGcdSignedMass
