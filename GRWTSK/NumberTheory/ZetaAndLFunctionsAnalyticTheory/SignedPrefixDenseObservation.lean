/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CyclicActualMertensPrefixSource

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Dense signed-prefix observation and its exact four-site stencil mismatch.
This excludes literal operator equality, not every possible proved
comparison or spectral functional calculus. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.SignedPrefixDenseObservation
open CyclicConstantModeSignedPrefixObstruction
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
variable (N : ℕ) [NeZero N]

def denseRealObservation (x : ZMod N → ℝ) (i : ZMod N) : ℝ := (∑ j, x j) - x i

theorem dense_real_form_eq_signed_statistic (x : ZMod N → ℝ) :
    (∑ i : ZMod N, x i * denseRealObservation N x i) = signedPrefixStatistic N x := by
  unfold denseRealObservation signedPrefixStatistic
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul]
  simp only [pow_two]

def denseObservation (x : EuclideanSpace ℂ (ZMod N)) : EuclideanSpace ℂ (ZMod N) :=
  WithLp.toLp 2 (fun i => (∑ j : ZMod N, x j) - x i)

def fourSiteBasisTwo : EuclideanSpace ℂ (ZMod 4) :=
  WithLp.toLp 2 (fun i => if i = 2 then (1 : ℂ) else 0)

theorem dense_four_site_remote_entry : denseObservation 4 fourSiteBasisTwo 0 = 1 := by
  have hu : (Finset.univ : Finset (ZMod 4)) = {0, 1, 2, 3} := by decide
  norm_num [denseObservation, fourSiteBasisTwo, hu]

theorem cyclic_four_site_remote_entry (t : ℝ) (q : ZMod 4 → ℝ) :
    hamiltonianOperator 4 t q fourSiteBasisTwo 0 = 0 := by
  have h := congrFun (hamiltonianOperator_mulVec 4 t q fourSiteBasisTwo) 0
  change hamiltonianOperator 4 t q fourSiteBasisTwo 0 = _ at h
  rw [h, hamiltonian_mulVec]
  norm_num [fourSiteBasisTwo]

theorem no_literal_four_site_stencil_realization (t : ℝ) (q : ZMod 4 → ℝ) :
    ¬ (∀ x : EuclideanSpace ℂ (ZMod 4), hamiltonianOperator 4 t q x = denseObservation 4 x) := by
  intro h
  have he := congrArg (fun x : EuclideanSpace ℂ (ZMod 4) => x 0) (h fourSiteBasisTwo)
  rw [cyclic_four_site_remote_entry, dense_four_site_remote_entry] at he
  norm_num at he

end GRWTSK.NumberTheory.Zeta.Riemann.SignedPrefixDenseObservation
