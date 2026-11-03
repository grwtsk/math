/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib quadratic characters retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239OrdinarySecantCancellation

set_option autoImplicit false
noncomputable section

/-!
# Independent tangent cancellation

The derivative slope relation replaces cancellation of a secant denominator.
No division by 2y is hidden: the relation itself is an explicit premise.
Only nonzero ordinary representatives enter the residue character.
Vertical/infinity, zero-factor derivative representatives, valuation
normalization and native group-law transport remain missing.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem tangent_root_product_square {K : Type*} [Field K]
    (A B θ x y m : K) (hθ : θ ^ 3 + A * θ + B = 0)
    (hcurve : y ^ 2 = x ^ 3 + A * x + B)
    (htangent : 2 * m * y = 3 * x ^ 2 + A) :
    (x - θ) ^ 2 * (m ^ 2 - 2 * x - θ) = (y + m * (θ - x)) ^ 2 := by
  linear_combination (x - θ) * htangent - hcurve - hθ

theorem tangent_residue_bit_cancellation
    (p : ℕ) [Fact p.Prime] (A B θ x y m : ZMod p)
    (hθ : θ ^ 3 + A * θ + B = 0)
    (hcurve : y ^ 2 = x ^ 3 + A * x + B)
    (htangent : 2 * m * y = 3 * x ^ 2 + A)
    (hu : x - θ ≠ 0) (hv : m ^ 2 - 2 * x - θ ≠ 0) :
    ordinaryResidueBit p (x - θ) hu + ordinaryResidueBit p (x - θ) hu +
      ordinaryResidueBit p (m ^ 2 - 2 * x - θ) hv = 0 := by
  have hprod := tangent_root_product_square A B θ x y m hθ hcurve htangent
  have hln : y + m * (θ - x) ≠ 0 := by
    intro hz
    exact (mul_ne_zero (pow_ne_zero 2 hu) hv) (by simpa [hz] using hprod)
  let u := Units.mk0 (x - θ) hu
  let v := Units.mk0 (m ^ 2 - 2 * x - θ) hv
  let w := Units.mk0 (y + m * (θ - x)) hln
  have heq : u * u * v = w ^ 2 := by
    apply Units.ext
    simpa [u, v, w, pow_two] using hprod
  have hb : residueUnitBitHom p (u * u * v) = 1 := by
    rw [heq, residueUnitBitHom_square]
  have he := congrArg Multiplicative.toAdd hb
  simp only [map_mul, Multiplicative.toAdd_mul, Multiplicative.toAdd_one] at he
  exact he

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
