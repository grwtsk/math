/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalPowerEvaluation

set_option autoImplicit false

/-!
# Uniform value and derivative enclosures of one arithmetic power

ONE polynomial is used over a whole region, not separately rounded endpoint
samples. Its derivative has one fewer exponential term. The derivative error
charges the logarithm coefficient separately from the shorter Taylor remainder.
The positive-real-base convention and BOTH Taylor ratio guards remain explicit.
No derivative is obtained by differentiating a norm inequality.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.UniformPowerC1
open Complex Finset
open RationalPowerEvaluation
noncomputable section

/-- The n+1 term polynomial differentiates to the n term polynomial. -/
lemma expTaylor_hasDerivAt (n : ℕ) (z : ℂ) :
    HasDerivAt (complexExpTaylor (n+1)) (complexExpTaylor n z) z := by
  induction n with
  | zero => simpa [complexExpTaylor] using hasDerivAt_const z (1 : ℂ)
  | succ n ih =>
    have hf : (n.factorial : ℂ) ≠ 0 := by exact_mod_cast Nat.factorial_ne_zero n
    have hn : ((n : ℂ)+1) ≠ 0 := by exact_mod_cast Nat.succ_ne_zero n
    have ht : HasDerivAt (fun w : ℂ => w^(n+1)/((n+1).factorial : ℂ))
        (z^n/(n.factorial : ℂ)) z := by
      convert ((hasDerivAt_id z).pow (n+1)).div_const ((n+1).factorial : ℂ) using 1
      simp only [Nat.add_sub_cancel,one_mul,mul_one,Nat.factorial_succ,
        Nat.cast_mul,Nat.cast_add,Nat.cast_one]
      field_simp [hf,hn] <;> ring
    simpa only [complexExpTaylor,Finset.sum_range_succ] using ih.add ht

def power (k : ℕ) (s : ℂ) : ℂ := (k : ℂ)^(-s)
def poly (k m n : ℕ) (s : ℂ) : ℂ :=
  complexExpTaylor (n+1) (-s*(logCenter k m : ℂ))
def slope (k m n : ℕ) (s : ℂ) : ℂ :=
  -(logCenter k m : ℂ)*complexExpTaylor n (-s*(logCenter k m : ℂ))

lemma power_hasDerivAt {k : ℕ} (hk : 1 ≤ k) (s : ℂ) :
    HasDerivAt (power k) (-(Real.log (k : ℝ) : ℂ)*power k s) s := by
  have hk0 : (0 : ℝ) < (k : ℝ) := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  have he : power k = fun z : ℂ => Complex.exp (-z*(Real.log (k : ℝ) : ℂ)) := by
    funext z
    simpa [power] using positive_cpow_eq_exp_realLog hk0 (-z)
  rw [he]
  have h := (Complex.hasDerivAt_exp (-s*(Real.log (k : ℝ) : ℂ))).comp s
    ((hasDerivAt_id s).neg.mul_const (Real.log (k : ℝ) : ℂ))
  convert h using 1 <;> ring

lemma poly_hasDerivAt (k m n : ℕ) (s : ℂ) :
    HasDerivAt (poly k m n) (slope k m n s) s := by
  have h := (expTaylor_hasDerivAt n (-s*(logCenter k m : ℂ))).comp s
    ((hasDerivAt_id s).neg.mul_const (logCenter k m : ℂ))
  convert h using 1 <;> simp only [poly,slope] <;> ring

/-- All of these radii are rational; n denotes the DERIVATIVE term count. -/
def argumentBound (k m : ℕ) (S : ℚ) : ℚ := S*|logCenter k m|
def termRadius (k m j : ℕ) (S : ℚ) : ℚ :=
  2*S*logRadius k m+2*(argumentBound k m S)^j/(j.factorial : ℚ)
def valueRadius (k m n : ℕ) (S : ℚ) : ℚ := termRadius k m (n+1) S
def derivativeRadius (k m n : ℕ) (S : ℚ) : ℚ :=
  logRadius k m+|logCenter k m|*termRadius k m n S

def Guard (k m n : ℕ) (S : ℚ) : Prop :=
  1 ≤ k ∧ 1 ≤ n ∧ 0 ≤ S ∧ S*logRadius k m ≤ 1 ∧
    argumentBound k m S/((n : ℚ)+1) ≤ 1/2 ∧
    argumentBound k m S/((n : ℚ)+2) ≤ 1/2

lemma logRadius_nonneg {k : ℕ} (hk : 1 ≤ k) (m : ℕ) : 0 ≤ logRadius k m := by
  have h := (logRecord k m hk).radius_nonneg
  change (0 : ℝ) ≤ (logRadius k m : ℝ) at h
  exact_mod_cast h

lemma termRadius_nonneg {k : ℕ} (hk : 1 ≤ k) (m j : ℕ) {S : ℚ} (hS : 0 ≤ S) :
    0 ≤ termRadius k m j S := by
  have hd := logRadius_nonneg hk m
  have hR : 0 ≤ argumentBound k m S := mul_nonneg hS (abs_nonneg _)
  unfold termRadius
  positivity

lemma radii_nonneg {k m n : ℕ} {S : ℚ} (h : Guard k m n S) :
    0 ≤ valueRadius k m n S ∧ 0 ≤ derivativeRadius k m n S := by
  refine ⟨termRadius_nonneg h.1 m (n+1) h.2.2.1,?_⟩
  exact add_nonneg (logRadius_nonneg h.1 m)
    (mul_nonneg (abs_nonneg _) (termRadius_nonneg h.1 m n h.2.2.1))

/-- This applies to every complex point in the declared half disk. -/
lemma shorter_error {k m j : ℕ} {S : ℚ} {s : ℂ}
    (hk : 1 ≤ k) (hs : 0 ≤ s.re) (hn : ‖s‖ ≤ (S : ℝ))
    (hsmall : S*logRadius k m ≤ 1)
    (hguard : argumentBound k m S/((j : ℚ)+1) ≤ 1/2) :
    ‖power k s-complexExpTaylor j (-s*(logCenter k m : ℂ))‖ ≤
      (termRadius k m j S : ℝ) := by
  let e := logRecord k m hk
  have hsmallR : (S : ℝ)*e.radius ≤ 1 := by
    change (S : ℝ)*(logRadius k m : ℝ) ≤ 1
    exact_mod_cast hsmall
  have harg : (S : ℝ)*|e.center| ≤ (argumentBound k m S : ℝ) := by
    change (S : ℝ)*|(logCenter k m : ℝ)| ≤ _
    simp [argumentBound]
  have hg : (argumentBound k m S : ℝ)/((j : ℝ)+1) ≤ 1/2 := by exact_mod_cast hguard
  let E := negativePowerEnclosureOfBounds (x := (k : ℝ)) (by exact_mod_cast hk) e s hs j
    (S : ℝ) (argumentBound k m S : ℝ) hn hsmallR harg hg
  have he := E.encloses
  change ‖((k : ℝ) : ℂ)^(-s)-
      complexExpTaylor j (-s*((logCenter k m : ℝ) : ℂ))‖ ≤
    2*((S : ℝ)*(logRadius k m : ℝ))+
      complexExpTaylorRadius j (argumentBound k m S : ℝ) at he
  convert he using 1 <;> simp [power,termRadius,complexExpTaylorRadius] <;> push_cast <;> ring

/-- The two errors belong to the SAME polynomial and its actual derivative. -/
theorem errors {k m n : ℕ} {S : ℚ} {s : ℂ} (h : Guard k m n S)
    (hs : 0 ≤ s.re) (hn : ‖s‖ ≤ (S : ℝ)) :
    ‖power k s-poly k m n s‖ ≤ (valueRadius k m n S : ℝ) ∧
    ‖deriv (power k) s-deriv (poly k m n) s‖ ≤ (derivativeRadius k m n S : ℝ) := by
  obtain ⟨hk,hnpos,hS,hsmall,hgShort,hgLong⟩ := h
  have hshort := shorter_error hk hs hn hsmall hgShort
  constructor
  · apply shorter_error hk hs hn hsmall
    convert hgLong using 1 <;> push_cast <;> ring
  · rw [(power_hasDerivAt hk s).deriv,(poly_hasDerivAt k m n s).deriv]
    have hl := (logRecord k m hk).encloses
    change |Real.log (k : ℝ)-(logCenter k m : ℝ)| ≤ (logRadius k m : ℝ) at hl
    have hlog : ‖(logCenter k m : ℂ)-(Real.log (k : ℝ) : ℂ)‖ ≤ (logRadius k m : ℝ) := by
      rw [show (logCenter k m : ℂ)=((logCenter k m : ℝ) : ℂ) by norm_cast,
        ← Complex.ofReal_sub,Complex.norm_real,Real.norm_eq_abs,abs_sub_comm]
      exact hl
    have hp : ‖power k s‖ ≤ 1 := by
      simpa [power] using positive_base_neg_power_norm_le_one (x := (k : ℝ))
        (by exact_mod_cast hk) hs
    have heq : -(Real.log (k : ℝ) : ℂ)*power k s-slope k m n s =
        ((logCenter k m : ℂ)-(Real.log (k : ℝ) : ℂ))*power k s-
        (logCenter k m : ℂ)*(power k s-complexExpTaylor n (-s*(logCenter k m : ℂ))) := by
      unfold slope; ring
    rw [heq]
    have hd0 : (0 : ℝ) ≤ (logRadius k m : ℝ) := by exact_mod_cast logRadius_nonneg hk m
    have hb := (norm_sub_le _ _).trans (add_le_add
      (by simpa only [norm_mul,mul_one] using mul_le_mul hlog hp (norm_nonneg _) hd0)
      (by simpa only [norm_mul] using mul_le_mul_of_nonneg_left hshort
        (norm_nonneg (logCenter k m : ℂ))))
    have hnorm : ‖(logCenter k m : ℂ)‖=|(logCenter k m : ℝ)| := by
      rw [show (logCenter k m : ℂ)=((logCenter k m : ℝ) : ℂ) by norm_cast,
        Complex.norm_real,Real.norm_eq_abs]
    simpa only [hnorm,derivativeRadius,Rat.cast_add,Rat.cast_mul,Rat.cast_abs] using hb

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.UniformPowerC1
