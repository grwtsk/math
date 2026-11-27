import Mathlib.NumberTheory.NumberField.Discriminant.Defs
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Nat.Log
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Linear field-height budget for the auxiliary-prime difference

Local source attribution: grwtsk contributors.

The absolute discriminant and degree are those of the actual number fields.
The cyclotomic and Kummer discriminant inequalities remain explicit algebraic
hypotheses. Normalizing the extension's contribution by `1/q` before using
the binary input size improves the budget from a cubic bound to `72 * B`.
See `AuxiliaryPrimeAnalyticExistence.md` for the full analytical argument and
the source-bound evidence, including what is not formalized here.
-/

noncomputable section

namespace GRWTSK.PrimeFieldFactoring.FieldHeight

/-- The dense-polynomial input size used in the source's large-characteristic
branch. The bit length is the ceiling of the binary logarithm. -/
def inputSize (n p : ℕ) : ℕ := 20 + (n + 1) * (Nat.clog 2 p + 1)

/-- Even the smallest logarithmic factor retains a margin above the degree. -/
theorem inputSize_lower (n p : ℕ) : n + 21 ≤ inputSize n p := by
  unfold inputSize
  nlinarith [Nat.zero_le (n * Nat.clog 2 p)]

def height (F : Type*) [Field F] [NumberField F] : ℝ :=
  Real.log (NumberField.discr F).natAbs + Module.finrank ℚ F

/-- The huge source branch threshold supplies the modest bounds needed by
the field argument. No primality test for `p` is needed for these inequalities. -/
theorem large_branch_bounds {n p q : ℕ} (hqn : q ≤ n)
    (hlarge : inputSize n p ^ 200000 < p) : 144 ≤ p ∧ 12 * q < p := by
  generalize hdef : inputSize n p = B at hlarge
  have hlower : n + 21 ≤ B := by rw [← hdef]; exact inputSize_lower n p
  have hB : 1 ≤ B := by omega
  have hpow := Nat.pow_le_pow_right (n := B) (i := 2) (j := 200000) hB
    (by decide : 2 ≤ 200000)
  have hsq : B ^ 2 < p := lt_of_le_of_lt (b := B ^ 200000) hpow hlarge
  have hqb : q ≤ B := by omega
  have hsmall : 12 * B ≤ B ^ 2 := by nlinarith
  exact ⟨by nlinarith, (Nat.mul_le_mul_left 12 hqb).trans_lt (hsmall.trans_lt hsq)⟩

private theorem two_le_log_of_large {p : ℕ} (hp : 144 ≤ p) : 2 ≤ Real.log p := by
  have hfour : (1 : ℝ) ≤ Real.log 4 := by
    have h := Real.le_log_one_add_of_nonneg (by norm_num : (0 : ℝ) ≤ 3)
    norm_num at h
    linarith
  have hsixteen : (2 : ℝ) ≤ Real.log 16 := calc
    _ ≤ 2 * Real.log 4 := by linarith
    _ = Real.log ((4 : ℝ) ^ 2) := (Real.log_pow _ _).symm
    _ = _ := by norm_num
  exact hsixteen.trans (Real.log_le_log (by norm_num : (0 : ℝ) < 16)
    (by exact_mod_cast (show 16 ≤ p by omega)))

/-- All logarithmic side conditions, and the nonramification input, follow
from the actual branch test and a table index. -/
theorem large_branch_conditions {n p q : ℕ} (hq : q.Prime) (hqn : q ≤ n)
    (hlarge : inputSize n p ^ 200000 < p) :
    ¬ p ∣ 12 * q ∧ 2 ≤ Real.log p ∧ Real.log q ≤ Real.log p ∧
      2 * Real.log 12 ≤ Real.log p := by
  have hb := large_branch_bounds hqn hlarge
  have hqp : q ≤ p := by omega
  refine ⟨Nat.not_dvd_of_pos_of_lt (Nat.mul_pos (by decide) hq.pos) hb.2,
    two_le_log_of_large hb.1,
    Real.log_le_log (by exact_mod_cast hq.pos) (by exact_mod_cast hqp), ?_⟩
  calc
    _ = Real.log ((12 : ℝ) ^ 2) := (Real.log_pow _ _).symm
    _ = Real.log 144 := by norm_num
    _ ≤ _ := Real.log_le_log (by norm_num : (0 : ℝ) < 144) (by exact_mod_cast hb.1)

/-- The real logarithm is bounded by the length used by the source's binary
input encoding. This includes `p = 1`; the large branch has prime `p`. -/
theorem log_le_clog {p : ℕ} (hp : 0 < p) :
    Real.log (p : ℝ) ≤ (Nat.clog 2 p : ℝ) := by
  have hpow : (p : ℝ) ≤ (2 : ℝ) ^ Nat.clog 2 p := by
    exact_mod_cast Nat.le_pow_clog (by decide : 1 < 2) p
  have hlogtwo : Real.log 2 ≤ 1 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    linarith
  calc
    _ ≤ Real.log ((2 : ℝ) ^ Nat.clog 2 p) :=
      Real.log_le_log (by exact_mod_cast hp) hpow
    _ = (Nat.clog 2 p : ℝ) * Real.log 2 := Real.log_pow _ _
    _ ≤ (Nat.clog 2 p : ℝ) * 1 :=
      mul_le_mul_of_nonneg_left hlogtwo (Nat.cast_nonneg _)
    _ = _ := mul_one _

