/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignDyadicLDL
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalRealBounds

/-!
# Integer weighted sums of dyadic intervals

A signed coefficient multiplies the doubled midpoint and its absolute
value multiplies the doubled radius. Integer sums on the common grid
therefore recover both rational endpoints exactly. A negative weight
swaps the two endpoint roles. The same grid multiplication also gives
ordinary exact matrix products. Independent analytical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.FiniteDyadicIntervalProducts

open Matrix FiniteSignDyadicLDL RationalRealBounds

def endpoints (bits : ℕ) (lower upper : ℤ) : Bounds :=
  (dyadic bits lower, dyadic bits upper)

/-- Exact interval accumulation on the product grid with one additional bit. -/
def weightedSum {ι : Type*} (s : Finset ι) (valueBits coefficientBits : ℕ)
    (coefficient lower upper : ι → ℤ) : Bounds :=
  let centre := ∑ k ∈ s, coefficient k * (lower k + upper k)
  let radius := ∑ k ∈ s, |coefficient k| * (upper k - lower k)
  endpoints (coefficientBits + valueBits + 1) (centre - radius) (centre + radius)

private theorem scale_endpoints (a b : ℕ) (c l u : ℤ) (h : l ≤ u) :
    scale (dyadic a c) (endpoints b l u) =
      endpoints (a + b + 1) (c * (l + u) - |c| * (u - l)) (c * (l + u) + |c| * (u - l)) := by
  have hp (n : ℕ) : 0 < (2 : ℚ) ^ n := by positivity
  have hl : dyadic b l ≤ dyadic b u :=
    div_le_div_of_nonneg_right (by exact_mod_cast h) (hp b).le
  simp only [scale, mul, point, endpoints, min_self, max_self]
  rcases le_total 0 c with hc | hc
  · have hc' : 0 ≤ dyadic a c := by unfold dyadic; exact div_nonneg (by exact_mod_cast hc) (hp a).le
    have hprod := mul_le_mul_of_nonneg_left hl hc'
    rw [min_eq_left hprod, max_eq_right hprod, abs_of_nonneg hc]
    unfold dyadic
    push_cast
    rw [pow_add, pow_add]
    congr 1 <;> field_simp <;> ring
  · have hc' : dyadic a c ≤ 0 := by
      unfold dyadic
      exact div_nonpos_of_nonpos_of_nonneg (by exact_mod_cast hc) (hp a).le
    have hprod := mul_le_mul_of_nonpos_left hl hc'
    rw [min_eq_right hprod, max_eq_left hprod, abs_of_nonpos hc]
    unfold dyadic
    push_cast
    rw [pow_add, pow_add]
    congr 1 <;> field_simp <;> ring

/-- The integer accumulation computes the exact outward rational sum. -/
theorem weightedSum_eq {ι : Type*} (s : Finset ι) (valueBits coefficientBits : ℕ)
    (coefficient lower upper : ι → ℤ) (h : ∀ k ∈ s, lower k ≤ upper k) :
    weightedSum s valueBits coefficientBits coefficient lower upper =
      sum s (fun k => scale (dyadic coefficientBits (coefficient k))
        (endpoints valueBits (lower k) (upper k))) := by
  have he k (hk : k ∈ s) := scale_endpoints coefficientBits valueBits (coefficient k)
    (lower k) (upper k) (h k hk)
  unfold weightedSum sum
  apply Prod.ext
  · trans ∑ k ∈ s, dyadic (coefficientBits + valueBits + 1)
        (coefficient k * (lower k + upper k) - |coefficient k| * (upper k - lower k))
    · simp only [endpoints, dyadic, Int.cast_sub, Int.cast_sum, ← Finset.sum_div, Finset.sum_sub_distrib]
    · exact Finset.sum_congr rfl (fun k hk => (congrArg Prod.fst (he k hk)).symm)
  · trans ∑ k ∈ s, dyadic (coefficientBits + valueBits + 1)
        (coefficient k * (lower k + upper k) + |coefficient k| * (upper k - lower k))
    · simp only [endpoints, dyadic, Int.cast_add, Int.cast_sum, ← Finset.sum_div, Finset.sum_add_distrib]
    · exact Finset.sum_congr rfl (fun k hk => (congrArg Prod.snd (he k hk)).symm)

/-- A product of matrices on two dyadic grids is an integer matrix product
on their common product grid. -/
theorem map_dyadic_mul {ι κ ν : Type*} [Fintype κ] (a b : ℕ)
    (A : Matrix ι κ ℤ) (B : Matrix κ ν ℤ) :
    A.map (dyadic a) * B.map (dyadic b) = (A * B).map (dyadic (a + b)) := by
  ext i j
  simp only [Matrix.mul_apply, Matrix.map_apply, dyadic, Int.cast_sum, Int.cast_mul,
    pow_add, Finset.sum_div, div_mul_div_comm]

end GRWTSK.Algebra.LinearAlgebra.FiniteDyadicIntervalProducts
