# Complete source: GRWTSK.Algebra.CommutativeAlgebra.ThetaPositiveLift.Variant2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e829a4a90e249ea4b0849f4954149f45bb0a3033` · SHA-256 `2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiAllRankModeCriterion

/-! # Literal derivative polynomials through order eight and coefficient bounds
The integer coefficients below are checked against the maintained source
recurrence. The absolute-value bounds hold on the entire ray y ≥ 1.
-/
namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open Polynomial
noncomputable section

/-- Explicit derivative polynomials used by the rank-five certificate. -/
def thetaRankFivePolynomial : ℕ → ℝ[X]
  | 0 => Polynomial.monomial 0 (-3) +
    Polynomial.monomial 1 (2)
  | 1 => Polynomial.monomial 0 (-15) +
    Polynomial.monomial 1 (30) +
    Polynomial.monomial 2 (-8)
  | 2 => Polynomial.monomial 0 (-75) +
    Polynomial.monomial 1 (330) +
    Polynomial.monomial 2 (-224) +
    Polynomial.monomial 3 (32)
  | 3 => Polynomial.monomial 0 (-375) +
    Polynomial.monomial 1 (3270) +
    Polynomial.monomial 2 (-4232) +
    Polynomial.monomial 3 (1440) +
    Polynomial.monomial 4 (-128)
  | 4 => Polynomial.monomial 0 (-1875) +
    Polynomial.monomial 1 (30930) +
    Polynomial.monomial 2 (-68096) +
    Polynomial.monomial 3 (41408) +
    Polynomial.monomial 4 (-8448) +
    Polynomial.monomial 5 (512)
  | 5 => Polynomial.monomial 0 (-9375) +
    Polynomial.monomial 1 (285870) +
    Polynomial.monomial 2 (-1008968) +
    Polynomial.monomial 3 (976320) +
    Polynomial.monomial 4 (-343040) +
    Polynomial.monomial 5 (46592) +
    Polynomial.monomial 6 (-2048)
  | 6 => Polynomial.monomial 0 (-46875) +
    Polynomial.monomial 1 (2610330) +
    Polynomial.monomial 2 (-14260064) +
    Polynomial.monomial 3 (20633312) +
    Polynomial.monomial 4 (-11109120) +
    Polynomial.monomial 5 (2536960) +
    Polynomial.monomial 6 (-245760) +
    Polynomial.monomial 7 (8192)
  | 7 => Polynomial.monomial 0 (-234375) +
    Polynomial.monomial 1 (23680470) +
    Polynomial.monomial 2 (-195822152) +
    Polynomial.monomial 3 (407806560) +
    Polynomial.monomial 4 (-315824768) +
    Polynomial.monomial 5 (107860480) +
    Polynomial.monomial 6 (-17274880) +
    Polynomial.monomial 7 (1253376) +
    Polynomial.monomial 8 (-32768)
  | 8 => Polynomial.monomial 0 (-1171875) +
    Polynomial.monomial 1 (214061730) +
    Polynomial.monomial 2 (-2640409856) +
    Polynomial.monomial 3 (7716000128) +
    Polynomial.monomial 4 (-8263546368) +
    Polynomial.monomial 5 (3959811072) +
    Polynomial.monomial 6 (-932413440) +
    Polynomial.monomial 7 (110460928) +
    Polynomial.monomial 8 (-6225920) +
    Polynomial.monomial 9 (131072)
  | _ => 0

private theorem polynomial_order_0 :
    thetaPhiDerivativePolynomial 0 = thetaRankFivePolynomial 0 := by
  rfl

private theorem polynomial_order_1 :
    thetaPhiDerivativePolynomial 1 = thetaRankFivePolynomial 1 := by
  change thetaPhiDerivativeStep (thetaPhiDerivativePolynomial 0) = _
  rw [polynomial_order_0]
  simp only [thetaRankFivePolynomial, thetaPhiDerivativeStep_add,
    thetaPhiDerivativeStep_monomial]
  simp only [← Polynomial.C_mul_X_pow_eq_monomial]
  norm_num [Polynomial.C_ofNat]
  ring

private theorem polynomial_order_2 :
    thetaPhiDerivativePolynomial 2 = thetaRankFivePolynomial 2 := by
  change thetaPhiDerivativeStep (thetaPhiDerivativePolynomial 1) = _
  rw [polynomial_order_1]
  simp only [thetaRankFivePolynomial, thetaPhiDerivativeStep_add,
    thetaPhiDerivativeStep_monomial]
  simp only [← Polynomial.C_mul_X_pow_eq_monomial]
  norm_num [Polynomial.C_ofNat]
  ring

private theorem polynomial_order_3 :
    thetaPhiDerivativePolynomial 3 = thetaRankFivePolynomial 3 := by
  change thetaPhiDerivativeStep (thetaPhiDerivativePolynomial 2) = _
  rw [polynomial_order_2]
  simp only [thetaRankFivePolynomial, thetaPhiDerivativeStep_add,
    thetaPhiDerivativeStep_monomial]
  simp only [← Polynomial.C_mul_X_pow_eq_monomial]
  norm_num [Polynomial.C_ofNat]
  ring

private theorem polynomial_order_4 :
    thetaPhiDerivativePolynomial 4 = thetaRankFivePolynomial 4 := by
  change thetaPhiDerivativeStep (thetaPhiDerivativePolynomial 3) = _
  rw [polynomial_order_3]
  simp only [thetaRankFivePolynomial, thetaPhiDerivativeStep_add,
    thetaPhiDerivativeStep_monomial]
  simp only [← Polynomial.C_mul_X_pow_eq_monomial]
  norm_num [Polynomial.C_ofNat]
  ring

