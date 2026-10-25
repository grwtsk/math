/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHoppingBounds
import Mathlib.Analysis.InnerProductSpace.Spectrum
import Mathlib.Analysis.Normed.Operator.Banach

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! # Actual finite self-adjoint spectral perturbation

A nonzero approximate eigenvector of a self-adjoint operator has a nearby
actual spectral point. The complete orthonormal eigenbasis, its Euclidean
isometry and all squared coordinate norms are retained. This is applied to
the original signed arithmetic Hamiltonians, in both directions.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No spectral projection/rank, infinite/RH operator or physical mass is asserted. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralPerturbation

open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability ArithmeticCyclicHoppingBounds

/-- A full Euclidean residual, not a selected-coordinate test. -/
theorem diagonal_approximate_eigenvalue (n : ℕ) (d : Fin n → ℂ)
    (y : EuclideanSpace ℂ (Fin n)) (z : ℂ) (ε : ℝ)
    (hε : 0 ≤ ε) (hy : y ≠ 0)
    (hres : ‖WithLp.toLp 2 (fun i => (d i - z) * y i)‖ ≤ ε * ‖y‖) :
    ∃ i : Fin n, ‖d i - z‖ ≤ ε := by
  classical
  by_contra! hfar
  have hcoord : ∃ j : Fin n, y j ≠ 0 := by
    by_contra! hzero
    apply hy
    ext j
    exact hzero j
  obtain ⟨j, hj⟩ := hcoord
  have hs : (∑ i, ε ^ 2 * ‖y i‖ ^ 2) <
      ∑ i, ‖(d i - z) * y i‖ ^ 2 := by
    apply Finset.sum_lt_sum
    · intro i _hi
      rw [norm_mul, mul_pow]
      exact mul_le_mul_of_nonneg_right
        (le_of_lt ((sq_lt_sq₀ hε (norm_nonneg _)).mpr (hfar i))) (sq_nonneg _)
    · refine ⟨j, Finset.mem_univ j, ?_⟩
      rw [norm_mul, mul_pow]
      exact mul_lt_mul_of_pos_right
        ((sq_lt_sq₀ hε (norm_nonneg _)).mpr (hfar j))
        (pow_pos (norm_pos_iff.mpr hj) 2)
  have hstrict : ε ^ 2 * ‖y‖ ^ 2 <
      ‖WithLp.toLp 2 (fun i => (d i - z) * y i)‖ ^ 2 := by
    simpa only [EuclideanSpace.norm_sq_eq, Finset.mul_sum, WithLp.ofLp_toLp] using hs
  have hsq := (sq_le_sq₀ (norm_nonneg _) (mul_nonneg hε (norm_nonneg y))).mpr hres
  rw [mul_pow] at hsq
  exact (not_lt_of_ge hsq) hstrict

variable (N : ℕ) [hN : NeZero N]
include hN

theorem selfAdjoint_approximate_eigenvalue
    (T : EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N))
    (hT : IsSelfAdjoint T) (z : ℂ) (ε : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) (hε : 0 ≤ ε) (hx : x ≠ 0)
    (hres : ‖T x - z • x‖ ≤ ε * ‖x‖) :
    ∃ w ∈ spectrum ℂ T, ‖w - z‖ ≤ ε := by
  let hs : (T : Module.End ℂ (EuclideanSpace ℂ (ZMod N))).IsSymmetric :=
    ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mp hT
  let n := Module.finrank ℂ (EuclideanSpace ℂ (ZMod N))
  let b := hs.eigenvectorBasis (n := n) rfl
  let d : Fin n → ℂ := fun i => (hs.eigenvalues (n := n) rfl i : ℂ)
  have hy : b.repr x ≠ 0 := by
    intro hzero
    apply hx
    apply b.repr.injective
    simpa only [map_zero] using hzero
  have hdiag : b.repr (T x - z • x) =
      WithLp.toLp 2 (fun i => (d i - z) * b.repr x i) := by
    ext i
    simp only [map_sub, map_smul, PiLp.sub_apply, PiLp.smul_apply,
      smul_eq_mul, WithLp.ofLp_toLp]
    change (hs.eigenvectorBasis (n := n) rfl).repr
      ((T : Module.End ℂ (EuclideanSpace ℂ (ZMod N))) x) i -
        z * b.repr x i = (d i - z) * b.repr x i
    rw [hs.eigenvectorBasis_apply_self_apply (n := n) rfl x i]
    change d i * b.repr x i - z * b.repr x i = (d i - z) * b.repr x i
    ring
  have hr : ‖WithLp.toLp 2 (fun i => (d i - z) * b.repr x i)‖ ≤ ε * ‖b.repr x‖ := by
    rw [← hdiag]
    simpa only [b.repr.norm_map] using hres
  obtain ⟨i, hi⟩ := diagonal_approximate_eigenvalue n d (b.repr x) z ε hε hy hr
  refine ⟨d i, ?_, hi⟩
  rw [ContinuousLinearMap.spectrum_eq (f := T)]
  exact (hs.hasEigenvalue_eigenvalues (n := n) rfl i).mem_spectrum

