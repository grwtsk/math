/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualMajorant
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.QuadraticCertificateCore
import Mathlib.LinearAlgebra.Matrix.PosDef

/-!
# The complete odd remote allowance in inclusion coordinates

The allowance from Sections 4–5 of the odd pole displacement note acts
on the physical modes 1 through M and one pole coordinate. Each
leading row through J forms one outer product of the signed linear
combination of the two traces. The diagonal tail budgets price the
two traces separately. The cubic remainder contributes a weighted
physical diagonal, a derivative outer product and the scalar pole
diagonal. The physical spectral shift has no output beyond this trial.

The evaluation below returns the complete allowance to the same
inclusion coordinates used by the finite lower matrix. The first
trace's pole coefficient is negative and combines with the derivative
trace before squaring. For J = L the sum of leading outer products
is empty, and the three explicit remaining prices still apply.
Independent mathematical review and numerical observation are separate.
-/

set_option autoImplicit false
noncomputable section

open Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddRemoteAllowanceMatrix

open LowSchur OddOutputTrace OddBoundarySignalBounds OddResidualRows OddResidualSummation
open OddResidualMajorant
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- The first trace includes the signed auxiliary pole coefficient. -/
def firstTraceRow (M : ℕ) (T : ℝ) : Fin M ⊕ Unit → ℝ :=
  Sum.elim (fun i => (-1 : ℝ) ^ (i.val + 1) * firstTraceEntry T (i.val + 1))
    (fun _ => -poleScale T)

def derivativeTraceRow (M : ℕ) : Fin M ⊕ Unit → ℝ :=
  Sum.elim (fun i => (-1 : ℝ) ^ (i.val + 1) * ((i.val + 1 : ℕ) : ℝ)) (fun _ => 0)

def leadingTraceRow (M : ℕ) (T : ℝ) (m : ℕ) : Fin M ⊕ Unit → ℝ :=
  (m : ℝ)⁻¹ • firstTraceRow M T +
    (derivativeWeight T m / (m : ℝ) ^ 2) • derivativeTraceRow M

def poleCoordinate (M : ℕ) : Fin M ⊕ Unit → ℝ :=
  Sum.elim (fun _ => 0) (fun _ => 1)

def remainderDiagonal (M L : ℕ) (T : ℝ) :
    Matrix (Fin M ⊕ Unit) (Fin M ⊕ Unit) ℝ :=
  diagonal (Sum.elim (fun i => remainderWeight M L T (i.val + 1)) (fun _ => 0))

/-- The exact Gram of the signed leading rows, with the prescribed cutoff. -/
def leadingGram (M L J : ℕ) (T : ℝ) : Matrix (Fin M ⊕ Unit) (Fin M ⊕ Unit) ℝ :=
  ∑ n ∈ Finset.range (J - L), let b := leadingTraceRow M T (L + 1 + n)
    vecMulVec b b

/-- A symmetric quadratic in two fixed linear traces, including its mixed term. -/
def signedTraceGram {ι : Type*} (f d : ι → ℝ) (c₁₁ c₁₂ c₂₂ : ℝ) : Matrix ι ι ℝ :=
  c₁₁ • vecMulVec f f + c₁₂ • (vecMulVec f d + vecMulVec d f) + c₂₂ • vecMulVec d d

