/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Symmetric
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Quadrupolar tensors and their five-coordinate metric

The director observable is `Q(n) = n nᵀ - I / 3`.  Its coefficient space is the
space of symmetric traceless real `3 × 3` matrices; the unit-director image is a
proper subset of that space.  The identities below support exact tensor fixtures
and packing contracts, without an assumption about a lattice Gibbs measure.

The normalization and contraction agree with `RP2.Q` and `RP2.trace_Q_mul` in
`masakioshikawa/rp2-rp3-lean@ab120db3ae50756b2f640400aeca757a0ff9dbb5`,
`RP2/Model.lean`.  Here the contraction proof uses rank-one matrix algebra.
See `QuadrupolarTensors.md` for statement correspondence and evidence scope.
-/

noncomputable section

namespace GRWTSK.QuadrupolarTensors

open Matrix
open scoped BigOperators Matrix

abbrev Vector3 := Fin 3 → ℝ
abbrev Tensor3 := Matrix (Fin 3) (Fin 3) ℝ

/-- A unit representative; sign equivalence is recorded separately below. -/
def IsUnit (n : Vector3) : Prop := n ⬝ᵥ n = 1

/-- The traceless quadrupole of a vector. Tracelessness requires unit length. -/
def quadrupole (n : Vector3) : Tensor3 :=
  vecMulVec n n - (1 / 3 : ℝ) • (1 : Tensor3)

/-- The whole linear space of symmetric traceless tensors. -/
def IsSymmetricTraceless (A : Tensor3) : Prop := Aᵀ = A ∧ trace A = 0

@[simp] theorem quadrupole_neg (n : Vector3) : quadrupole (-n) = quadrupole n := by
  simp [quadrupole]

@[simp] theorem quadrupole_transpose (n : Vector3) :
    (quadrupole n)ᵀ = quadrupole n := by
  simp [quadrupole]

theorem trace_quadrupole (n : Vector3) : trace (quadrupole n) = n ⬝ᵥ n - 1 := by
  simp [quadrupole]

theorem quadrupole_symmetricTraceless {n : Vector3} (hn : IsUnit n) :
    IsSymmetricTraceless (quadrupole n) := by
  exact ⟨quadrupole_transpose n, by rw [trace_quadrupole, hn]; norm_num⟩

/-- Multiplication of two rank-one tensors contracts the middle two vectors. -/
theorem trace_rankOne_mul (n m : Vector3) :
    trace (vecMulVec n n * vecMulVec m m) = (n ⬝ᵥ m) ^ 2 := by
  rw [vecMulVec_mul_vecMulVec, trace_vecMulVec, dotProduct_smul]
  simp [smul_eq_mul, pow_two]

/-- The formula before imposing either unit-length hypothesis. -/
theorem trace_quadrupole_mul_general (n m : Vector3) :
    trace (quadrupole n * quadrupole m) =
      (n ⬝ᵥ m) ^ 2 - (n ⬝ᵥ n) / 3 - (m ⬝ᵥ m) / 3 + 1 / 3 := by
  simp only [quadrupole, sub_mul, mul_sub, mul_smul_comm, smul_mul_assoc,
    mul_one, one_mul, trace_sub, trace_smul, trace_rankOne_mul, trace_vecMulVec,
    trace_one, Fintype.card_fin, smul_eq_mul]
  ring

/-- The RP² contraction normalization, with both hypotheses explicit. -/
theorem trace_quadrupole_mul {n m : Vector3} (hn : IsUnit n) (hm : IsUnit m) :
    trace (quadrupole n * quadrupole m) = (n ⬝ᵥ m) ^ 2 - 1 / 3 := by
  rw [trace_quadrupole_mul_general, hn, hm]
  ring

theorem trace_quadrupole_sq {n : Vector3} (hn : IsUnit n) :
    trace (quadrupole n * quadrupole n) = 2 / 3 := by
  rw [trace_quadrupole_mul hn hn, hn]
  norm_num

/-- The rank-one part of a unit representative is an idempotent. -/
theorem rankOne_sq {n : Vector3} (hn : IsUnit n) :
    vecMulVec n n * vecMulVec n n = vecMulVec n n := by
  rw [vecMulVec_mul_vecMulVec, hn, one_smul]

/-- A unit-director tensor obeys a quadratic constraint beyond symmetry and trace. -/
theorem quadrupole_sq {n : Vector3} (hn : IsUnit n) :
    quadrupole n * quadrupole n =
      (1 / 3 : ℝ) • quadrupole n + (2 / 9 : ℝ) • (1 : Tensor3) := by
  simp only [quadrupole, sub_mul, mul_sub, mul_smul_comm, smul_mul_assoc,
    mul_one, one_mul, rankOne_sq hn, smul_sub, smul_smul]
  ext i j
  simp only [Matrix.sub_apply, Matrix.add_apply, Matrix.smul_apply, smul_eq_mul]
  ring

/-- Orthogonal conjugation acts on the internal tensor axes. -/
theorem quadrupole_equivariant (U : Tensor3) (n : Vector3) (hU : U * Uᵀ = 1) :
    quadrupole (U *ᵥ n) = U * quadrupole n * Uᵀ := by
  simp only [quadrupole, mul_sub, sub_mul, mul_smul_comm, smul_mul_assoc,
    mul_one, hU, mul_vecMulVec, vecMulVec_mul, vecMul_transpose]

/-- Unit length is preserved by an orthogonal change of coordinates. -/
theorem isUnit_mulVec (U : Tensor3) {n : Vector3} (hn : IsUnit n)
    (hU : Uᵀ * U = 1) : IsUnit (U *ᵥ n) := by
  unfold IsUnit at *
  rw [dotProduct_mulVec, vecMul_mulVec, hU]
  simpa using hn

theorem quadrupole_mulVec (n v : Vector3) :
    quadrupole n *ᵥ v = (n ⬝ᵥ v) • n - (1 / 3 : ℝ) • v := by
  simp only [quadrupole, sub_mulVec, vecMulVec_mulVec, smul_mulVec, one_mulVec]
  ext i
  simp [Pi.sub_apply, Pi.smul_apply, smul_eq_mul, mul_comm]

/-- The director line has eigenvalue `2/3`. -/
theorem quadrupole_mulVec_director {n : Vector3} (hn : IsUnit n) :
    quadrupole n *ᵥ n = (2 / 3 : ℝ) • n := by
  rw [quadrupole_mulVec, hn]
  ext i
  simp only [Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
  ring

/-- Every perpendicular vector has eigenvalue `-1/3`. -/
theorem quadrupole_mulVec_perpendicular (n v : Vector3) (h : n ⬝ᵥ v = 0) :
    quadrupole n *ᵥ v = (-1 / 3 : ℝ) • v := by
  rw [quadrupole_mulVec, h]
  ext i
  simp only [Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
  ring

/-- Five entries specify a symmetric traceless matrix, but their Euclidean dot
product is not its Frobenius contraction. -/
def unpack (A : Tensor3) : Fin 5 → ℝ := ![A 0 0, A 1 1, A 0 1, A 0 2, A 1 2]

def pack (a : Fin 5 → ℝ) : Tensor3 :=
  !![a 0, a 2, a 3; a 2, a 1, a 4; a 3, a 4, -a 0 - a 1]

@[simp] theorem unpack_pack (a : Fin 5 → ℝ) : unpack (pack a) = a := by
  funext i
  fin_cases i <;> simp [pack, unpack]

theorem pack_symmetricTraceless (a : Fin 5 → ℝ) : IsSymmetricTraceless (pack a) := by
  constructor
  · ext i j
    fin_cases i <;> fin_cases j <;> simp [pack, Matrix.transpose_apply]
  · simp [pack, trace, Fin.sum_univ_succ]

theorem pack_unpack {A : Tensor3} (hA : IsSymmetricTraceless A) :
    pack (unpack A) = A := by
  have hs (i j : Fin 3) : A j i = A i j := congrFun (congrFun hA.1 i) j
  have ht : A 0 0 + A 1 1 + A 2 2 = 0 := by
    simpa [trace, Fin.sum_univ_succ, add_assoc] using hA.2
  ext i j
  fin_cases i <;> fin_cases j <;> simp [pack, unpack] <;>
    first | exact hs _ _ | linarith

/-- The exact metric for the raw coordinates `(A₀₀,A₁₁,A₀₁,A₀₂,A₁₂)`. -/
def packedContraction (a b : Fin 5 → ℝ) : ℝ :=
  2 * a 0 * b 0 + 2 * a 1 * b 1 + a 0 * b 1 + a 1 * b 0 +
    2 * (a 2 * b 2 + a 3 * b 3 + a 4 * b 4)

theorem trace_pack_mul (a b : Fin 5 → ℝ) :
    trace (pack a * pack b) = packedContraction a b := by
  simp [pack, packedContraction, trace, Fin.sum_univ_succ]
  ring

theorem packedContraction_self (a : Fin 5 → ℝ) :
    packedContraction a a = a 0 ^ 2 + a 1 ^ 2 + (a 0 + a 1) ^ 2 +
      2 * (a 2 ^ 2 + a 3 ^ 2 + a 4 ^ 2) := by
  unfold packedContraction
  ring

theorem packedContraction_nonneg (a : Fin 5 → ℝ) : 0 ≤ packedContraction a a := by
  rw [packedContraction_self]
  positivity

theorem packedContraction_eq_zero_iff (a : Fin 5 → ℝ) :
    packedContraction a a = 0 ↔ a = 0 := by
  constructor
  · intro h
    rw [packedContraction_self] at h
    have ha0 : a 0 = 0 := by
      apply sq_eq_zero_iff.mp
      linarith only [h, sq_nonneg (a 0), sq_nonneg (a 1), sq_nonneg (a 2),
        sq_nonneg (a 3), sq_nonneg (a 4), sq_nonneg (a 0 + a 1)]
    have ha1 : a 1 = 0 := by
      apply sq_eq_zero_iff.mp
      linarith only [h, sq_nonneg (a 0), sq_nonneg (a 1), sq_nonneg (a 2),
        sq_nonneg (a 3), sq_nonneg (a 4), sq_nonneg (a 0 + a 1)]
    have ha2 : a 2 = 0 := by
      apply sq_eq_zero_iff.mp
      linarith only [h, sq_nonneg (a 0), sq_nonneg (a 1), sq_nonneg (a 2),
        sq_nonneg (a 3), sq_nonneg (a 4), sq_nonneg (a 0 + a 1)]
    have ha3 : a 3 = 0 := by
      apply sq_eq_zero_iff.mp
      linarith only [h, sq_nonneg (a 0), sq_nonneg (a 1), sq_nonneg (a 2),
        sq_nonneg (a 3), sq_nonneg (a 4), sq_nonneg (a 0 + a 1)]
    have ha4 : a 4 = 0 := by
      apply sq_eq_zero_iff.mp
      linarith only [h, sq_nonneg (a 0), sq_nonneg (a 1), sq_nonneg (a 2),
        sq_nonneg (a 3), sq_nonneg (a 4), sq_nonneg (a 0 + a 1)]
    funext i
    fin_cases i <;> simp [ha0, ha1, ha2, ha3, ha4]
  · rintro rfl
    simp [packedContraction]

/-- Packing preserves the certified director contraction with its weighted metric. -/
theorem packed_quadrupole_contraction {n m : Vector3} (hn : IsUnit n) (hm : IsUnit m) :
    packedContraction (unpack (quadrupole n)) (unpack (quadrupole m)) =
      (n ⬝ᵥ m) ^ 2 - 1 / 3 := by
  rw [← trace_pack_mul, pack_unpack (quadrupole_symmetricTraceless hn),
    pack_unpack (quadrupole_symmetricTraceless hm), trace_quadrupole_mul hn hm]

/-- A general symmetric traceless tensor need not be a unit-director quadrupole. -/
theorem zero_not_quadrupole {n : Vector3} (hn : IsUnit n) : quadrupole n ≠ 0 := by
  intro h
  have he := trace_quadrupole_sq hn
  rw [h, zero_mul, trace_zero] at he
  norm_num at he

end GRWTSK.QuadrupolarTensors