/-- Only the reference operator U must be self-adjoint for this direction. -/
theorem selfAdjoint_spectrum_point_near
    (T U : EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N))
    (hU : IsSelfAdjoint U) (z : ℂ) (hz : z ∈ spectrum ℂ T) :
    ∃ w ∈ spectrum ℂ U, ‖z - w‖ ≤ ‖T - U‖ := by
  have heig : Module.End.HasEigenvalue
      (T : Module.End ℂ (EuclideanSpace ℂ (ZMod N))) z := by
    apply Module.End.hasEigenvalue_iff_mem_spectrum.mpr
    rwa [← ContinuousLinearMap.spectrum_eq (f := T)]
  obtain ⟨x, hx, hxne⟩ := heig.exists_hasEigenvector
  have heq : T x = z • x := Module.End.mem_eigenspace_iff.mp hx
  have hres : ‖U x - z • x‖ ≤ ‖T - U‖ * ‖x‖ := by
    calc
      _ = ‖(T - U) x‖ := by
        rw [← heq]
        simp only [sub_apply, norm_sub_rev]
      _ ≤ _ := (T - U).le_opNorm x
  obtain ⟨w, hw, hb⟩ := selfAdjoint_approximate_eigenvalue N U hU z ‖T - U‖ x
    (norm_nonneg _) hxne hres
  exact ⟨w, hw, by simpa only [norm_sub_rev] using hb⟩

theorem hamiltonian_spectrum_point_near (t : ℝ) (q r : ZMod N → ℝ) (z : ℂ)
    (hz : z ∈ spectrum ℂ (hamiltonianOperator N t q)) :
    ∃ w ∈ spectrum ℂ (hamiltonianOperator N t r), ‖z - w‖ ≤ ‖q - r‖ := by
  obtain ⟨w, hw, hb⟩ := selfAdjoint_spectrum_point_near N
    (hamiltonianOperator N t q) (hamiltonianOperator N t r)
    (hamiltonianOperator_isSelfAdjoint N t r) z hz
  rw [operator_norm_sub_eq] at hb
  exact ⟨w, hw, hb⟩

/-- Both directions quantify over the complete actual spectra; no eigenvalue indexing match. -/
theorem hamiltonian_spectra_mutual_neighborhoods (t : ℝ) (q r : ZMod N → ℝ) :
    (∀ z ∈ spectrum ℂ (hamiltonianOperator N t q),
      ∃ w ∈ spectrum ℂ (hamiltonianOperator N t r), ‖z - w‖ ≤ ‖q - r‖) ∧
    (∀ w ∈ spectrum ℂ (hamiltonianOperator N t r),
      ∃ z ∈ spectrum ℂ (hamiltonianOperator N t q), ‖w - z‖ ≤ ‖q - r‖) := by
  constructor
  · intro z hz
    exact hamiltonian_spectrum_point_near N t q r z hz
  · intro w hw
    obtain ⟨z, hz, hb⟩ := hamiltonian_spectrum_point_near N t r q w hw
    exact ⟨z, hz, by simpa only [norm_sub_rev] using hb⟩

theorem separated_reference_spectrum_mem_resolvent (t : ℝ)
    (q r : ZMod N → ℝ) (E : ℂ)
    (hsep : ∀ w ∈ spectrum ℂ (hamiltonianOperator N t r), ‖q - r‖ < ‖E - w‖) :
    E ∈ resolventSet ℂ (hamiltonianOperator N t q) := by
  apply spectrum.mem_resolventSet_iff.mpr
  apply spectrum.notMem_iff.mp
  intro hE
  obtain ⟨w, hw, hb⟩ := hamiltonian_spectrum_point_near N t q r E hE
  exact (not_le_of_gt (hsep w hw)) hb

theorem joint_hopping_spectrum_point_near (t s : ℝ) (q r : ZMod N → ℝ) (z : ℂ)
    (hz : z ∈ spectrum ℂ (hamiltonianOperator N t q)) :
    ∃ w ∈ spectrum ℂ (hamiltonianOperator N s r),
      ‖z - w‖ ≤ ‖q - r‖ + 2 * |t - s| := by
  obtain ⟨w, hw, hb⟩ := selfAdjoint_spectrum_point_near N
    (hamiltonianOperator N t q) (hamiltonianOperator N s r)
    (hamiltonianOperator_isSelfAdjoint N s r) z hz
  exact ⟨w, hw, hb.trans (operator_joint_change_le N t s q r)⟩

theorem arithmetic_spectrum_point_near (level level' : ℕ)
    (χ : DirichletCharacter ℂ level) (χ' : DirichletCharacter ℂ level')
    (m m' : ZMod N → ℕ) (t u v w u' v' w' : ℝ) (z : ℂ)
    (hz : z ∈ spectrum ℂ (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
      (arithmeticHamiltonian N level χ m t u v w))) :
    ∃ z' ∈ spectrum ℂ (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
      (arithmeticHamiltonian N level' χ' m' t u' v' w')),
      ‖z - z'‖ ≤ ‖arithmeticPotential N level χ m u v w -
        arithmeticPotential N level' χ' m' u' v' w'‖ :=
  hamiltonian_spectrum_point_near N t _ _ z hz

theorem arithmetic_joint_spectrum_point_near (level level' : ℕ)
    (χ : DirichletCharacter ℂ level) (χ' : DirichletCharacter ℂ level')
    (m m' : ZMod N → ℕ) (t s u v w u' v' w' : ℝ) (z : ℂ)
    (hz : z ∈ spectrum ℂ (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
      (arithmeticHamiltonian N level χ m t u v w))) :
    ∃ z' ∈ spectrum ℂ (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
      (arithmeticHamiltonian N level' χ' m' s u' v' w')),
      ‖z - z'‖ ≤ ‖arithmeticPotential N level χ m u v w -
        arithmeticPotential N level' χ' m' u' v' w'‖ + 2 * |t - s| :=
  joint_hopping_spectrum_point_near N t s _ _ z hz

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralPerturbation
