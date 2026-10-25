/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralProjection

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! # Coercivity on the actual finite complementary spectral sector

All vectors are complex Euclidean vectors. The high vector is exactly
(1-lowOperator) x, with the existing strict eigenvalue<E cutoff; equal-cutoff
eigenvalues remain in this sector. Real cutoffs and signed Hamiltonians are
unrestricted. A positive lower norm floor is meaningful only when E>0.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No full-space positivity, cutoff stability, vacuum, infinite/RH operator or
physical Yang-Mills gap is supplied. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralSector

open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability ArithmeticCyclicSpectralProjection

variable (N : ℕ) [hN : NeZero N]
include hN

/-- Complete basis reconstruction with exact basis-action hypotheses. -/
theorem basis_diagonal_action
    (T : EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N))
    (b : OrthonormalBasis (ZMod N) ℂ (EuclideanSpace ℂ (ZMod N)))
    (d : ZMod N → ℂ) (hact : ∀ i, T (b i) = d i • b i)
    (x : EuclideanSpace ℂ (ZMod N)) :
    T x = b.repr.symm (WithLp.toLp 2 (fun i => d i * b.repr x i)) := by
  calc
    _ = T (∑ i, b.repr x i • b i) := congrArg T (b.sum_repr x).symm
    _ = ∑ i, b.repr x i • (d i • b i) := by
      simp only [map_sum, map_smul, hact]
    _ = _ := by
      rw [← b.sum_repr_symm]
      apply Finset.sum_congr rfl
      intro i _hi
      simp only [smul_smul, WithLp.ofLp_toLp]
      rw [mul_comm]

theorem hamiltonian_basis_coordinates (t : ℝ) (q : ZMod N → ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) (i : ZMod N) :
    (hamiltonian_isHermitian N t q).eigenvectorBasis.repr
        (hamiltonianOperator N t q x) i =
      ((hamiltonian_isHermitian N t q).eigenvalues i : ℂ) *
        (hamiltonian_isHermitian N t q).eigenvectorBasis.repr x i := by
  let hA := hamiltonian_isHermitian N t q
  let b := hA.eigenvectorBasis
  have hact (j : ZMod N) :
      hamiltonianOperator N t q (b j) = (hA.eigenvalues j : ℂ) • b j := by
    ext k
    change (hamiltonian N t q).mulVec (WithLp.ofLp (b j)) k = _
    exact congrFun (hA.mulVec_eigenvectorBasis j) k
  have h := basis_diagonal_action N (hamiltonianOperator N t q) b
    (fun j => (hA.eigenvalues j : ℂ)) hact x
  have hc := congrArg (fun y => b.repr y i) h
  simpa only [b.repr.apply_symm_apply, WithLp.ofLp_toLp] using hc

theorem low_basis_coordinates (t : ℝ) (q : ZMod N → ℝ) (E : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) (i : ZMod N) :
    (hamiltonian_isHermitian N t q).eigenvectorBasis.repr (lowOperator N t q E x) i =
      cutMask N t q E i * (hamiltonian_isHermitian N t q).eigenvectorBasis.repr x i := by
  let b := (hamiltonian_isHermitian N t q).eigenvectorBasis
  have h := basis_diagonal_action N (lowOperator N t q E) b (cutMask N t q E)
    (fun j => lowOperator_eigenvector_action N t q E j) x
  have hc := congrArg (fun y => b.repr y i) h
  simpa only [b.repr.apply_symm_apply, WithLp.ofLp_toLp] using hc

theorem high_basis_coordinates (t : ℝ) (q : ZMod N → ℝ) (E : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) (i : ZMod N) :
    (hamiltonian_isHermitian N t q).eigenvectorBasis.repr
        ((1 - lowOperator N t q E) x) i =
      (1 - cutMask N t q E i) *
        (hamiltonian_isHermitian N t q).eigenvectorBasis.repr x i := by
  change (hamiltonian_isHermitian N t q).eigenvectorBasis.repr
      (x - lowOperator N t q E x) i = _
  simp only [map_sub, PiLp.sub_apply]
  rw [low_basis_coordinates]
  ring

/-- Exact full complex energy in the actual orthonormal eigenbasis. -/
theorem hamiltonian_energy_eigenbasis (t : ℝ) (q : ZMod N → ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) :
    (inner ℂ x (hamiltonianOperator N t q x)).re =
      ∑ i, (hamiltonian_isHermitian N t q).eigenvalues i *
        ‖(hamiltonian_isHermitian N t q).eigenvectorBasis.repr x i‖ ^ 2 := by
  let b := (hamiltonian_isHermitian N t q).eigenvectorBasis
  rw [← b.repr.inner_map_map x (hamiltonianOperator N t q x),
    EuclideanSpace.inner_eq_star_dotProduct]
  change (∑ i, b.repr (hamiltonianOperator N t q x) i * star (b.repr x i)).re = _
  rw [Complex.re_sum]
  apply Finset.sum_congr rfl
  intro i _hi
  rw [hamiltonian_basis_coordinates, mul_assoc, Complex.star_def, Complex.mul_conj,
    Complex.normSq_eq_norm_sq]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]

