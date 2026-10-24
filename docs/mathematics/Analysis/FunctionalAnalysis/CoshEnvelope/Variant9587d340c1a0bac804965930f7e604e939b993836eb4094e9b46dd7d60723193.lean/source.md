# Complete source: GRWTSK.Analysis.FunctionalAnalysis.CoshEnvelope.Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c217394b688777c5dd3bd4b31536e6f1e8ec609e` · SHA-256 `9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Convex.Deriv
import Mathlib.Analysis.Convex.Jensen
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

/-! Continuum endpoint lemma for the literal #318 zero-tail envelope.
Direction: grwtsk contributors; scratch derivation/formalization: OpenAI Codex.
No low-zero verification, counting bound, Gamma or correction-budget instance. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.CoshEnvelope
open Set

def envelope (A : ℝ) : ℝ := 4*Real.cosh (A/2)^2/A^9
def logEnvelope (A : ℝ) : ℝ := Real.log 4 + (2*Real.log (Real.cosh (A/2))-9*Real.log A)
def logSlope (A : ℝ) : ℝ := Real.sinh (A/2)/Real.cosh (A/2)-9/A

theorem logEnvelope_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt logEnvelope (logSlope A) A := by
  have hc := ((hasDerivAt_id A).div_const 2).cosh
  have hl := hc.log (Real.cosh_pos (A/2)).ne'
  have h := ((hl.const_mul 2).sub ((Real.hasDerivAt_log hA.ne').const_mul 9)).const_add (Real.log 4)
  convert h using 1 <;> first
    | rfl
    | (simp only [id_eq, logSlope]; ring)

theorem logSlope_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt logSlope (1/(2*Real.cosh (A/2)^2)+9/A^2) A := by
  have hs := ((hasDerivAt_id A).div_const 2).sinh
  have hc := ((hasDerivAt_id A).div_const 2).cosh
  have hq := hs.div hc (Real.cosh_pos (A/2)).ne'
  have hd := (hasDerivAt_const A (9:ℝ)).div (hasDerivAt_id A) hA.ne'
  convert hq.sub hd using 1 <;> first
    | rfl
    | (simp only [id_eq, zero_mul, zero_sub, mul_one];
       field_simp [(Real.cosh_pos (A/2)).ne', hA.ne'];
       nlinarith [Real.cosh_sq_sub_sinh_sq (A/2)])

theorem logEnvelope_convex : ConvexOn ℝ (Ioi 0) logEnvelope := by
  apply convexOn_of_hasDerivWithinAt2_nonneg (f' := logSlope)
    (f'' := fun A => 1/(2*Real.cosh (A/2)^2)+9/A^2) (convex_Ioi 0)
  · exact fun A hA => (logEnvelope_hasDerivAt hA).continuousAt.continuousWithinAt
  · intro A hA
    exact (logEnvelope_hasDerivAt (interior_subset hA)).hasDerivWithinAt
  · intro A hA
    exact (logSlope_hasDerivAt (interior_subset hA)).hasDerivWithinAt
  · intro A _
    positivity

theorem envelope_pos {A : ℝ} (hA : 0 < A) : 0 < envelope A := by
  unfold envelope
  positivity

theorem logEnvelope_eq_log {A : ℝ} (hA : 0 < A) :
    logEnvelope A = Real.log (envelope A) := by
  unfold logEnvelope envelope
  rw [Real.log_div (by positivity) (by positivity),
    Real.log_mul (by norm_num) (by positivity), Real.log_pow, Real.log_pow]
  norm_num
  ring

/-- Every real point is bounded by the two actual endpoints; no grid is used. -/
theorem envelope_le_max_endpoints {a A b : ℝ} (ha : 0 < a) (hA : A ∈ Icc a b) :
    envelope A ≤ max (envelope a) (envelope b) := by
  have hp : 0 < A := ha.trans_le hA.1
  have hb : 0 < b := hp.trans_le hA.2
  have hl := logEnvelope_convex.le_max_of_mem_Icc ha hb hA
  rw [logEnvelope_eq_log hp, logEnvelope_eq_log ha, logEnvelope_eq_log hb] at hl
  rcases le_max_iff.mp hl with h | h
  · exact (Real.log_le_log_iff (envelope_pos hp) (envelope_pos ha)).mp h |>.trans (le_max_left _ _)
  · exact (Real.log_le_log_iff (envelope_pos hp) (envelope_pos hb)).mp h |>.trans (le_max_right _ _)

theorem exp_one_lt_rational : Real.exp 1 < (2719/1000:ℝ) :=
  Real.exp_one_lt_d9.trans (by norm_num)

theorem envelope_exp_formula (A : ℝ) :
    envelope A = (Real.exp A+2+Real.exp (-A))/A^9 := by
  have h := Real.cosh_two_mul (A/2)
  rw [show 2*(A/2)=A by ring, Real.cosh_eq] at h
  have hs := Real.cosh_sq_sub_sinh_sq (A/2)
  have hn : 4*Real.cosh (A/2)^2 = Real.exp A+2+Real.exp (-A) := by nlinarith
  exact congrArg (fun x : ℝ => x/A^9) hn

theorem envelope_one_lt_six : envelope 1 < 6 := by
  rw [envelope_exp_formula]
  norm_num only [one_pow, div_one]
  have hn : Real.exp (-1) ≤ 1 := Real.exp_le_one_iff.mpr (by norm_num)
  linarith [Real.exp_one_lt_three]

theorem envelope_nat_endpoint_le (M : ℕ) (hM : 1 ≤ M) :
    envelope (M:ℝ) ≤ (((2719/1000:ℝ)^M+3)/(M:ℝ)^9) := by
  rw [envelope_exp_formula]
  have hn : Real.exp (-(M:ℝ)) ≤ 1 := Real.exp_le_one_iff.mpr (neg_nonpos.mpr (Nat.cast_nonneg M))
  have he : Real.exp (M:ℝ) ≤ (2719/1000:ℝ)^M := by
    have hp := pow_le_pow_left₀ (Real.exp_pos 1).le exp_one_lt_rational.le M
    simpa only [← Real.exp_nat_mul, mul_one] using hp
  apply div_le_div_of_nonneg_right (by linarith) (by positivity)

theorem envelope_le_rational_endpoints (M : ℕ) (hM : 1 ≤ M)
    {A : ℝ} (hA : A ∈ Icc 1 (M:ℝ)) :
    envelope A ≤ max 6 (((2719/1000:ℝ)^M+3)/(M:ℝ)^9) := by
  have h := envelope_le_max_endpoints (by norm_num : (0:ℝ)<1) hA
  exact h.trans (max_le_max envelope_one_lt_six.le (envelope_nat_endpoint_le M hM))

#print axioms envelope
#print axioms logEnvelope
#print axioms logSlope
#print axioms logEnvelope_hasDerivAt
#print axioms logSlope_hasDerivAt
#print axioms logEnvelope_convex
#print axioms envelope_pos
#print axioms logEnvelope_eq_log
#print axioms envelope_le_max_endpoints
#print axioms exp_one_lt_rational
#print axioms envelope_exp_formula
#print axioms envelope_one_lt_six
#print axioms envelope_nat_endpoint_le
#print axioms envelope_le_rational_endpoints
end ContinuousResearch.CoshEnvelope
```
