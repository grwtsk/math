# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointRadiusBudget.Variant68238617b510d7839c5a65b5a50d9943f268d667a6f8dd0026bd6fd0f9f297b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a6a81e4ea853c8973c054d7eeaf8197950c8587` · SHA-256 `68238617b510d7839c5a65b5a50d9943f268d667a6f8dd0026bd6fd0f9f297b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import RecoveredEndpointThree

/-!
Generic scalar radius budget for the established literal endpoint envelope.
The envelope peaks at three and decreases thereafter. No signed interior
estimate is inferred from this scalar theorem.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace RH16EndpointRadiusBudget
noncomputable section

def envelope (A : ℝ) : ℝ := 2 * A ^ 3 * Real.exp (-A)
def radiusBudget (R : ℝ) : ℝ := envelope (max 3 R)

theorem envelope_nonneg (A : ℝ) (hA : 0 ≤ A) : 0 ≤ envelope A := by
  unfold envelope
  positivity

/-- Exponential tangency, cubed, gives the exact scalar peak at three. -/
theorem envelope_le_peak (A : ℝ) (hA : 0 ≤ A) : envelope A ≤ envelope 3 := by
  have hlinear : Real.exp 1 * (A / 3) ≤ Real.exp (A / 3) :=
    Real.exp_one_mul_le_exp
  have hcube : (Real.exp 1 * (A / 3)) ^ 3 ≤ (Real.exp (A / 3)) ^ 3 := by
    gcongr
  have he1 : (Real.exp (1 : ℝ)) ^ 3 = Real.exp (3 : ℝ) := by
    rw [← Real.exp_nat_mul]
    norm_num
  have heA : (Real.exp (A / 3)) ^ 3 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [mul_pow, he1, heA] at hcube
  have hbound := mul_le_mul_of_nonneg_right hcube
    (show 0 ≤ Real.exp (-A) * Real.exp (-3) by positivity)
  have he : Real.exp A * Real.exp (-A) = 1 := by
    rw [← Real.exp_add]
    simp
  have he3 : Real.exp (3 : ℝ) * Real.exp (-3) = 1 := by
    rw [← Real.exp_add]
    norm_num
  have hleft : Real.exp 3 * (A / 3) ^ 3 * (Real.exp (-A) * Real.exp (-3)) =
      (A / 3) ^ 3 * Real.exp (-A) := by
    calc
      _ = (A / 3) ^ 3 * Real.exp (-A) * (Real.exp 3 * Real.exp (-3)) := by ring
      _ = _ := by rw [he3, mul_one]
  have hright : Real.exp A * (Real.exp (-A) * Real.exp (-3)) = Real.exp (-3) := by
    rw [← mul_assoc, he, one_mul]
  rw [hleft, hright] at hbound
  unfold envelope
  nlinarith

/-- The same elementary tangency proves monotonic decrease beyond the peak. -/
theorem envelope_le_of_three_le (r A : ℝ) (hr : 3 ≤ r) (hA : r ≤ A) :
    envelope A ≤ envelope r := by
  have hrpos : 0 < r := by linarith
  let x := A / r
  have hxone : 1 ≤ x := (one_le_div hrpos).2 hA
  have hx : r * x = A := by dsimp [x]; field_simp
  have hlinear : Real.exp 1 * x ≤ Real.exp x := Real.exp_one_mul_le_exp
  have hcube : (Real.exp 1 * x) ^ 3 ≤ (Real.exp x) ^ 3 := by gcongr
  have he1 : (Real.exp (1 : ℝ)) ^ 3 = Real.exp (3 : ℝ) := by
    rw [← Real.exp_nat_mul]
    norm_num
  have hex : (Real.exp x) ^ 3 = Real.exp (3 * x) := by
    rw [← Real.exp_nat_mul]
    norm_num
  rw [mul_pow, he1, hex] at hcube
  have hdegree : 3 * x ≤ A - r + 3 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hr) (sub_nonneg.mpr hxone)]
  have hcube' := hcube.trans (Real.exp_le_exp.mpr hdegree)
  have hnorm : x ^ 3 ≤ Real.exp (A - r) := by
    calc
      _ = (Real.exp 3 * x ^ 3) * Real.exp (-3) := by
        rw [mul_right_comm, ← Real.exp_add]
        norm_num
      _ ≤ Real.exp (A - r + 3) * Real.exp (-3) :=
        mul_le_mul_of_nonneg_right hcube' (Real.exp_pos _).le
      _ = _ := by rw [← Real.exp_add]; congr 1; ring
  have hbound := mul_le_mul_of_nonneg_right hnorm
    (show 0 ≤ 2 * r ^ 3 * Real.exp (-A) by positivity)
  have hleft : x ^ 3 * (2 * r ^ 3 * Real.exp (-A)) = envelope A := by
    unfold envelope
    rw [← hx]
    ring
  have hright : Real.exp (A - r) * (2 * r ^ 3 * Real.exp (-A)) = envelope r := by
    unfold envelope
    calc
      _ = 2 * r ^ 3 * (Real.exp (A - r) * Real.exp (-A)) := by ring
      _ = _ := by rw [← Real.exp_add]; congr 1; congr 1; ring
  rwa [hleft, hright] at hbound

theorem envelope_le_radiusBudget (R A : ℝ) (hR : 1 ≤ R) (hA : R ≤ A) :
    envelope A ≤ radiusBudget R := by
  unfold radiusBudget
  by_cases hR3 : R ≤ 3
  · rw [max_eq_left hR3]
    exact envelope_le_peak A (by linarith)
  · have h3R : 3 ≤ R := by linarith
    rw [max_eq_right h3R]
    exact envelope_le_of_three_le R A h3R hA

theorem radiusBudget_nonneg (R : ℝ) : 0 ≤ radiusBudget R := by
  exact envelope_nonneg _ (le_trans (by norm_num : (0 : ℝ) ≤ 3) (le_max_left _ _))

theorem radiusBudget_le_three (R : ℝ) : radiusBudget R ≤ 3 := by
  exact RH16RecoveredEndpoint.endpoint_exponential_envelope_le_three _
    (le_trans (by norm_num : (0 : ℝ) ≤ 3) (le_max_left _ _))

end
end RH16EndpointRadiusBudget
```