theorem high_low_coordinates_zero (t : ℝ) (q : ZMod N → ℝ) (E : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) (i : ZMod N)
    (hi : (hamiltonian_isHermitian N t q).eigenvalues i < E) :
    (hamiltonian_isHermitian N t q).eigenvectorBasis.repr
      ((1 - lowOperator N t q E) x) i = 0 := by
  rw [high_basis_coordinates]
  simp [cutMask, hi]

/-- Sector restriction is explicit; the original signed Hamiltonian is unchanged. -/
theorem high_sector_energy_lower (t : ℝ) (q : ZMod N → ℝ) (E : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) :
    E * ‖(1 - lowOperator N t q E) x‖ ^ 2 ≤
      (inner ℂ ((1 - lowOperator N t q E) x)
        (hamiltonianOperator N t q ((1 - lowOperator N t q E) x))).re := by
  let hA := hamiltonian_isHermitian N t q
  let b := hA.eigenvectorBasis
  let y := (1 - lowOperator N t q E) x
  have hterm (i : ZMod N) : E * ‖b.repr y i‖ ^ 2 ≤
      hA.eigenvalues i * ‖b.repr y i‖ ^ 2 := by
    by_cases hi : hA.eigenvalues i < E
    · have hz : b.repr y i = 0 := high_low_coordinates_zero N t q E x i hi
      simp only [hz, norm_zero, zero_pow (by decide : 2 ≠ 0), mul_zero, le_refl]
    · exact mul_le_mul_of_nonneg_right (le_of_not_gt hi) (sq_nonneg _)
  calc
    _ = ∑ i, E * ‖b.repr y i‖ ^ 2 := by
      rw [← b.repr.norm_map y, EuclideanSpace.norm_sq_eq, Finset.mul_sum]
    _ ≤ ∑ i, hA.eigenvalues i * ‖b.repr y i‖ ^ 2 :=
      Finset.sum_le_sum fun i _hi => hterm i
    _ = _ := (hamiltonian_energy_eigenbasis N t q y).symm

/-- Positive coercivity requires E>0; for E<=0 this lower bound can be vacuous. -/
theorem high_sector_norm_lower (t : ℝ) (q : ZMod N → ℝ) (E : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) :
    E * ‖(1 - lowOperator N t q E) x‖ ≤
      ‖hamiltonianOperator N t q ((1 - lowOperator N t q E) x)‖ := by
  let y := (1 - lowOperator N t q E) x
  change E * ‖y‖ ≤ ‖hamiltonianOperator N t q y‖
  have he := high_sector_energy_lower N t q E x
  have hi : (inner ℂ y (hamiltonianOperator N t q y)).re ≤
      ‖y‖ * ‖hamiltonianOperator N t q y‖ :=
    re_inner_le_norm y (hamiltonianOperator N t q y)
  by_cases hy : y = 0
  · simp only [hy, norm_zero, mul_zero, map_zero, le_refl]
  · have hm : (E * ‖y‖) * ‖y‖ ≤ ‖hamiltonianOperator N t q y‖ * ‖y‖ := by
      nlinarith [he, hi]
    exact (mul_le_mul_right (norm_pos_iff.mpr hy)).mp hm

theorem high_sector_kernel (t : ℝ) (q : ZMod N → ℝ) (E : ℝ)
    (hE : 0 < E) (x : EuclideanSpace ℂ (ZMod N))
    (hx : hamiltonianOperator N t q ((1 - lowOperator N t q E) x) = 0) :
    (1 - lowOperator N t q E) x = 0 := by
  have h := high_sector_norm_lower N t q E x
  rw [hx, norm_zero] at h
  apply norm_eq_zero.mp
  have hn : ‖(1 - lowOperator N t q E) x‖ ≤ 0 :=
    (mul_le_mul_left hE).mp (by simpa only [mul_zero] using h)
  exact le_antisymm hn (norm_nonneg _)

theorem arithmetic_high_sector_energy_lower (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t u v w E : ℝ) (x : EuclideanSpace ℂ (ZMod N)) :
    E * ‖(1 - lowOperator N t (arithmeticPotential N level χ m u v w) E) x‖ ^ 2 ≤
      (inner ℂ ((1 - lowOperator N t (arithmeticPotential N level χ m u v w) E) x)
        (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
          (arithmeticHamiltonian N level χ m t u v w)
          ((1 - lowOperator N t (arithmeticPotential N level χ m u v w) E) x))).re :=
  high_sector_energy_lower N t _ E x

theorem arithmetic_high_sector_norm_lower (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t u v w E : ℝ) (x : EuclideanSpace ℂ (ZMod N)) :
    E * ‖(1 - lowOperator N t (arithmeticPotential N level χ m u v w) E) x‖ ≤
      ‖Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
        (arithmeticHamiltonian N level χ m t u v w)
        ((1 - lowOperator N t (arithmeticPotential N level χ m u v w) E) x)‖ :=
  high_sector_norm_lower N t _ E x

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralSector
