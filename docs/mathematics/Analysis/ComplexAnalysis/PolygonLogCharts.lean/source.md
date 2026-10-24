# Complete source: GRWTSK.Analysis.Complex.PolygonLogCharts

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `726608258a3f78c6469d4a5bc239a6c598bf7691` · SHA-256 `7ce182173e40c63be892eea681cae22092d2516e6cd280bd4468b12fec9a3ff9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.ExponentialLoopIndex
import GRWTSK.Analysis.Complex.PolygonTube

set_option autoImplicit false

/-!
# Two logarithm charts for an exactly covered polygon edge

The second chart log(-z)+pi*i is continuous on the left half-plane. Its
transition from the principal chart is one FULL exponential period below the
real axis and zero above it, including the NEGATIVE real axis on the upper
side. This convention counts a ray vertex once, not twice. No numerical log,
argument, pi approximation, or zero-count formula is introduced.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.PolygonLogCharts

open scoped unitInterval
open ExponentialLoopIndex PolygonTube

noncomputable section

/-- The negative real ray itself belongs to the non-lower side. -/
def below (z : ℂ) : ℤ := if z.im < 0 then 1 else 0

def negativeLog (z : ℂ) : ℂ := Complex.log (-z) + (Real.pi : ℂ) * Complex.I

/-- The shifted negative chart exponentiates to z, not to -z. -/
theorem exp_negativeLog {z : ℂ} (hz : z ≠ 0) : Complex.exp (negativeLog z) = z := by
  rw [negativeLog, Complex.exp_add, Complex.exp_log (neg_ne_zero.mpr hz),
    ← Complex.log_neg_one, Complex.exp_log (by norm_num : (-1 : ℂ) ≠ 0)]
  ring

/-- Exact branch transition, including a vertex ON the negative real ray. -/
theorem negativeLog_eq {z : ℂ} (hz : z.re < 0) :
    negativeLog z = Complex.log z + deck (below z) := by
  by_cases hi : z.im < 0
  · simp only [negativeLog, Complex.log, norm_neg,
      Complex.arg_neg_eq_arg_add_pi_of_im_neg hi, below, if_pos hi,
      deck, period, Int.cast_one, one_mul, Complex.ofReal_add]
    ring
  · have ha : Complex.arg (-z) = Complex.arg z - Real.pi := by
      apply Complex.arg_neg_eq_arg_sub_pi_iff.mpr
      by_cases hzero : z.im = 0
      · exact Or.inr ⟨hzero, hz⟩
      · exact Or.inl (lt_of_le_of_ne (le_of_not_gt hi) (Ne.symm hzero))
    simp only [negativeLog, Complex.log, norm_neg, ha, below, if_neg hi,
      deck_zero, add_zero, Complex.ofReal_sub]
    ring

/-- Strict positivity is preserved on the ENTIRE closed affine interval. -/
theorem positive_blend {a b : ℝ} (ha : 0 < a) (hb : 0 < b) (t : I) :
    0 < (1 - (t : ℝ)) * a + (t : ℝ) * b := by
  by_cases ht : (t : ℝ) = 0
  · simpa [ht] using ha
  · exact add_pos_of_nonneg_of_pos
      (mul_nonneg (sub_nonneg.mpr t.2.2) ha.le)
      (mul_pos (lt_of_le_of_ne t.2.1 (Ne.symm ht)) hb)

/-- Each disjunct is a common STRICT half-plane for BOTH endpoints. -/
def PrincipalEdge (a b : ℂ) : Prop :=
  (0 < a.re ∧ 0 < b.re) ∨ (0 < a.im ∧ 0 < b.im) ∨ (a.im < 0 ∧ b.im < 0)

theorem principal_edge_mem {a b : ℂ} (h : PrincipalEdge a b) (t : I) :
    blend (t : ℝ) a b ∈ Complex.slitPlane := by
  apply Complex.mem_slitPlane_iff.mpr
  rcases h with h | h | h
  · left
    simpa [blend, Complex.real_smul] using positive_blend h.1 h.2 t
  · right
    have hi : 0 < (blend (t : ℝ) a b).im := by
      simpa [blend, Complex.real_smul] using positive_blend h.1 h.2 t
    exact ne_of_gt hi
  · right
    have hi : (blend (t : ℝ) a b).im < 0 := by
      have hp := positive_blend (neg_pos.mpr h.1) (neg_pos.mpr h.2) t
      simp only [blend, Complex.real_smul, Complex.add_im, Complex.mul_im,
        Complex.ofReal_re, Complex.ofReal_im, zero_mul, zero_add] at *
      nlinarith
    exact ne_of_lt hi

theorem negative_edge_re {a b : ℂ} (ha : a.re < 0) (hb : b.re < 0) (t : I) :
    (blend (t : ℝ) a b).re < 0 := by
  have hp := positive_blend (neg_pos.mpr ha) (neg_pos.mpr hb) t
  simp only [blend, Complex.real_smul, Complex.add_re, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] at *
  nlinarith

theorem negative_edge_mem {a b : ℂ} (ha : a.re < 0) (hb : b.re < 0) (t : I) :
    -(blend (t : ℝ) a b) ∈ Complex.slitPlane :=
  Complex.mem_slitPlane_iff.mpr (Or.inl (by
    simpa using neg_pos.mpr (negative_edge_re ha hb t)))

theorem continuous_principal_edge {a b : ℂ} (h : PrincipalEdge a b) :
    Continuous (fun t : I => Complex.log (blend (t : ℝ) a b)) :=
  (by unfold blend; fun_prop : Continuous (fun t : I => blend (t : ℝ) a b)).clog
    (principal_edge_mem h)

theorem continuous_negative_edge {a b : ℂ} (ha : a.re < 0) (hb : b.re < 0) :
    Continuous (fun t : I => negativeLog (blend (t : ℝ) a b)) := by
  exact ((by unfold blend; fun_prop : Continuous (fun t : I => -(blend (t : ℝ) a b))).clog
    (negative_edge_mem ha hb)).add continuous_const

end
end GRWTSK.Analysis.Complex.PolygonLogCharts
```