private theorem polynomial_order_5 :
    thetaPhiDerivativePolynomial 5 = thetaRankFivePolynomial 5 := by
  change thetaPhiDerivativeStep (thetaPhiDerivativePolynomial 4) = _
  rw [polynomial_order_4]
  simp only [thetaRankFivePolynomial, thetaPhiDerivativeStep_add,
    thetaPhiDerivativeStep_monomial]
  simp only [← Polynomial.C_mul_X_pow_eq_monomial]
  norm_num [Polynomial.C_ofNat]
  ring

private theorem polynomial_order_6 :
    thetaPhiDerivativePolynomial 6 = thetaRankFivePolynomial 6 := by
  change thetaPhiDerivativeStep (thetaPhiDerivativePolynomial 5) = _
  rw [polynomial_order_5]
  simp only [thetaRankFivePolynomial, thetaPhiDerivativeStep_add,
    thetaPhiDerivativeStep_monomial]
  simp only [← Polynomial.C_mul_X_pow_eq_monomial]
  norm_num [Polynomial.C_ofNat]
  ring

private theorem polynomial_order_7 :
    thetaPhiDerivativePolynomial 7 = thetaRankFivePolynomial 7 := by
  change thetaPhiDerivativeStep (thetaPhiDerivativePolynomial 6) = _
  rw [polynomial_order_6]
  simp only [thetaRankFivePolynomial, thetaPhiDerivativeStep_add,
    thetaPhiDerivativeStep_monomial]
  simp only [← Polynomial.C_mul_X_pow_eq_monomial]
  norm_num [Polynomial.C_ofNat]
  ring

private theorem polynomial_order_8 :
    thetaPhiDerivativePolynomial 8 = thetaRankFivePolynomial 8 := by
  change thetaPhiDerivativeStep (thetaPhiDerivativePolynomial 7) = _
  rw [polynomial_order_7]
  simp only [thetaRankFivePolynomial, thetaPhiDerivativeStep_add,
    thetaPhiDerivativeStep_monomial]
  simp only [← Polynomial.C_mul_X_pow_eq_monomial]
  norm_num [Polynomial.C_ofNat]
  ring

/-- Identification with the actual source recurrence, without an assumed
polynomial table. -/
theorem thetaRankFivePolynomial_eq (n : Fin 9) :
    thetaPhiDerivativePolynomial n.val = thetaRankFivePolynomial n.val := by
  fin_cases n
  · exact polynomial_order_0
  · exact polynomial_order_1
  · exact polynomial_order_2
  · exact polynomial_order_3
  · exact polynomial_order_4
  · exact polynomial_order_5
  · exact polynomial_order_6
  · exact polynomial_order_7
  · exact polynomial_order_8

/-- Sum of absolute coefficient values in each derivative polynomial. -/
def thetaRankFiveCoefficientNorm : ℕ → ℝ
  | 0 => 5
  | 1 => 53
  | 2 => 661
  | 3 => 9445
  | 4 => 151269
  | 5 => 2672213
  | 6 => 51450613
  | 7 => 1069789829
  | 8 => 23844232389
  | _ => 0

theorem thetaRankFiveCoefficientNorm_nonneg (n : ℕ) :
    0 ≤ thetaRankFiveCoefficientNorm n := by
  unfold thetaRankFiveCoefficientNorm
  split <;> positivity

set_option maxHeartbeats 0 in
-- Exact finite arithmetic certificates require an unrestricted tactic heartbeat budget.
/-- Source-specific polynomial majorant through derivative order eight. -/
theorem thetaRankFivePolynomial_abs_le (n : Fin 9) {y : ℝ} (hy : 1 ≤ y) :
    |(thetaPhiDerivativePolynomial n.val).eval y| ≤
      thetaRankFiveCoefficientNorm n.val * y ^ (n.val + 1) := by
  rw [thetaRankFivePolynomial_eq]
  let x := y - 1
  have hx : 0 ≤ x := sub_nonneg.mpr hy
  have he : y = x + 1 := by dsimp [x]; ring
  rw [he]
  apply abs_le.mpr
  constructor
  · have h : 0 ≤ thetaRankFiveCoefficientNorm n.val * (x + 1) ^ (n.val + 1) +
        (thetaRankFivePolynomial n.val).eval (x + 1) := by
      fin_cases n <;> norm_num [thetaRankFiveCoefficientNorm, thetaRankFivePolynomial] <;>
        ring_nf <;> nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3,
          pow_nonneg hx 4, pow_nonneg hx 5, pow_nonneg hx 6, pow_nonneg hx 7,
          pow_nonneg hx 8, pow_nonneg hx 9]
    linarith
  · have h : 0 ≤ thetaRankFiveCoefficientNorm n.val * (x + 1) ^ (n.val + 1) -
        (thetaRankFivePolynomial n.val).eval (x + 1) := by
      fin_cases n <;> norm_num [thetaRankFiveCoefficientNorm, thetaRankFivePolynomial] <;>
        ring_nf <;> nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3,
          pow_nonneg hx 4, pow_nonneg hx 5, pow_nonneg hx 6, pow_nonneg hx 7,
          pow_nonneg hx 8, pow_nonneg hx 9]
    linarith

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
