# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSixthLaplacePrimitive.Variant0dd089fd1c98964af40ab7a751d18e8a13c90b5b4cfcc75752ba58df510cc9d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed5c76aabffe6fa31ecea7238339324228b15855` · SHA-256 `0dd089fd1c98964af40ab7a751d18e8a13c90b5b4cfcc75752ba58df510cc9d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualSourceLaplaceMoment

/-!
# Exact sixth Laplace antiderivative of the unchanged fourth-power bump

The polynomial is mechanically expanded by the retained deterministic generator
from (1-(x/A)^2)^4. It is an integration interface for the actual source bump,
without a new mathematical priority or originality claim. Every generated
balance and endpoint equality is a Lean obligation. Human exact-source and
sixth-moment direction: grwtsk contributors. Local deterministic expansion and
checked integration consumer: OpenAI Codex. Earlier source definitions retain
their qualified identity. The census leading coefficient requires a separate
asymptotic consumer.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualSixthLaplacePrimitive
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity ActualSourceLaplaceMoment MeasureTheory Set
noncomputable section

def sixthPrimitivePolynomial (A x : ℝ) : ℝ :=
    (6 + (-1728 / A ^ 2) + (1119744 / A ^ 4) + (-806215680 / A ^ 6) + (406332702720 / A ^ 8)) +
    ((288 / A ^ 2) + (-186624 / A ^ 4) + (134369280 / A ^ 6) + (-67722117120 / A ^ 8)) * x ^ 1 +
    ((-24 / A ^ 2) + (15552 / A ^ 4) + (-11197440 / A ^ 6) + (5643509760 / A ^ 8)) * x ^ 2 +
    ((-864 / A ^ 4) + (622080 / A ^ 6) + (-313528320 / A ^ 8)) * x ^ 3 +
    ((36 / A ^ 4) + (-25920 / A ^ 6) + (13063680 / A ^ 8)) * x ^ 4 +
    ((864 / A ^ 6) + (-435456 / A ^ 8)) * x ^ 5 +
    ((-24 / A ^ 6) + (12096 / A ^ 8)) * x ^ 6 +
    ((-288 / A ^ 8)) * x ^ 7 +
    ((6 / A ^ 8)) * x ^ 8
private def sixthPrimitiveDerivative (A x : ℝ) : ℝ :=
    ((288 / A ^ 2) + (-186624 / A ^ 4) + (134369280 / A ^ 6) + (-67722117120 / A ^ 8)) * 1 * x ^ 0 +
    ((-24 / A ^ 2) + (15552 / A ^ 4) + (-11197440 / A ^ 6) + (5643509760 / A ^ 8)) * 2 * x ^ 1 +
    ((-864 / A ^ 4) + (622080 / A ^ 6) + (-313528320 / A ^ 8)) * 3 * x ^ 2 +
    ((36 / A ^ 4) + (-25920 / A ^ 6) + (13063680 / A ^ 8)) * 4 * x ^ 3 +
    ((864 / A ^ 6) + (-435456 / A ^ 8)) * 5 * x ^ 4 +
    ((-24 / A ^ 6) + (12096 / A ^ 8)) * 6 * x ^ 5 +
    ((-288 / A ^ 8)) * 7 * x ^ 6 +
    ((6 / A ^ 8)) * 8 * x ^ 7

def sixthEndpointCorrection (A : ℝ) : ℝ :=
  (1 - 60 / A + 1620 / A ^ 2 - 22680 / A ^ 3 + 136080 / A ^ 4) -
    Real.exp (-A / 3) * (1 + 60 / A + 1620 / A ^ 2 + 22680 / A ^ 3 + 136080 / A ^ 4)