/-- Three scalar sums suffice for the full leading Gram. The mixed
coefficient uses the signed derivative weight in every mode. -/
theorem leadingGram_eq_signedTraceGram (M L J : ℕ) (T : ℝ) :
    let c (n : ℕ) := ((L + 1 + n : ℕ) : ℝ)⁻¹
    let d (n : ℕ) := derivativeWeight T (L + 1 + n) / ((L + 1 + n : ℕ) : ℝ) ^ 2
    leadingGram M L J T =
      signedTraceGram (firstTraceRow M T) (derivativeTraceRow M)
        (∑ n ∈ Finset.range (J - L), c n ^ 2)
        (∑ n ∈ Finset.range (J - L), c n * d n)
        (∑ n ∈ Finset.range (J - L), d n ^ 2) := by
  dsimp only
  ext i j
  simp only [leadingGram, signedTraceGram, leadingTraceRow, Matrix.sum_apply, Matrix.add_apply,
    Matrix.smul_apply, vecMulVec_apply, Pi.add_apply, Pi.smul_apply, smul_eq_mul]
  rw [Finset.sum_mul, Finset.sum_mul, Finset.sum_mul,
    ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- The complete remote allowance matrix with separate linear and cubic prices. -/
def completeRemoteMatrix (M L J : ℕ) (T s : ℝ) :
    Matrix (Fin M ⊕ Unit) (Fin M ⊕ Unit) ℝ :=
  (1 + s) •
    (leadingGram M L J T +
      (2 / (J : ℝ)) • vecMulVec (firstTraceRow M T) (firstTraceRow M T) +
      (2 * (1 / 2 + primeMass T / Real.pi) ^ 2 / (3 * (J : ℝ) ^ 3)) •
        vecMulVec (derivativeTraceRow M) (derivativeTraceRow M)) +
    (3 * (1 + s⁻¹) / (5 * (L : ℝ) ^ 5)) •
      ((∑ n ∈ Finset.Icc 1 M, remainderWeight M L T n) • remainderDiagonal M L T +
        ((2 / T) * boundaryErrorScale T) ^ 2 • vecMulVec (derivativeTraceRow M) (derivativeTraceRow M) +
        (poleScale T * poleNode T) ^ 2 • vecMulVec (poleCoordinate M) (poleCoordinate M))

private theorem sum_fin_succ_eq_sum_Icc {M : ℕ} (f : ℕ → ℝ) :
    (∑ i : Fin M, f (i.val + 1)) = ∑ n ∈ Finset.Icc 1 M, f n := by
  rw [← Finset.Ico_add_one_right_eq_Icc, Finset.sum_Ico_eq_sum_range,
    Fin.sum_univ_eq_sum_range (fun i : ℕ => f (i + 1))]
  simp only [Nat.add_sub_cancel, Nat.add_comm 1]

theorem firstTraceRow_dotProduct {M : ℕ} (T : ℝ) (x : ℕ → ℝ) (u : Fin M → ℝ) (a : ℝ)
    (hx : ∀ i : Fin M, x (i.val + 1) = u i) :
    firstTraceRow M T ⬝ᵥ Sum.elim u (fun _ => a) = firstTrace M T x a := by
  unfold firstTraceRow firstTrace dotProduct
  rw [Fintype.sum_sum_type, ← sum_fin_succ_eq_sum_Icc]
  simp only [Sum.elim_inl, Sum.elim_inr, Finset.univ_unique, Finset.sum_singleton, neg_mul,
    ← sub_eq_add_neg]
  congr 1
  apply Finset.sum_congr rfl
  intro i _
  rw [hx]
  ring

theorem derivativeTraceRow_dotProduct {M : ℕ} (x : ℕ → ℝ) (u : Fin M → ℝ) (a : ℝ)
    (hx : ∀ i : Fin M, x (i.val + 1) = u i) :
    derivativeTraceRow M ⬝ᵥ Sum.elim u (fun _ => a) = derivativeTrace M x := by
  unfold derivativeTraceRow derivativeTrace dotProduct
  rw [Fintype.sum_sum_type, ← sum_fin_succ_eq_sum_Icc]
  simp only [Sum.elim_inl, Sum.elim_inr, zero_mul, Finset.sum_const_zero, add_zero, hx]

theorem leadingTraceRow_dotProduct {M : ℕ} (T : ℝ) (m : ℕ) (x : ℕ → ℝ)
    (u : Fin M → ℝ) (a : ℝ) (hx : ∀ i : Fin M, x (i.val + 1) = u i) :
    leadingTraceRow M T m ⬝ᵥ Sum.elim u (fun _ => a) =
      leadingRow (firstTrace M T x a) (derivativeTrace M x) (derivativeWeight T) m := by
  rw [leadingTraceRow, add_dotProduct, smul_dotProduct, smul_dotProduct,
    firstTraceRow_dotProduct T x u a hx, derivativeTraceRow_dotProduct x u a hx]
  unfold leadingRow
  simp only [smul_eq_mul, div_eq_mul_inv]
  ring

private theorem poleCoordinate_dotProduct {M : ℕ} (u : Fin M → ℝ) (a : ℝ) :
    poleCoordinate M ⬝ᵥ Sum.elim u (fun _ => a) = a := by
  simp [poleCoordinate, dotProduct, Fintype.sum_sum_type]

private theorem quadratic_remainderDiagonal {M : ℕ} (L : ℕ) (T : ℝ) (x : ℕ → ℝ)
    (u : Fin M → ℝ) (a : ℝ) (hx : ∀ i : Fin M, x (i.val + 1) = u i) :
    quadratic (remainderDiagonal M L T) (Sum.elim u (fun _ => a)) =
      ∑ n ∈ Finset.Icc 1 M, remainderWeight M L T n * x n ^ 2 := by
  unfold remainderDiagonal quadratic dotProduct
  simp_rw [mulVec_diagonal]
  rw [Fintype.sum_sum_type, ← sum_fin_succ_eq_sum_Icc]
  simp only [Sum.elim_inl, Sum.elim_inr, zero_mul, mul_zero, Finset.sum_const_zero, add_zero, hx]
  apply Finset.sum_congr rfl
  intro i _
  ring

private theorem quadratic_outer {ι : Type*} [Fintype ι] (b v : ι → ℝ) :
    quadratic (vecMulVec b b) v = (b ⬝ᵥ v) ^ 2 := by
  rw [quadratic, vecMulVec_mulVec, dotProduct_smul, dotProduct_comm v b]
  simp only [op_smul_eq_mul, pow_two]

/-- Exact evaluation on any trial agreeing with the inclusion coordinates
on modes 1 through M. The first and derivative traces are squared together
on every leading row. -/
theorem quadratic_completeRemoteMatrix {M : ℕ} (L J : ℕ) (T s : ℝ)
    (x : ℕ → ℝ) (u : Fin M → ℝ) (a : ℝ) (hx : ∀ i : Fin M, x (i.val + 1) = u i) :
    quadratic (completeRemoteMatrix M L J T s) (Sum.elim u (fun _ => a)) =
      completeRemoteAllowance M L J T x a s := by
  simp only [completeRemoteMatrix, leadingGram, quadratic_add, quadratic_smul, quadratic_sum,
    quadratic_outer, firstTraceRow_dotProduct T x u a hx, derivativeTraceRow_dotProduct x u a hx,
    leadingTraceRow_dotProduct T _ x u a hx, poleCoordinate_dotProduct,
    quadratic_remainderDiagonal L T x u a hx, completeRemoteAllowance, remainderQuadraticAllowance]
  ring

private theorem remainderWeight_nonneg {M L : ℕ} (hML : M ≤ L) (T : ℝ) (hT : 0 < T)
    (n : ℕ) : 0 ≤ remainderWeight M L T n := by
  have hM : (M : ℝ) ≤ (L : ℝ) := by exact_mod_cast hML
  have hdiv : (M : ℝ) / ((L : ℝ) + 1) < 1 := (div_lt_iff₀ (by positivity)).2 (by linarith)
  have hdiv0 : 0 ≤ (M : ℝ) / ((L : ℝ) + 1) := by positivity
  have hbuffer : 0 < residualBuffer M L := sub_pos.mpr hdiv
  have hbuffer₂ : 0 < squaredResidualBuffer M L := by
    unfold squaredResidualBuffer
    nlinarith [mul_nonneg hdiv0 (sub_nonneg.mpr hdiv.le)]
  have hg := boundarySignal_nonneg T hT.le n
  have hp := primeMass_nonneg T
  unfold remainderWeight
  positivity

private theorem outer_posSemidef {ι : Type*} [Finite ι] (b : ι → ℝ) :
    (vecMulVec b b).PosSemidef := by
  simpa only [star_trivial] using posSemidef_vecMulVec_self_star b

/-- The exact complete remote matrix is positive semidefinite for an
admissible positive Young parameter and a residual cutoff covering the head. -/
theorem completeRemoteMatrix_posSemidef {M L : ℕ} (hML : M ≤ L) (J : ℕ)
    (T s : ℝ) (hT : 0 < T) (hs : 0 < s) :
    (completeRemoteMatrix M L J T s).PosSemidef := by
  have hw (n : ℕ) := remainderWeight_nonneg hML T hT n
  have hdiag : (remainderDiagonal M L T).PosSemidef := by
    unfold remainderDiagonal
    apply PosSemidef.diagonal
    intro i
    cases i with
    | inl i => exact hw (i.val + 1)
    | inr i => exact le_rfl
  have hsum : 0 ≤ ∑ n ∈ Finset.Icc 1 M, remainderWeight M L T n :=
    Finset.sum_nonneg (fun n _ => hw n)
  unfold completeRemoteMatrix leadingGram
  exact (((posSemidef_sum _ (fun _ _ => outer_posSemidef _)).add
      ((outer_posSemidef _).smul (by positivity))).add
      ((outer_posSemidef _).smul (by positivity))).smul (by positivity) |>.add
    ((((hdiag.smul hsum).add ((outer_posSemidef _).smul (by positivity))).add
      ((outer_posSemidef _).smul (by positivity))).smul (by positivity))

end GRWTSK.NumberTheory.WeilQuadraticForm.OddRemoteAllowanceMatrix
