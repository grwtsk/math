# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt01Source.Variantb140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a74ac863c89384d5c6dafa9badc529479c4d5af` · SHA-256 `b140dbccb02b768cfc98a2a48588fd4eb0ceac559fa0ac6135dcf0f05500255f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualHalfHarmonicZeta
import SourceActualVaughanMeanBound

/-!
The actual centered-beta half inventory isolates the signed critical Moebius
half sector and its complete short unit head. Every natural quotient and its
square-root displacement remains until the original finite alpha pole cancels.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualCenteredHalfZetaReduction
open ArithmeticFunction
open scoped BigOperators
open SourceActualCenteredHalfHarmonic SourceActualHalfHarmonicZeta
open SourceActualAdjointColumnTrace SourceActualLogColumnTransport SourceActualVaughanMeanBound
open SourceShortSamplingInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering
noncomputable section

/-- The signed zeta main is independently specified from the actual short inventories. -/
def actualCenteredHalfZetaMain (U : ℕ) : ℝ :=
  (riemannZeta (1 / 2 : ℂ)).re * (alpha U - actualCriticalMoebiusHalf U) +
    1 - alpha U * finiteHalfHarmonic U

/-- The finite quotient keeps both the actual harmonic and its genuine square-root pole. -/
def halfHarmonicQuotientDefect (L d : ℕ) : ℝ :=
  finiteHalfHarmonic (L / d) / Real.sqrt (d : ℝ) -
    2 * Real.sqrt (L : ℝ) / (d : ℝ) -
      (riemannZeta (1 / 2 : ℂ)).re / Real.sqrt (d : ℝ)

/-- Natural floor displacement and the true positive fractional tail give this row budget. -/
theorem halfHarmonicQuotientDefect_abs_le (L d : ℕ) (hd : 1 ≤ d) (hdL : d ≤ L) :
    |halfHarmonicQuotientDefect L d| ≤ 2 / Real.sqrt (L : ℝ) := by
  let q := L / d
  have hd0 : 0 < d := by omega
  have hq : 1 ≤ q := (Nat.le_div_iff_mul_le hd0).2 (by simpa using hdL)
  have hL : 1 ≤ L := hd.trans hdL
  have hdR : 0 < (d : ℝ) := by exact_mod_cast hd0
  have hqR : 0 < (q : ℝ) := by exact_mod_cast (show 0 < q by omega)
  have hLR : 0 < (L : ℝ) := by exact_mod_cast (show 0 < L by omega)
  have hrem : (L : ℝ) - (d : ℝ) * (q : ℝ) < (d : ℝ) := by
    have he := Nat.mod_add_div L d
    have hm := Nat.mod_lt L hd0
    have heR : ((L % d : ℕ) : ℝ) + (d : ℝ) * (q : ℝ) = (L : ℝ) := by
      exact_mod_cast he
    have hmR : ((L % d : ℕ) : ℝ) < (d : ℝ) := by exact_mod_cast hm
    linarith
  have hpL : (d : ℝ) * (q : ℝ) ≤ (L : ℝ) := by
    have he := Nat.mod_add_div L d
    have heR : ((L % d : ℕ) : ℝ) + (d : ℝ) * (q : ℝ) = (L : ℝ) := by
      exact_mod_cast he
    linarith [Nat.cast_nonneg (L % d)]
  have hL2 : (L : ℝ) ≤ 2 * ((d : ℝ) * (q : ℝ)) := by
    have hq1 : (1 : ℝ) ≤ (q : ℝ) := by exact_mod_cast hq
    nlinarith
  let p : ℝ := Real.sqrt (d : ℝ) * Real.sqrt (q : ℝ)
  have hp0 : 0 < p := by dsimp [p]; positivity
  have hp2 : p ^ 2 = (d : ℝ) * (q : ℝ) := by
    dsimp [p]
    rw [mul_pow, Real.sq_sqrt hdR.le, Real.sq_sqrt hqR.le]
  have hs2 : (Real.sqrt (L : ℝ)) ^ 2 = (L : ℝ) := Real.sq_sqrt hLR.le
  have hs0 : 0 < Real.sqrt (L : ℝ) := Real.sqrt_pos.2 hLR
  have hps : p ≤ Real.sqrt (L : ℝ) := by
    dsimp [p]
    rw [← Real.sqrt_mul hdR.le]
    exact Real.sqrt_le_sqrt hpL
  have hgap : Real.sqrt (L : ℝ) - p ≤ (d : ℝ) / Real.sqrt (L : ℝ) := by
    apply (le_div_iff₀ hs0).2
    nlinarith [mul_nonneg hp0.le (sub_nonneg.mpr hps)]
  have hscale : Real.sqrt (L : ℝ) ≤ 2 * p := by nlinarith
  have htail := halfHarmonicFractionalTail_bounds q hq
  have hr0 : 0 ≤ halfHarmonicFractionalTail q / Real.sqrt (d : ℝ) := by positivity
  have hr : halfHarmonicFractionalTail q / Real.sqrt (d : ℝ) ≤
      2 / Real.sqrt (L : ℝ) := by
    calc
      _ ≤ (1 / Real.sqrt (q : ℝ)) / Real.sqrt (d : ℝ) :=
        div_le_div_of_nonneg_right htail.2 (Real.sqrt_nonneg _)
      _ = 1 / p := by dsimp [p]; ring
      _ ≤ _ := (div_le_div_iff₀ hp0 hs0).2 (by simpa using hscale)
  let pole : ℝ := 2 * (Real.sqrt (L : ℝ) - p) / (d : ℝ)
  have hpole0 : 0 ≤ pole := by dsimp [pole]; positivity
  have hpole : pole ≤ 2 / Real.sqrt (L : ℝ) := by
    have hm := mul_le_mul_of_nonneg_left hgap (show 0 ≤ 2 / (d : ℝ) by positivity)
    dsimp [pole]
    have he : (2 / (d : ℝ)) * ((d : ℝ) / Real.sqrt (L : ℝ)) =
        2 / Real.sqrt (L : ℝ) := by field_simp
    rw [he] at hm
    nlinarith
  have he : halfHarmonicQuotientDefect L d =
      halfHarmonicFractionalTail q / Real.sqrt (d : ℝ) - pole := by
    unfold halfHarmonicQuotientDefect
    rw [finiteHalfHarmonic_eq_sqrt_zeta_tail (L / d) hq]
    dsimp [pole, p, q]
    have hs := Real.sq_sqrt hdR.le
    field_simp
    nlinarith
  rw [he, abs_le]
  constructor <;> linarith

