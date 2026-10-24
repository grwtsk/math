/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.GeneralTentExplicitFormula
import GRWTSK.NumberTheory.Chebyshev.TentResidueContributions
import GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail

/-! # Source-bound first-Riesz second differences

The literal arithmetic Riesz source and the full canonical first-Riesz zero
series have the same second difference after the pole and the exact rational
tent correction are charged. Absolute summability justifies the three-series
algebra. This does not recover the affine normalization lost by second
differencing, or identify a primitive of the rational correction.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Chebyshev.RieszSourceSecondDifference
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Analysis.RealAnalysis.TentWeight
open GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail
open TentSource TentResidueContributions GeneralTentExplicitFormula

theorem tentMangoldt_eq_prefix (N : ℕ) (x h : ℝ)
    (hh : 0 < h) (hN : x + h ≤ N) :
    tentMangoldt x h =
      ((∑ m ∈ Finset.Icc 2 N,
        ArithmeticFunction.vonMangoldt m * tent x h (m : ℝ) : ℝ) : ℂ) := by
  classical
  unfold tentMangoldt
  rw [tsum_eq_sum (s := Finset.Icc 2 N)]
  · simp
  · intro m hm
    by_cases hm2 : m < 2
    · interval_cases m <;> simp
    · have hNm : N < m := by
        by_contra hn
        exact hm (Finset.mem_Icc.mpr ⟨by omega, by omega⟩)
      have hcast : (N : ℝ) < m := by exact_mod_cast hNm
      rw [tent_eq_zero_of_outside x h (m : ℝ) hh
        (by intro hs; linarith [hs.2])]
      simp

theorem fullRieszZeroValue_second_difference (x h : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) :
    (fullRieszZeroValue (x + h) - 2 * fullRieszZeroValue x +
      fullRieszZeroValue (x - h)) / (h : ℂ) =
      -(∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1) := by
  have sp := (firstRiesz_absolute_summable (x + h) (by linarith)).2
  have sc := (firstRiesz_absolute_summable x (by linarith)).2
  have sm := (firstRiesz_absolute_summable (x - h) ha).2
  have he (z : ZeroPoint) :
      ((multiplicity z : ℂ) * firstRieszZeroKernel (x + h) z.1 -
        2 * ((multiplicity z : ℂ) * firstRieszZeroKernel x z.1) +
        (multiplicity z : ℂ) * firstRieszZeroKernel (x - h) z.1) / (h : ℂ) =
        (multiplicity z : ℂ) * tentKernel x h z.1 := by
    have h1 : z.1 + 1 ≠ 0 := by
      intro hz
      have hr := congrArg Complex.re hz
      have hs := (point_mem_strip z).1
      simp only [Complex.add_re, Complex.one_re, Complex.zero_re] at hr
      linarith
    have hk := firstRiesz_second_difference x h hh ha z.1 z.2.ne_zero h1
    change (_ * firstRieszKernel (x + h) z.1 -
      2 * (_ * firstRieszKernel x z.1) + _ * firstRieszKernel (x - h) z.1) / _ = _
    rw [← hk]
    ring
  have ht : (∑' z : ZeroPoint,
      ((multiplicity z : ℂ) * firstRieszZeroKernel (x + h) z.1 -
        2 * ((multiplicity z : ℂ) * firstRieszZeroKernel x z.1) +
        (multiplicity z : ℂ) * firstRieszZeroKernel (x - h) z.1) / (h : ℂ)) =
      ((∑' z : ZeroPoint, (multiplicity z : ℂ) * firstRieszZeroKernel (x + h) z.1) -
        2 * (∑' z : ZeroPoint, (multiplicity z : ℂ) * firstRieszZeroKernel x z.1) +
        ∑' z : ZeroPoint, (multiplicity z : ℂ) * firstRieszZeroKernel (x - h) z.1) /
          (h : ℂ) := by
    rw [tsum_div_const, (sp.sub (sc.mul_left 2)).tsum_add sm,
      sp.tsum_sub (sc.mul_left 2), tsum_mul_left]
  simp_rw [he] at ht
  unfold fullRieszZeroValue
  rw [ht]
  ring

/-- The actual source is linked to the full first-Riesz zero kernel,
with the exact second difference of the pole and rational term. -/
theorem firstRieszPrefix_full_zero_second_difference (N : ℕ) (x h : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hN : x + h ≤ N) :
    ((firstRieszPrefix N (x + h) - 2 * firstRieszPrefix N x +
      firstRieszPrefix N (x - h) : ℝ) : ℂ) =
      (h : ℂ) ^ 2 +
        (fullRieszZeroValue (x + h) - 2 * fullRieszZeroValue x +
          fullRieszZeroValue (x - h)) +
        (h : ℂ) * (rationalTentCorrection x h : ℂ) := by
  have hs := firstRieszPrefix_second_difference N x h hh
  have hz := fullRieszZeroValue_second_difference x h hh ha
  have ht := general_tent_source_eq_tsum x h hh ha
  rw [tentMangoldt_eq_prefix N x h hh hN] at ht
  have hhc : (h : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt hh
  have hz' := (div_eq_iff hhc).mp hz
  rw [hs]
  push_cast
  push_cast at ht
  rw [ht]
  linear_combination -hz'

/-- The remaining source defect after the explicit quadratic pole and the
actual first-Riesz zero series. Its affine normalization is not set to zero. -/
def firstRieszSourceDefect (N : ℕ) (x : ℝ) : ℂ :=
  (firstRieszPrefix N x : ℂ) - ((x : ℂ) ^ 2 / 2 + fullRieszZeroValue x)

/-- The exact remaining curvature is the rational correction. A primitive
and two normalization conditions are still needed for a full source identity. -/
theorem firstRieszSourceDefect_second_difference (N : ℕ) (x h : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hN : x + h ≤ N) :
    firstRieszSourceDefect N (x + h) - 2 * firstRieszSourceDefect N x +
      firstRieszSourceDefect N (x - h) =
        (h : ℂ) * (rationalTentCorrection x h : ℂ) := by
  have he := firstRieszPrefix_full_zero_second_difference N x h hh ha hN
  push_cast at he
  unfold firstRieszSourceDefect
  push_cast
  linear_combination he

end GRWTSK.NumberTheory.Chebyshev.RieszSourceSecondDifference
