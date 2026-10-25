/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

/-! # Exact cyclic difference energy and its arithmetic kernel

The matrix is D* diag(a) D with D=I-S, including signed real a. Nonnegative
conductances are explicit premises of the positivity and edge-kernel results.
Strict positivity is required to identify the cyclic kernel with constants.
The arithmetic choice is exactly Lambda(m)+log(radical(m)).

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No Poincare constant, excitation estimate, continuum or physical gap is supplied. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicLaplacian

open ArithmeticCyclicHamiltonian
open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification

variable (N : ℕ) [hN : NeZero N]
include hN

def differenceMatrix : Matrix (ZMod N) (ZMod N) ℂ := 1 - cyclicShift N

/-- Standard signed weighted matrix; negative weights are not clipped by square roots. -/
def laplacian (a : ZMod N → ℝ) : Matrix (ZMod N) (ZMod N) ℂ :=
  (differenceMatrix N).conjTranspose * Matrix.diagonal (fun i => (a i : ℂ)) *
    differenceMatrix N

theorem differenceMatrix_mulVec (x : ZMod N → ℂ) (i : ZMod N) :
    (differenceMatrix N).mulVec x i = x i - x (i + 1) := by
  simp [differenceMatrix, Matrix.sub_mulVec, Matrix.one_mulVec, cyclicShift_mulVec]

theorem differenceMatrix_adjoint_mulVec (x : ZMod N → ℂ) (i : ZMod N) :
    (differenceMatrix N).conjTranspose.mulVec x i = x i - x (i - 1) := by
  simp [differenceMatrix, Matrix.conjTranspose_sub, Matrix.sub_mulVec,
    Matrix.conjTranspose_one, Matrix.one_mulVec, cyclicShift_adjoint_mulVec]

theorem laplacian_mulVec (a : ZMod N → ℝ) (x : ZMod N → ℂ) (i : ZMod N) :
    (laplacian N a).mulVec x i =
      (a i : ℂ) * (x i - x (i + 1)) -
        (a (i - 1) : ℂ) * (x (i - 1) - x i) := by
  simp only [laplacian, ← Matrix.mulVec_mulVec, differenceMatrix_adjoint_mulVec,
    Matrix.mulVec_diagonal, differenceMatrix_mulVec]

theorem laplacian_mulVec_balanced (a : ZMod N → ℝ)
    (x : ZMod N → ℂ) (i : ZMod N) :
    (laplacian N a).mulVec x i =
      (a i : ℂ) * (x i - x (i + 1)) +
        (a (i - 1) : ℂ) * (x i - x (i - 1)) := by
  rw [laplacian_mulVec]
  ring

theorem laplacian_isHermitian (a : ZMod N → ℝ) : (laplacian N a).IsHermitian := by
  apply Matrix.isHermitian_conjTranspose_mul_mul
  apply Matrix.isHermitian_diagonal_iff.mpr
  intro i
  change star (a i : ℂ) = (a i : ℂ)
  simp

theorem reverseFluxSum (a : ZMod N → ℝ) (x : ZMod N → ℂ) :
    (∑ i, conj (x i) * ((a (i - 1) : ℂ) * (x (i - 1) - x i))) =
      ∑ i, conj (x (i + 1)) * ((a i : ℂ) * (x i - x (i + 1))) := by
  have hsum := Fintype.sum_equiv (Equiv.addRight (1 : ZMod N))
    (fun i => conj (x (i + 1)) * ((a i : ℂ) * (x i - x (i + 1))))
    (fun i => conj (x i) * ((a (i - 1) : ℂ) * (x (i - 1) - x i)))
    (by intro i; simp)
  exact hsum.symm

