# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.LeftLogDerivative

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78ceb9569e89f20c2868e9dd6e6e6b459a3bd5f8` · SHA-256 `38e98352b88b68abf4de1601e09968201a06a52ce440949d0fceda15efccfaa9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.DigammaShift
import GRWTSK.NumberTheory.Zeta.Riemann.AdmissibleRectangles
import GRWTSK.NumberTheory.Chebyshev.TentPerronLine
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Positivity

set_option autoImplicit false

/-!
# The full zeta logarithmic derivative on negative-odd lines

Differentiate the existing neighborhood functional equation, then use Gamma
recurrence and trigonometric periodicity. The reflected zeta terms remain;
omitting them would be an incorrect recurrence. A compact bound at real part
-1 is independent of the left index, but may depend on the fixed height T.
This gives a linear-in-index bound for the FULL logarithmic derivative, not a
finite principal sum. No height-growth estimate is asserted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.LeftLogDerivative

open Set Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.Complex.DigammaShift
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.RiemannHypothesis.TrivialZeroResidues
open GRWTSK.NumberTheory.Chebyshev.TentPerronLine

noncomputable section

/-- An abbreviation for the maintained geometric left edge, not a new contour. -/
abbrev leftPoint (N : ℕ) (t : ℝ) : ℂ := (leftEdge N : ℂ) + (t : ℂ) * Complex.I

theorem leftPoint_re (N : ℕ) (t : ℝ) : (leftPoint N t).re = leftEdge N := by simp

theorem leftPoint_reflected (N : ℕ) (t : ℝ) :
    1 - leftPoint N t = (2 - (t : ℂ) * Complex.I) + ((2 * N : ℕ) : ℂ) := by
  simp only [leftPoint, leftEdge, Complex.ofReal_neg, Complex.ofReal_add,
    Complex.ofReal_mul, Complex.ofReal_natCast, Complex.ofReal_ofNat, Complex.ofReal_one, Nat.cast_mul, Nat.cast_ofNat]
  ring

/-- The reflected unit has no zero in the open left half-plane. -/
theorem reflectedUnit_ne_zero {s : ℂ} (hs : s.re < 0) : reflectedUnit s ≠ 0 := by
  have hw : 0 < (1 - s).re := by simp only [Complex.sub_re, Complex.one_re]; linarith
  exact mul_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num)
    (Complex.exp_ne_zero _)) (Complex.Gamma_ne_zero (ne_neg_nat_of_re_pos _ hw)))
    (riemannZeta_ne_zero_of_one_lt_re (by
      simp only [Complex.sub_re, Complex.one_re]; linarith))

/-- Logarithmic differentiation needs a neighborhood identity, not point agreement. -/
theorem reflectedUnit_logDeriv {s : ℂ} (hs : s.re < 0) :
    logDeriv reflectedUnit s = Complex.log (2 * (Real.pi : ℂ)) -
      Complex.digamma (1 - s) - logDeriv riemannZeta (1 - s) := by
  have hw : 0 < (1 - s).re := by simp only [Complex.sub_re, Complex.one_re]; linarith
  have hw1 : 1 - s ≠ (1 : ℂ) := by
    intro he; have hr := congrArg Complex.re he; simp at hr; linarith
  have hG := Complex.Gamma_ne_zero (ne_neg_nat_of_re_pos (1 - s) hw)
  have hZ : riemannZeta (1 - s) ≠ 0 :=
    riemannZeta_ne_zero_of_one_lt_re (by
      simp only [Complex.sub_re, Complex.one_re]; linarith)
  have dG : HasDerivAt (fun u : ℂ => Complex.Gamma (1 - u))
      (-deriv Complex.Gamma (1 - s)) s := by
    simpa only [Function.comp_def, id_eq, mul_neg_one] using ((Complex.differentiableAt_Gamma (1 - s)
      (ne_neg_nat_of_re_pos _ hw)).hasDerivAt.comp s ((hasDerivAt_id s).const_sub 1))
  have dZ : HasDerivAt (fun u : ℂ => riemannZeta (1 - u))
      (-deriv riemannZeta (1 - s)) s := by
    simpa only [Function.comp_def, id_eq, mul_neg_one] using (differentiableAt_riemannZeta hw1).hasDerivAt.comp s
      ((hasDerivAt_id s).const_sub 1)
  have dE := (((hasDerivAt_id s).sub_const 1).const_mul
    (Complex.log (2 * (Real.pi : ℂ)))).cexp
  have dU := ((dE.const_mul 2).mul dG).mul dZ
  change HasDerivAt reflectedUnit _ s at dU
  rw [logDeriv_apply, dU.deriv, Complex.digamma_def, logDeriv_apply, logDeriv_apply]
  unfold reflectedUnit
  simp only [Pi.mul_apply, id_eq]
  field_simp [hG, hZ, Complex.exp_ne_zero]; ring

/-- All reflected terms, including the reflected zeta derivative, are retained. -/
theorem negative_logDeriv_reflection {s : ℂ} (hs : s.re < 0)
    (hζ : riemannZeta s ≠ 0) :
    -logDeriv riemannZeta s = -Complex.log (2 * (Real.pi : ℂ)) +
      Complex.digamma (1 - s) + logDeriv riemannZeta (1 - s) -
      ((Real.pi : ℂ) / 2) *
        (Complex.cos ((Real.pi : ℂ) * s / 2) / Complex.sin ((Real.pi : ℂ) * s / 2)) := by
  have he : riemannZeta =ᶠ[𝓝 s]
      fun u => reflectedUnit u * Complex.sin ((Real.pi : ℂ) * u / 2) :=
    eventuallyEq_of_mem ((isOpen_lt Complex.continuous_re continuous_const).mem_nhds hs)
      (fun u hu => zeta_eq_reflectedUnit_mul_sin hu)
  have hsin : Complex.sin ((Real.pi : ℂ) * s / 2) ≠ 0 := by
    intro hz
    exact hζ (by rw [zeta_eq_reflectedUnit_mul_sin hs, hz, mul_zero])
  have dS : HasDerivAt (fun u : ℂ => Complex.sin ((Real.pi : ℂ) * u / 2))
      (Complex.cos ((Real.pi : ℂ) * s / 2) * ((Real.pi : ℂ) / 2)) s := by
    simpa only [id_eq, mul_one] using (((hasDerivAt_id s).const_mul (Real.pi : ℂ)).div_const 2).csin
  rw [(logDeriv_congr_nhds he).eq_of_nhds,
    logDeriv_mul (f := reflectedUnit) (g := fun u => Complex.sin ((Real.pi : ℂ) * u / 2)) s (reflectedUnit_ne_zero hs) hsin
      (reflectedUnit_differentiableAt hs) dS.differentiableAt,
    reflectedUnit_logDeriv hs]
  simp only [logDeriv_apply]
  rw [dS.deriv]
  ring

/-- Shifting by a negative even integer leaves this trigonometric quotient unchanged. -/
theorem left_cotangent_periodic (N : ℕ) (t : ℝ) :
    Complex.cos ((Real.pi : ℂ) * leftPoint N t / 2) /
        Complex.sin ((Real.pi : ℂ) * leftPoint N t / 2) =
      Complex.cos ((Real.pi : ℂ) * leftPoint 0 t / 2) /
        Complex.sin ((Real.pi : ℂ) * leftPoint 0 t / 2) := by
  induction N with
  | zero => rfl
  | succ N ih =>
      have he : (Real.pi : ℂ) * leftPoint (N + 1) t / 2 =
          (Real.pi : ℂ) * leftPoint N t / 2 - (Real.pi : ℂ) := by
        simp only [leftPoint, leftEdge, Nat.cast_add, Nat.cast_one, Complex.ofReal_neg,
          Complex.ofReal_add, Complex.ofReal_mul, Complex.ofReal_natCast, Complex.ofReal_ofNat, Complex.ofReal_one]
        ring
      rw [he, Complex.cos_sub_pi, Complex.sin_sub_pi, neg_div_neg_eq, ih]

/-- Exact recurrence for the actual negative logarithmic derivative. -/
theorem negative_logDeriv_left_recurrence (N : ℕ) (t : ℝ) :
    -logDeriv riemannZeta (leftPoint N t) =
      -logDeriv riemannZeta (leftPoint 0 t) +
      (∑ j ∈ Finset.range (2 * N), (2 - (t : ℂ) * Complex.I + (j : ℂ))⁻¹) +
      logDeriv riemannZeta (1 - leftPoint N t) -
      logDeriv riemannZeta (1 - leftPoint 0 t) := by
  have hn := negative_logDeriv_reflection
    (by rw [leftPoint_re]; exact leftEdge_neg N)
    (zeta_ne_zero_on_left N _ (leftPoint_re N t))
  have h0 := negative_logDeriv_reflection
    (by rw [leftPoint_re]; exact leftEdge_neg 0)
    (zeta_ne_zero_on_left 0 _ (leftPoint_re 0 t))
  have hg := digamma_add_nat (2 - (t : ℂ) * Complex.I) (by simp) (2 * N)
  rw [left_cotangent_periodic N t] at hn
  rw [leftPoint_reflected] at hn h0
  simp only [Nat.mul_zero, Nat.cast_zero, add_zero] at h0
  rw [hg] at hn
  rw [hn, h0, leftPoint_reflected, leftPoint_reflected]
  simp only [Nat.mul_zero, Nat.cast_zero, add_zero]
  ring

/-- Absolute term domination extends the existing line mass to Re(s)>=2. -/
theorem norm_logDeriv_right_halfPlane_le (s : ℂ) (hs : 2 ≤ s.re) :
    ‖logDeriv riemannZeta s‖ ≤ mangoldtLineMass := by
  let f : ℕ → ℂ := fun m => (ArithmeticFunction.vonMangoldt m : ℂ)
  have h2 : LSeriesSummable f 2 := ArithmeticFunction.LSeriesSummable_vonMangoldt (by norm_num)
  have hσ : LSeriesSummable f s := ArithmeticFunction.LSeriesSummable_vonMangoldt (by linarith)
  have he : _root_.LSeries f s = -logDeriv riemannZeta s := by
    simpa only [logDeriv_apply, neg_div] using
      ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div (by linarith : 1 < s.re)
  rw [← norm_neg, ← he, _root_.LSeries]
  calc
    _ ≤ ∑' m, ‖_root_.LSeries.term f s m‖ := norm_tsum_le_tsum_norm hσ.norm
    _ ≤ ∑' m, ‖_root_.LSeries.term f 2 m‖ :=
      Summable.tsum_le_tsum (fun m => _root_.LSeries.norm_term_le_of_re_le_re f
        (by simpa using hs) m) hσ.norm h2.norm
    _ = _ := rfl

/-- A finite reciprocal increment and two controlled reflected source terms suffice. -/
theorem norm_left_logDeriv_le_base (N : ℕ) (t : ℝ) :
    ‖-logDeriv riemannZeta (leftPoint N t)‖ ≤
      ‖-logDeriv riemannZeta (leftPoint 0 t)‖ + (N : ℝ) + 2 * mangoldtLineMass := by
  have hs (k : ℕ) : 2 ≤ (1 - leftPoint k t).re := by
    rw [leftPoint_reflected]
    simp only [Complex.add_re, Complex.sub_re,  Complex.mul_re,
      Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im, Complex.natCast_re,
      show (2 : ℂ).re = 2 by rfl, mul_zero, zero_mul, sub_zero]
    nlinarith [Nat.cast_nonneg (α := ℝ) (2 * k)]
  have hrec : ‖∑ j ∈ Finset.range (2 * N),
      (2 - (t : ℂ) * Complex.I + (j : ℂ))⁻¹‖ ≤ (N : ℝ) := by
    have hc := norm_reciprocal_sum_le (2 - (t : ℂ) * Complex.I) (by simp) (2 * N)
    norm_num only [Nat.cast_mul, Nat.cast_ofNat] at hc
    convert hc using 1; ring
  rw [negative_logDeriv_left_recurrence]
  calc
    _ ≤ ‖-logDeriv riemannZeta (leftPoint 0 t) +
          (∑ j ∈ Finset.range (2 * N), (2 - (t : ℂ) * Complex.I + (j : ℂ))⁻¹) +
          logDeriv riemannZeta (1 - leftPoint N t)‖ +
          ‖logDeriv riemannZeta (1 - leftPoint 0 t)‖ := norm_sub_le _ _
    _ ≤ (‖-logDeriv riemannZeta (leftPoint 0 t)‖ +
          ‖∑ j ∈ Finset.range (2 * N), (2 - (t : ℂ) * Complex.I + (j : ℂ))⁻¹‖) +
          ‖logDeriv riemannZeta (1 - leftPoint N t)‖ +
          ‖logDeriv riemannZeta (1 - leftPoint 0 t)‖ :=
      add_le_add ((norm_add_le _ _).trans (add_le_add (norm_add_le _ _) le_rfl)) le_rfl
    _ ≤ _ := by linarith [norm_logDeriv_right_halfPlane_le _ (hs N),
      norm_logDeriv_right_halfPlane_le _ (hs 0)]

/-- Continuity is for the actual entire negative-odd parameter line, not a sampled list. -/
theorem continuous_base_logDeriv :
    Continuous (fun t : ℝ => -logDeriv riemannZeta (leftPoint 0 t)) := by
  apply continuous_iff_continuousAt.mpr
  intro t
  have hp : leftPoint 0 t ≠ 1 := by
    intro he; have hr := congrArg Complex.re he; norm_num [leftPoint, leftEdge] at hr
  have ha := analyticOn_riemannZeta (leftPoint 0 t) hp
  have hn := zeta_ne_zero_on_left 0 (leftPoint 0 t) (leftPoint_re 0 t)
  have hc : ContinuousAt (fun s : ℂ => -logDeriv riemannZeta s) (leftPoint 0 t) :=
    (ha.deriv.continuousAt.div ha.continuousAt hn).neg
  exact hc.comp (by unfold leftPoint; fun_prop)

/-- One source-derived constant for each fixed T works for ALL left indices.
The constant's growth with T is not estimated. -/
theorem exists_fixed_height_bound (T : ℝ) :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ N : ℕ, ∀ t ∈ Icc (-T) T,
      ‖-logDeriv riemannZeta (leftPoint N t)‖ ≤ B + (N : ℝ) := by
  obtain ⟨C, hC⟩ := (isCompact_Icc : IsCompact (Icc (-T) T)).bddAbove_image
    continuous_base_logDeriv.norm.continuousOn
  have hm := mangoldtLineMass_nonneg
  refine ⟨max C 0 + 2 * mangoldtLineMass, by positivity, ?_⟩
  intro N t ht
  have hbase : ‖-logDeriv riemannZeta (leftPoint 0 t)‖ ≤ max C 0 :=
    (hC (mem_image_of_mem _ ht)).trans (le_max_left _ _)
  linarith [norm_left_logDeriv_le_base N t]

end
end GRWTSK.RiemannHypothesis.LeftLogDerivative
```
