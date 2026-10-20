/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.SymmetricPairApproximation
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenDerivativeSource
import Mathlib.Analysis.Complex.Convex

set_option autoImplicit false

/-!
# All-cutoff value and first-derivative bounds for the actual sextic source

This module generalizes the existing cutoff-specific derivative argument without
changing finiteModel. The value residual is -A7*J_N; its derivative retains BOTH
-A7'*J_N and +A7*logTail_N. The elementary log(t)<=t estimate loses one cutoff
power, explicitly. On a FIXED bounded strip, these separately derived bounds
construct an actual symmetric-pair enclosure uniformly in nonzero separation.
No positivity, all-height uniform constant, or complete divisor tail is supplied.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.C1Approximation
open Complex Set Filter MellinPrimitiveStep DerivativeSixteen
open scoped Topology
noncomputable section

/-- The cutoff is positive in every consuming theorem. Real powers keep the
limit calculation explicit; at positive integer N these are rational powers. -/
def tailRadius (N : ℕ) : ℝ := (N : ℝ)^(-(5 : ℝ))/(30240*5)
def logRadius (N : ℕ) : ℝ := (N : ℝ)^(-(4 : ℝ))/(30240*4)
def valueRadius (B : ℝ) (N : ℕ) : ℝ := B^7*tailRadius N
def derivativeRadius (B : ℝ) (N : ℕ) : ℝ :=
  (7*B^6)*tailRadius N+B^7*logRadius N

lemma tailRadius_nonneg (N : ℕ) : 0 ≤ tailRadius N := by unfold tailRadius; positivity
lemma logRadius_nonneg (N : ℕ) : 0 ≤ logRadius N := by unfold logRadius; positivity
lemma valueRadius_nonneg {B : ℝ} (hB : 0 ≤ B) (N : ℕ) : 0 ≤ valueRadius B N := by
  exact mul_nonneg (pow_nonneg hB _) (tailRadius_nonneg N)
lemma derivativeRadius_nonneg {B : ℝ} (hB : 0 ≤ B) (N : ℕ) :
    0 ≤ derivativeRadius B N := by
  unfold derivativeRadius
  exact add_nonneg (mul_nonneg (by positivity) (tailRadius_nonneg N))
    (mul_nonneg (pow_nonneg hB _) (logRadius_nonneg N))