/-- Exact finite pole cancellation leaves the original signed Moebius half sector. -/
theorem closedCenteredHalfInventory_sub_zetaMain_eq (U L : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) :
    closedCenteredHalfInventory U L - actualCenteredHalfZetaMain U =
      alpha U * halfHarmonicFractionalTail L -
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * halfHarmonicQuotientDefect L d := by
  have hf := closedCenteredHalfInventory_eq_finite_harmonics U L hU hUL
  have hH := finiteHalfHarmonic_eq_sqrt_zeta_tail L (hU.trans hUL)
  have he (d : ℕ) : (moebius d : ℝ) / Real.sqrt (d : ℝ) * finiteHalfHarmonic (L / d) =
      (moebius d : ℝ) * halfHarmonicQuotientDefect L d +
        2 * Real.sqrt (L : ℝ) * ((moebius d : ℝ) / (d : ℝ)) +
          (riemannZeta (1 / 2 : ℂ)).re * ((moebius d : ℝ) / Real.sqrt (d : ℝ)) := by
    unfold halfHarmonicQuotientDefect
    ring
  have hs := Finset.sum_congr rfl (fun d (_hd : d ∈ Finset.Icc 1 U) => he d)
  rw [Finset.sum_add_distrib, Finset.sum_add_distrib, ← Finset.mul_sum,
    ← Finset.mul_sum] at hs
  change (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) / Real.sqrt (d : ℝ) *
      finiteHalfHarmonic (L / d)) =
        (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * halfHarmonicQuotientDefect L d) +
          2 * Real.sqrt (L : ℝ) * alpha U +
            (riemannZeta (1 / 2 : ℂ)).re * actualCriticalMoebiusHalf U at hs
  unfold actualCenteredHalfZetaMain
  rw [hf, hH, hs]
  ring

/-- The entire actual signed finite quotient error has a vanishing upper-end budget. -/
theorem closedCenteredHalfInventory_sub_zetaMain_abs_le
    (U L : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) :
    |closedCenteredHalfInventory U L - actualCenteredHalfZetaMain U| ≤
      (2 * (U : ℝ) + 1) / Real.sqrt (L : ℝ) := by
  have hL := hU.trans hUL
  have ht := halfHarmonicFractionalTail_bounds L hL
  have ha : |alpha U * halfHarmonicFractionalTail L| ≤ 1 / Real.sqrt (L : ℝ) := by
    rw [abs_mul, abs_of_nonneg ht.1]
    calc
      _ ≤ 1 * halfHarmonicFractionalTail L :=
        mul_le_mul_of_nonneg_right (actual_alpha_abs_le_one U) ht.1
      _ ≤ _ := by simpa using ht.2
  have hs : |∑ d ∈ Finset.Icc 1 U,
      (moebius d : ℝ) * halfHarmonicQuotientDefect L d| ≤
        2 * (U : ℝ) / Real.sqrt (L : ℝ) := by
    apply (Finset.abs_sum_le_sum_abs _ _).trans
    calc
      _ ≤ ∑ d ∈ Finset.Icc 1 U, 2 / Real.sqrt (L : ℝ) := by
        apply Finset.sum_le_sum
        intro d hd
        have hd1 := (Finset.mem_Icc.mp hd).1
        have hdL := (Finset.mem_Icc.mp hd).2.trans hUL
        rw [abs_mul]
        have hm : |(moebius d : ℝ)| ≤ 1 := by
          exact realMoebius_abs_le_one d
        calc
          _ ≤ 1 * (2 / Real.sqrt (L : ℝ)) :=
            mul_le_mul hm (halfHarmonicQuotientDefect_abs_le L d hd1 hdL)
              (abs_nonneg _) (by norm_num)
          _ = _ := by ring
      _ = _ := by simp [Finset.sum_const, nsmul_eq_mul]; ring
  rw [closedCenteredHalfInventory_sub_zetaMain_eq U L hU hUL]
  exact (abs_sub _ _).trans (by linarith)

/-- Every real A at least one keeps the original quotient L=K-1 and the signed zeta sector. -/
theorem actualCenteredColumnHalfInventory_sub_zetaMain_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualCenteredColumnHalfInventory A - actualCenteredHalfZetaMain (vaughanCutoff A)| ≤
      (2 * (vaughanCutoff A : ℝ) + 1) /
        Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) := by
  have hK := actual_column_window_nonempty hA
  exact closedCenteredHalfInventory_sub_zetaMain_abs_le _ _
    (vaughanCutoff_pos A hA) (by omega)

end
end FormalResearch.RiemannHypothesis.SourceActualCenteredHalfZetaReduction
```
