# Complete source: GRWTSK.GeometryOfNumbers.PrimitiveLinearUnimodularFrame

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8567890d0a5b1f8fde59ea36ca8ffef1318fafca` · SHA-256 `bfff19657bfe1c4058c1bc61001bd07507576959fda6db9f2713a64daa19b75a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel
import Mathlib.LinearAlgebra.CrossProduct
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.Tactic

set_option autoImplicit false

/-!
# An explicit unimodular frame for a primitive linear kernel

For positive primitive coefficients `a,b,c`, put `g = gcd(a,b)`,
`A = a/g`, and `B = b/g`.  The two integer vectors

`u = (B,-A,0)` and
`v = (c*s,c*t,g)`,

where `A*s+B*t=1`, lie in the kernel of `(x,y,z) ↦ a*x+b*y-c*z`.
Their cross product is exactly `(-a,-b,c)`.  Completing them with the
nested Bezout witness from `PrimitiveLinearKernel` gives a three-by-three
integer matrix of determinant `-1`.

This is the exact integral frame needed before a covolume computation.  It
does not prove a finite lattice-point estimate, a reduced-basis theorem, or
the Heath--Brown bound.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #427. Draft PR: #429.
-/

namespace GRWTSK.GeometryOfNumbers.PrimitiveLinearUnimodularFrame

open Matrix
open scoped Matrix
open GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount
open GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel

noncomputable section

namespace Data

/-- The common divisor of the two positive coefficients on the left side. -/
def pairGcd (data : Data) : ℕ := Nat.gcd data.a data.b

/-- The pair gcd is positive because `a` is positive. -/
theorem pairGcd_pos (data : Data) : 0 < data.pairGcd := by
  exact Nat.gcd_pos_of_pos_left data.b data.a_pos

/-- First reduced coefficient. -/
def reducedA (data : Data) : ℕ := data.a / data.pairGcd

/-- Second reduced coefficient. -/
def reducedB (data : Data) : ℕ := data.b / data.pairGcd

/-- Exact reconstruction of `a` from its reduced coefficient. -/
theorem reducedA_mul_pairGcd (data : Data) :
    data.reducedA * data.pairGcd = data.a := by
  exact Nat.div_mul_cancel (Nat.gcd_dvd_left data.a data.b)

/-- Exact reconstruction of `b` from its reduced coefficient. -/
theorem reducedB_mul_pairGcd (data : Data) :
    data.reducedB * data.pairGcd = data.b := by
  exact Nat.div_mul_cancel (Nat.gcd_dvd_right data.a data.b)

/-- The reduced coefficient pair is coprime. -/
theorem reduced_coprime (data : Data) :
    data.reducedA.Coprime data.reducedB := by
  exact Nat.coprime_div_gcd_div_gcd data.pairGcd_pos

/-- Bezout identity for the reduced coefficient pair. -/
theorem reduced_bezout_identity (data : Data) :
    (data.reducedA : ℤ) * Nat.gcdA data.reducedA data.reducedB +
      (data.reducedB : ℤ) * Nat.gcdB data.reducedA data.reducedB = 1 := by
  calc
    (data.reducedA : ℤ) * Nat.gcdA data.reducedA data.reducedB +
        (data.reducedB : ℤ) * Nat.gcdB data.reducedA data.reducedB =
      ((Nat.gcd data.reducedA data.reducedB : ℕ) : ℤ) := by
        rw [Nat.gcd_eq_gcd_ab]
    _ = 1 := by exact_mod_cast data.reduced_coprime.gcd_eq_one

/-- Integer cast of the first coefficient reconstruction. -/
theorem cast_a_eq_reduced_mul_gcd (data : Data) :
    (data.a : ℤ) = (data.reducedA : ℤ) * (data.pairGcd : ℤ) := by
  exact_mod_cast data.reducedA_mul_pairGcd.symm

/-- Integer cast of the second coefficient reconstruction. -/
theorem cast_b_eq_reduced_mul_gcd (data : Data) :
    (data.b : ℤ) = (data.reducedB : ℤ) * (data.pairGcd : ℤ) := by
  exact_mod_cast data.reducedB_mul_pairGcd.symm

end Data

/-- Primitive normal vector of the coefficient functional. -/
def normalVector (data : Data) : Fin 3 → ℤ :=
  ![(data.a : ℤ), (data.b : ℤ), -(data.c : ℤ)]

/-- First explicit kernel vector. -/
def firstKernelVector (data : Data) : Fin 3 → ℤ :=
  ![(data.reducedB : ℤ), -(data.reducedA : ℤ), 0]

/-- Second explicit kernel vector, using the reduced Bezout coefficients. -/
def secondKernelVector (data : Data) : Fin 3 → ℤ :=
  ![(data.c : ℤ) * Nat.gcdA data.reducedA data.reducedB,
    (data.c : ℤ) * Nat.gcdB data.reducedA data.reducedB,
    (data.pairGcd : ℤ)]

/-- Convert the repository's tuple-shaped integer point to a `Fin 3` vector. -/
def vectorOfIntPoint (point : IntPoint) : Fin 3 → ℤ :=
  ![point.1, point.2.1, point.2.2]

/-- Convert a `Fin 3` vector back to the repository tuple shape. -/
def intPointOfVector (vector : Fin 3 → ℤ) : IntPoint :=
  (vector 0, vector 1, vector 2)

/-- Complementary Bezout vector mapping to one under the coefficient
functional. -/
def complementVector (data : Data) : Fin 3 → ℤ :=
  vectorOfIntPoint (primitiveNormalWitness data.a data.b data.c)

/-- Dotting with the normal vector is the tuple-shaped coefficient
functional. -/
theorem normal_dot_vectorOfIntPoint
    (data : Data) (point : IntPoint) :
    normalVector data ⬝ᵥ vectorOfIntPoint point =
      coefficientHom data.a data.b data.c point := by
  rw [Matrix.vec3_dotProduct]
  dsimp [normalVector, vectorOfIntPoint, coefficientHom]
  ring

/-- The first explicit vector lies in the coefficient kernel. -/
theorem normal_dot_firstKernelVector (data : Data) :
    normalVector data ⬝ᵥ firstKernelVector data = 0 := by
  rw [Matrix.vec3_dotProduct]
  dsimp [normalVector, firstKernelVector]
  rw [data.cast_a_eq_reduced_mul_gcd,
    data.cast_b_eq_reduced_mul_gcd]
  ring

/-- The second explicit vector lies in the coefficient kernel. -/
theorem normal_dot_secondKernelVector (data : Data) :
    normalVector data ⬝ᵥ secondKernelVector data = 0 := by
  rw [Matrix.vec3_dotProduct]
  dsimp [normalVector, secondKernelVector]
  rw [data.cast_a_eq_reduced_mul_gcd,
    data.cast_b_eq_reduced_mul_gcd]
  calc
    (data.reducedA : ℤ) * (data.pairGcd : ℤ) *
          ((data.c : ℤ) * Nat.gcdA data.reducedA data.reducedB) +
        (data.reducedB : ℤ) * (data.pairGcd : ℤ) *
          ((data.c : ℤ) * Nat.gcdB data.reducedA data.reducedB) +
        -(data.c : ℤ) * (data.pairGcd : ℤ) =
      (data.c : ℤ) * (data.pairGcd : ℤ) *
        ((data.reducedA : ℤ) * Nat.gcdA data.reducedA data.reducedB +
          (data.reducedB : ℤ) * Nat.gcdB data.reducedA data.reducedB - 1) := by
        ring
    _ = 0 := by rw [data.reduced_bezout_identity]; ring

/-- The complementary nested-Bezout vector maps to one. -/
theorem normal_dot_complementVector (data : Data) :
    normalVector data ⬝ᵥ complementVector data = 1 := by
  rw [normal_dot_vectorOfIntPoint]
  exact coefficientHom_primitiveNormalWitness data.coefficientPrimitive

/-- Tuple-shaped form of the first kernel-vector membership. -/
theorem firstKernelVector_mem_linearKernel (data : Data) :
    intPointOfVector (firstKernelVector data) ∈
      linearKernel data.a data.b data.c := by
  rw [mem_linearKernel]
  simpa [intPointOfVector, normalVector, firstKernelVector,
    Matrix.vec3_dotProduct] using normal_dot_firstKernelVector data

