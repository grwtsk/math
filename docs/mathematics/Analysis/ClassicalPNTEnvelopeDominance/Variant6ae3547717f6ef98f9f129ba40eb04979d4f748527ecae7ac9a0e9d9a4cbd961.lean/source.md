# Complete source: GRWTSK.Analysis.ClassicalPNTEnvelopeDominance.Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e81a1c9c8f040b0571e0b93e3c7e7d8bc7392b99` · SHA-256 `6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
# The classical exponential-log PNT envelope pays the quarter-power obstruction

For c>=0 and log x>=16*c^2, exp(-c*sqrt(log x)) dominates x^(-1/4).
At every A>=max(1,exp(8*c^2)) that comparison holds on the unchanged entire
source window [A^2,exp(2A)]. It concerns an envelope function, without any
assertion that the actual Mertens function has that lower bound.
Human absolute-envelope method boundary: grwtsk contributors. Local exact
threshold and full-window comparison: OpenAI Codex. Mathlib exponential,
logarithm and square-root laws retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ClassicalPNTEnvelopeDominance
open Set MeasureTheory
noncomputable section

/-- The envelope in this module, with the following exact parameterization.

def envelope (c x : ℝ) : ℝ := Real.exp (-c * Real.sqrt (Real.log x))
-/
def envelope (c x : ℝ) : ℝ := Real.exp (-c * Real.sqrt (Real.log x))
/-- The entrance in this module, with the following exact parameterization.

def entrance (c : ℝ) : ℝ := max 1 (Real.exp (8 * c ^ 2))
-/
def entrance (c : ℝ) : ℝ := max 1 (Real.exp (8 * c ^ 2))

theorem classical_pnt_envelope_dominates_quarter_power {c x : ℝ}
    (_hc : 0 ≤ c) (hx : 0 < x) (hlog : 16 * c ^ 2 ≤ Real.log x) :
    x ^ (-1 / 4 : ℝ) ≤ envelope c x := by
  have ht : 0 ≤ Real.log x := by nlinarith
  have hs := Real.sq_sqrt ht
  have hroot : 4 * c ≤ Real.sqrt (Real.log x) := by
    nlinarith [Real.sqrt_nonneg (Real.log x)]
  have hcompare : c * Real.sqrt (Real.log x) ≤ Real.log x / 4 := by
    nlinarith [mul_nonneg (Real.sqrt_nonneg (Real.log x)) (sub_nonneg.mpr hroot)]
  rw [Real.rpow_def_of_pos hx, envelope]
  apply Real.exp_le_exp.mpr
  linarith

theorem full_source_window_has_quarter_envelope {c A : ℝ}
    (hc : 0 ≤ c) (hA : entrance c ≤ A) :
    ∀ x ∈ Icc (A ^ 2) (Real.exp (2 * A)), x ^ (-1 / 4 : ℝ) ≤ envelope c x := by
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hA0 : 0 < A := by linarith
  have hAe : Real.exp (8 * c ^ 2) ≤ A := (le_max_right _ _).trans hA
  have hAlog : 8 * c ^ 2 ≤ Real.log A := by
    simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hAe
  intro x hx
  have hx0 : 0 < x := (sq_pos_of_pos hA0).trans_le hx.1
  have hlog := Real.log_le_log (sq_pos_of_pos hA0) hx.1
  rw [Real.log_pow] at hlog
  apply classical_pnt_envelope_dominates_quarter_power hc hx0
  norm_num at hlog
  linarith

theorem classical_source_window_payment_integrable {c A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun x ↦ envelope c x / Real.sqrt x) volume
      (A ^ 2) (Real.exp (2 * A)) := by
  have hA0 : 0 < A := by linarith
  apply ContinuousOn.intervalIntegrable
  apply ContinuousOn.div
  · unfold envelope
    apply Real.continuous_exp.comp_continuousOn
    apply continuousOn_const.mul
    apply Real.continuous_sqrt.comp_continuousOn
    apply Real.continuousOn_log.mono
    intro x hx
    have hx0 : 0 < x := by
      rcases mem_uIcc.mp hx with hx | hx
      · exact (sq_pos_of_pos hA0).trans_le hx.1
      · exact (Real.exp_pos _).trans_le hx.1
    exact hx0.ne'
  · exact Real.continuous_sqrt.continuousOn
  · intro x hx
    apply (Real.sqrt_pos.mpr ?_).ne'
    rcases mem_uIcc.mp hx with hx | hx
    · exact (sq_pos_of_pos hA0).trans_le hx.1
    · exact (Real.exp_pos _).trans_le hx.1

end
end GRWTSK.RiemannHypothesis.Conversation.ClassicalPNTEnvelopeDominance
```
