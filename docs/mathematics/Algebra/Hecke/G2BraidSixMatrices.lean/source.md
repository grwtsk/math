# Complete source: GRWTSK.Algebra.Hecke.G2BraidSixMatrices

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2469ddfe17340123dd8387cc25e1e2c22b9acb9e` · SHA-256 `1c65a7b6ff02b02743a8fbe4fcd4fb127ee842e0aaa6f7c193cf4ad6384ddf9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Data.Matrix.Mul
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

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

/-- A concrete product computation retains the full parameter, not just q=1. -/
theorem g2HeckeST_cube (q : R) :
    (g2HeckeS q * g2HeckeT q) ^ 3 = (-q ^ 3) • 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [g2HeckeS, g2HeckeT, pow_succ, Matrix.mul_apply, Fin.sum_univ_two] <;> ring

/-- The reverse product has the same cube. -/
theorem g2HeckeTS_cube (q : R) :
    (g2HeckeT q * g2HeckeS q) ^ 3 = (-q ^ 3) • 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [g2HeckeS, g2HeckeT, pow_succ, Matrix.mul_apply, Fin.sum_univ_two] <;> ring

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
    _ = _ := by rw [g2HeckeST_cube]; norm_num

/-- The cubic product is not the identity, so this is not a braid-three collapse. -/
theorem g2Hecke_at_one_cube_ne_one :
    (g2HeckeS (1 : ℤ) * g2HeckeT 1) ^ 3 ≠ 1 := by
  rw [g2HeckeST_cube]
  intro h
  have h00 := congrArg (fun M : Matrix (Fin 2) (Fin 2) ℤ => M 0 0) h
  norm_num at h00
end GRWTSK.Algebra.Hecke
```
