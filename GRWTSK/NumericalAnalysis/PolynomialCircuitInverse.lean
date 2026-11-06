/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.Ring.GeomSum
import Mathlib.Data.Rat.Cast.Order

/-!
# Certified finite inverse refinement

For `e = 1 - a*u`, multiplying the finite series by `1-e` telescopes. The new
residual is `e^k`, and strict monotonicity gives a bound of `(1/2)^k` under the
seed hypotheses. At the excluded endpoint `e = 1/2`, equality holds. The seed
search uses exact integer logarithms and rational powers, then checks the seed
hypotheses. Each refinement retains that seed and computes its value from the
indexed order. This rational step uses Mathlib's `mul_neg_geom_sum`. The complex
model's `FiniteInverse.model_residual` has the opposite residual sign and its
source-error estimate belongs to that model. These elementary identities
support the circuit step. Independent analytic review remains open.
-/

set_option autoImplicit false

namespace GRWTSK.NumericalAnalysis.PolynomialCircuit

open scoped BigOperators

inductive InverseOrder where
  | quadratic
  | quintic
  deriving DecidableEq, Repr

def InverseOrder.power : InverseOrder → ℕ
  | .quadratic => 2
  | .quintic => 5

def inverseResidual (a u : ℚ) : ℚ := 1 - a * u

def refineInverse (order : InverseOrder) (a u : ℚ) : ℚ :=
  u * ∑ i ∈ Finset.range order.power, inverseResidual a u ^ i

theorem inverseResidual_refine (a u : ℚ) (order : InverseOrder) :
    inverseResidual a (refineInverse order a u) = inverseResidual a u ^ order.power := by
  have h : a * u = 1 - inverseResidual a u := by simp only [inverseResidual, sub_sub_cancel]
  rw [inverseResidual, refineInverse, ← mul_assoc, h, mul_neg_geom_sum, sub_sub_cancel]

structure Seed (a : ℚ) where
  value : ℚ
  residual_nonneg : 0 ≤ inverseResidual a value
  residual_lt_half : inverseResidual a value < (1 / 2 : ℚ)

theorem Seed.derivative_ne_zero {a : ℚ} (seed : Seed a) : a ≠ 0 := by
  intro ha
  have impossible : (1 : ℚ) < 1 / 2 := by
    simpa only [ha, inverseResidual, zero_mul, sub_zero] using seed.residual_lt_half
  exact (not_lt_of_ge (div_le_self zero_le_one one_le_two)) impossible

structure Refinement (a : ℚ) (order : InverseOrder) where
  seed : Seed a

namespace Refinement

variable {a : ℚ} {order : InverseOrder} (certificate : Refinement a order)

def refined : ℚ := refineInverse order a certificate.seed.value

theorem residual_identity :
    inverseResidual a certificate.refined = inverseResidual a certificate.seed.value ^ order.power :=
  inverseResidual_refine a certificate.seed.value order

theorem residual_nonneg : 0 ≤ inverseResidual a certificate.refined := by
  rw [certificate.residual_identity]
  exact pow_nonneg certificate.seed.residual_nonneg _

theorem residual_lt_bound : inverseResidual a certificate.refined < (1 / 2 : ℚ) ^ order.power := by
  rw [certificate.residual_identity]
  have hp : order.power ≠ 0 := by cases order <;> decide
  exact pow_lt_pow_left₀ certificate.seed.residual_lt_half certificate.seed.residual_nonneg hp

end Refinement

def refine {a : ℚ} (seed : Seed a) (order : InverseOrder) : Refinement a order := ⟨seed⟩

/-- Choose a signed power of two whose product with `a` lies in `(1/2, 1]`. -/
def chooseSeed (a : ℚ) : Option (Seed a) :=
  if a = 0 then none
  else
    let scale : ℤ := (a.den.log2 : ℤ) - (a.num.natAbs.log2 : ℤ)
    let sign : ℚ := if 0 < a then 1 else -1
    let trial : ℚ := sign * (2 : ℚ) ^ scale
    let value := if 1 < a * trial then trial / 2 else trial
    if h : 0 ≤ inverseResidual a value ∧ inverseResidual a value < (1 / 2 : ℚ) then
      some ⟨value, h.1, h.2⟩
    else none

end GRWTSK.NumericalAnalysis.PolynomialCircuit
