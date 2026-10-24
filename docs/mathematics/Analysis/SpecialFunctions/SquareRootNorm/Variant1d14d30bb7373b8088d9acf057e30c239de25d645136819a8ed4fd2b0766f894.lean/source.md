# Complete source: GRWTSK.Analysis.SpecialFunctions.SquareRootNorm.Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f03b07ae2c319796c60b50ce9900491facd97c5` · SHA-256 `1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathematics.MobiusOntology.PurityBridge

/-!
# Uniform square-root discrepancy norm

The certificate retains the mass, logarithmic order, exact discrepancy norm,
and one uniform bound.  It has no computational-hardness constructor.
-/

namespace Mathematics.MobiusOntology

universe u

def squareRootWeight
    (mass : ℝ) (logarithmicOrder : Nat) : ℝ :=
  Real.sqrt mass * (1 + Real.log mass) ^ logarithmicOrder

structure SquareRootNormCertificate (Scale : Type u) where
  mass : Scale → ℝ
  discrepancyNorm : Scale → ℝ
  logarithmicOrder : Nat
  constant : ℝ
  massAtLeastOne : ∀ scale, 1 ≤ mass scale
  constantNonnegative : 0 ≤ constant
  bound :
    ∀ scale,
      discrepancyNorm scale ≤
        constant * squareRootWeight
          (mass scale) logarithmicOrder

def SquareRootNormFinite
    {Scale : Type u}
    (mass discrepancyNorm : Scale → ℝ)
    (logarithmicOrder : Nat) : Prop :=
  ∃ constant ≥ 0,
    ∀ scale,
      discrepancyNorm scale ≤
        constant *
          squareRootWeight (mass scale) logarithmicOrder

theorem squareRootNorm_finite
    {Scale : Type u}
    (certificate : SquareRootNormCertificate Scale) :
    SquareRootNormFinite
      certificate.mass certificate.discrepancyNorm
      certificate.logarithmicOrder :=
  ⟨certificate.constant, certificate.constantNonnegative,
    certificate.bound⟩

structure BitfieldSquareRootBudget (Scale : Type u) where
  aggregationNorm : Scale → ℝ
  localError : Scale → ℝ
  mass : Scale → ℝ
  logarithmicOrder : Nat
  constant : ℝ
  bound :
    ∀ scale,
      aggregationNorm scale * localError scale ≤
        constant *
          squareRootWeight (mass scale) logarithmicOrder

end Mathematics.MobiusOntology
```
