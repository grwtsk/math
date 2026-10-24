# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenDerivativeSource

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b8c1570d8e3aaf419e33610d00a93d0be37161a` · SHA-256 `aeac43c83340ea153747fa369fa04ffcef65fc4aaa55a690775663852ad1c064`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinTailDerivative
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor
import Mathlib.Data.Fin.VecNotation
import Mathlib.Algebra.BigOperators.Fin

set_option autoImplicit false

/-!
# The exact first derivative of the cutoff-sixteen arithmetic source

All sixteen positive powers, the endpoint and B2/B4/B6 corrections are retained.
The derivative of the true Mellin tail is a separately integrable logarithmic
integral. Its sign and the derivative of all seven multiplier factors are charged.
The source identity is used on Re(s)>0 only. No derivative inequality is obtained
by differentiating the previous value-error inequality.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.DerivativeSixteen
open Complex Set Filter MellinPrimitiveStep
open scoped Topology
noncomputable section

def Region (s : ℂ) : Prop := 0 < s.re ∧ s.re ≤ 1 ∧ (14 : ℝ) ≤ s.im ∧ s.im ≤ 15

def factor (j : ℕ) (s : ℂ) : ℂ := s + (j : ℂ) - 1
def product : ℕ → ℂ → ℂ
  | 0, _ => 1
  | n+1, s => product n s * factor n s
def productSlope : ℕ → ℂ → ℂ
  | 0, _ => 0
  | n+1, s => productSlope n s * factor n s + product n s

lemma product_hasDerivAt (n : ℕ) (s : ℂ) : HasDerivAt (product n) (productSlope n s) s := by
  induction n with
  | zero => simpa [product, productSlope] using hasDerivAt_const s (1 : ℂ)
  | succ n ih =>
    have hf : HasDerivAt (factor n) 1 s := by
      simpa [factor] using ((hasDerivAt_id s).add_const (n : ℂ)).sub_const 1
    simpa [product, productSlope, mul_one] using ih.mul hf

lemma product_norm_le (n : ℕ) {B : ℝ} {s : ℂ} (hB : 0 ≤ B)
    (hf : ∀ j < n, ‖factor j s‖ ≤ B) : ‖product n s‖ ≤ B ^ n := by
  revert hf
  induction n with
  | zero => intro hf; simp [product]
  | succ n ih =>
    intro hf
    rw [product, norm_mul, pow_succ]
    exact mul_le_mul (ih (fun j hj => hf j (by omega))) (hf n (by omega))
      (norm_nonneg _) (pow_nonneg hB _)

lemma productSlope_norm_le (n : ℕ) {B : ℝ} {s : ℂ} (hB : 0 ≤ B)
    (hf : ∀ j < n, ‖factor j s‖ ≤ B) :
    ‖productSlope n s‖ ≤ (n : ℝ) * B ^ (n-1) := by
  revert hf
  induction n with
  | zero => intro hf; simp [productSlope]
  | succ n ih =>
    intro hf
    cases n with
    | zero => simp [productSlope, product]
    | succ n =>
      have hf' : ∀ j < n+1, ‖factor j s‖ ≤ B := fun j hj => hf j (by omega)
      have hd := ih hf'
      have hp := product_norm_le (n+1) hB hf'
      calc
        ‖productSlope (n+1+1) s‖ ≤
            ‖productSlope (n+1) s‖ * ‖factor (n+1) s‖ + ‖product (n+1) s‖ := by
          simpa only [productSlope, norm_mul] using norm_add_le
            (productSlope (n+1) s * factor (n+1) s) (product (n+1) s)
        _ ≤ ((n+1 : ℕ) : ℝ) * B ^ n * B + B ^ (n+1) := by
          exact add_le_add (mul_le_mul (by simpa using hd) (hf (n+1) (by omega))
            (norm_nonneg _) (by positivity)) hp
        _ = ((n+1+1 : ℕ) : ℝ) * B ^ ((n+1+1)-1) := by
          simp only [Nat.add_sub_cancel, pow_succ, Nat.cast_add, Nat.cast_one]
          ring

lemma product_four (s : ℂ) : product 4 s = CubicPrimitive.multiplier s := by
  unfold CubicPrimitive.multiplier
  norm_num [product, factor] <;> ring
lemma product_six (s : ℂ) : product 6 s = QuarticPrimitive.multiplier s * (s+4) := by
  unfold QuarticPrimitive.multiplier CubicPrimitive.multiplier
  norm_num [product, factor] <;> ring
lemma product_seven (s : ℂ) : product 7 s = multiplier s := by
  unfold multiplier QuarticPrimitive.multiplier CubicPrimitive.multiplier
  norm_num [product, factor] <;> ring

lemma multiplier_hasDerivAt (s : ℂ) : HasDerivAt multiplier (productSlope 7 s) s := by
  have he : multiplier = product 7 := funext (fun z => (product_seven z).symm)
  rw [he]
  exact product_hasDerivAt 7 s

def base (k : Fin 16) : ℝ := (k.val : ℝ) + 1
def power (k : Fin 16) (s : ℂ) : ℂ := (base k : ℂ) ^ (-s)
def weight (s : ℂ) : ℂ := 16 - (s-1)/2 + s*(s-1)/192 -
  product 4 s / (720*16^3) + product 6 s / (30240*16^5)
def weightSlope (s : ℂ) : ℂ := -1/2 + (2*s-1)/192 -
  productSlope 4 s / (720*16^3) + productSlope 6 s / (30240*16^5)

def value (s : ℂ) : ℂ := (s-1)*(∑ k : Fin 16, power k s) + weight s * power 15 s

def exactDerivative (s : ℂ) : ℂ :=
  (∑ k : Fin 16, (1-(s-1)*(Real.log (base k) : ℂ))*power k s) +
    (weightSlope s - weight s*(Real.log 16 : ℂ))*power 15 s

lemma base_bounds (k : Fin 16) : 1 ≤ base k ∧ base k ≤ 16 := by
  have h : k.val ≤ 15 := by omega
  have hr : (k.val : ℝ) ≤ 15 := by exact_mod_cast h
  unfold base
  constructor <;> linarith [Nat.cast_nonneg (α := ℝ) k.val]

lemma power_hasDerivAt (k : Fin 16) (s : ℂ) :
    HasDerivAt (power k) (-(Real.log (base k) : ℂ)*power k s) s := by
  have hk : 0 < base k := zero_lt_one.trans_le (base_bounds k).1
  have he : power k = fun z : ℂ => Complex.exp (-z*(Real.log (base k) : ℂ)) := by
    funext z
    exact positive_cpow_eq_exp_realLog hk (-z)
  rw [he]
  have h := (Complex.hasDerivAt_exp (-s*(Real.log (base k) : ℂ))).comp s
    ((hasDerivAt_id s).neg.mul_const (Real.log (base k) : ℂ))
  convert h using 1 <;> ring

lemma weight_hasDerivAt (s : ℂ) : HasDerivAt weight (weightSlope s) s := by
  have h1 := ((hasDerivAt_id s).sub_const 1).div_const (2 : ℂ)
  have h2 := ((hasDerivAt_id s).mul ((hasDerivAt_id s).sub_const 1)).div_const (192 : ℂ)
  have h4 := (product_hasDerivAt 4 s).div_const (720*16^3 : ℂ)
  have h6 := (product_hasDerivAt 6 s).div_const (30240*16^5 : ℂ)
  convert ((((hasDerivAt_const s (16 : ℂ)).sub h1).add h2).sub h4).add h6 using 1 <;>
    simp only [weight, weightSlope] <;> ring

lemma value_hasDerivAt (s : ℂ) : HasDerivAt value (exactDerivative s) s := by
  have hsum := HasDerivAt.fun_sum (u := (Finset.univ : Finset (Fin 16)))
    (fun k _ => power_hasDerivAt k s)
  have h := (((hasDerivAt_id s).sub_const 1).mul hsum).add
    ((weight_hasDerivAt s).mul (power_hasDerivAt 15 s))
  convert h using 1
  · rfl
  · simp only [exactDerivative, one_mul]
    rw [Finset.mul_sum]
    simp only [sub_mul, one_mul]
    rw [Finset.sum_sub_distrib]
    norm_num [base]
    ring

/-- Exact regrouping of the existing corrected arithmetic finite model. -/
lemma finiteModel_sixteen (s : ℂ) : finiteModel 16 s = value s := by
  have hsum : finiteDirichletPowerSum 16 s = ∑ k : Fin 16, power k s := by
    rw [finiteDirichletPowerSum,
      show Finset.Icc (1 : ℕ) 16 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16} from by decide]
    norm_num [power, base, Fin.sum_univ_succ] <;> ring
  have hshift (j : ℕ) : (16 : ℂ)^(-(s+(j : ℂ))) = (16 : ℂ)^(-s)/(16 : ℂ)^j := by
    rw [show -(s+(j : ℂ)) = -s-(j : ℂ) by ring,
      Complex.cpow_sub _ _ (by norm_num : (16 : ℂ) ≠ 0), Complex.cpow_natCast]
  have hend : (16 : ℂ)^(1-s) = 16*(16 : ℂ)^(-s) := by
    rw [sub_eq_add_neg, Complex.cpow_add _ _ (by norm_num : (16 : ℂ) ≠ 0), Complex.cpow_one]
  unfold finiteModel QuarticPrimitive.finiteModel CubicPrimitive.finiteModel
    CenteredMellin.finiteModel finitePowerPoleModel
  norm_num only [Nat.cast_ofNat]
  rw [hsum, hend, hshift 1, hshift 3, hshift 5]
  unfold value weight
  rw [product_four, product_six]
  norm_num [power, base] <;> ring

/-- Exact first-derivative telescope, including the multiplier derivative and log tail. -/
theorem source_derivative_identity {s : ℂ} (hs : 0 < s.re) :
    deriv poleNormalizedZeta s = exactDerivative s - productSlope 7 s * tail 16 s +
      multiplier s * sixthKernel.logTail (s+6) 16 := by
  have ht0 := sixthKernel.tail_hasDerivAt (T := 16) (z := s+6) (by norm_num)
    (by simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  have ht : HasDerivAt (tail 16) (-sixthKernel.logTail (s+6) 16) s := by
    simpa only [tail, mul_one] using ht0.comp s ((hasDerivAt_id s).add_const 6)
  have hd := (value_hasDerivAt s).sub ((multiplier_hasDerivAt s).mul ht)
  have he : poleNormalizedZeta =ᶠ[𝓝 s] (fun z => value z - multiplier z * tail 16 z) := by
    filter_upwards [(isOpen_lt continuous_const Complex.continuous_re).mem_nhds hs] with z hz
    have h := finiteModel_residual (by decide : 1 ≤ (16 : ℕ)) hz
    rw [finiteModel_sixteen] at h
    linear_combination h
  have h := (hd.congr_of_eventuallyEq he).deriv
  rw [h]
  ring

lemma region_norms {s : ℂ} (hs : Region s) : ‖s‖ ≤ (16 : ℝ) ∧ ‖s-1‖ ≤ (17 : ℝ) := by
  have hn := Complex.norm_le_abs_re_add_abs_im s
  have hr : |s.re| ≤ (1 : ℝ) := by rw [abs_of_pos hs.1]; exact hs.2.1
  have hi : |s.im| ≤ (15 : ℝ) := by rw [abs_of_nonneg (by linarith [hs.2.2.1])]; exact hs.2.2.2
  have h : ‖s‖ ≤ (16 : ℝ) := by linarith
  exact ⟨h, (norm_sub_le s 1).trans (by norm_num; linarith)⟩

lemma region_factors {s : ℂ} (hs : Region s) (j : ℕ) (hj : j < 7) :
    ‖factor j s‖ ≤ (21 : ℝ) := by
  have hc : ‖((j : ℂ)-1)‖ ≤ (5 : ℝ) := by
    interval_cases j <;> norm_num
  have hn := (norm_add_le s ((j : ℂ)-1)).trans (add_le_add (region_norms hs).1 hc)
  simpa [factor, add_sub_assoc] using hn

lemma region_weight_bounds {s : ℂ} (hs : Region s) :
    ‖weight s‖ ≤ (30 : ℝ) ∧ ‖weightSlope s‖ ≤ (3 : ℝ) := by
  have hn := region_norms hs
  have h4 := product_norm_le 4 (by norm_num : (0 : ℝ) ≤ 21)
    (s := s) (fun j hj => region_factors hs j (by omega))
  have h6 := product_norm_le 6 (by norm_num : (0 : ℝ) ≤ 21)
    (s := s) (fun j hj => region_factors hs j (by omega))
  have hd4 := productSlope_norm_le 4 (by norm_num : (0 : ℝ) ≤ 21)
    (s := s) (fun j hj => region_factors hs j (by omega))
  have hd6 := productSlope_norm_le 6 (by norm_num : (0 : ℝ) ≤ 21)
    (s := s) (fun j hj => region_factors hs j (by omega))
  constructor
  · calc
      ‖weight s‖ ≤ 16 + ‖s-1‖/2 + ‖s‖*‖s-1‖/192 +
          ‖product 4 s‖/(720*16^3) + ‖product 6 s‖/(30240*16^5) := by
        unfold weight
        bound
      _ ≤ 30 := by nlinarith [mul_le_mul hn.1 hn.2 (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 16)]
  · have htw : ‖2*s-1‖ ≤ (33 : ℝ) := by
      calc
        _ ≤ ‖(2 : ℂ)‖*‖s‖+‖(1 : ℂ)‖ := by simpa [norm_mul] using norm_sub_le (2*s) 1
        _ ≤ 33 := by norm_num; linarith
    calc
      ‖weightSlope s‖ ≤ 1/2 + ‖2*s-1‖/192 +
          ‖productSlope 4 s‖/(720*16^3) + ‖productSlope 6 s‖/(30240*16^5) := by
        unfold weightSlope
        bound
      _ ≤ 3 := by norm_num at hd4 hd6; nlinarith

/-- Uniform first-derivative source error. No cutoff-one/two saving is transported. -/
theorem derivative_source_error {s : ℂ} (hs : Region s) :
    ‖deriv poleNormalizedZeta s - exactDerivative s‖ ≤ (1/4 : ℝ) := by
  have hj := sixthKernel.tail_norm_le (T := 16) (σ := 6) (z := s+6)
    (by norm_num) (by norm_num) (by simp only [Complex.add_re, Complex.ofNat_re]; linarith [hs.1])
  have hl := sixthKernel.logTail_norm_le (T := 16) (σ := 6) (z := s+6)
    (by norm_num) (by norm_num) (by simp only [Complex.add_re, Complex.ofNat_re]; linarith [hs.1])
  change ‖tail 16 s‖ ≤ (1/30240 : ℝ) * ((16 : ℝ)^(-(6-1 : ℝ))/(6-1)) at hj
  norm_num [Real.rpow_neg] at hj
  change ‖sixthKernel.logTail (s+6) 16‖ ≤
    (1/30240 : ℝ) * ((16 : ℝ)^(-(6-2 : ℝ))/(6-2)) at hl
  norm_num [Real.rpow_neg] at hl
  have ha := product_norm_le 7 (by norm_num : (0 : ℝ) ≤ 21) (region_factors hs)
  have had := productSlope_norm_le 7 (by norm_num : (0 : ℝ) ≤ 21) (region_factors hs)
  rw [product_seven] at ha
  rw [source_derivative_identity hs.1]
  have he : exactDerivative s-productSlope 7 s*tail 16 s+
      multiplier s*sixthKernel.logTail (s+6) 16-exactDerivative s =
        -productSlope 7 s*tail 16 s+multiplier s*sixthKernel.logTail (s+6) 16 := by ring
  rw [he]
  calc
    _ ≤ ‖productSlope 7 s‖*‖tail 16 s‖ +
        ‖multiplier s‖*‖sixthKernel.logTail (s+6) 16‖ := by
      simpa only [norm_mul, norm_neg] using norm_add_le
        (-productSlope 7 s*tail 16 s) (multiplier s*sixthKernel.logTail (s+6) 16)
    _ ≤ (7*21^6 : ℝ)/(30240*5*16^5) + (21^7 : ℝ)/(30240*4*16^4) := by
      apply add_le_add
      · exact (mul_le_mul (by simpa using had) hj (norm_nonneg _) (by norm_num)).trans_eq (by norm_num)
      · exact (mul_le_mul ha hl (norm_nonneg _) (by norm_num)).trans_eq (by norm_num)
    _ ≤ 1/4 := by norm_num

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.DerivativeSixteen
```
