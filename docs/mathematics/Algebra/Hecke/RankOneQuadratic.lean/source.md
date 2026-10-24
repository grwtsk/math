# Complete source: GRWTSK.Algebra.Hecke.RankOneQuadratic

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0266c97fd8ef7c09290cf977a198e13adc76dc23` · SHA-256 `2654927ab35b64b19749a4e84c02e0f9ab2109b717b9c2693e23205729f2c5b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Data.Matrix.Mul
import Mathlib.Tactic

/-! Rank-one quadratic fragment of K1 for the two unpublished KL versions.
No arbitrary Coxeter braid relations, bar involution or KL basis are constructed. -/
namespace GRWTSK.Algebra.Hecke

variable {R : Type*} [CommRing R]

/-- Left multiplication by T in the basis (1,T) of the rank-one quadratic algebra. -/
def rankOneGenerator (q : R) : Matrix (Fin 2) (Fin 2) R := !![0, q; 1, q - 1]

/-- The Hecke convention T²=(q−1)T+q, with the parameter visible. -/
theorem rankOne_quadratic (q : R) :
    rankOneGenerator q * rankOneGenerator q =
      (q - 1) • rankOneGenerator q + q • (1 : Matrix (Fin 2) (Fin 2) R) := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [rankOneGenerator, Matrix.mul_apply, Fin.sum_univ_two] <;> ring

/-- The expected inverse exists when an actual inverse of the parameter is supplied. -/
theorem rankOne_inverse (q qinv : R) (hq : q * qinv = 1) :
    rankOneGenerator q * (qinv • (rankOneGenerator q - (q - 1) • 1)) = 1 ∧
      (qinv • (rankOneGenerator q - (q - 1) • 1)) * rankOneGenerator q = 1 := by
  constructor <;> ext i j <;> fin_cases i <;> fin_cases j <;>
    simp [rankOneGenerator, Matrix.mul_apply, Fin.sum_univ_two] <;> ring_nf at * <;> simp_all

/-- The rank-one normalized element has the standard quadratic normalization
when q=v² and v has a supplied inverse. This is a matrix identity, not a KL basis. -/
theorem rankOne_normalized_square (v vinv : R) (hv : v * vinv = 1) :
    let C := vinv • (rankOneGenerator (v ^ 2) + 1)
    C * C = (v + vinv) • C := by
  dsimp
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [rankOneGenerator, Matrix.mul_apply, Fin.sum_univ_two] <;>
    first | linear_combination (v * vinv) * hv | linear_combination (v ^ 3 * vinv) * hv
/-- The coordinates of a rank-one normal form are uniquely recoverable. -/
theorem rankOne_coordinates_unique (q a b c d : R)
    (h : a • (1 : Matrix (Fin 2) (Fin 2) R) + b • rankOneGenerator q =
      c • 1 + d • rankOneGenerator q) : a = c ∧ b = d := by
  have h00 := congrArg (fun M : Matrix (Fin 2) (Fin 2) R => M 0 0) h
  have h10 := congrArg (fun M : Matrix (Fin 2) (Fin 2) R => M 1 0) h
  simpa [rankOneGenerator] using And.intro h00 h10

/-- Multiplication closes on the two-coordinate normal forms. -/
theorem rankOne_normalForm_mul (q a b c d : R) :
    (a • (1 : Matrix (Fin 2) (Fin 2) R) + b • rankOneGenerator q) *
      (c • 1 + d • rankOneGenerator q) =
    (a * c + b * d * q) • 1 +
      (a * d + b * c + b * d * (q - 1)) • rankOneGenerator q := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [rankOneGenerator, Matrix.mul_apply, Fin.sum_univ_two] <;> ring
end GRWTSK.Algebra.Hecke
```