theorem exact_sixth_primitive_polynomial_derivative (A x : ℝ) :
    HasDerivAt (sixthPrimitivePolynomial A) (sixthPrimitiveDerivative A x) x := by
  have h1 : HasDerivAt (fun x : ℝ ↦ ((288 / A ^ 2) + (-186624 / A ^ 4) + (134369280 / A ^ 6) + (-67722117120 / A ^ 8)) * x ^ 1)
      (((288 / A ^ 2) + (-186624 / A ^ 4) + (134369280 / A ^ 6) + (-67722117120 / A ^ 8)) * 1 * x ^ 0) x := by
    apply (((hasDerivAt_id x).pow 1).const_mul ((288 / A ^ 2) + (-186624 / A ^ 4) + (134369280 / A ^ 6) + (-67722117120 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h2 : HasDerivAt (fun x : ℝ ↦ ((-24 / A ^ 2) + (15552 / A ^ 4) + (-11197440 / A ^ 6) + (5643509760 / A ^ 8)) * x ^ 2)
      (((-24 / A ^ 2) + (15552 / A ^ 4) + (-11197440 / A ^ 6) + (5643509760 / A ^ 8)) * 2 * x ^ 1) x := by
    apply (((hasDerivAt_id x).pow 2).const_mul ((-24 / A ^ 2) + (15552 / A ^ 4) + (-11197440 / A ^ 6) + (5643509760 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h3 : HasDerivAt (fun x : ℝ ↦ ((-864 / A ^ 4) + (622080 / A ^ 6) + (-313528320 / A ^ 8)) * x ^ 3)
      (((-864 / A ^ 4) + (622080 / A ^ 6) + (-313528320 / A ^ 8)) * 3 * x ^ 2) x := by
    apply (((hasDerivAt_id x).pow 3).const_mul ((-864 / A ^ 4) + (622080 / A ^ 6) + (-313528320 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h4 : HasDerivAt (fun x : ℝ ↦ ((36 / A ^ 4) + (-25920 / A ^ 6) + (13063680 / A ^ 8)) * x ^ 4)
      (((36 / A ^ 4) + (-25920 / A ^ 6) + (13063680 / A ^ 8)) * 4 * x ^ 3) x := by
    apply (((hasDerivAt_id x).pow 4).const_mul ((36 / A ^ 4) + (-25920 / A ^ 6) + (13063680 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h5 : HasDerivAt (fun x : ℝ ↦ ((864 / A ^ 6) + (-435456 / A ^ 8)) * x ^ 5)
      (((864 / A ^ 6) + (-435456 / A ^ 8)) * 5 * x ^ 4) x := by
    apply (((hasDerivAt_id x).pow 5).const_mul ((864 / A ^ 6) + (-435456 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h6 : HasDerivAt (fun x : ℝ ↦ ((-24 / A ^ 6) + (12096 / A ^ 8)) * x ^ 6)
      (((-24 / A ^ 6) + (12096 / A ^ 8)) * 6 * x ^ 5) x := by
    apply (((hasDerivAt_id x).pow 6).const_mul ((-24 / A ^ 6) + (12096 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h7 : HasDerivAt (fun x : ℝ ↦ ((-288 / A ^ 8)) * x ^ 7)
      (((-288 / A ^ 8)) * 7 * x ^ 6) x := by
    apply (((hasDerivAt_id x).pow 7).const_mul ((-288 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h8 : HasDerivAt (fun x : ℝ ↦ ((6 / A ^ 8)) * x ^ 8)
      (((6 / A ^ 8)) * 8 * x ^ 7) x := by
    apply (((hasDerivAt_id x).pow 8).const_mul ((6 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  convert (((((((((hasDerivAt_const x (6 + (-1728 / A ^ 2) + (1119744 / A ^ 4) + (-806215680 / A ^ 6) + (406332702720 / A ^ 8))).add h1).add h2).add h3).add h4).add h5).add h6).add h7).add h8) using 1 <;> try rfl
  unfold sixthPrimitiveDerivative
  ring

theorem exact_sixth_primitive_balance {A : ℝ} (hA : 0 < A) (x : ℝ) :
    sixthPrimitivePolynomial A x / 6 + sixthPrimitiveDerivative A x =
      (1 - (x / A) ^ 2) ^ 4 := by
  unfold sixthPrimitivePolynomial sixthPrimitiveDerivative
  field_simp
  ring

theorem exact_sixth_weighted_primitive_derivative {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (fun x : ℝ ↦ Real.exp (x / 6) * sixthPrimitivePolynomial A x / Real.sqrt A)
      (Real.exp ((1 / 6) * x) * bumpInterior A x) x := by
  have hd := ((((hasDerivAt_id x).div_const 6).exp).mul
    (exact_sixth_primitive_polynomial_derivative A x)).div_const (Real.sqrt A)
  apply hd.congr_deriv
  dsimp only [id_eq]
  rw [one_div_mul_eq_div]
  have hb := exact_sixth_primitive_balance hA x
  unfold bumpInterior
  calc
    _ = (Real.exp (x / 6) * (sixthPrimitivePolynomial A x / 6 +
        sixthPrimitiveDerivative A x)) / Real.sqrt A := by ring
    _ = (Real.exp (x / 6) * (1 - (x / A) ^ 2) ^ 4) / Real.sqrt A := by rw [hb]
    _ = _ := by ring

theorem exact_sixth_primitive_endpoints {A : ℝ} (hA : 0 < A) :
    sixthPrimitivePolynomial A A = (2985984 / A ^ 4) *
      (1 - 60 / A + 1620 / A ^ 2 - 22680 / A ^ 3 + 136080 / A ^ 4) ∧
    sixthPrimitivePolynomial A (-A) = (2985984 / A ^ 4) *
      (1 + 60 / A + 1620 / A ^ 2 + 22680 / A ^ 3 + 136080 / A ^ 4) := by
  constructor <;> unfold sixthPrimitivePolynomial <;> field_simp <;> ring

theorem actual_sixth_bump_moment_closed_formula {A : ℝ} (hA : 1 ≤ A) :
    bumpMoment A (1 / 6) = (2985984 / (A ^ 4 * Real.sqrt A)) *
      Real.exp (A / 6) * sixthEndpointCorrection A := by
  have hpos : 0 < A := by linarith
  rw [exact_weighted_bump_interval hA,
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun x _ ↦ exact_sixth_weighted_primitive_derivative hpos x)
      (((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
        (bumpInterior_continuous A)).intervalIntegrable _ _),
    (exact_sixth_primitive_endpoints hpos).1,
    (exact_sixth_primitive_endpoints hpos).2]
  have he : Real.exp (-A / 6) = Real.exp (A / 6) * Real.exp (-A / 3) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [he]
  unfold sixthEndpointCorrection
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthLaplacePrimitive
```
