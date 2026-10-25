/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
import Mathlib.LinearAlgebra.Eigenspace.Matrix
import Mathlib.Analysis.CStarAlgebra.Spectrum

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! # Diagonal-neighborhood enclosure of the actual cyclic Hamiltonian

The spectrum is that of the actual continuous linear operator on complex
Euclidean space. Its equality with the matrix spectrum and finite-dimensional
eigenvalue API are explicit. A maximum-modulus coordinate controls both actual
cyclic neighbors, including their possible coincidences at small sizes.
Every signed real hopping strength and potential is retained.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
This is a finite spectral enclosure, not a positive gap, a spectral projection
comparison, an infinite/AMO identification or a physical Yang-Mills claim. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralEnclosure

open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability

variable (N : ℕ) [hN : NeZero N]
include hN

theorem operator_spectrum_eq_matrix (t : ℝ) (q : ZMod N → ℝ) :
    spectrum ℂ (hamiltonianOperator N t q) = spectrum ℂ (hamiltonian N t q) :=
  AlgEquiv.spectrum_eq (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)) _

theorem operator_spectrum_has_eigenvalue (t : ℝ) (q : ZMod N → ℝ) (z : ℂ)
    (hz : z ∈ spectrum ℂ (hamiltonianOperator N t q)) :
    Module.End.HasEigenvalue (Matrix.toLin' (hamiltonian N t q)) z := by
  apply Module.End.hasEigenvalue_iff_mem_spectrum.mpr
  rw [Matrix.spectrum_toLin', ← operator_spectrum_eq_matrix N t q]
  exact hz

/-- The full vector is used; the chosen coordinate has maximum modulus. -/
theorem eigenvalue_near_potential (t : ℝ) (q : ZMod N → ℝ) (z : ℂ)
    (hz : Module.End.HasEigenvalue (Matrix.toLin' (hamiltonian N t q)) z) :
    ∃ i : ZMod N, ‖z - (q i : ℂ)‖ ≤ 2 * |t| := by
  obtain ⟨v, hv, hvne⟩ := hz.exists_hasEigenvector
  obtain ⟨i, _hi, hmax⟩ :=
    Finset.exists_mem_eq_sup' Finset.univ_nonempty (fun j => ‖v j‖)
  have hle (j : ZMod N) : ‖v j‖ ≤ ‖v i‖ :=
    hmax ▸ Finset.le_sup' (fun j => ‖v j‖) (Finset.mem_univ j)
  have hvi : v i ≠ 0 := by
    intro hi
    apply hvne
    funext j
    exact norm_le_zero_iff.mp (by simpa only [hi, norm_zero] using hle j)
  have he : (hamiltonian N t q).mulVec v i = z * v i := by
    exact congrFun (Module.End.mem_eigenspace_iff.mp hv) i
  rw [hamiltonian_mulVec] at he
  have heq : (z - (q i : ℂ)) * v i =
      (t : ℂ) * (v (i + 1) + v (i - 1)) := by
    calc
      _ = z * v i - (q i : ℂ) * v i := sub_mul _ _ _
      _ = _ := by rw [← he]; ring
  have hb : ‖z - (q i : ℂ)‖ * ‖v i‖ ≤ (2 * |t|) * ‖v i‖ := by
    calc
      _ = |t| * ‖v (i + 1) + v (i - 1)‖ := by
        rw [← norm_mul, heq, norm_mul, Complex.norm_real, Real.norm_eq_abs]
      _ ≤ |t| * (‖v (i + 1)‖ + ‖v (i - 1)‖) :=
        mul_le_mul_of_nonneg_left (norm_add_le _ _) (abs_nonneg t)
      _ ≤ |t| * (‖v i‖ + ‖v i‖) :=
        mul_le_mul_of_nonneg_left (add_le_add (hle (i + 1)) (hle (i - 1))) (abs_nonneg t)
      _ = _ := by ring
  exact ⟨i, (mul_le_mul_right (norm_pos_iff.mpr hvi)).mp hb⟩

theorem spectrum_near_potential (t : ℝ) (q : ZMod N → ℝ) (z : ℂ)
    (hz : z ∈ spectrum ℂ (hamiltonianOperator N t q)) :
    ∃ i : ZMod N, ‖z - (q i : ℂ)‖ ≤ 2 * |t| :=
  eigenvalue_near_potential N t q z (operator_spectrum_has_eigenvalue N t q z hz)

theorem spectrum_subset_diagonal_neighborhoods (t : ℝ) (q : ZMod N → ℝ) :
    spectrum ℂ (hamiltonianOperator N t q) ⊆
      ⋃ i : ZMod N, {z : ℂ | ‖z - (q i : ℂ)‖ ≤ 2 * |t|} := by
  intro z hz
  exact Set.mem_iUnion.mpr (spectrum_near_potential N t q z hz)

theorem separated_point_mem_resolvent (t : ℝ) (q : ZMod N → ℝ) (z : ℂ)
    (hsep : ∀ i, 2 * |t| < ‖z - (q i : ℂ)‖) :
    z ∈ resolventSet ℂ (hamiltonianOperator N t q) := by
  apply spectrum.mem_resolventSet_iff.mpr
  apply spectrum.notMem_iff.mp
  intro hz
  obtain ⟨i, hi⟩ := spectrum_near_potential N t q z hz
  exact (not_le_of_gt (hsep i)) hi

theorem spectrum_im_eq_zero (t : ℝ) (q : ZMod N → ℝ) (z : ℂ)
    (hz : z ∈ spectrum ℂ (hamiltonianOperator N t q)) : z.im = 0 :=
  (hamiltonianOperator_isSelfAdjoint N t q).im_eq_zero_of_mem_spectrum hz

theorem real_spectrum_near_potential (t : ℝ) (q : ZMod N → ℝ) (z : ℂ)
    (hz : z ∈ spectrum ℂ (hamiltonianOperator N t q)) :
    ∃ i : ZMod N, |z.re - q i| ≤ 2 * |t| := by
  obtain ⟨i, hi⟩ := spectrum_near_potential N t q z hz
  refine ⟨i, ?_⟩
  have hreal := (hamiltonianOperator_isSelfAdjoint N t q).mem_spectrum_eq_re hz
  rw [hreal, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] at hi
  exact hi

theorem real_separated_point_mem_resolvent (t : ℝ) (q : ZMod N → ℝ) (E : ℝ)
    (hsep : ∀ i, 2 * |t| < |E - q i|) :
    (E : ℂ) ∈ resolventSet ℂ (hamiltonianOperator N t q) := by
  apply separated_point_mem_resolvent N t q (E : ℂ)
  intro i
  simpa only [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] using hsep i

/-- Closed radius neighborhoods may touch the endpoints; the interval is open. -/
theorem open_interval_mem_resolvent (t : ℝ) (q : ZMod N → ℝ) (a b E : ℝ)
    (hsep : ∀ i, q i + 2 * |t| ≤ a ∨ b ≤ q i - 2 * |t|)
    (hE : E ∈ Set.Ioo a b) :
    (E : ℂ) ∈ resolventSet ℂ (hamiltonianOperator N t q) := by
  apply real_separated_point_mem_resolvent N t q E
  intro i
  rcases hsep i with hi | hi
  · have habs := le_abs_self (E - q i)
    have ha := hE.1
    linarith
  · have habs := neg_le_abs (E - q i)
    have hb := hE.2
    linarith

theorem arithmetic_spectrum_near_potential (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t u v w : ℝ) (z : ℂ)
    (hz : z ∈ spectrum ℂ (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
      (arithmeticHamiltonian N level χ m t u v w))) :
    ∃ i : ZMod N, ‖z - (arithmeticPotential N level χ m u v w i : ℂ)‖ ≤ 2 * |t| :=
  spectrum_near_potential N t _ z hz

theorem arithmetic_open_interval_mem_resolvent (level : ℕ)
    (χ : DirichletCharacter ℂ level) (m : ZMod N → ℕ) (t u v w a b E : ℝ)
    (hsep : ∀ i, arithmeticPotential N level χ m u v w i + 2 * |t| ≤ a ∨
      b ≤ arithmeticPotential N level χ m u v w i - 2 * |t|)
    (hE : E ∈ Set.Ioo a b) :
    (E : ℂ) ∈ resolventSet ℂ (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
      (arithmeticHamiltonian N level χ m t u v w)) :=
  open_interval_mem_resolvent N t _ a b E hsep hE

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralEnclosure
