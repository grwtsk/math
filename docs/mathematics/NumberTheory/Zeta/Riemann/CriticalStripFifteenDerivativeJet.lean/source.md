# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenDerivativeJet

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58b659fdd4811b8e9d0ac115dd75ca486fc3191b` · SHA-256 `46618500dec1f39acf2aa19542e95e8d2f7476450bf81d3db391a2ca6a25b763`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenDerivativeSource

set_option autoImplicit false
set_option maxRecDepth 8192

/-!
# A rational polynomial enclosure of the actual finite first derivative

Center c=1/2+29i/2; all sixteen arithmetic bases are included. Real logs have
radius2^-28, true powers at c have radius2^-20, and the displacement Taylor sum
has twelve terms. The model below is an enclosure of the finite DERIVATIVE
formula, not an assertion that rounded coefficients are true derivatives.
Every rounded and omitted high coefficient is explicitly charged.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.DerivativeSixteen.Jet
open Complex Finset Set
noncomputable section

def center : ℂ := ⟨1/2,29/2⟩
def logRadius : ℝ := 1/268435456
def sampleRadius : ℝ := 1/1048576

def logCenter : Fin 16 → ℝ := ![0, (372130559/536870912), (1179625963/1073741824), (372130559/268435456), (54003775/33554432), (1923887081/1073741824), (2089405113/1073741824), (1116391677/536870912), (2359251925/1073741824), (1236190959/536870912), (643680111/268435456), (2668148199/1073741824), (1377046701/536870912), (2833666231/1073741824), (1453873381/536870912), (372130559/134217728)]
def sample : Fin 16 → ℂ := ![⟨1,0⟩, ⟨(-615343289/1073741824),(111190543/268435456)⟩, ⟨(-604723183/1073741824),(136444275/1073741824)⟩, ⟨(84207381/536870912),(-509771365/1073741824)⟩, ⟨(-13397303/134217728),(468078077/1073741824)⟩, ⟨(290039089/1073741824),(-328680561/1073741824)⟩, ⟨(-50642347/134217728),(-2972909/134217728)⟩, ⟨(57320169/536870912),(180950809/536870912)⟩, ⟨(80809251/268435456),(-38422185/268435456)⟩, ⟨(-66231889/536870912),(-78160691/268435456)⟩, ⟨(-316499913/1073741824),(68109109/1073741824)⟩, ⟨(-15035703/536870912),(308500409/1073741824)⟩, ⟨(260290311/1073741824),(9043131/67108864)⟩, ⟨(242029621/1073741824),(-77092799/536870912)⟩, ⟨(440845/536870912),(-277237545/1073741824)⟩, ⟨(-215604261/1073741824),(-159913717/1073741824)⟩]
def weightCoefficient : Fin 7 → ℂ := ![⟨(3840252887083/253671505920),(-153167409403/21139292160)⟩, ⟨(-586101317/1174405120),(19690468111/126835752960)⟩, ⟨(20488595/3623878656),(-11629/165150720)⟩, ⟨(-631/293601280),(-42601/1981808640)⟩, ⟨(-27709/63417876480),(29/1056964608)⟩, ⟨(1/2642411520),(29/10569646080)⟩, ⟨(1/31708938240),0⟩]
def coefficient : Fin 9 → ℂ := ![⟨(5554747587/4294967296),(26696649837/2147483648)⟩, ⟨(10740455753/4294967296),(-11220226155/1073741824)⟩, ⟨(-2608153937/1073741824),(4564920175/1073741824)⟩, ⟨(4943392897/4294967296),(-4561028021/4294967296)⟩, ⟨(-772626841/2147483648),(689796271/4294967296)⟩, ⟨(354525021/4294967296),(-7002999/1073741824)⟩, ⟨(-62302299/4294967296),(-17592295/4294967296)⟩, ⟨(8386243/4294967296),(6246565/4294967296)⟩, ⟨(-50307/268435456),(-323653/1073741824)⟩]

lemma center_norm : ‖center‖ ≤ (15 : ℝ) :=
  (Complex.norm_le_abs_re_add_abs_im center).trans (by norm_num [center])

lemma rounded_log {x a e : ℝ} (R : RealLogEnclosure x)
    (h : |R.center-a|+R.radius ≤ e) : |Real.log x-a| ≤ e := by
  have ht : |Real.log x-a| ≤ |Real.log x-R.center|+|R.center-a| := by
    convert abs_add_le (Real.log x-R.center) (R.center-a) using 1 <;> ring
  linarith [R.encloses]

lemma log_enclosed_1 : |Real.log (1 : ℝ)-logCenter 0| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 0 1 (by norm_num) (by norm_num) 40)
    (a := logCenter 0) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_2 : |Real.log (2 : ℝ)-logCenter 1| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 1 1 (by norm_num) (by norm_num) 40)
    (a := logCenter 1) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_3 : |Real.log (3 : ℝ)-logCenter 2| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 1 (3/2) (by norm_num) (by norm_num) 40)
    (a := logCenter 2) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_4 : |Real.log (4 : ℝ)-logCenter 3| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 2 1 (by norm_num) (by norm_num) 40)
    (a := logCenter 3) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_5 : |Real.log (5 : ℝ)-logCenter 4| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 2 (5/4) (by norm_num) (by norm_num) 40)
    (a := logCenter 4) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_6 : |Real.log (6 : ℝ)-logCenter 5| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 2 (3/2) (by norm_num) (by norm_num) 40)
    (a := logCenter 5) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_7 : |Real.log (7 : ℝ)-logCenter 6| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 2 (7/4) (by norm_num) (by norm_num) 40)
    (a := logCenter 6) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_8 : |Real.log (8 : ℝ)-logCenter 7| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 3 1 (by norm_num) (by norm_num) 40)
    (a := logCenter 7) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_9 : |Real.log (9 : ℝ)-logCenter 8| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 3 (9/8) (by norm_num) (by norm_num) 40)
    (a := logCenter 8) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_10 : |Real.log (10 : ℝ)-logCenter 9| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 3 (5/4) (by norm_num) (by norm_num) 40)
    (a := logCenter 9) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_11 : |Real.log (11 : ℝ)-logCenter 10| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 3 (11/8) (by norm_num) (by norm_num) 40)
    (a := logCenter 10) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_12 : |Real.log (12 : ℝ)-logCenter 11| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 3 (3/2) (by norm_num) (by norm_num) 40)
    (a := logCenter 11) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_13 : |Real.log (13 : ℝ)-logCenter 12| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 3 (13/8) (by norm_num) (by norm_num) 40)
    (a := logCenter 12) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_14 : |Real.log (14 : ℝ)-logCenter 13| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 3 (7/4) (by norm_num) (by norm_num) 40)
    (a := logCenter 13) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_15 : |Real.log (15 : ℝ)-logCenter 14| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 3 (15/8) (by norm_num) (by norm_num) 40)
    (a := logCenter 14) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_16 : |Real.log (16 : ℝ)-logCenter 15| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 4 1 (by norm_num) (by norm_num) 40)
    (a := logCenter 15) (e := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_encloses (k : Fin 16) : |Real.log (base k)-logCenter k| ≤ logRadius := by
  fin_cases k
  · simpa [base] using log_enclosed_1
  · simpa [base] using log_enclosed_2
  · simpa [base] using log_enclosed_3
  · simpa [base] using log_enclosed_4
  · simpa [base] using log_enclosed_5
  · simpa [base] using log_enclosed_6
  · simpa [base] using log_enclosed_7
  · simpa [base] using log_enclosed_8
  · simpa [base] using log_enclosed_9
  · simpa [base] using log_enclosed_10
  · simpa [base] using log_enclosed_11
  · simpa [base] using log_enclosed_12
  · simpa [base] using log_enclosed_13
  · simpa [base] using log_enclosed_14
  · simpa [base] using log_enclosed_15
  · simpa [base] using log_enclosed_16

def logRecord (k : Fin 16) : RealLogEnclosure (base k) where
  center := logCenter k
  radius := logRadius
  radius_nonneg := by norm_num [logRadius]
  encloses := log_encloses k

lemma logCenter_bound (k : Fin 16) : |logCenter k| ≤ (3 : ℝ) := by
  fin_cases k <;> norm_num [logCenter]

/-- A finite rational calculation; no transcendental evaluator is trusted. -/
lemma sample_rounding (k : Fin 16) :
    |(complexExpTaylor 160 (-center*(logCenter k : ℂ))-sample k).re| +
    |(complexExpTaylor 160 (-center*(logCenter k : ℂ))-sample k).im| ≤ logRadius := by
  fin_cases k <;>
    norm_num [complexExpTaylor, Finset.sum_range_succ, pow_succ, center,
      logCenter, sample, logRadius, Complex.mul_re, Complex.mul_im,
      Complex.div_re, Complex.div_im, Complex.normSq_apply]

lemma sample_encloses (k : Fin 16) : ‖(base k : ℂ)^(-center)-sample k‖ ≤ sampleRadius := by
  let e := negativePowerEnclosureOfBounds (base_bounds k).1 (logRecord k)
    center (by norm_num [center]) 160 15 45 center_norm
    (by norm_num [logRecord, logRadius])
    (by have h := logCenter_bound k; change (15 : ℝ)*|logCenter k| ≤ 45; linarith)
    (by norm_num)
  have he := e.encloses
  change ‖(base k : ℂ)^(-center)-complexExpTaylor 160 (-center*(logCenter k : ℂ))‖ ≤
    30*logRadius+complexExpTaylorRadius 160 45 at he
  have hr := (Complex.norm_le_abs_re_add_abs_im _).trans (sample_rounding k)
  have ht : ‖(base k : ℂ)^(-center)-sample k‖ ≤
      ‖(base k : ℂ)^(-center)-complexExpTaylor 160 (-center*(logCenter k : ℂ))‖ +
      ‖complexExpTaylor 160 (-center*(logCenter k : ℂ))-sample k‖ := by
    convert norm_add_le ((base k : ℂ)^(-center)-complexExpTaylor 160 (-center*(logCenter k : ℂ)))
      (complexExpTaylor 160 (-center*(logCenter k : ℂ))-sample k) using 1 <;> ring
  have hnum : 31*logRadius+complexExpTaylorRadius 160 45 ≤ sampleRadius := by
    norm_num [logRadius, sampleRadius, complexExpTaylorRadius]
  linarith

lemma region_distance {s : ℂ} (hs : Region s) : ‖s-center‖ ≤ (3/4 : ℝ) := by
  have hr : |s.re-1/2| ≤ (1/2 : ℝ) := abs_le.mpr ⟨by linarith [hs.1], by linarith [hs.2.1]⟩
  have hi : |s.im-29/2| ≤ (1/2 : ℝ) := abs_le.mpr
    ⟨by linarith [hs.2.2.1], by linarith [hs.2.2.2]⟩
  have hr2 := mul_le_mul hr hr (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1/2)
  have hi2 := mul_le_mul hi hi (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1/2)
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 3/4)).mp
  rw [Complex.sq_norm, Complex.normSq_apply]
  simp only [Complex.sub_re, Complex.sub_im, center, Complex.mk_re, Complex.mk_im]
  nlinarith [sq_abs (s.re-1/2), sq_abs (s.im-29/2)]

def powerJet (k : Fin 16) (s : ℂ) : ℂ :=
  sample k * complexExpTaylor 12 (-(s-center)*(logCenter k : ℂ))

lemma power_jet_encloses (k : Fin 16) {s : ℂ} (hs : Region s) :
    ‖power k s-powerJet k s‖ ≤ (1/4096 : ℝ) := by
  let w : ℂ := -(s-center)
  let E : ℂ := complexExpTaylor 12 (w*(logCenter k : ℂ))
  have hw : ‖w‖ ≤ (3/4 : ℝ) := by simpa [w] using region_distance hs
  have hk := base_bounds k
  have hC : ‖(base k : ℂ)^w‖ ≤ (16 : ℝ) := by
    rw [Complex.norm_cpow_eq_rpow_re_of_pos (zero_lt_one.trans_le hk.1)]
    have hx : w.re ≤ 1 := (Complex.re_le_norm w).trans (hw.trans (by norm_num))
    exact (Real.rpow_le_rpow_of_exponent_le hk.1 hx).trans (by simpa using hk.2)
  have ha : ‖w*(logCenter k : ℂ)‖ ≤ (9/4 : ℝ) := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
    exact (mul_le_mul hw (logCenter_bound k) (abs_nonneg _) (by norm_num)).trans_eq (by norm_num)
  have ht := realLog_powerTaylor_error (zero_lt_one.trans_le hk.1) (logRecord k)
    w 12 (9/4) 16
    (by change ‖w‖*logRadius ≤ 1; norm_num [logRadius]; nlinarith)
    ha (by norm_num) hC
  have he : ‖(base k : ℂ)^w-E‖ ≤ 24*logRadius+complexExpTaylorRadius 12 (9/4) := by
    change ‖(base k : ℂ)^w-E‖ ≤ 16*(2*(‖w‖*logRadius))+complexExpTaylorRadius 12 (9/4) at ht
    have hδ : 0 ≤ logRadius := by norm_num [logRadius]
    nlinarith [mul_le_mul_of_nonneg_right hw hδ]
  have he1 : 24*logRadius+complexExpTaylorRadius 12 (9/4) ≤ (1 : ℝ) := by
    norm_num [logRadius, complexExpTaylorRadius]
  have hnE : ‖E‖ ≤ (17 : ℝ) := by
    have htri := norm_sub_le ((base k : ℂ)^w) ((base k : ℂ)^w-E)
    rw [sub_sub_cancel] at htri
    linarith
  have hcenter := positive_base_neg_power_norm_le_one hk.1 (by norm_num [center])
  have hid : power k s = (base k : ℂ)^(-center)*(base k : ℂ)^w := by
    unfold power
    rw [← Complex.cpow_add _ _ (Complex.ofReal_ne_zero.mpr (zero_lt_one.trans_le hk.1).ne')]
    congr 1
    dsimp [w]
    ring
  have hdecomp : power k s-powerJet k s =
      (base k : ℂ)^(-center)*((base k : ℂ)^w-E) + ((base k : ℂ)^(-center)-sample k)*E := by
    rw [hid]
    dsimp [powerJet, E, w]
    ring
  rw [hdecomp]
  calc
    _ ≤ ‖(base k : ℂ)^(-center)‖*‖(base k : ℂ)^w-E‖ +
        ‖(base k : ℂ)^(-center)-sample k‖*‖E‖ := by
      simpa [norm_mul] using norm_add_le
        ((base k : ℂ)^(-center)*((base k : ℂ)^w-E)) (((base k : ℂ)^(-center)-sample k)*E)
    _ ≤ 24*logRadius+complexExpTaylorRadius 12 (9/4)+17*sampleRadius := by
      have h1 := mul_le_mul hcenter he (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
      have h2 := mul_le_mul (sample_encloses k) hnE (norm_nonneg _)
        (by norm_num [sampleRadius] : 0 ≤ sampleRadius)
      nlinarith
    _ ≤ 1/4096 := by norm_num [logRadius, sampleRadius, complexExpTaylorRadius]

/-- Explicit polynomial for the FINITE derivative, retaining the log coefficient error. -/
def rawModel (s : ℂ) : ℂ :=
  (∑ k : Fin 16, (1-(s-1)*(logCenter k : ℂ))*powerJet k s) +
    (weightSlope s-weight s*(logCenter 15 : ℂ))*powerJet 15 s

def model (s : ℂ) : ℂ := ∑ j : Fin 9, coefficient j*(s-center)^j.val

def eCoefficient (k : Fin 16) (j : ℕ) : ℂ :=
  if j < 12 then sample k*(-(logCenter k : ℂ))^j/(j.factorial : ℂ) else 0

def wCoefficient (j : ℕ) : ℂ := if h : j < 7 then weightCoefficient ⟨j,h⟩ else 0

def rawCoefficient (h : Fin 18) : ℂ :=
  (∑ k : Fin 16, (1-(center-1)*(logCenter k : ℂ))*eCoefficient k h.val -
      (if h.val=0 then 0 else (logCenter k : ℂ)*eCoefficient k (h.val-1))) +
  ∑ i : Fin 7, if i.val ≤ h.val then
    (((i.val+1 : ℕ) : ℂ)*wCoefficient (i.val+1)-(logCenter 15 : ℂ)*wCoefficient i.val)*
      eCoefficient 15 (h.val-i.val) else 0

def liftedCoefficient (j : Fin 18) : ℂ := if h : j.val < 9 then coefficient ⟨j.val,h⟩ else 0

lemma weight_centered (s : ℂ) : weight s =
    ∑ j : Fin 7, weightCoefficient j*(s-center)^j.val := by
  norm_num [weight, product, factor, weightCoefficient, center, Fin.sum_univ_succ] <;> ring

lemma weightSlope_centered (s : ℂ) : weightSlope s =
    ∑ j : Fin 7, ((j.val+1 : ℕ) : ℂ)*wCoefficient (j.val+1)*(s-center)^j.val := by
  norm_num [weightSlope, productSlope, product, factor, wCoefficient,
    weightCoefficient, center, Fin.sum_univ_succ] <;> ring

lemma raw_identity (s : ℂ) : rawModel s = ∑ j : Fin 18, rawCoefficient j*(s-center)^j.val := by
  rw [rawModel, weight_centered, weightSlope_centered]
  norm_num [powerJet, complexExpTaylor, rawCoefficient, eCoefficient, wCoefficient,
    Fin.sum_univ_succ, Finset.sum_range_succ, center, logCenter, sample, weightCoefficient] <;> ring

lemma model_lifted (s : ℂ) : model s = ∑ j : Fin 18, liftedCoefficient j*(s-center)^j.val := by
  norm_num [model, liftedCoefficient, Fin.sum_univ_succ]

/-- Includes all nine OMITTED high coefficients, rather than silently dropping them. -/
lemma rounding_budget :
    (∑ j : Fin 18,
      (|(rawCoefficient j-liftedCoefficient j).re|+|(rawCoefficient j-liftedCoefficient j).im|)*
        (3/4 : ℝ)^j.val) ≤ (1/1024 : ℝ) := by
  norm_num [rawCoefficient, liftedCoefficient, eCoefficient, wCoefficient,
    Fin.sum_univ_succ, center, logCenter, sample, coefficient, weightCoefficient,
    pow_succ, Complex.mul_re, Complex.mul_im, Complex.div_re, Complex.div_im,
    Complex.normSq_apply]

lemma rounding_error {s : ℂ} (hs : Region s) : ‖rawModel s-model s‖ ≤ (1/1024 : ℝ) := by
  rw [raw_identity, model_lifted, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ j : Fin 18, ‖rawCoefficient j*(s-center)^j.val-liftedCoefficient j*(s-center)^j.val‖ :=
      norm_sum_le _ _
    _ ≤ ∑ j : Fin 18,
      (|(rawCoefficient j-liftedCoefficient j).re|+|(rawCoefficient j-liftedCoefficient j).im|)*
        (3/4 : ℝ)^j.val := by
      apply Finset.sum_le_sum
      intro j _
      rw [← sub_mul, norm_mul, norm_pow]
      exact mul_le_mul (Complex.norm_le_abs_re_add_abs_im _)
        (pow_le_pow_left₀ (norm_nonneg _) (region_distance hs) _)
        (by positivity) (by positivity)
    _ ≤ 1/1024 := rounding_budget

lemma finite_term_error (k : Fin 16) {s : ℂ} (hs : Region s) :
    ‖(1-(s-1)*(Real.log (base k) : ℂ))*power k s -
      (1-(s-1)*(logCenter k : ℂ))*powerJet k s‖ ≤ (52/4096 : ℝ)+17*logRadius := by
  have heq : (1-(s-1)*(Real.log (base k) : ℂ))*power k s -
      (1-(s-1)*(logCenter k : ℂ))*powerJet k s =
      (1-(s-1)*(logCenter k : ℂ))*(power k s-powerJet k s) -
        (s-1)*((Real.log (base k) : ℂ)-(logCenter k : ℂ))*power k s := by ring
  have hn := (region_norms hs).2
  have hc : ‖1-(s-1)*(logCenter k : ℂ)‖ ≤ (52 : ℝ) := by
    have ht := norm_sub_le (1 : ℂ) ((s-1)*(logCenter k : ℂ))
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs] at ht
    have hm := mul_le_mul hn (logCenter_bound k) (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 17)
    norm_num at ht
    linarith
  have hl : ‖(Real.log (base k) : ℂ)-(logCenter k : ℂ)‖ ≤ logRadius := by
    simpa only [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] using log_encloses k
  have hp : ‖power k s‖ ≤ 1 := positive_base_neg_power_norm_le_one (base_bounds k).1 hs.1.le
  rw [heq]
  calc
    _ ≤ ‖1-(s-1)*(logCenter k : ℂ)‖*‖power k s-powerJet k s‖ +
        ‖s-1‖*‖(Real.log (base k) : ℂ)-(logCenter k : ℂ)‖*‖power k s‖ := by
      simpa only [norm_mul] using norm_sub_le
        ((1-(s-1)*(logCenter k : ℂ))*(power k s-powerJet k s))
        ((s-1)*((Real.log (base k) : ℂ)-(logCenter k : ℂ))*power k s)
    _ ≤ _ := by
      gcongr
      · exact hc
      · exact power_jet_encloses k hs
      · exact hn
      · exact hl
      · exact hp

lemma endpoint_error {s : ℂ} (hs : Region s) :
    ‖(weightSlope s-weight s*(Real.log 16 : ℂ))*power 15 s -
      (weightSlope s-weight s*(logCenter 15 : ℂ))*powerJet 15 s‖ ≤
        (93/4096 : ℝ)+30*logRadius := by
  have heq : (weightSlope s-weight s*(Real.log 16 : ℂ))*power 15 s -
      (weightSlope s-weight s*(logCenter 15 : ℂ))*powerJet 15 s =
      (weightSlope s-weight s*(logCenter 15 : ℂ))*(power 15 s-powerJet 15 s) -
        weight s*((Real.log 16 : ℂ)-(logCenter 15 : ℂ))*power 15 s := by ring
  have hn := region_weight_bounds hs
  have hc : ‖weightSlope s-weight s*(logCenter 15 : ℂ)‖ ≤ (93 : ℝ) := by
    have ht := norm_sub_le (weightSlope s) (weight s*(logCenter 15 : ℂ))
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs] at ht
    have hm := mul_le_mul hn.1 (logCenter_bound 15) (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 30)
    linarith
  have hl : ‖(Real.log 16 : ℂ)-(logCenter 15 : ℂ)‖ ≤ logRadius := by
    have h := log_encloses (15 : Fin 16)
    norm_num [base] at h
    simpa only [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] using h
  have hp : ‖power 15 s‖ ≤ 1 := positive_base_neg_power_norm_le_one (base_bounds 15).1 hs.1.le
  rw [heq]
  calc
    _ ≤ ‖weightSlope s-weight s*(logCenter 15 : ℂ)‖*‖power 15 s-powerJet 15 s‖ +
        ‖weight s‖*‖(Real.log 16 : ℂ)-(logCenter 15 : ℂ)‖*‖power 15 s‖ := by
      simpa only [norm_mul] using norm_sub_le
        ((weightSlope s-weight s*(logCenter 15 : ℂ))*(power 15 s-powerJet 15 s))
        (weight s*((Real.log 16 : ℂ)-(logCenter 15 : ℂ))*power 15 s)
    _ ≤ _ := by
      gcongr
      · exact hc
      · exact power_jet_encloses 15 hs
      · exact hn.1
      · exact hl
      · exact hp

/-- This is a derivative-formula error theorem, not a differentiated value bound. -/
theorem finite_derivative_enclosure {s : ℂ} (hs : Region s) :
    ‖exactDerivative s-model s‖ ≤ (1/4 : ℝ) := by
  have hraw : ‖exactDerivative s-rawModel s‖ ≤
      16*((52/4096 : ℝ)+17*logRadius)+(93/4096+30*logRadius) := by
    have heq : exactDerivative s-rawModel s =
        (∑ k : Fin 16, ((1-(s-1)*(Real.log (base k) : ℂ))*power k s-
          (1-(s-1)*(logCenter k : ℂ))*powerJet k s)) +
        ((weightSlope s-weight s*(Real.log 16 : ℂ))*power 15 s-
          (weightSlope s-weight s*(logCenter 15 : ℂ))*powerJet 15 s) := by
      unfold exactDerivative rawModel
      rw [Finset.sum_sub_distrib]
      ring
    rw [heq]
    apply (norm_add_le _ _).trans
    apply add_le_add _ (endpoint_error hs)
    apply (norm_sum_le _ _).trans
    calc
      _ ≤ ∑ k : Fin 16, ((52/4096 : ℝ)+17*logRadius) :=
        Finset.sum_le_sum (fun k _ => finite_term_error k hs)
      _ = _ := by norm_num
  have ht : ‖exactDerivative s-model s‖ ≤ ‖exactDerivative s-rawModel s‖+‖rawModel s-model s‖ := by
    convert norm_add_le (exactDerivative s-rawModel s) (rawModel s-model s) using 1 <;> ring
  have hb := rounding_error hs
  have hnum : 16*((52/4096 : ℝ)+17*logRadius)+(93/4096+30*logRadius)+1/1024 ≤ 1/4 := by
    norm_num [logRadius]
  linarith

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.DerivativeSixteen.Jet
```
