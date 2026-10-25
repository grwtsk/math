import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Data.Matrix.Mul
import Mathlib.Tactic.Ring

/-! Concrete common-parameter braid-six Hecke matrices for K1 in both KL drafts.
These two-dimensional matrices satisfy the quadratic and G₂ braid relations.
No universal/faithful Hecke algebra, KL basis, coefficient recurrence, exceptional
algebraic group representation or geometric realization is constructed. -/
namespace GRWTSK.Algebra.Hecke
variable {R : Type*} [CommRing R]

/-- First common-parameter Hecke generator in a two-dimensional braid-six model. -/
def g2HeckeS (q : R) : Matrix (Fin 2) (Fin 2) R := !![q, 1; 0, -1]

/-- The Cartan triple coefficient distinguishes this from the braid-three model. -/
def g2HeckeT (q : R) : Matrix (Fin 2) (Fin 2) R := !![-1, 0; 3 * q, q]

/-- The first generator has the same quadratic convention as the corrected rank-one model. -/
theorem g2HeckeS_quadratic (q : R) :
    g2HeckeS q * g2HeckeS q = (q - 1) • g2HeckeS q + q • 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [g2HeckeS, Matrix.mul_apply, Fin.sum_univ_two] <;> ring

/-- The second generator satisfies the identical common-parameter quadratic relation. -/
theorem g2HeckeT_quadratic (q : R) :
    g2HeckeT q * g2HeckeT q = (q - 1) • g2HeckeT q + q • 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [g2HeckeT, Matrix.mul_apply, Fin.sum_univ_two] <;> ring

/-- The forward product satisfies its degree-two characteristic relation. -/
theorem g2HeckeST_square (q : R) :
    (g2HeckeS q * g2HeckeT q) * (g2HeckeS q * g2HeckeT q) =
      q • (g2HeckeS q * g2HeckeT q) - q ^ 2 • 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [g2HeckeS, g2HeckeT, Matrix.mul_apply, Fin.sum_univ_two] <;> ring

/-- The reverse product satisfies the same degree-two relation without inverting q. -/
theorem g2HeckeTS_square (q : R) :
    (g2HeckeT q * g2HeckeS q) * (g2HeckeT q * g2HeckeS q) =
      q • (g2HeckeT q * g2HeckeS q) - q ^ 2 • 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [g2HeckeS, g2HeckeT, Matrix.mul_apply, Fin.sum_univ_two] <;> ring

/-- Derive the cubic identity algebraically, without expanding cubic matrix entries. -/
private theorem cube_of_square (q : R) (A : Matrix (Fin 2) (Fin 2) R)
    (h : A * A = q • A - q ^ 2 • 1) : A ^ 3 = (-q ^ 3) • 1 := by
  calc
    A ^ 3 = (q • A - q ^ 2 • 1) * A := by
      rw [pow_succ, pow_two, h]
    _ = q • (A * A) - q ^ 2 • A := by
      rw [sub_mul, smul_mul_assoc, smul_mul_assoc, one_mul]
    _ = (-q ^ 3) • 1 := by
      rw [h, smul_sub, smul_smul, smul_smul, ← pow_two, ← pow_succ',
        sub_sub_cancel_left, neg_smul]

/-- The forward product cube retains the full parameter, not just q=1. -/
theorem g2HeckeST_cube (q : R) :
    (g2HeckeS q * g2HeckeT q) ^ 3 = (-q ^ 3) • 1 :=
  cube_of_square q _ (g2HeckeST_square q)

/-- The reverse product has the same cube. -/
theorem g2HeckeTS_cube (q : R) :
    (g2HeckeT q * g2HeckeS q) ^ 3 = (-q ^ 3) • 1 :=
  cube_of_square q _ (g2HeckeTS_square q)

/-- The actual six-factor braid STSTST=TSTSTS follows for all parameters. -/
theorem g2Hecke_braid_six (q : R) :
    g2HeckeS q * g2HeckeT q * g2HeckeS q * g2HeckeT q * g2HeckeS q * g2HeckeT q =
      g2HeckeT q * g2HeckeS q * g2HeckeT q * g2HeckeS q * g2HeckeT q * g2HeckeS q := by
  have h := (g2HeckeST_cube q).trans (g2HeckeTS_cube q).symm
  simpa only [pow_succ, pow_zero, Matrix.one_mul, Matrix.mul_assoc] using h

/-- At q=1, both actual integer generators are involutions. -/
theorem g2Hecke_at_one_involutions :
    g2HeckeS (1 : ℤ) * g2HeckeS 1 = 1 ∧ g2HeckeT (1 : ℤ) * g2HeckeT 1 = 1 := by
  constructor
  · simpa using g2HeckeS_quadratic (1 : ℤ)
  · simpa using g2HeckeT_quadratic (1 : ℤ)

/-- The product has sixth power one at the actual integer specialization. -/
theorem g2Hecke_at_one_sixth_power :
    (g2HeckeS (1 : ℤ) * g2HeckeT 1) ^ 6 = 1 := by
  calc
    _ = ((g2HeckeS (1 : ℤ) * g2HeckeT 1) ^ 3) ^ 2 := by rw [← pow_mul]
    _ = _ := by rw [g2HeckeST_cube]; simp [neg_smul]

/-- The cubic product is not the identity, so this is not a braid-three collapse. -/
theorem g2Hecke_at_one_cube_ne_one :
    (g2HeckeS (1 : ℤ) * g2HeckeT 1) ^ 3 ≠ 1 := by
  rw [g2HeckeST_cube]
  intro h
  have h00 := congrArg (fun M : Matrix (Fin 2) (Fin 2) ℤ => M 0 0) h
  have hz : (-1 : ℤ) = 1 := by simpa using h00
  exact (by decide : (-1 : ℤ) ≠ 1) hz
end GRWTSK.Algebra.Hecke
