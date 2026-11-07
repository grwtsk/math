/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoObservedResidual

/-!
# Integer realization of the reconstructed radius-two residual

The physical coordinates followed by the scalar pole form a bijection
with the stored finite lanes. Reindexing each complete finite sum and
commuting integer casts with multiplication identifies the projected
centre, radius, Gram and squared-error price exactly. The observation
and reconstruction grids are respectively `2^-45` and `2^-32`; their
product and squared-product grids are `2^-77` and `2^-154`.

The consumer is a numerical bound for the literal whole residual, using
checked integer products and the separate complete remote comparison.
No source entry comparison, omitted row, remote tail, high floor or
finite sign is supplied by these algebraic identities. In particular,
the last stored lane remains the pole coordinate. This is finite exact
algebra, with no novelty claim or independent analytic review asserted.
-/

set_option autoImplicit false
set_option maxRecDepth 10000
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoObservedGrid

open Matrix RadiusTwoCandidateEntries RadiusTwoObservedResidual
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver

private def singleton : Unit ≃ Fin 1 where
  toFun _ := 0
  invFun _ := ()
  left_inv _ := rfl
  right_inv _ := Subsingleton.elim _ _

/-- Stored physical lanes followed by the scalar lane. -/
def coordinateEquiv (n : ℕ) : (Fin n ⊕ Unit) ≃ Fin (n + 1) :=
  (Equiv.sumCongr (Equiv.refl _) singleton).trans finSumFinEquiv

/-- Real reconstruction decoded on the exact physical and pole slots. -/
def reconstruction (X : Matrix (Fin 513) (Fin 65) ℤ) : Matrix Trial Head ℝ :=
  fun i j => (X (coordinateEquiv 512 i) (coordinateEquiv 64 j) : ℝ) / 2^32

/-- A projected integer row on the product grid. -/
def projectedGrid (S : Matrix ResidualRows (Fin 65) ℤ) : Matrix ResidualRows Head ℝ :=
  fun i j => (S i (coordinateEquiv 64 j) : ℝ) / 2^77

/-- A stored integer Gram matrix on the squared-product grid. -/
def gramGrid (G : Matrix (Fin 65) (Fin 65) ℤ) : Matrix Head Head ℝ :=
  fun i j => (G (coordinateEquiv 64 i) (coordinateEquiv 64 j) : ℝ) / 2^154

/-- Integer matrix multiplication is the complete decoded projection. -/
theorem projected_eq (C : Matrix ResidualRows (Fin 513) ℤ)
    (X : Matrix (Fin 513) (Fin 65) ℤ) :
    decodeGrid C * reconstruction X = projectedGrid (C * X) := by
  ext i j
  change (∑ k : Trial, (C i (coordinateEquiv 512 k) : ℝ) / 2^45 *
      ((X (coordinateEquiv 512 k) (coordinateEquiv 64 j) : ℝ) / 2^32)) =
    ((∑ k : Fin 513, C i k * X k (coordinateEquiv 64 j) : ℤ) : ℝ) / 2^77
  simp only [div_mul_div_comm, ← pow_add]
  calc
    _ = ∑ k : Fin 513,
        (C i k : ℝ) * (X k (coordinateEquiv 64 j) : ℝ) / 2^(45+32) :=
      (coordinateEquiv 512).sum_comp (fun k : Fin 513 =>
        (C i k : ℝ) * (X k (coordinateEquiv 64 j) : ℝ) / 2^(45+32))
    _ = _ := by simp only [Int.cast_sum, Int.cast_mul, Finset.sum_div]

/-- Absolute reconstruction coefficients use the same integer decoding. -/
theorem abs_reconstruction (X : Matrix (Fin 513) (Fin 65) ℤ) :
    Matrix.of (fun i j => |reconstruction X i j|) =
      reconstruction (Matrix.of (fun i j => |X i j|)) := by
  ext i j
  simp only [Matrix.of_apply, reconstruction, abs_div, abs_of_pos (by positivity : (0 : ℝ) < 2^32),
    Int.cast_abs]

/-- Propagated entry radii use the identical projection, with absolute coefficients. -/
theorem propagated_eq (R : Matrix ResidualRows (Fin 513) ℤ)
    (X : Matrix (Fin 513) (Fin 65) ℤ) :
    decodeGrid R * Matrix.of (fun i j => |reconstruction X i j|) =
      projectedGrid (R * Matrix.of (fun i j => |X i j|)) := by
  rw [abs_reconstruction, projected_eq]

/-- The finite error price is exactly the checked integer sum of squares. -/
theorem observationPrice_eq (R : Matrix ResidualRows (Fin 513) ℤ)
    (X : Matrix (Fin 513) (Fin 65) ℤ) :
    observationPrice (decodeGrid R) (reconstruction X) =
      ((∑ i : ResidualRows, ∑ j : Fin 65,
        ((R * Matrix.of (fun k l => |X k l|)) i j)^2 : ℤ) : ℝ) / 2^154 := by
  unfold observationPrice
  rw [propagated_eq]
  let E := R * Matrix.of (fun k l => |X k l|)
  change (∑ i : ResidualRows, ∑ j : Head,
    ((E i (coordinateEquiv 64 j) : ℝ) / 2^77)^2) =
      ((∑ i : ResidualRows, ∑ j : Fin 65, (E i j)^2 : ℤ) : ℝ) / 2^154
  calc
    _ = ∑ i : ResidualRows, ∑ j : Fin 65, ((E i j : ℝ) / 2^77)^2 :=
      Finset.sum_congr rfl fun i _ => (coordinateEquiv 64).sum_comp _
    _ = _ := by
      simp only [div_pow, ← pow_mul, Int.cast_sum, Int.cast_pow, Finset.sum_div]

/-- The decoded Gram is the exact Gram of all projected observed rows. -/
theorem gram_eq (S : Matrix ResidualRows (Fin 65) ℤ) :
    reconstructionGram (projectedGrid S) = gramGrid (S.transpose * S) := by
  ext i j
  change (∑ k : ResidualRows, ((S k (coordinateEquiv 64 i) : ℝ) / 2^77) *
      ((S k (coordinateEquiv 64 j) : ℝ) / 2^77)) =
    ((∑ k : ResidualRows, S k (coordinateEquiv 64 i) * S k (coordinateEquiv 64 j) : ℤ) : ℝ) / 2^154
  simp only [div_mul_div_comm, ← pow_add, Int.cast_sum, Int.cast_mul, Finset.sum_div]

/-- Checked integer products identify the real observation Gram. -/
theorem gram_of_products (C : Matrix ResidualRows (Fin 513) ℤ)
    (X : Matrix (Fin 513) (Fin 65) ℤ)
    (S : Matrix ResidualRows (Fin 65) ℤ) (G : Matrix (Fin 65) (Fin 65) ℤ)
    (hS : S = C * X) (hG : G = S.transpose * S) :
    reconstructionGram (decodeGrid C * reconstruction X) = gramGrid G := by
  rw [projected_eq, ← hS, gram_eq, ← hG]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoObservedGrid
