/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Block

/-!
# Finite complex sign certificates

The weighted bordered certificate tests the head identity `A = Gᴴ diag(w) G`,
the exact range equation `A X = B`, and nonnegativity of the real scalar
slack `D - Xᴴ B`. The weights are nonnegative rationals. Appending a scalar
row to the weighted factor gives a nonnegative block diagonal matrix with
blocks `A` and the slack. Congruence by `[I, X; 0, 1]` restores both mixed
blocks and the original pole, including for singular `A`. For example, a
zero one-coordinate head with coupling `1` and pole `1` has value `-1` on
`(1,-1)` and violates the range equation.

The LDL certificate uses the same congruence principle with its diagonal
pivots. Positive pivots and a unit lower triangular factor give strict
positivity because the factor has determinant one. Zero pivots still
permit the nonnegative conclusion.

The Euler-heat trace is the sum of even powers of the real eigenvalues
`1 - h λ` of the Euler step. A nonpositive eigenvalue `λ` of the original
Hermitian matrix contributes at least one, while the other contributions
are nonnegative. The strict threshold is necessary for this test. The
one-dimensional zero matrix gives trace exactly one. Independently of
diagonalization, writing the even power as the product of the Hermitian
half power and its adjoint gives the runtime's squared-entry sum. These
are standard finite matrix arguments. Independent mathematical review is
pending.

The consumer is `crates/noe-finite/src/sign.rs` at
`grwtsk/noeaaeue@c4cf0d435800e965a92d9c570c9c08b80b5c0afc`. Hermitian
symmetry determines the other half of the target from the triangle checked
by the Rust implementation. Complex nonnegativity of the slack means its
imaginary part is zero and its real part is nonnegative. The conclusions
concern finite complex matrices after interpreting exact rational data.
The return from Rust acceptance to these hypotheses still requires
decoding, arithmetic and loop refinement. Resource behavior, analytic
source comparison, and cofinal coverage remain separate.
-/

set_option autoImplicit false

open Matrix
open scoped BigOperators ComplexOrder

namespace GRWTSK.Algebra.LinearAlgebra.FiniteSignCertificates

variable {ι ν : Type*} [Fintype ι] [DecidableEq ι] [Fintype ν] [DecidableEq ν]

