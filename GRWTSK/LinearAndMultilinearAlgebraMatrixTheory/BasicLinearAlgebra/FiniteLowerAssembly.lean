/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.QuadraticCertificateCore
import Mathlib.LinearAlgebra.Matrix.Symmetric

/-!
# Finite lower matrix assembly

Local attribution is to grwtsk contributors.

The matrix identity is the real-coefficient specialization of the formula
in `crates/noe-finite/src/lower.rs` at grwtsk/noeaaeue commit
`762c37a3b51d828fd088f44189fa611e3bb803bc`. At each entry the weighted Gram
and extra allowance are added, divided by the high floor, and subtracted
from the observed upper block. The upper-block error is also subtracted on
the diagonal. Symmetry supplies the reflected entries for symmetric data.

The quadratic evaluation distributes over addition and scaling, with the
identity evaluating to the sum of coordinate squares. The rational cast
preserves the entry operations and the identity. These are algebraic
identities for the supplied finite matrices. Runtime validation and
analytic lower-bound premises have separate scopes. Independent
mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly

open Matrix QuadraticCertificates

variable {ι K : Type*} [DecidableEq ι]

/-- The finite lower matrix from a supplied observed block, Gram, and extra allowance. -/
def assembleLowerMatrix [Field K] (upper gram extra : Matrix ι ι K)
    (upperError highFloor observedWeight : K) : Matrix ι ι K :=
  upper - highFloor⁻¹ • (observedWeight • gram + extra) - upperError • 1

theorem assembleLowerMatrix_entry [Field K] (upper gram extra : Matrix ι ι K)
    (upperError highFloor observedWeight : K) (i j : ι) :
    assembleLowerMatrix upper gram extra upperError highFloor observedWeight i j =
      upper i j - (observedWeight * gram i j + extra i j) * highFloor⁻¹ -
        (if i = j then upperError else 0) := by
  by_cases hij : i = j <;> simp [assembleLowerMatrix, hij, mul_comm, add_mul]

theorem assembleLowerMatrix_isSymm [Field K] {upper gram extra : Matrix ι ι K}
    (hUpper : upper.IsSymm) (hGram : gram.IsSymm) (hExtra : extra.IsSymm)
    (upperError highFloor observedWeight : K) :
    (assembleLowerMatrix upper gram extra upperError highFloor observedWeight).IsSymm :=
  (hUpper.sub (((hGram.smul observedWeight).add hExtra).smul highFloor⁻¹)).sub
    (Matrix.isSymm_one.smul upperError)

theorem quadratic_assembleLowerMatrix [Fintype ι] (upper gram extra : Matrix ι ι ℝ)
    (upperError highFloor observedWeight : ℝ) (v : ι → ℝ) :
    quadratic (assembleLowerMatrix upper gram extra upperError highFloor observedWeight) v =
      quadratic upper v - upperError * (∑ i, v i ^ 2) -
        (observedWeight * quadratic gram v + quadratic extra v) / highFloor := by
  have hMass : v ⬝ᵥ v = ∑ i, v i ^ 2 := by simp only [dotProduct, pow_two]
  simp only [assembleLowerMatrix, quadratic, Matrix.sub_mulVec, Matrix.add_mulVec,
    Matrix.smul_mulVec, Matrix.one_mulVec, dotProduct_sub, dotProduct_add, dotProduct_smul,
    smul_eq_mul, hMass, div_eq_mul_inv]
  ring

/-- Casting the assembled rational matrix gives the assembly of the real inputs. -/
theorem assembleLowerMatrix_realizeRat (upper gram extra : Matrix ι ι ℚ)
    (upperError highFloor observedWeight : ℚ) :
    (assembleLowerMatrix upper gram extra upperError highFloor observedWeight).map (Rat.castHom ℝ) =
      assembleLowerMatrix (upper.map (Rat.castHom ℝ)) (gram.map (Rat.castHom ℝ))
        (extra.map (Rat.castHom ℝ)) (upperError : ℝ) (highFloor : ℝ) (observedWeight : ℝ) := by
  ext i j
  by_cases hij : i = j <;> simp [assembleLowerMatrix_entry, hij]

end GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly
