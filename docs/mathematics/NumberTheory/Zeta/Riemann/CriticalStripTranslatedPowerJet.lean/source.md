# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTranslatedPowerJet

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f0f9d4865816456615a9d30d698f7c6c2c26c26` · SHA-256 `925b71ff16a88b4519c8001737832ccf36560e35f222a0db19f06caba223a316`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor
import Mathlib.Data.Fin.VecNotation
import Mathlib.Algebra.BigOperators.Fin

set_option autoImplicit false

/-!
# Source-bound translated power jets on a fixed compact band

The three positive arithmetic bases are exactly 2,3,4. All log enclosures,
center samples, Taylor tails and coefficient-rounding inequalities are proved
from existing analytic declarations plus finite rational arithmetic. The center
is 3/4+27i/2, not a zero, and the domain is a closed radius-3/4 disk about it.
A coefficient table is not identified with the true power without these bounds.
SOURCE SCRIPTS / NOT_RUN / NOT_KERNEL_AUDITED. No execution or RH claim.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.FourteenJet
open Complex Finset
noncomputable section

def center : ℂ := ⟨3 / 4, 27 / 2⟩
def base (k : Fin 3) : ℝ := (k.val : ℝ) + 2

def logCenter : Fin 3 → ℝ := ![(726817 / 1048576), (575989 / 524288), (1453635 / 1048576)]
def sample : Fin 3 → ℂ := ![⟨(-155519 / 262144), (-41927 / 1048576)⟩, ⟨(-147129 / 524288), (-353573 / 1048576)⟩, ⟨(367375 / 1048576), (49743 / 1048576)⟩]
def coefficients : Fin 3 → Fin 9 → ℂ :=
  ![![⟨(-155519 / 262144), (-41927 / 1048576)⟩, ⟨(1766153953 / 4294967296), (59518079 / 2147483648)⟩, ⟨(-612101897 / 4294967296), (-5156845 / 536870912)⟩, ⟨(141425471 / 4294967296), (9531867 / 4294967296)⟩, ⟨(-12253575 / 2147483648), (-825873 / 2147483648)⟩, ⟨(1698705 / 2147483648), (57245 / 1073741824)⟩, ⟨(-98121 / 1073741824), (-26453 / 4294967296)⟩, ⟨(2429 / 268435456), (2619 / 4294967296)⟩, ⟨(-3367 / 4294967296), (-227 / 4294967296)⟩], ![⟨(-147129 / 524288), (-353573 / 1048576)⟩, ⟨(41379241 / 134217728), (1591048115 / 4294967296)⟩, ⟨(-181838895 / 1073741824), (-436986071 / 2147483648)⟩, ⟨(133180241 / 2147483648), (320052045 / 4294967296)⟩, ⟨(-36578347 / 2147483648), (-87903241 / 4294967296)⟩, ⟨(8037081 / 2147483648), (4828577 / 1073741824)⟩, ⟨(-2943211 / 4294967296), (-442061 / 536870912)⟩, ⟨(461921 / 4294967296), (69379 / 536870912)⟩, ⟨(-31717 / 2147483648), (-76221 / 4294967296)⟩], ![⟨(367375 / 1048576), (49743 / 1048576)⟩, ⟨(-2086051399 / 4294967296), (-282453773 / 4294967296)⟩, ⟨(722970325 / 2147483648), (195782037 / 4294967296)⟩, ⟨(-334083229 / 2147483648), (-90470511 / 4294967296)⟩, ⟨(231568849 / 4294967296), (15677345 / 2147483648)⟩, ⟨(-32102259 / 2147483648), (-4346683 / 2147483648)⟩, ⟨(7417197 / 2147483648), (1004297 / 2147483648)⟩, ⟨(-1468917 / 2147483648), (-198893 / 2147483648)⟩, ⟨(15909 / 134217728), (68931 / 4294967296)⟩]]

lemma base_bounds (k : Fin 3) : 1 ≤ base k ∧ base k ≤ 4 := by
  fin_cases k <;> norm_num [base]

lemma center_norm : ‖center‖ ≤ (57 / 4 : ℝ) :=
  (Complex.norm_le_abs_re_add_abs_im center).trans (by norm_num [center])

lemma norm_sub_triangle (a b c : ℂ) : ‖a - c‖ ≤ ‖a - b‖ + ‖b - c‖ := by
  calc
    _ = ‖(a - b) + (b - c)‖ := by congr 1; ring
    _ ≤ _ := norm_add_le _ _

/-- The complete log Taylor expression, including its radius, is checked. -/
lemma log_rounding (k : Fin 3) :
    ratioLogRadius ((base k - 1) / (base k + 1)) 32 +
      |ratioLogCenter ((base k - 1) / (base k + 1)) 32 - logCenter k| ≤
        (1 / 1048576 : ℝ) := by
  fin_cases k <;>
    norm_num [base, logCenter, ratioLogRadius, ratioLogCenter, Complex.logTaylor,
      Finset.sum_range_succ]

lemma log_encloses (k : Fin 3) :
    |Real.log (base k) - logCenter k| ≤ (1 / 1048576 : ℝ) := by
  let e := logEnclosureOfRatio (base k) (base_bounds k).1 32
  calc
    _ = |(Real.log (base k) - e.center) + (e.center - logCenter k)| := by congr 1; ring
    _ ≤ |Real.log (base k) - e.center| + |e.center - logCenter k| := abs_add_le _ _
    _ ≤ e.radius + |e.center - logCenter k| := add_le_add_right e.encloses _
    _ ≤ _ := log_rounding k

def logRecord (k : Fin 3) : RealLogEnclosure (base k) where
  center := logCenter k
  radius := 1 / 1048576
  radius_nonneg := by norm_num
  encloses := log_encloses k

lemma logCenter_bound (k : Fin 3) : |logCenter k| ≤ (3 / 2 : ℝ) := by
  fin_cases k <;> norm_num [logCenter]

/-- Fixed 80-term rational calculations, not transcendental evaluations. -/
set_option maxRecDepth 8192 in
lemma sample_rounding (k : Fin 3) :
    |(complexExpTaylor 80 (-center * (logCenter k : ℂ)) - sample k).re| +
    |(complexExpTaylor 80 (-center * (logCenter k : ℂ)) - sample k).im| ≤
      (1 / 1048576 : ℝ) := by
  fin_cases k <;>
    norm_num [complexExpTaylor, Finset.sum_range_succ, pow_succ, center,
      logCenter, sample, Complex.mul_re, Complex.mul_im, Complex.div_re,
      Complex.div_im, Complex.normSq_apply]

lemma sample_encloses (k : Fin 3) :
    ‖(base k : ℂ) ^ (-center) - sample k‖ ≤ (1 / 16384 : ℝ) := by
  let e := negativePowerEnclosureOfBounds (base_bounds k).1 (logRecord k)
    center (by norm_num [center]) 80 (57 / 4) 22 center_norm
    (by norm_num [logRecord])
    (by have h := logCenter_bound k; change (57 / 4 : ℝ) * |logCenter k| ≤ 22; linarith)
    (by norm_num)
  have he := e.encloses
  change ‖(base k : ℂ) ^ (-center) - complexExpTaylor 80 (-center * (logCenter k : ℂ))‖ ≤
    2 * ((57 / 4 : ℝ) * (1 / 1048576)) + complexExpTaylorRadius 80 22 at he
  have hr := (Complex.norm_le_abs_re_add_abs_im _).trans (sample_rounding k)
  calc
    _ ≤ ‖(base k : ℂ) ^ (-center) - complexExpTaylor 80 (-center * (logCenter k : ℂ))‖ +
        ‖complexExpTaylor 80 (-center * (logCenter k : ℂ)) - sample k‖ := norm_sub_triangle _ _ _
    _ ≤ 2 * ((57 / 4 : ℝ) * (1 / 1048576)) + complexExpTaylorRadius 80 22 + 1 / 1048576 :=
      add_le_add he hr
    _ ≤ _ := by norm_num [complexExpTaylorRadius]

def rawCoefficient (k : Fin 3) (j : Fin 9) : ℂ :=
  sample k * (-(logCenter k : ℂ)) ^ j.val / (j.val.factorial : ℂ)

def jet (k : Fin 3) (s : ℂ) : ℂ :=
  ∑ j : Fin 9, coefficients k j * (s - center) ^ j.val

/-- All 27 complex coefficients have a separately charged rounding radius. -/
lemma coefficient_rounding (k : Fin 3) (j : Fin 9) :
    ‖rawCoefficient k j - coefficients k j‖ ≤ (1 / 2147483648 : ℝ) := by
  apply (Complex.norm_le_abs_re_add_abs_im _).trans
  fin_cases k <;> fin_cases j <;>
    norm_num [rawCoefficient, logCenter, sample, coefficients, pow_succ,
      Complex.mul_re, Complex.mul_im, Complex.div_re, Complex.div_im, Complex.normSq_apply]

lemma raw_identity (k : Fin 3) (s : ℂ) :
    sample k * complexExpTaylor 9 (-(s - center) * (logCenter k : ℂ)) =
      ∑ j : Fin 9, rawCoefficient k j * (s - center) ^ j.val := by
  norm_num [complexExpTaylor, Finset.sum_range_succ, Fin.sum_univ_succ, rawCoefficient]
  ring

lemma rounded_jet_error (k : Fin 3) {s : ℂ} (hs : ‖s - center‖ ≤ (3 / 4 : ℝ)) :
    ‖sample k * complexExpTaylor 9 (-(s - center) * (logCenter k : ℂ)) - jet k s‖ ≤
      (9 / 2147483648 : ℝ) := by
  rw [raw_identity, jet, ← Finset.sum_sub_distrib]
  have hterm (j : Fin 9) :
      ‖rawCoefficient k j * (s - center) ^ j.val - coefficients k j * (s - center) ^ j.val‖ ≤
        (1 / 2147483648 : ℝ) := by
    rw [← sub_mul, norm_mul, norm_pow]
    have hp : ‖s - center‖ ^ j.val ≤ 1 :=
      pow_le_one₀ (norm_nonneg _) (hs.trans (by norm_num))
    exact (mul_le_mul (coefficient_rounding k j) hp (by positivity) (by norm_num)).trans_eq (mul_one _)
  exact (norm_sum_le _ _).trans (by
    calc
      _ ≤ ∑ _j : Fin 9, (1 / 2147483648 : ℝ) := Finset.sum_le_sum (fun j _ => hterm j)
      _ = _ := by norm_num)

lemma taylor_norm_le_four {z : ℂ} (hz : ‖z‖ ≤ (9 / 8 : ℝ)) :
    ‖complexExpTaylor 9 z‖ ≤ (4 : ℝ) := by
  unfold complexExpTaylor
  apply (norm_sum_le _ _).trans
  calc
    _ ≤ ∑ j ∈ Finset.range 9, (9 / 8 : ℝ) ^ j / (j.factorial : ℝ) := by
      apply Finset.sum_le_sum
      intro j hj
      rw [norm_div, norm_pow, Complex.norm_natCast]
      exact div_le_div_of_nonneg_right (pow_le_pow_left₀ (norm_nonneg _) hz _) (by positivity)
    _ ≤ 4 := by norm_num [Finset.sum_range_succ]

/-- Uniform source error on the whole disk; each analytic and rounding error is retained. -/
theorem jet_encloses (k : Fin 3) {s : ℂ} (hs : ‖s - center‖ ≤ (3 / 4 : ℝ)) :
    ‖(base k : ℂ) ^ (-s) - jet k s‖ ≤ (1 / 2048 : ℝ) := by
  let w : ℂ := -(s - center)
  let E : ℂ := complexExpTaylor 9 (w * (logCenter k : ℂ))
  have harg : ‖w * (logCenter k : ℂ)‖ ≤ (9 / 8 : ℝ) := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
    have hw : ‖w‖ ≤ (3 / 4 : ℝ) := by simpa [w] using hs
    exact (mul_le_mul hw (logCenter_bound k) (abs_nonneg _) (by norm_num)).trans_eq (by norm_num)
  have hC : ‖(base k : ℂ) ^ w‖ ≤ (4 : ℝ) := by
    rw [Complex.norm_cpow_eq_rpow_re_of_pos (zero_lt_one.trans_le (base_bounds k).1)]
    have hr : w.re ≤ 1 := by
      have h := Complex.re_le_norm w
      have hn : ‖w‖ ≤ (3 / 4 : ℝ) := by simpa [w] using hs
      linarith
    exact (Real.rpow_le_rpow_of_exponent_le (base_bounds k).1 hr).trans
      (by simpa using (base_bounds k).2)
  have hsmall : ‖w‖ * (logRecord k).radius ≤ 1 := by
    have hw : ‖w‖ ≤ (3 / 4 : ℝ) := by simpa [w] using hs
    change ‖w‖ * (1 / 1048576 : ℝ) ≤ 1
    nlinarith
  have he := realLog_powerTaylor_error (zero_lt_one.trans_le (base_bounds k).1)
    (logRecord k) w 9 (9 / 8) 4 hsmall harg (by norm_num) hC
  have hw : ‖w‖ ≤ (3 / 4 : ℝ) := by simpa [w] using hs
  have herror : ‖(base k : ℂ) ^ w - E‖ ≤
      6 / 1048576 + complexExpTaylorRadius 9 (9 / 8) := by
    change ‖(base k : ℂ) ^ w - E‖ ≤ 4 * (2 * (‖w‖ * (1 / 1048576))) +
      complexExpTaylorRadius 9 (9 / 8) at he
    linarith
  have hA : ‖(base k : ℂ) ^ (-center)‖ ≤ 1 :=
    positive_base_neg_power_norm_le_one (base_bounds k).1 (by norm_num [center])
  have hE : ‖E‖ ≤ 4 := taylor_norm_le_four harg
  have hid : (base k : ℂ) ^ (-s) = (base k : ℂ) ^ (-center) * (base k : ℂ) ^ w := by
    rw [← Complex.cpow_add _ _ (Complex.ofReal_ne_zero.mpr
      (zero_lt_one.trans_le (base_bounds k).1).ne')]
    congr 1
    dsimp [w]
    ring
  have hdecomp : (base k : ℂ) ^ (-s) - sample k * E =
      (base k : ℂ) ^ (-center) * ((base k : ℂ) ^ w - E) +
        ((base k : ℂ) ^ (-center) - sample k) * E := by rw [hid]; ring
  have h1 : ‖(base k : ℂ) ^ (-s) - sample k * E‖ ≤
      6 / 1048576 + complexExpTaylorRadius 9 (9 / 8) + 4 / 16384 := by
    rw [hdecomp]
    apply (norm_add_le _ _).trans
    simp only [norm_mul]
    have hm1 := mul_le_mul hA herror (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
    have hm2 := mul_le_mul (sample_encloses k) hE (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 16384)
    linarith
  have hr := rounded_jet_error k hs
  change ‖sample k * E - jet k s‖ ≤ _ at hr
  have ht := (norm_sub_triangle ((base k : ℂ) ^ (-s)) (sample k * E) (jet k s)).trans (add_le_add h1 hr)
  exact ht.trans (by norm_num [complexExpTaylorRadius])

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.FourteenJet
```