/-- Full complex energy, with the same conjugate(x) dot Lx convention. -/
theorem laplacian_readout (a : ZMod N → ℝ) (x : ZMod N → ℂ) :
    complexReadout x (fun p => laplacian N a p.1 p.2) =
      ∑ i, (a i : ℂ) * ((‖x i - x (i + 1)‖ ^ 2 : ℝ) : ℂ) := by
  rw [readout_eq_sum_mulVec]
  calc
    _ = (∑ i, conj (x i) * ((a i : ℂ) * (x i - x (i + 1)))) -
        ∑ i, conj (x i) * ((a (i - 1) : ℂ) * (x (i - 1) - x i)) := by
      rw [← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro i _hi
      rw [laplacian_mulVec]
      ring
    _ = _ := by
      rw [reverseFluxSum, ← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro i _hi
      rw [← Complex.normSq_eq_norm_sq, Complex.normSq_eq_conj_mul_self]
      simp only [map_sub]
      ring

theorem laplacian_energy (a : ZMod N → ℝ) (x : ZMod N → ℂ) :
    (complexReadout x (fun p => laplacian N a p.1 p.2)).re =
      ∑ i, a i * ‖x i - x (i + 1)‖ ^ 2 := by
  rw [laplacian_readout, Complex.re_sum]
  apply Finset.sum_congr rfl
  intro i _hi
  simp

theorem laplacian_energy_nonnegative (a : ZMod N → ℝ)
    (ha : ∀ i, 0 ≤ a i) (x : ZMod N → ℂ) :
    0 ≤ (complexReadout x (fun p => laplacian N a p.1 p.2)).re := by
  rw [laplacian_energy]
  exact Finset.sum_nonneg (fun i _hi => mul_nonneg (ha i) (sq_nonneg _))

theorem laplacian_energy_zero_iff_edges (a : ZMod N → ℝ)
    (ha : ∀ i, 0 ≤ a i) (x : ZMod N → ℂ) :
    (complexReadout x (fun p => laplacian N a p.1 p.2)).re = 0 ↔
      ∀ i, 0 < a i → x i = x (i + 1) := by
  rw [laplacian_energy]
  have hnonneg : ∀ i ∈ (Finset.univ : Finset (ZMod N)),
      0 ≤ a i * ‖x i - x (i + 1)‖ ^ 2 :=
    fun i _hi => mul_nonneg (ha i) (sq_nonneg _)
  rw [Finset.sum_eq_zero_iff_of_nonneg hnonneg]
  constructor
  · intro h i hi
    have hterm := h i (Finset.mem_univ i)
    have hs : ‖x i - x (i + 1)‖ ^ 2 = 0 := (mul_eq_zero.mp hterm).resolve_left hi.ne'
    exact sub_eq_zero.mp (norm_eq_zero.mp (sq_eq_zero_iff.mp hs))
  · intro h i _hi
    by_cases hz : a i = 0
    · simp [hz]
    · rw [h i (lt_of_le_of_ne (ha i) (Ne.symm hz)), sub_self, norm_zero]
      simp

/-- Zero edges impose no equality. Strictly positive edges impose the exact local equality. -/
theorem laplacian_kernel_iff_edges (a : ZMod N → ℝ)
    (ha : ∀ i, 0 ≤ a i) (x : ZMod N → ℂ) :
    (laplacian N a).mulVec x = 0 ↔ ∀ i, 0 < a i → x i = x (i + 1) := by
  constructor
  · intro h
    apply (laplacian_energy_zero_iff_edges N a ha x).mp
    rw [readout_eq_sum_mulVec, h]
    simp
  · intro h
    have hflux (i : ZMod N) : (a i : ℂ) * (x i - x (i + 1)) = 0 := by
      by_cases hz : a i = 0
      · simp [hz]
      · rw [h i (lt_of_le_of_ne (ha i) (Ne.symm hz)), sub_self, mul_zero]
    funext i
    simp only [laplacian_mulVec, hflux, zero_sub, neg_zero, Pi.zero_apply]

theorem successor_invariant_iff_constant (x : ZMod N → ℂ) :
    (∀ i, x i = x (i + 1)) ↔ ∀ i, x i = x 0 := by
  constructor
  · intro h
    have hnat (k : ℕ) : x (k : ZMod N) = x 0 := by
      induction k with
      | zero => rfl
      | succ k hk =>
        simpa only [Nat.cast_succ] using (h (k : ZMod N)).symm.trans hk
    intro i
    obtain ⟨k, rfl⟩ := ZMod.natCast_zmod_surjective i
    exact hnat k
  · intro h i
    exact (h i).trans (h (i + 1)).symm

theorem laplacian_kernel_iff_constant (a : ZMod N → ℝ)
    (ha : ∀ i, 0 < a i) (x : ZMod N → ℂ) :
    (laplacian N a).mulVec x = 0 ↔ ∀ i, x i = x 0 := by
  rw [laplacian_kernel_iff_edges N a (fun i => (ha i).le) x]
  constructor
  · intro h
    exact (successor_invariant_iff_constant N x).mp (fun i => h i (ha i))
  · intro h i _hi
    exact (h i).trans (h (i + 1)).symm

def arithmeticConductance (m : ZMod N → ℕ) (i : ZMod N) : ℝ :=
  ArithmeticFunction.vonMangoldt (m i) +
    Real.log (UniqueFactorizationMonoid.radical (m i) : ℝ)

theorem arithmeticConductance_nonnegative (m : ZMod N → ℕ) (i : ZMod N) :
    0 ≤ arithmeticConductance N m i := by
  have hn : 1 ≤ UniqueFactorizationMonoid.radical (m i) := Nat.radical_pos (m i)
  have hr : 1 ≤ (UniqueFactorizationMonoid.radical (m i) : ℝ) := by exact_mod_cast hn
  exact add_nonneg ArithmeticFunction.vonMangoldt_nonneg (Real.log_nonneg hr)

theorem arithmeticConductance_positive (m : ZMod N → ℕ) (i : ZMod N)
    (hm : 2 ≤ m i) : 0 < arithmeticConductance N m i := by
  have hn : 1 < UniqueFactorizationMonoid.radical (m i) :=
    Nat.one_lt_radical_iff.mpr (by omega)
  have hr : 1 < (UniqueFactorizationMonoid.radical (m i) : ℝ) := by exact_mod_cast hn
  exact add_pos_of_nonneg_of_pos ArithmeticFunction.vonMangoldt_nonneg (Real.log_pos hr)

theorem arithmeticConductance_at_one (i : ZMod N) :
    arithmeticConductance N (fun _ => 1) i = 0 := by
  simp [arithmeticConductance, ArithmeticFunction.vonMangoldt_apply_one]

def arithmeticLaplacian (m : ZMod N → ℕ) : Matrix (ZMod N) (ZMod N) ℂ :=
  laplacian N (arithmeticConductance N m)

theorem arithmeticLaplacian_isHermitian (m : ZMod N → ℕ) :
    (arithmeticLaplacian N m).IsHermitian := laplacian_isHermitian N _

theorem arithmeticLaplacian_energy (m : ZMod N → ℕ) (x : ZMod N → ℂ) :
    (complexReadout x (fun p => arithmeticLaplacian N m p.1 p.2)).re =
      ∑ i, arithmeticConductance N m i * ‖x i - x (i + 1)‖ ^ 2 :=
  laplacian_energy N _ x

theorem arithmeticLaplacian_energy_nonnegative (m : ZMod N → ℕ) (x : ZMod N → ℂ) :
    0 ≤ (complexReadout x (fun p => arithmeticLaplacian N m p.1 p.2)).re :=
  laplacian_energy_nonnegative N _ (arithmeticConductance_nonnegative N m) x

theorem arithmeticLaplacian_kernel_iff_constant (m : ZMod N → ℕ)
    (hm : ∀ i, 2 ≤ m i) (x : ZMod N → ℂ) :
    (arithmeticLaplacian N m).mulVec x = 0 ↔ ∀ i, x i = x 0 :=
  laplacian_kernel_iff_constant N _ (fun i => arithmeticConductance_positive N m i (hm i)) x

/-- The lower bound on site labels cannot be discarded from the strict-conductance argument. -/
theorem arithmeticLaplacian_at_one : arithmeticLaplacian N (fun _ => 1) = 0 := by
  have ha : arithmeticConductance N (fun _ => 1) = 0 := by
    funext i
    exact arithmeticConductance_at_one N i
  unfold arithmeticLaplacian laplacian
  rw [ha]
  simp

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicLaplacian
