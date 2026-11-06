/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSchurDisplacement
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddRemoteAllowanceMatrix
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteWeightedCovarianceDisplacement
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurPivotResidual

/-!
# Structure of the fully charged radius-two inclusion middle

The complete remote allowance at `J = L` is a physical diagonal and
two outer products. Alternating sine conjugation makes their vectors
the same pair that generates the literal source displacement. Subtracting
this charge from the weighted finite covariance preserves two skew pairs.
The diagonal charge and both covariance generators retain their signs.

The structure supplies the input to the rounded Schur recurrence.
Literal scalar intervals, positive pivots and the cumulative residual
budget remain separate. Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoWeightedMiddleStructure

open Matrix
open RadiusTwoDisplacement OddRemoteAllowanceMatrix OddResidualMajorant OddResidualRows LowSchur
open GRWTSK.Algebra.LinearAlgebra.FiniteWeightedCovarianceDisplacement
open GRWTSK.Algebra.LinearAlgebra.StructuredSchurPivotResidual

private def remoteFactor (L : ℕ) (s : ℝ) : ℝ :=
  3 * (1 + s⁻¹) / (5 * (L : ℝ) ^ 5)

/-- First-trace coefficient of the remote allowance at equal cutoffs. -/
def remoteFirst (L : ℕ) (s : ℝ) : ℝ := (1 + s) * (2 / (L : ℝ))

/-- Derivative-trace coefficient of the remote allowance at equal cutoffs. -/
def remoteDerivative (L : ℕ) (s : ℝ) : ℝ :=
  (1 + s) * (2 * (1 / 2 + primeMass 2 / Real.pi) ^ 2 / (3 * (L : ℝ) ^ 3)) +
    remoteFactor L s * ((2 / (2 : ℝ)) * boundaryErrorScale 2) ^ 2

/-- Physical diagonal of the cubic remote remainder at equal cutoffs. -/
def remoteDiag (M L : ℕ) (s : ℝ) (m : ℕ) : ℝ :=
  remoteFactor L s * (∑ n ∈ Finset.Icc 1 M, remainderWeight M L 2 n) *
    remainderWeight M L 2 m

private def physicalMode {ι : Type*} {M : ℕ} (idx : ι → Fin M) (i : ι) : ℕ :=
  (idx i).val + 1

private def parity {ι : Type*} {M : ℕ} (idx : ι → Fin M) (i : ι) : ℝ :=
  (-1 : ℝ) ^ physicalMode idx i

/-- Restrict the complete remote allowance to the chosen physical modes,
conjugating by their alternating signs. The pole slot is zero. -/
def parityRemote {ι : Type*} {M : ℕ} (L : ℕ) (s : ℝ) (idx : ι → Fin M) : Matrix ι ι ℝ :=
  fun i j => parity idx i * completeRemoteMatrix M L L 2 s (.inl (idx i)) (.inl (idx j)) *
    parity idx j

/-- The complete remote charge at equal cutoffs has two outer products
in the original displacement generators and an explicit diagonal. -/
theorem parityRemote_eq {ι : Type*} [DecidableEq ι] {M : ℕ} (L : ℕ) (s : ℝ)
    (idx : ι → Fin M) (hidx : Function.Injective idx) :
    let m := physicalMode idx
    let v : ι → ℝ := fun i => m i
    let u := displacementSignal ∘ m
    parityRemote L s idx = remoteFirst L s • vecMulVec u u +
      remoteDerivative L s • vecMulVec v v + diagonal (remoteDiag M L s ∘ m) := by
  dsimp only
  ext i j
  have hpar (k : ι) : (parity idx k)^2 = 1 := by
    rw [parity, ← pow_mul, Nat.mul_comm, pow_mul]
    norm_num
  have hfirst (k : ι) :
      firstTraceRow M 2 (.inl (idx k)) =
        parity idx k * displacementSignal (physicalMode idx k) := by
    unfold firstTraceRow firstTraceEntry displacementSignal parity physicalMode
    simp only [Sum.elim_inl]
    ring
  have hderiv (k : ι) :
      derivativeTraceRow M (.inl (idx k)) =
        parity idx k * (physicalMode idx k : ℝ) := rfl
  have hLeading : leadingGram M L L 2 = 0 := by simp [leadingGram]
  unfold parityRemote completeRemoteMatrix
  rw [hLeading]
  simp only [zero_add, Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, vecMulVec_apply,
    hfirst, hderiv, poleCoordinate, Sum.elim_inl, mul_zero, add_zero, Function.comp_apply]
  rcases eq_or_ne i j with rfl | hij
  · simp only [remainderDiagonal, diagonal_apply_eq, Sum.elim_inl,
      remoteFirst, remoteDerivative, remoteFactor]
    calc
      _ = (parity idx i)^2 * (
          (1+s) * (2 / (L : ℝ)) * (parity idx i)^2 * displacementSignal (physicalMode idx i)^2 +
          remoteDerivative L s * (parity idx i)^2 * (physicalMode idx i : ℝ)^2 +
          remoteDiag M L s (physicalMode idx i)) := by
            simp only [remoteDerivative, remoteDiag, remoteFactor, physicalMode]
            ring
      _ = _ := by rw [hpar]; simp [remoteDerivative, remoteDiag, remoteFactor, pow_two]
  · have hs : Sum.inl (α := Fin M) (β := Unit) (idx i) ≠ .inl (idx j) :=
      fun h => hij (hidx (Sum.inl.inj h))
    simp only [remainderDiagonal, diagonal_apply_ne _ hs, diagonal_apply_ne _ hij, mul_zero, zero_add,
      add_zero, remoteFirst, remoteDerivative, remoteFactor]
    calc
      _ = (parity idx i)^2 * (parity idx j)^2 *
          ((1+s) * (2 / (L : ℝ)) *
              (displacementSignal (physicalMode idx i) * displacementSignal (physicalMode idx j)) +
            remoteDerivative L s * ((physicalMode idx i : ℝ) * (physicalMode idx j : ℝ))) := by
              simp only [remoteDerivative, remoteFactor]
              ring
      _ = _ := by rw [hpar, hpar]; simp [remoteDerivative, remoteFactor]

variable {ι κ : Type*} [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ]

/-- A weighted cross covariance and the full remote diagonal/trace
charge use the same two skew pairs. The two trace vectors are `u`
and `v`, so the extra displaced vectors update the second slot in
each pair. -/
theorem fullyPaid_displacement (A : Matrix ι ι ℝ) (C : Matrix ι κ ℝ)
    (d v u : ι → ℝ) (e highV highU weight : κ → ℝ)
    (r : ι → ℝ) (alpha delta : ℝ)
    (hRetained : diagonal d * A - A * diagonal d = vecMulVec v u - vecMulVec u v)
    (hCross : diagonal d * C - C * diagonal e = vecMulVec v highU - vecMulVec u highV) :
    let a := C.mulVec (fun k => weight k * highU k)
    let b := C.mulVec (fun k => weight k * highV k)
    let U := fun i => u i - a i + delta * d i * v i
    let B := fun i => b i + alpha * d i * u i
    let paid := A - C * diagonal weight * Cᵀ -
      (alpha • vecMulVec u u + delta • vecMulVec v v + diagonal r)
    diagonal d * paid - paid * diagonal d =
      (vecMulVec v U - vecMulVec U v) + (vecMulVec u B - vecMulVec B u) := by
  let R := alpha • vecMulVec u u + delta • vecMulVec v v + diagonal r
  dsimp only
  change diagonal d * (A - C * diagonal weight * Cᵀ - R) -
    (A - C * diagonal weight * Cᵀ - R) * diagonal d = _
  rw [Matrix.mul_sub, Matrix.sub_mul, sub_sub_sub_comm]
  rw [sub_weightedCovariance_displacement _ _ _ _ _ _ _ _ _ hRetained hCross]
  ext i j
  simp only [R, Matrix.sub_apply, Matrix.add_apply, Matrix.diagonal_mul, Matrix.mul_diagonal,
    vecMulVec_apply, Pi.sub_apply, Matrix.smul_apply, smul_eq_mul]
  by_cases h : i = j
  · subst j
    simp only [diagonal_apply_eq]
    ring
  · simp only [diagonal_apply_ne _ h, add_zero]
    ring

