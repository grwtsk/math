import Mathlib.Analysis.Convex.Deriv
import Mathlib.Analysis.Convex.Jensen
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

/-!
The finite tail envelope is bounded on the complete real interval, without
sampling scales. This is only the continuum endpoint step of the finite
certificate: no actual zero tail is bounded by the envelope in this module.
Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean assistance: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open Set

def endpointEnvelope (A : ℝ) : ℝ := (Real.exp A + 3)/A^9
def endpointEnvelopeFirst (A : ℝ) : ℝ := (Real.exp A*(A-9)-27)/A^10
def endpointEnvelopeSecond (A : ℝ) : ℝ :=
  (Real.exp A*((A-9)^2+9)+270)/A^11

theorem endpointEnvelope_hasDerivAt (A : ℝ) (hA : A ≠ 0) :
    HasDerivAt endpointEnvelope (endpointEnvelopeFirst A) A := by
  unfold endpointEnvelope endpointEnvelopeFirst
  apply (((Real.hasDerivAt_exp A).add_const 3).div
    ((hasDerivAt_id A).pow 9) (pow_ne_zero 9 hA)).congr_deriv
  simp only [Pi.pow_apply, id_eq]
  field_simp
  ring

theorem endpointEnvelopeFirst_hasDerivAt (A : ℝ) (hA : A ≠ 0) :
    HasDerivAt endpointEnvelopeFirst (endpointEnvelopeSecond A) A := by
  unfold endpointEnvelopeFirst endpointEnvelopeSecond
  apply ((((Real.hasDerivAt_exp A).mul ((hasDerivAt_id A).sub_const 9)).sub_const 27).div
    ((hasDerivAt_id A).pow 10) (pow_ne_zero 10 hA)).congr_deriv
  simp only [Pi.pow_apply, Pi.mul_apply, id_eq]
  field_simp
  ring

theorem endpointEnvelope_convex : ConvexOn ℝ (Icc 1 160) endpointEnvelope := by
  apply convexOn_of_hasDerivWithinAt2_nonneg (f' := endpointEnvelopeFirst)
    (f'' := endpointEnvelopeSecond) (convex_Icc _ _)
  · intro A hA
    exact (endpointEnvelope_hasDerivAt A (by linarith [hA.1])).continuousAt.continuousWithinAt
  · intro A hA
    exact (endpointEnvelope_hasDerivAt A
      (by have hm := interior_subset hA; linarith [hm.1])).hasDerivWithinAt
  · intro A hA
    exact (endpointEnvelopeFirst_hasDerivAt A
      (by have hm := interior_subset hA; linarith [hm.1])).hasDerivWithinAt
  · intro A hA
    have hp : 0 < A := by have hm := interior_subset hA; linarith [hm.1]
    unfold endpointEnvelopeSecond
    positivity

/-- The maximum is at one of the two endpoints on the entire continuum. -/
theorem endpointEnvelope_le_endpoint_max (A : ℝ) (hA : 1 ≤ A) (hA160 : A ≤ 160) :
    endpointEnvelope A ≤ max (endpointEnvelope 1) (endpointEnvelope 160) := by
  exact endpointEnvelope_convex.le_max_of_mem_Icc (by norm_num) (by norm_num) ⟨hA,hA160⟩

/-- Exact rational endpoint envelope used by the archived checker. -/
theorem endpointEnvelope_le_rational_max (A : ℝ) (hA : 1 ≤ A) (hA160 : A ≤ 160) :
    endpointEnvelope A ≤ max (6 : ℝ) (((2719/1000 : ℝ)^160+3)/160^9) := by
  apply (endpointEnvelope_le_endpoint_max A hA hA160).trans
  apply max_le_max
  · unfold endpointEnvelope
    norm_num only [one_pow, div_one]
    linarith [Real.exp_one_lt_three]
  · unfold endpointEnvelope
    apply div_le_div_of_nonneg_right _ (by positivity)
    refine add_le_add ?_ (le_refl (3 : ℝ))
    have he : Real.exp (160 : ℝ) = (Real.exp 1)^160 := by
      rw [← Real.exp_nat_mul]
      congr 1
      norm_num
    rw [he]
    apply pow_le_pow_left₀ (Real.exp_pos 1).le
    have h := Real.exp_one_lt_d9
    norm_num at h ⊢
    linarith

end CommonMeanScratch
