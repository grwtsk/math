/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license; see LICENSE.
Developed with OpenAI Codex. Lean checks the proof terms.
-/
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Tactic
import GRWTSK.Algebra.OrderedProduct

/-!
# Common-generator two-plane rotations

Established commutative-ring matrix and unit-circle identities.
The newest interval factor is on the left. Circle constraints are explicit;
the rational examples are independently assigned algebraic edges.
No arithmetic construction, spectral estimate or analytic conclusion is asserted.
Lean and mathlib retain their upstream identities and credit.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

open GRWTSK.Algebra

namespace GRWTSK.LinearAlgebra.CommonJ

universe u v

/-- Canonical two-plane common-J rotation matrix, over either real or rational coefficients. -/
def rotationMatrix {R : Type u} [CommRing R] (c s : R) : Matrix (Fin 2) (Fin 2) R :=
  !![c, s; -s, c]



/-- The exact common-J coefficient composition uses the last traversed edge on the left. -/
theorem rotationMatrix_comp {R : Type u} [CommRing R] (c₂ s₂ c₁ s₁ : R) :
    rotationMatrix c₂ s₂ * rotationMatrix c₁ s₁ =
      rotationMatrix (c₂ * c₁-s₂ * s₁) (c₂ * s₁ + s₂ * c₁) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [rotationMatrix, Matrix.mul_apply, Fin.sum_univ_two] <;> ring



/-- All matrices with the same canonical generator commute. -/
theorem rotationMatrix_commute {R : Type u} [CommRing R] (c₂ s₂ c₁ s₁ : R) :
    Commute (rotationMatrix c₂ s₂) (rotationMatrix c₁ s₁) := by
  change _ * _ = _ * _
  rw [rotationMatrix_comp, rotationMatrix_comp]
  congr 1 <;> ring



/-- The two-plane generator has square minus identity. -/
theorem commonJ_square {R : Type u} [CommRing R] :
    rotationMatrix (0 : R) 1 * rotationMatrix 0 1 = -1 := by
  rw [rotationMatrix_comp]
  ext i j
  fin_cases i <;> fin_cases j <;> simp [rotationMatrix]



/-- Composition preserves the real/rational unit-circle coefficient constraint. -/
theorem circle_composition {R : Type u} [CommRing R] (c₂ s₂ c₁ s₁ : R)
    (h₂ : c₂ ^ 2 + s₂ ^ 2 = 1) (h₁ : c₁ ^ 2 + s₁ ^ 2 = 1) :
    (c₂ * c₁-s₂ * s₁) ^ 2 + (c₂ * s₁ + s₂ * c₁) ^ 2 = 1 := by
  calc
    _ = (c₂ ^ 2 + s₂ ^ 2) * (c₁ ^ 2 + s₁ ^ 2) := by ring
    _ = 1 := by rw [h₂, h₁, one_mul]



/-- Reversing a unit-circle edge negates only its sine coordinate. -/
theorem circle_reverse {R : Type u} [CommRing R] (c s : R) (h : c ^ 2 + s ^ 2 = 1) :
    c ^ 2 + (-s) ^ 2 = 1 := by simpa using h



/-- Unit-circle rotations multiply their reversed edge to identity. -/
theorem rotationMatrix_reverse {R : Type u} [CommRing R] (c s : R)
    (h : c ^ 2 + s ^ 2 = 1) : rotationMatrix c s * rotationMatrix c (-s) = 1 := by
  rw [rotationMatrix_comp]
  have hc : c * c-s * (-s) = 1 := by
    calc
      _ = c ^ 2 + s ^ 2 := by ring
      _ = 1 := h
  have hs : c * (-s) + s * c = 0 := by ring
  rw [hc, hs]
  ext i j
  fin_cases i <;> fin_cases j <;> simp [rotationMatrix]



/-- The exact reverse edge makes the common-J matrix a unit. -/
def rotationUnit {R : Type u} [CommRing R] (c s : R) (h : c ^ 2 + s ^ 2 = 1) :
    (Matrix (Fin 2) (Fin 2) R)ˣ where
  val := rotationMatrix c s
  inv := rotationMatrix c (-s)
  val_inv := rotationMatrix_reverse c s h
  inv_val := by
    simpa only [neg_neg] using rotationMatrix_reverse c (-s) (circle_reverse c s h)



/-- Unit-circle common-J transports commute in the actual unit group. -/
theorem rotationUnit_commute {R : Type u} [CommRing R] (c₂ s₂ c₁ s₁ : R)
    (h₂ : c₂ ^ 2 + s₂ ^ 2 = 1) (h₁ : c₁ ^ 2 + s₁ ^ 2 = 1) :
    Commute (rotationUnit c₂ s₂ h₂) (rotationUnit c₁ s₁ h₁) := by
  apply Units.ext
  exact (rotationMatrix_commute c₂ s₂ c₁ s₁).eq




/-- The common-J matrix really is the stated linear combination of identity and J. -/
theorem rotationMatrix_eq_commonJ {R : Type u} [CommRing R] (c s : R) :
    rotationMatrix c s = c • (1 : Matrix (Fin 2) (Fin 2) R) +
      s • rotationMatrix 0 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [rotationMatrix]



/-- Inversion of a unit-circle edge is exactly its sine-reversed edge. -/
theorem rotationUnit_reverse {R : Type u} [CommRing R] (c s : R) (h : c ^ 2 + s ^ 2 = 1) :
    (rotationUnit c s h)⁻¹ = rotationUnit c (-s) (circle_reverse c s h) := by
  apply Units.ext
  rfl



/-- Exact rational unit-circle edge, supplied arbitrarily for an algebraic demonstration. -/
def rationalEdge : (Matrix (Fin 2) (Fin 2) ℚ)ˣ := rotationUnit (3 / 5) (4 / 5) (by norm_num)



/-- Two arbitrarily assigned rational edges can have nonidentity residual rotation. -/
theorem rational_two_edge_loop_nonidentity :
    orderedProduct (fun _ => rationalEdge) 0 2 ≠ 1 := by
  intro h
  have he := congrArg (fun g : (Matrix (Fin 2) (Fin 2) ℚ)ˣ => (g : Matrix (Fin 2) (Fin 2) ℚ) 0 1) h
  norm_num [orderedProduct_succ, orderedProduct_zero, rationalEdge, rotationUnit, rotationMatrix,
    Matrix.mul_apply, Fin.sum_univ_two] at he




/-- The canonical sign flip on the two-plane; it exchanges the two coordinates. -/
def flipMatrix {R : Type u} [CommRing R] : Matrix (Fin 2) (Fin 2) R := !![0, 1; 1, 0]



/-- The sign flip is its own inverse as an actual matrix unit. -/
def flipUnit {R : Type u} [CommRing R] : (Matrix (Fin 2) (Fin 2) R)ˣ where
  val := flipMatrix
  inv := flipMatrix
  val_inv := by
    ext i j
    fin_cases i <;> fin_cases j <;> simp [flipMatrix, Matrix.mul_apply, Fin.sum_univ_two]
  inv_val := by
    ext i j
    fin_cases i <;> fin_cases j <;> simp [flipMatrix, Matrix.mul_apply, Fin.sum_univ_two]



/-- The sign conjugation reverses the common generator, not the factor order. -/
theorem flip_rotation_inverse {R : Type u} [CommRing R] (c s : R)
    (h : c ^ 2 + s ^ 2 = 1) :
    flipUnit * rotationUnit c s h * flipUnit⁻¹ = (rotationUnit c s h)⁻¹ := by
  apply Units.ext
  change flipMatrix * rotationMatrix c s * flipMatrix = rotationMatrix c (-s)
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [flipMatrix, rotationMatrix, Matrix.mul_apply, Fin.sum_univ_two]



/-- Finite same-J loops obey the inverse law because their actual factors commute. -/
theorem commonJ_loop_inverse {R : Type u} [CommRing R] (c s : ℕ → R)
    (h : ∀ i, (c i) ^ 2 + (s i) ^ 2 = 1) (n k : ℕ) :
    flipUnit * orderedProduct (fun i => rotationUnit (c i) (s i) (h i)) n k * flipUnit⁻¹ =
      (orderedProduct (fun i => rotationUnit (c i) (s i) (h i)) n k)⁻¹ :=
  orderedProduct_sign_inverse _ flipUnit
    (fun i j => rotationUnit_commute _ _ _ _ (h i) (h j))
    (fun i => flip_rotation_inverse _ _ (h i)) n k



/-- An assigned edge followed by its reverse has identity transport,
with the reverse on the left. -/
theorem rational_reverse_loop_identity :
    orderedProduct (fun i => if i = 0 then rationalEdge else rationalEdge⁻¹) 0 2 = 1 := by
  simp [orderedProduct_succ, orderedProduct_zero]



/-- The canonical sign flip is involutive, so its inverse is itself. -/
theorem flipUnit_inverse {R : Type u} [CommRing R] :
    (flipUnit : (Matrix (Fin 2) (Fin 2) R)ˣ)⁻¹ = flipUnit := by
  apply Units.ext
  rfl



/-- Literal `T W T` syntax agrees with inverse loop transport for common-J factors. -/
theorem commonJ_loop_sign_conjugation {R : Type u} [CommRing R] (c s : ℕ → R)
    (h : ∀ i, (c i) ^ 2 + (s i) ^ 2 = 1) (n k : ℕ) :
    flipUnit * orderedProduct (fun i => rotationUnit (c i) (s i) (h i)) n k * flipUnit =
      (orderedProduct (fun i => rotationUnit (c i) (s i) (h i)) n k)⁻¹ := by
  simpa only [flipUnit_inverse] using commonJ_loop_inverse c s h n k



/-- The explicit common generator is reversed by canonical sign conjugation. -/
theorem flip_commonJ_reverse {R : Type u} [CommRing R] :
    flipMatrix * rotationMatrix (0 : R) 1 * flipMatrix = -rotationMatrix 0 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [flipMatrix, rotationMatrix, Matrix.mul_apply, Fin.sum_univ_two]



end GRWTSK.LinearAlgebra.CommonJ