lemma tail_bound {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    ‖tail (N : ℝ) s‖ ≤ tailRadius N := by
  have h := sixthKernel.tail_norm_le (T := (N : ℝ)) (z := s+6) (σ := 6)
    (by exact_mod_cast hN) (by norm_num)
    (by simp only [Complex.add_re,Complex.ofNat_re]; linarith)
  change ‖tail (N : ℝ) s‖ ≤ (1/30240 : ℝ)*
    ((N : ℝ)^(-(6-1 : ℝ))/(6-1)) at h
  norm_num only [show (6 : ℝ)-1=5 by norm_num] at h
  exact h.trans_eq (by unfold tailRadius; ring)

lemma logTail_bound {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    ‖sixthKernel.logTail (s+6) (N : ℝ)‖ ≤ logRadius N := by
  have h := sixthKernel.logTail_norm_le (T := (N : ℝ)) (z := s+6) (σ := 6)
    (by exact_mod_cast hN) (by norm_num)
    (by simp only [Complex.add_re,Complex.ofNat_re]; linarith)
  change ‖sixthKernel.logTail (s+6) (N : ℝ)‖ ≤ (1/30240 : ℝ)*
    ((N : ℝ)^(-(6-2 : ℝ))/(6-2)) at h
  norm_num only [show (6 : ℝ)-2=4 by norm_num] at h
  exact h.trans_eq (by unfold logRadius; ring)

/-- Derived from equality on a neighborhood in Re(s)>0, not equality at one point.
The finite arithmetic expression itself is unchanged. -/
theorem finiteModel_hasDerivAt {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    HasDerivAt (finiteModel N)
      (deriv poleNormalizedZeta s+productSlope 7 s*tail (N : ℝ) s-
        multiplier s*sixthKernel.logTail (s+6) (N : ℝ)) s := by
  have ht0 := sixthKernel.tail_hasDerivAt (T := (N : ℝ)) (z := s+6)
    (by exact_mod_cast hN)
    (by simp only [Complex.add_re,Complex.ofNat_re]; linarith)
  have ht : HasDerivAt (tail (N : ℝ)) (-sixthKernel.logTail (s+6) (N : ℝ)) s := by
    simpa only [tail,mul_one] using ht0.comp s ((hasDerivAt_id s).add_const 6)
  have hd : HasDerivAt (fun z => poleNormalizedZeta z+multiplier z*tail (N : ℝ) z)
      (deriv poleNormalizedZeta s+productSlope 7 s*tail (N : ℝ) s-
        multiplier s*sixthKernel.logTail (s+6) (N : ℝ)) s := by
    convert (differentiable_poleNormalizedZeta s).hasDerivAt.add
      ((multiplier_hasDerivAt s).mul ht) using 1 <;> ring
  have he : finiteModel N =ᶠ[𝓝 s]
      (fun z => poleNormalizedZeta z+multiplier z*tail (N : ℝ) z) := by
    filter_upwards [(isOpen_lt continuous_const Complex.continuous_re).mem_nhds hs] with z hz
    have h := finiteModel_residual hN hz
    linear_combination -h
  exact hd.congr_of_eventuallyEq he

/-- The logarithmic derivative has a PLUS sign after differentiating -A7*J_N. -/
theorem derivative_residual {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    deriv poleNormalizedZeta s-deriv (finiteModel N) s =
      -productSlope 7 s*tail (N : ℝ) s+
        multiplier s*sixthKernel.logTail (s+6) (N : ℝ) := by
  rw [(finiteModel_hasDerivAt hN hs).deriv]
  ring

lemma multiplier_bound {B : ℝ} {s : ℂ} (hB : 0 ≤ B)
    (hf : ∀ j < 7, ‖factor j s‖ ≤ B) : ‖multiplier s‖ ≤ B^7 := by
  rw [← product_seven]
  exact product_norm_le 7 hB hf

/-- Both bounds are on the ACTUAL source and its ACTUAL first derivative. -/
theorem value_error {N : ℕ} {B : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hB : 0 ≤ B) (hs : 0 < s.re)
    (hf : ∀ j < 7, ‖factor j s‖ ≤ B) :
    ‖poleNormalizedZeta s-finiteModel N s‖ ≤ valueRadius B N := by
  rw [finiteModel_residual hN hs,norm_mul,norm_neg]
  exact mul_le_mul (multiplier_bound hB hf) (tail_bound hN hs)
    (norm_nonneg _) (pow_nonneg hB _)

theorem derivative_error {N : ℕ} {B : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hB : 0 ≤ B) (hs : 0 < s.re)
    (hf : ∀ j < 7, ‖factor j s‖ ≤ B) :
    ‖deriv poleNormalizedZeta s-deriv (finiteModel N) s‖ ≤ derivativeRadius B N := by
  have ha := multiplier_bound hB hf
  have hd : ‖productSlope 7 s‖ ≤ 7*B^6 := by
    simpa using productSlope_norm_le 7 hB hf
  rw [derivative_residual hN hs]
  calc
    _ ≤ ‖productSlope 7 s‖*‖tail (N : ℝ) s‖+
        ‖multiplier s‖*‖sixthKernel.logTail (s+6) (N : ℝ)‖ := by
      simpa only [norm_mul,norm_neg] using norm_add_le
        (-productSlope 7 s*tail (N : ℝ) s)
        (multiplier s*sixthKernel.logTail (s+6) (N : ℝ))
    _ ≤ derivativeRadius B N := add_le_add
      (mul_le_mul hd (tail_bound hN hs) (norm_nonneg _) (by positivity))
      (mul_le_mul ha (logTail_bound hN hs) (norm_nonneg _) (pow_nonneg hB _))

/-- Strict real boundaries preserve the source domain and its reflected points. -/
def band (T : ℝ) : Set ℂ := {s | 0 < s.re ∧ s.re < 1 ∧ -T ≤ s.im ∧ s.im ≤ T}

lemma band_convex (T : ℝ) : Convex ℝ (band T) := by
  change Convex ℝ ({s : ℂ | 0 < s.re} ∩ ({s : ℂ | s.re < 1} ∩
    ({s : ℂ | -T ≤ s.im} ∩ {s : ℂ | s.im ≤ T})))
  exact (convex_halfSpace_re_gt _).inter ((convex_halfSpace_re_lt _).inter
    ((convex_halfSpace_im_ge _).inter (convex_halfSpace_im_le _)))

lemma band_factors {T : ℝ} {s : ℂ} (hs : s ∈ band T) (j : ℕ) (hj : j < 7) :
    ‖factor j s‖ ≤ T+6 := by
  have hr : |s.re| ≤ 1 := by rw [abs_of_pos hs.1]; exact hs.2.1.le
  have hi : |s.im| ≤ T := abs_le.mpr ⟨hs.2.2.1,hs.2.2.2⟩
  have hn : ‖s‖ ≤ 1+T := (Complex.norm_le_abs_re_add_abs_im s).trans (add_le_add hr hi)
  have hc : ‖(j : ℂ)-1‖ ≤ (5 : ℝ) := by interval_cases j <;> norm_num
  have h := (norm_add_le s ((j : ℂ)-1)).trans (add_le_add hn hc)
  simpa only [factor,add_sub_assoc,show (1 : ℝ)+T+5=T+6 by ring] using h

/-- These limits fix B; increasing height is NOT part of this limiting operation. -/
lemma tailRadius_tendsto_zero : Tendsto (fun n : ℕ => tailRadius (n+1)) atTop (𝓝 0) := by
  have hn : Tendsto (fun n : ℕ => (n : ℝ)+1) atTop atTop :=
    tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  have h := (tendsto_rpow_neg_atTop (by norm_num : (0 : ℝ) < 5)).comp hn
  simpa [tailRadius,Nat.cast_add,Nat.cast_one] using h.div_const (30240*5 : ℝ)

lemma logRadius_tendsto_zero : Tendsto (fun n : ℕ => logRadius (n+1)) atTop (𝓝 0) := by
  have hn : Tendsto (fun n : ℕ => (n : ℝ)+1) atTop atTop :=
    tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  have h := (tendsto_rpow_neg_atTop (by norm_num : (0 : ℝ) < 4)).comp hn
  simpa [logRadius,Nat.cast_add,Nat.cast_one] using h.div_const (30240*4 : ℝ)

lemma valueRadius_tendsto_zero (B : ℝ) :
    Tendsto (fun n : ℕ => valueRadius B (n+1)) atTop (𝓝 0) := by
  simpa [valueRadius] using tailRadius_tendsto_zero.const_mul (B^7)

lemma derivativeRadius_tendsto_zero (B : ℝ) :
    Tendsto (fun n : ℕ => derivativeRadius B (n+1)) atTop (𝓝 0) := by
  simpa [derivativeRadius] using (tailRadius_tendsto_zero.const_mul (7*B^6)).add
    (logRadius_tendsto_zero.const_mul (B^7))

/-- A rational illustration of the actual uniform bounds, not a zero exclusion. -/
lemma cutoff64_radii : valueRadius 26 64 ≤ (1/20000 : ℝ) ∧
    derivativeRadius 26 64 ≤ (1/250 : ℝ) := by
  norm_num [valueRadius,derivativeRadius,tailRadius,logRadius,Real.rpow_neg]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.C1Approximation