/-- Keep the product `n * log p` from the dense input size instead of bounding
its two factors independently by `B`. -/
theorem input_log_budget {p q n : ℕ} (hp : 0 < p) (hqn : q ≤ n) :
    (q : ℝ) * Real.log p ≤ (20 + (n + 1) * (Nat.clog 2 p + 1) : ℕ) := by
  have hq : (q : ℝ) ≤ n := by exact_mod_cast hqn
  have hL := log_le_clog hp
  have hlog := Real.log_natCast_nonneg p
  have hn := (Nat.cast_nonneg n : (0 : ℝ) ≤ n)
  have hbits := (Nat.cast_nonneg (Nat.clog 2 p) : (0 : ℝ) ≤ Nat.clog 2 p)
  have hprod := mul_le_mul hq hL hlog hn
  push_cast
  nlinarith

/-- Pure arithmetic for the two standard discriminant inequalities. The
parameters `a,b` stand for logarithms of the absolute field discriminants. -/
theorem weighted_budget {a b d q lp lq lm B : ℝ}
    (hd : 0 ≤ d) (hq : 2 ≤ q) (hlp : 2 ≤ lp)
    (hlq : lq ≤ lp) (hlm : 2 * lm ≤ lp)
    (hdegree : d ≤ 12 * q) (hinput : q * lp ≤ B)
    (hK : a ≤ d * (lm + lq))
    (hM : b ≤ q * a + d * (q * lq + (q - 1) * lp)) :
    a + d + (b + q * d) / q ≤ 72 * B := by
  have hq0 : 0 < q := by linarith
  have hlp0 : 0 ≤ lp := by linarith
  have hstrip : 2 * lm + 3 * lq + lp + 2 ≤ 6 * lp := by linarith
  have hpart : (b + q * d) / q ≤ a + d * (lq + lp + 1) := by
    apply (div_le_iff₀ hq0).mpr
    nlinarith [mul_nonneg hd hlp0]
  have hsum : a + d + (b + q * d) / q ≤ d * (2 * lm + 3 * lq + lp + 2) := by
    nlinarith
  calc
    _ ≤ d * (2 * lm + 3 * lq + lp + 2) := hsum
    _ ≤ d * (6 * lp) := mul_le_mul_of_nonneg_left hstrip hd
    _ ≤ (12 * q) * (6 * lp) :=
      mul_le_mul_of_nonneg_right hdegree (by positivity)
    _ ≤ 72 * B := by nlinarith only [hinput]

/-- The exact actual-field version of the linear budget. These are the
cyclotomic discriminant bound, Kummer power-basis bound, and degree identity;
none is inferred merely from the names `K` and `M`. -/
theorem weighted_height_le
    (K M : Type*) [Field K] [Field M] [NumberField K] [NumberField M]
    {q : ℕ} {p B : ℝ} (hq : 2 ≤ q) (_hp : 0 < p)
    (hlp : 2 ≤ Real.log p) (hlq : Real.log q ≤ Real.log p)
    (hl12 : 2 * Real.log 12 ≤ Real.log p)
    (hdegreeK : Module.finrank ℚ K ≤ 12 * q)
    (hdegreeM : Module.finrank ℚ M = q * Module.finrank ℚ K)
    (hinput : (q : ℝ) * Real.log p ≤ B)
    (hK : Real.log (NumberField.discr K).natAbs ≤
      (Module.finrank ℚ K : ℝ) * Real.log (12 * q))
    (hM : Real.log (NumberField.discr M).natAbs ≤
      q * Real.log (NumberField.discr K).natAbs +
      (Module.finrank ℚ K : ℝ) * (q * Real.log q + (q - 1) * Real.log p)) :
    height K + height M / q ≤ 72 * B := by
  have hq0 : (q : ℝ) ≠ 0 := by exact_mod_cast (by omega : q ≠ 0)
  have hK' := hK
  rw [Real.log_mul (by norm_num : (12 : ℝ) ≠ 0) hq0] at hK'
  have h := weighted_budget
    (a := Real.log (NumberField.discr K).natAbs)
    (b := Real.log (NumberField.discr M).natAbs)
    (d := Module.finrank ℚ K) (q := q)
    (lp := Real.log p) (lq := Real.log q) (lm := Real.log 12) (B := B)
    (Nat.cast_nonneg _) (by exact_mod_cast hq) hlp hlq hl12
    (by exact_mod_cast hdegreeK) hinput hK' hM
  simpa only [height, hdegreeM, Nat.cast_mul] using h

/-- At the source's actual input size and branch test, only the two standard
discriminant bounds and the field degree statements remain algebraic premises.
The logarithm and input-budget hypotheses of `weighted_height_le` are discharged. -/
theorem weighted_height_large_branch
    (K M : Type*) [Field K] [Field M] [NumberField K] [NumberField M]
    {n p q : ℕ} (hq : q.Prime) (hqn : q ≤ n)
    (hlarge : inputSize n p ^ 200000 < p)
    (hdegreeK : Module.finrank ℚ K ≤ 12 * q)
    (hdegreeM : Module.finrank ℚ M = q * Module.finrank ℚ K)
    (hK : Real.log (NumberField.discr K).natAbs ≤
      (Module.finrank ℚ K : ℝ) * Real.log (12 * q))
    (hM : Real.log (NumberField.discr M).natAbs ≤
      q * Real.log (NumberField.discr K).natAbs +
      (Module.finrank ℚ K : ℝ) * (q * Real.log q + (q - 1) * Real.log p)) :
    height K + height M / q ≤ 72 * (inputSize n p : ℝ) := by
  have hb := large_branch_bounds hqn hlarge
  have hp : 0 < p := by omega
  have hc := large_branch_conditions hq hqn hlarge
  exact weighted_height_le K M hq.two_le (by exact_mod_cast hp)
    hc.2.1 hc.2.2.1 hc.2.2.2 hdegreeK hdegreeM
    (input_log_budget hp hqn) hK hM

end GRWTSK.PrimeFieldFactoring.FieldHeight