/-- The weighted bordered acceptance equations imply positivity of the entire
finite target, with no invertibility hypothesis on the head. -/
theorem weightedBordered_posSemidef (A : Matrix ι ι ℂ)
    (B X : Matrix ι Unit ℂ) (D : Matrix Unit Unit ℂ)
    (G : Matrix ν ι ℂ) (w : ν → ℚ)
    (hw : ∀ i, 0 ≤ w i) (hHead : A = Gᴴ * diagonal (fun i => (w i : ℂ)) * G)
    (hRange : A * X = B) (hSlack : 0 ≤ (D - Xᴴ * B) () ()) :
    (fromBlocks A B Bᴴ D).PosSemidef := by
  let W : Matrix ν ν ℂ := diagonal (fun i => (w i : ℂ))
  let S : Matrix Unit Unit ℂ := D - Xᴴ * B
  have hW : W.PosSemidef := by
    apply PosSemidef.diagonal
    intro i
    simpa [Complex.nonneg_iff] using hw i
  have hA : A.PosSemidef := hHead ▸ hW.conjTranspose_mul_mul_same G
  have hWS : (fromBlocks W 0 0 S).PosSemidef := by
    have hS : S = diagonal (fun _ : Unit => S () ()) := by
      ext ⟨⟩ ⟨⟩
      simp
    change (fromBlocks (diagonal (fun i => (w i : ℂ))) 0 0 S).PosSemidef
    rw [hS, fromBlocks_diagonal]
    apply PosSemidef.diagonal
    rintro (i | ⟨⟩)
    · simpa [Complex.nonneg_iff] using hw i
    · exact hSlack
  let G' : Matrix (ν ⊕ Unit) (ι ⊕ Unit) ℂ := fromBlocks G 0 0 1
  have hAS : (fromBlocks A 0 0 S).PosSemidef := by
    rw [hHead]
    simpa [G', W, fromBlocks_conjTranspose, fromBlocks_multiply]
      using hWS.conjTranspose_mul_mul_same G'
  let P : Matrix (ι ⊕ Unit) (ι ⊕ Unit) ℂ := fromBlocks 1 X 0 1
  have hCross : Xᴴ * A = Bᴴ := by
    rw [← hRange, conjTranspose_mul, hA.isHermitian.eq]
  have hEnergy : Xᴴ * A * X = Xᴴ * B := by
    rw [Matrix.mul_assoc, hRange]
  have hPole : Bᴴ * X + S = D := by
    rw [← hCross, hEnergy]
    simp [S]
  simpa only [P, fromBlocks_conjTranspose, fromBlocks_multiply, conjTranspose_one,
    conjTranspose_zero, Matrix.one_mul, Matrix.mul_one, Matrix.mul_zero, Matrix.zero_mul,
    add_zero, zero_add, hCross, hRange, hPole] using
    hAS.conjTranspose_mul_mul_same P

/-- Exact LDL equality with nonnegative rational pivots implies a nonnegative
Hermitian form on the whole finite coordinate space. -/
theorem ldl_posSemidef (M L : Matrix ι ι ℂ) (pivots : ι → ℚ)
    (hPivots : ∀ i, 0 ≤ pivots i)
    (hLDL : M = L * diagonal (fun i => (pivots i : ℂ)) * Lᴴ) : M.PosSemidef := by
  have hD : (diagonal (fun i => (pivots i : ℂ))).PosSemidef := by
    apply PosSemidef.diagonal
    intro i
    simpa [Complex.nonneg_iff] using hPivots i
  rw [hLDL]
  exact hD.mul_mul_conjTranspose_same L

omit [Fintype ι] [DecidableEq ι] in
/-- The strict LDL branch tests positive pivots and a unit lower triangular
factor on the full finite coordinate order. -/
theorem ldl_posDef {n : ℕ} (M L : Matrix (Fin n) (Fin n) ℂ) (pivots : Fin n → ℚ)
    (hPivots : ∀ i, 0 < pivots i) (hLower : L.IsLowerTriangular)
    (hUnit : ∀ i, L i i = 1)
    (hLDL : M = L * diagonal (fun i => (pivots i : ℂ)) * Lᴴ) : M.PosDef := by
  have hD : (diagonal (fun i => (pivots i : ℂ))).PosDef := by
    apply PosDef.diagonal
    intro i
    simpa [Complex.pos_iff] using hPivots i
  have hL : IsUnit L := by
    apply (Matrix.isUnit_iff_isUnit_det L).mpr
    simp [Matrix.det_of_isLowerTriangular L hLower, hUnit]
  rw [hLDL]
  exact hD.mul_mul_conjTranspose_same (Matrix.vecMul_injective_of_isUnit hL)

/-- The trace of an even Hermitian power equals the squared Frobenius norm
of its half power. -/
theorem evenPow_trace_re_eq_sum_normSq (S : Matrix ι ι ℂ) (hS : S.IsHermitian) (k : ℕ) :
    (S ^ (2 * k)).trace.re = ∑ i, ∑ j, Complex.normSq ((S ^ k) i j) := by
  calc
    (S ^ (2 * k)).trace.re = (S ^ k * (S ^ k)ᴴ).trace.re := by
      rw [Nat.mul_comm 2 k, pow_mul, pow_two, (hS.pow k).eq]
    _ = ∑ i, ∑ j, Complex.normSq ((S ^ k) i j) := by
      simp only [Matrix.trace, Matrix.diag_apply, Matrix.mul_apply, Complex.re_sum,
        Matrix.conjTranspose_apply, Complex.star_def, Complex.mul_conj, Complex.ofReal_re]

/-- A Hermitian matrix is positive definite if a positive rational Euler
step gives a trace below one at the tested even power. The statement keeps
the runtime's positive iteration guard. -/
theorem eulerHeat_posDef (M : Matrix ι ι ℂ) (hM : M.IsHermitian)
    (h : ℚ) (hh : 0 < h) (k : ℕ) (_hk : 0 < k)
    (hTrace : ((1 - (h : ℂ) • M) ^ (2 * k)).trace.re < 1) : M.PosDef := by
  let C := Unitary.conjStarAlgAut ℂ (Matrix ι ι ℂ) (star hM.eigenvectorUnitary)
  let d : ι → ℝ := fun i => 1 - (h : ℝ) * hM.eigenvalues i
  have hCM : C M = diagonal (fun i => (hM.eigenvalues i : ℂ)) :=
    hM.conjStarAlgAut_star_eigenvectorUnitary
  have hStep : C (1 - (h : ℂ) • M) = diagonal (fun i => (d i : ℂ)) := by
    rw [map_sub, map_one, map_smul, hCM, ← diagonal_one, ← diagonal_smul, diagonal_sub]
    congr 1
    funext i
    simp [d, smul_eq_mul]
  have hTraceC (N : Matrix ι ι ℂ) : (C N).trace = N.trace := by
    rw [show C N = _ from Unitary.conjStarAlgAut_star_apply ..,
      trace_mul_cycle, ← Unitary.coe_star, Unitary.coe_mul_star_self, one_mul]
  have hSum : (∑ i, d i ^ (2 * k)) < 1 := by
    rw [← hTraceC, map_pow, hStep, diagonal_pow, trace_diagonal] at hTrace
    simpa [Complex.re_sum, ← Complex.ofReal_pow] using hTrace
  refine hM.posDef_iff_eigenvalues_pos.mpr fun i => ?_
  by_contra! hi
  have hhReal : 0 ≤ (h : ℝ) := by exact_mod_cast hh.le
  have hOne : 1 ≤ d i := by
    simpa [d] using sub_le_sub_left (mul_nonpos_of_nonneg_of_nonpos hhReal hi) 1
  have hNonneg (j : ι) : 0 ≤ d j ^ (2 * k) := (even_two_mul k).pow_nonneg _
  have hOneLeSum : 1 ≤ ∑ j, d j ^ (2 * k) :=
    (one_le_pow₀ hOne).trans (Finset.single_le_sum (fun j _ => hNonneg j) (Finset.mem_univ i))
  exact (not_lt_of_ge hOneLeSum) hSum

/-- Soundness in the squared-entry form of the Euler-heat checker. -/
theorem eulerHeat_frobenius_posDef (M : Matrix ι ι ℂ) (hM : M.IsHermitian)
    (h : ℚ) (hh : 0 < h) (k : ℕ) (hk : 0 < k)
    (hSum : (∑ i, ∑ j, Complex.normSq (((1 - (h : ℂ) • M) ^ k) i j)) < 1) :
    M.PosDef := by
  have hhComplex : 0 ≤ (h : ℂ) := by simpa [Complex.nonneg_iff] using hh.le
  have hS : (1 - (h : ℂ) • M).IsHermitian :=
    isHermitian_one.sub (hM.smul (IsSelfAdjoint.of_nonneg hhComplex))
  apply eulerHeat_posDef M hM h hh k hk
  rwa [evenPow_trace_re_eq_sum_normSq _ hS]

end GRWTSK.Algebra.LinearAlgebra.FiniteSignCertificates
