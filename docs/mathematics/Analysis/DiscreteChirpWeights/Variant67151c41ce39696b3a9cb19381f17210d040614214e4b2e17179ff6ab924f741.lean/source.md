# Complete source: GRWTSK.Analysis.DiscreteChirpWeights.Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `521871c4db571ef92aa347f6e47576ed3583cb69` · SHA-256 `67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeClockDecay
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Analysis.Calculus.MeanValue

/-!
# The source's literal discrete chirp has positive bounded counting weights

LT03-13 changes the arithmetic coefficients explicitly. Its exact signal is
x^(3/4)*sin(x^(1/6)), not a simpler sinusoid substituted for that model. On
x>=1 the derivative has absolute value at most 11/12. Every complete source
integer n>=2 therefore has the stated counting weight in [13/24,35/24]. The
unchanged native cumulative storage retains the exact first-source correction.
The bounded source-probe estimate, centered-tail estimate and exponential
signed excursions are separate analytic obligations; no prime assertion is
inferred from this comparison system.

Human source-fidelity and comparison direction: grwtsk contributors. Local
literal chirp and native-storage consumer: OpenAI Codex. Mathlib power,
trigonometric and mean-value infrastructure retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.DiscreteChirpWeights
open ArithmeticPrimitive
open scoped BigOperators
noncomputable section

def signal (x : ℝ) : ℝ := x ^ (3 / 4 : ℝ) * Real.sin (x ^ (1 / 6 : ℝ))

def signalDerivative (x : ℝ) : ℝ :=
  (3 / 4) * x ^ (-1 / 4 : ℝ) * Real.sin (x ^ (1 / 6 : ℝ)) +
  (1 / 6) * x ^ (-1 / 12 : ℝ) * Real.cos (x ^ (1 / 6 : ℝ))

def countingWeight (n : ℕ) : ℝ := 1 + (signal n - signal (n - 1 : ℕ)) / 2

def comparisonCoefficient (n : ℕ) : ℝ := countingWeight n - 1

theorem exact_signal_derivative {x : ℝ} (hx : 0 < x) : HasDerivAt signal (signalDerivative x) x := by
  have h1 : HasDerivAt (fun y : ℝ ↦ y ^ (3 / 4 : ℝ)) ((3 / 4) * x ^ (-1 / 4 : ℝ)) x := by
    simpa only [show (3 / 4 : ℝ) - 1 = -1 / 4 by norm_num] using!
      (Real.hasDerivAt_rpow_const (p := (3 / 4 : ℝ)) (Or.inl hx.ne'))
  have h2 : HasDerivAt (fun y : ℝ ↦ y ^ (1 / 6 : ℝ)) ((1 / 6) * x ^ (-5 / 6 : ℝ)) x := by
    simpa only [show (1 / 6 : ℝ) - 1 = -5 / 6 by norm_num] using!
      (Real.hasDerivAt_rpow_const (p := (1 / 6 : ℝ)) (Or.inl hx.ne'))
  have h : HasDerivAt signal
      ((3 / 4) * x ^ (-1 / 4 : ℝ) * Real.sin (x ^ (1 / 6 : ℝ)) +
       x ^ (3 / 4 : ℝ) * (Real.cos (x ^ (1 / 6 : ℝ)) * ((1 / 6) * x ^ (-5 / 6 : ℝ)))) x :=
    h1.mul h2.sin
  have he : ((3 / 4) * x ^ (-1 / 4 : ℝ) * Real.sin (x ^ (1 / 6 : ℝ)) +
       x ^ (3 / 4 : ℝ) * (Real.cos (x ^ (1 / 6 : ℝ)) * ((1 / 6) * x ^ (-5 / 6 : ℝ)))) =
       signalDerivative x := by
    have hp : x ^ (3 / 4 : ℝ) * x ^ (-5 / 6 : ℝ) = x ^ (-1 / 12 : ℝ) := by
      rw [← Real.rpow_add hx]; norm_num
    unfold signalDerivative
    calc
      _ = (3 / 4) * x ^ (-1 / 4 : ℝ) * Real.sin (x ^ (1 / 6 : ℝ)) +
        (1 / 6) * (x ^ (3 / 4 : ℝ) * x ^ (-5 / 6 : ℝ)) * Real.cos (x ^ (1 / 6 : ℝ)) := by ring
      _ = _ := by rw [hp]
  rw [he] at h
  exact h

theorem actual_signal_derivative_bound {x : ℝ} (hx : 1 ≤ x) :
    |signalDerivative x| ≤ 11 / 12 := by
  have hx0 : 0 ≤ x := by linarith
  have h1 : x ^ (-1 / 4 : ℝ) ≤ 1 :=
    Real.rpow_le_one_of_one_le_of_nonpos hx (by norm_num)
  have h2 : x ^ (-1 / 12 : ℝ) ≤ 1 :=
    Real.rpow_le_one_of_one_le_of_nonpos hx (by norm_num)
  have ha : |(3 / 4 : ℝ) * x ^ (-1 / 4 : ℝ) * Real.sin (x ^ (1 / 6 : ℝ))| ≤ 3 / 4 := by
    rw [abs_mul, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 3 / 4),
      abs_of_nonneg (Real.rpow_nonneg hx0 _)]
    calc
      _ ≤ (3 / 4 : ℝ) * 1 * 1 := by gcongr; exact Real.abs_sin_le_one _
      _ = _ := by ring
  have hb : |(1 / 6 : ℝ) * x ^ (-1 / 12 : ℝ) * Real.cos (x ^ (1 / 6 : ℝ))| ≤ 1 / 6 := by
    rw [abs_mul, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 6),
      abs_of_nonneg (Real.rpow_nonneg hx0 _)]
    calc
      _ ≤ (1 / 6 : ℝ) * 1 * 1 := by gcongr; exact Real.abs_cos_le_one _
      _ = _ := by ring
  apply (abs_add_le _ _).trans
  linarith

theorem literal_source_integer_increment_bound {n : ℕ} (hn : 2 ≤ n) :
    |signal n - signal (n - 1 : ℕ)| ≤ 11 / 12 := by
  have hx : ((n - 1 : ℕ) : ℝ) ∈ Set.Ici (1 : ℝ) := by
    change 1 ≤ ((n - 1 : ℕ) : ℝ)
    exact_mod_cast (show 1 ≤ n - 1 by omega)
  have hy : (n : ℝ) ∈ Set.Ici (1 : ℝ) := by
    change 1 ≤ (n : ℝ)
    exact_mod_cast (show 1 ≤ n by omega)
  have hderiv : ∀ x ∈ Set.Ici (1 : ℝ), HasDerivWithinAt signal (signalDerivative x)
      (Set.Ici (1 : ℝ)) x := by
    intro x hx
    exact (exact_signal_derivative (by have := Set.mem_Ici.mp hx; linarith)).hasDerivWithinAt
  have hbound : ∀ x ∈ Set.Ici (1 : ℝ), ‖signalDerivative x‖ ≤ 11 / 12 := by
    intro x hx
    simpa only [Real.norm_eq_abs] using actual_signal_derivative_bound hx
  have h := Convex.norm_image_sub_le_of_norm_hasDerivWithin_le hderiv hbound (convex_Ici 1) hx hy
  have he : (n : ℝ) - (n - 1 : ℕ) = 1 := by
    rw [Nat.cast_sub (by omega : 1 ≤ n), Nat.cast_one]; ring
  simpa only [Real.norm_eq_abs, he, abs_one, mul_one] using h

theorem literal_counting_weight_bounds {n : ℕ} (hn : 2 ≤ n) :
    13 / 24 ≤ countingWeight n ∧ countingWeight n ≤ 35 / 24 := by
  have h := abs_le.mp (literal_source_integer_increment_bound hn)
  unfold countingWeight
  constructor <;> linarith

theorem exact_native_comparison_storage {n : ℕ} (hn : 1 ≤ n) :
    cumulativeDiscrepancy comparisonCoefficient n = (signal n - signal 1) / 2 := by
  induction n with
  | zero => omega
  | succ n ih =>
    by_cases hz : n = 0
    · subst n; norm_num [cumulativeDiscrepancy]
    · have hn1 : 1 ≤ n := by omega
      have hstep : cumulativeDiscrepancy comparisonCoefficient (n + 1) =
          cumulativeDiscrepancy comparisonCoefficient n + comparisonCoefficient (n + 1) := by
        unfold cumulativeDiscrepancy
        rw [Finset.sum_Icc_succ_top (by omega : 2 ≤ n + 1)]
      rw [hstep, ih hn1]
      simp only [comparisonCoefficient, countingWeight, Nat.add_sub_cancel]
      ring

end
end GRWTSK.RiemannHypothesis.Conversation.DiscreteChirpWeights
```