omit [Fintype ι] in
/-- The diagonal needed for the structured recurrence, including the
complete remote remainder and both trace charges. -/
theorem fullyPaid_diagonal (A : Matrix ι ι ℝ) (C : Matrix ι κ ℝ)
    (v u r : ι → ℝ) (weight : κ → ℝ) (alpha delta : ℝ) (i : ι) :
    (A - C * diagonal weight * Cᵀ -
      (alpha • vecMulVec u u + delta • vecMulVec v v + diagonal r)) i i =
      A i i - (∑ k, weight k * (C i k)^2) - alpha * (u i)^2 - delta * (v i)^2 - r i := by
  rw [Matrix.sub_apply, sub_weightedCovariance_diag]
  simp only [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, vecMulVec_apply, diagonal_apply_eq]
  ring


/-- The literal shifted inclusion matrix, with the finite weighted
cross covariance and the complete remote charge at equal cutoffs. -/
def sourcePaidMiddle {M : ℕ} (idx : ι → Fin M) (receiving : κ → ℕ)
    (weight : κ → ℝ) (L : ℕ) (s distantWeight : ℝ) : Matrix ι ι ℝ :=
  let A := parityCoreMatrix (physicalMode idx) + diagonal (fun _ => (-1 / 5 : ℝ))
  let C : Matrix ι κ ℝ := fun i k => parityCoreEntry (physicalMode idx i) (receiving k)
  A - C * diagonal weight * Cᵀ - distantWeight⁻¹ • parityRemote L s idx