/-- Tuple-shaped form of the second kernel-vector membership. -/
theorem secondKernelVector_mem_linearKernel (data : Data) :
    intPointOfVector (secondKernelVector data) ∈
      linearKernel data.a data.b data.c := by
  rw [mem_linearKernel]
  simpa [intPointOfVector, normalVector, secondKernelVector,
    Matrix.vec3_dotProduct] using normal_dot_secondKernelVector data

/-- The oriented parallelogram of the two explicit kernel vectors is exactly
the negative primitive normal. -/
theorem first_cross_second (data : Data) :
    firstKernelVector data ⨯₃ secondKernelVector data =
      -normalVector data := by
  rw [Matrix.cross_apply]
  apply Matrix.vec3_eq
  · dsimp [firstKernelVector, secondKernelVector, normalVector]
    rw [← data.cast_a_eq_reduced_mul_gcd]
    ring
  · dsimp [firstKernelVector, secondKernelVector, normalVector]
    rw [← data.cast_b_eq_reduced_mul_gcd]
    ring
  · dsimp [firstKernelVector, secondKernelVector, normalVector]
    calc
      (data.reducedB : ℤ) *
            ((data.c : ℤ) * Nat.gcdB data.reducedA data.reducedB) -
          -(data.reducedA : ℤ) *
            ((data.c : ℤ) * Nat.gcdA data.reducedA data.reducedB) =
        (data.c : ℤ) *
          ((data.reducedA : ℤ) * Nat.gcdA data.reducedA data.reducedB +
            (data.reducedB : ℤ) * Nat.gcdB data.reducedA data.reducedB) := by
          ring
      _ = (data.c : ℤ) := by rw [data.reduced_bezout_identity]; ring

/-- Matrix whose rows are the two kernel vectors and the complementary
Bezout vector. -/
def kernelFrameMatrix (data : Data) : Matrix (Fin 3) (Fin 3) ℤ :=
  ![firstKernelVector data, secondKernelVector data, complementVector data]

/-- The explicit frame is unimodular, with determinant exactly `-1`. -/
theorem kernelFrameMatrix_det (data : Data) :
    Matrix.det (kernelFrameMatrix data) = -1 := by
  unfold kernelFrameMatrix
  rw [← Matrix.triple_product_eq_det]
  rw [Matrix.triple_product_permutation]
  rw [Matrix.triple_product_permutation]
  rw [first_cross_second]
  simp [Matrix.dotProduct_comm, normal_dot_complementVector]

/-- The determinant is a unit in the integers. -/
theorem kernelFrameMatrix_det_isUnit (data : Data) :
    IsUnit (Matrix.det (kernelFrameMatrix data)) := by
  rw [kernelFrameMatrix_det]
  simp

/-- Pure certificate collecting the integral frame facts needed by a future
covolume theorem. -/
structure UnimodularKernelFrame (data : Data) where
  first : Fin 3 → ℤ
  second : Fin 3 → ℤ
  complement : Fin 3 → ℤ
  first_kernel : normalVector data ⬝ᵥ first = 0
  second_kernel : normalVector data ⬝ᵥ second = 0
  complement_value : normalVector data ⬝ᵥ complement = 1
  determinant : Matrix.det ![first, second, complement] = -1

/-- Canonical explicit unimodular frame of the primitive coefficient kernel. -/
def canonicalUnimodularKernelFrame (data : Data) :
    UnimodularKernelFrame data where
  first := firstKernelVector data
  second := secondKernelVector data
  complement := complementVector data
  first_kernel := normal_dot_firstKernelVector data
  second_kernel := normal_dot_secondKernelVector data
  complement_value := normal_dot_complementVector data
  determinant := kernelFrameMatrix_det data

/-- The frame determinant is nonzero; this is an exact algebraic fact, not a
finite lattice-point estimate. -/
theorem canonicalFrame_det_ne_zero (data : Data) :
    Matrix.det ![
      (canonicalUnimodularKernelFrame data).first,
      (canonicalUnimodularKernelFrame data).second,
      (canonicalUnimodularKernelFrame data).complement] ≠ 0 := by
  rw [(canonicalUnimodularKernelFrame data).determinant]
  norm_num

end
end GRWTSK.GeometryOfNumbers.PrimitiveLinearUnimodularFrame
```