/-- Reconstruct the full paid matrix from its diagonal and two skew pairs.
The first 64 coordinates can be excluded by the choice of `idx`, while
the remote diagonal still sums over every physical index through `M`. -/
theorem sourcePaidMiddle_eq_cauchyMatrix {M : ℕ} (idx : ι → Fin M) (hidx : Function.Injective idx)
    (receiving : κ → ℕ) (hReceiving : ∀ k, 0 < receiving k) (weight : κ → ℝ)
    (L : ℕ) (s distantWeight : ℝ) :
    let m := physicalMode idx
    let v : ι → ℝ := fun i => m i
    let u := displacementSignal ∘ m
    let d : ι → ℝ := fun i => (v i)^2
    let C : Matrix ι κ ℝ := fun i k => parityCoreEntry (m i) (receiving k)
    let a := C.mulVec (fun k => weight k * displacementSignal (receiving k))
    let b := C.mulVec (fun k => weight k * (receiving k : ℝ))
    let alpha := distantWeight⁻¹ * remoteFirst L s
    let delta := distantWeight⁻¹ * remoteDerivative L s
    let diag := fun i => parityCoreEntry (m i) (m i) - 1 / 5 -
      (∑ k, weight k * (C i k)^2) - alpha * (u i)^2 - delta * (v i)^2 -
      distantWeight⁻¹ * remoteDiag M L s (m i)
    let V : ι → Fin 2 → ℝ := fun i k => if k = 0 then v i else u i
    let U : ι → Fin 2 → ℝ := fun i k =>
      if k = 0 then u i - a i + delta * d i * v i else b i + alpha * d i * u i
    sourcePaidMiddle idx receiving weight L s distantWeight = cauchyMatrix d diag V U := by
  dsimp only
  let m := physicalMode idx
  let v : ι → ℝ := fun i => m i
  let u := displacementSignal ∘ m
  let d : ι → ℝ := fun i => (v i)^2
  let A := parityCoreMatrix m + diagonal (fun _ => (-1 / 5 : ℝ))
  let C : Matrix ι κ ℝ := fun i k => parityCoreEntry (m i) (receiving k)
  let alpha := distantWeight⁻¹ * remoteFirst L s
  let delta := distantWeight⁻¹ * remoteDerivative L s
  let r := fun i => distantWeight⁻¹ * remoteDiag M L s (m i)
  have hm (i : ι) : 0 < m i := Nat.zero_lt_succ _
  have hA : diagonal d * A - A * diagonal d = vecMulVec v u - vecMulVec u v := by
    dsimp only [A]
    rw [Matrix.mul_add, Matrix.add_mul, (commute_diagonal d _).eq, add_sub_add_right_eq_sub]
    exact parityCoreMatrix_displacement m hm
  have hC : diagonal d * C - C * diagonal (fun k => (receiving k : ℝ)^2) =
      vecMulVec v (displacementSignal ∘ receiving) -
        vecMulVec u (fun k => (receiving k : ℝ)) := by
    ext i k
    simp only [Matrix.sub_apply, Matrix.diagonal_mul, Matrix.mul_diagonal, vecMulVec_apply]
    change (m i : ℝ)^2 * parityCoreEntry (m i) (receiving k) -
      parityCoreEntry (m i) (receiving k) * (receiving k : ℝ)^2 = _
    rw [mul_comm (parityCoreEntry (m i) (receiving k)), ← sub_mul]
    simpa only [v, u, Function.comp_apply, mul_comm (displacementSignal (m i))] using
      parityCoreEntry_displacement (hm i) (hReceiving k)
  have hR : distantWeight⁻¹ • parityRemote L s idx =
      alpha • vecMulVec u u + delta • vecMulVec v v + diagonal r := by
    rw [parityRemote_eq L s idx hidx]
    ext i j
    simp only [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, alpha, delta, r,
      v, u, m]
    by_cases h : i = j
    · subst j
      simp only [diagonal_apply_eq, Function.comp_apply]
      ring
    · simp only [diagonal_apply_ne _ h]
      ring
  unfold sourcePaidMiddle
  change A - C * diagonal weight * Cᵀ - distantWeight⁻¹ • parityRemote L s idx = _
  rw [hR]
  have hD := fullyPaid_displacement A C d v u (fun k => (receiving k : ℝ)^2)
    (fun k => (receiving k : ℝ)) (displacementSignal ∘ receiving) weight r alpha delta hA hC
  let P := A - C * diagonal weight * Cᵀ -
    (alpha • vecMulVec u u + delta • vecMulVec v v + diagonal r)
  change P = _
  ext i j
  rcases eq_or_ne i j with rfl | hij
  · simp only [cauchyMatrix, ite_true]
    rw [show P i i = _ from fullyPaid_diagonal A C v u r weight alpha delta i]
    simp only [A, Matrix.add_apply, diagonal_apply_eq, parityCoreMatrix]
    ring
  · have hmn : m i ≠ m j := fun h => hij (hidx (Fin.ext (Nat.succ.inj h)))
    have hmnR : (m i : ℝ) ≠ m j := by exact_mod_cast hmn
    have hsep : d i - d j ≠ 0 := by
      change (m i : ℝ)^2 - (m j : ℝ)^2 ≠ 0
      rw [sq_sub_sq]
      have hi : 0 < (m i : ℝ) := by exact_mod_cast hm i
      have hj : 0 < (m j : ℝ) := by exact_mod_cast hm j
      exact mul_ne_zero (add_pos hi hj).ne' (sub_ne_zero.mpr hmnR)
    have h := congrArg (fun Q : Matrix ι ι ℝ => Q i j) hD
    simp only [Matrix.sub_apply, Matrix.add_apply, Matrix.diagonal_mul, Matrix.mul_diagonal,
      vecMulVec_apply] at h
    change d i * P i j - P i j * d j = _ at h
    rw [mul_comm (P i j) (d j), ← sub_mul] at h
    simp only [cauchyMatrix, hij, ite_false, numerator, Fin.sum_univ_two,
      Fin.isValue, Fin.one_eq_zero_iff, ite_true, ite_false]
    apply (eq_div_iff hsep).2
    rw [mul_comm]
    exact h

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoWeightedMiddleStructure
