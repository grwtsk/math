# Complete source: GRWTSK.NumberTheory.Primes.GoldbachFejerCoreLowerBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf516f0e84b56741728594781af922e362708f05` · SHA-256 `54b3f044023bc8a9bdb071e0f1ed96050688e1dfab25f7b6f812846bd3b64e85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachFejerKernel
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Tactic

set_option autoImplicit false

/-!
# A uniform central-window lower bound for the finite Goldbach Fejér kernel

A fixed inner interval
`[-1/(6(N+1)), 1/(6(N+1))]`
is contained in every declared denominator window with `0 < q ≤ Q`.

On this inner interval every phase in the complete integer exponential sum has
cosine at least `1/2`.  Hence the real part of the sum is at least
`(N+1)/2`, the Fejér square is at least `(N+1)^2/4`, and the integrated mass is
at least `(N+1)/12`.

This replaces the unusable termwise absolute oscillatory estimate by a direct
positive-square lower bound.  It does not estimate arithmetic denominator
coefficients, prime progressions, minor arcs, or the exact Goldbach count.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachFejerCoreLowerBound

open scoped BigOperators Real ENNReal
open Set MeasureTheory
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow
open GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularEvaluation
open GRWTSK.NumberTheory.Primes.GoldbachFejerKernel

noncomputable section

/-- The fixed central interval used for the Fejér lower bound. -/
def goldbachFejerCoreRadius (N : ℕ) : ℝ :=
  1 / (6 * (N + 1 : ℝ))

/-- The explicit mass obtained from the core interval. -/
def goldbachFejerCoreMain (N : ℕ) : ℝ :=
  (N + 1 : ℝ) / 12

/-- The real Fejér-square integral on the fixed core interval. -/
def goldbachFejerCoreIntegral (N : ℕ) : ℝ :=
  ∫ β in Set.Icc
      (-goldbachFejerCoreRadius N)
      (goldbachFejerCoreRadius N),
    goldbachFejerKernel N β

/-- The core radius is strictly positive. -/
theorem goldbachFejerCoreRadius_pos (N : ℕ) :
    0 < goldbachFejerCoreRadius N := by
  unfold goldbachFejerCoreRadius
  positivity

/-- Real part of a nonnegative-frequency unit character. -/
theorem unitCharacter_nat_re
    (n : ℕ) (β : ℝ) :
    (unitCharacter (n : ℤ) β).re =
      Real.cos (2 * Real.pi * (n : ℝ) * β) := by
  simp only [unitCharacter, fourier_coe_apply, Complex.ofReal_one, div_one, Int.cast_natCast]
  rw [show
      2 * (Real.pi : ℂ) * Complex.I * (n : ℂ) * (β : ℂ) =
        (((2 * Real.pi * (n : ℝ) * β : ℝ) : ℂ) * Complex.I) by
      push_cast
      ring,
    Complex.exp_mul_I]
  rw [← Complex.ofReal_cos, ← Complex.ofReal_sin]
  change Real.cos (2 * Real.pi * (n : ℝ) * β) +
    (Real.sin (2 * Real.pi * (n : ℝ) * β) * 0 - 0 * 1) = _
  ring

/-- Every phase occurring in the complete integer sum has absolute angle at
most `π/3` on the declared core interval. -/
theorem abs_goldbach_phase_le_pi_div_three
    {N n : ℕ} (hn : n ≤ N)
    {β : ℝ}
    (hβ : β ∈ Set.Icc
      (-goldbachFejerCoreRadius N)
      (goldbachFejerCoreRadius N)) :
    |2 * Real.pi * (n : ℝ) * β| ≤ Real.pi / 3 := by
  have hδ0 : 0 ≤ goldbachFejerCoreRadius N :=
    (goldbachFejerCoreRadius_pos N).le
  have hβabs :
      |β| ≤ goldbachFejerCoreRadius N := by
    rw [abs_le]
    exact hβ
  have hnR : (n : ℝ) ≤ (N : ℝ) := by
    exact_mod_cast hn
  have hNlt : (N : ℝ) < (N + 1 : ℝ) := by
    norm_num
  calc
    |2 * Real.pi * (n : ℝ) * β| =
        2 * Real.pi * (n : ℝ) * |β| := by
          rw [abs_mul, abs_mul, abs_mul,
            abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2),
            abs_of_nonneg Real.pi_nonneg,
            abs_of_nonneg (Nat.cast_nonneg n)]
    _ ≤
        2 * Real.pi * (n : ℝ) *
          goldbachFejerCoreRadius N := by
            exact mul_le_mul_of_nonneg_left hβabs
              (mul_nonneg
                (mul_nonneg (by norm_num) Real.pi_nonneg)
                (Nat.cast_nonneg n))
    _ ≤
        2 * Real.pi * (N : ℝ) *
          goldbachFejerCoreRadius N := by
            exact mul_le_mul_of_nonneg_right
              (mul_le_mul_of_nonneg_left hnR
                (mul_nonneg (by norm_num) Real.pi_nonneg))
              hδ0
    _ ≤ Real.pi / 3 := by
      unfold goldbachFejerCoreRadius
      have hden : (0 : ℝ) < 6 * (N + 1 : ℝ) := by positivity
      rw [div_eq_mul_inv]
      rw [le_div_iff₀ (by norm_num : (0 : ℝ) < 3)]
      field_simp [hden.ne']
      nlinarith [Real.pi_nonneg]

/-- Each phase has real part at least one half on the core interval. -/
theorem one_half_le_unitCharacter_nat_re_on_core
    {N n : ℕ} (hn : n ≤ N)
    {β : ℝ}
    (hβ : β ∈ Set.Icc
      (-goldbachFejerCoreRadius N)
      (goldbachFejerCoreRadius N)) :
    (1 / 2 : ℝ) ≤
      (unitCharacter (n : ℤ) β).re := by
  rw [unitCharacter_nat_re]
  let θ : ℝ := 2 * Real.pi * (n : ℝ) * β
  have hθ :
      |θ| ≤ Real.pi / 3 := by
    exact abs_goldbach_phase_le_pi_div_three hn hβ
  have hθπ : |θ| ≤ Real.pi :=
    hθ.trans (by nlinarith [Real.pi_nonneg])
  have hmemθ : |θ| ∈ Set.Icc (0 : ℝ) Real.pi :=
    ⟨abs_nonneg _, hθπ⟩
  have hmemthird :
      Real.pi / 3 ∈ Set.Icc (0 : ℝ) Real.pi := by
    constructor <;> nlinarith [Real.pi_nonneg]
  calc
    (1 / 2 : ℝ) = Real.cos (Real.pi / 3) := by
      symm
      exact Real.cos_pi_div_three
    _ ≤ Real.cos |θ| :=
      Real.antitoneOn_cos hmemθ hmemthird hθ
    _ = Real.cos θ := Real.cos_abs θ

/-- The complete integer exponential kernel has real part at least
`(N+1)/2` throughout the core interval. -/
theorem goldbachIntegerExponentialKernel_re_lower_on_core
    (N : ℕ) {β : ℝ}
    (hβ : β ∈ Set.Icc
      (-goldbachFejerCoreRadius N)
      (goldbachFejerCoreRadius N)) :
    (N + 1 : ℝ) / 2 ≤
      (goldbachIntegerExponentialKernel N β).re := by
  unfold goldbachIntegerExponentialKernel
  calc
    (N + 1 : ℝ) / 2 =
        ∑ _n ∈ Finset.range (N + 1), (1 / 2 : ℝ) := by
          simp
          ring
    _ ≤
        ∑ n ∈ Finset.range (N + 1),
          (unitCharacter (n : ℤ) β).re := by
            apply Finset.sum_le_sum
            intro n hn
            exact one_half_le_unitCharacter_nat_re_on_core
              (Nat.le_of_lt_succ (Finset.mem_range.mp hn)) hβ
    _ =
      (∑ n ∈ Finset.range (N + 1),
        unitCharacter (n : ℤ) β).re := by
          simp

/-- Pointwise Fejér lower bound on the fixed core interval. -/
theorem goldbachFejerKernel_lower_on_core
    (N : ℕ) {β : ℝ}
    (hβ : β ∈ Set.Icc
      (-goldbachFejerCoreRadius N)
      (goldbachFejerCoreRadius N)) :
    ((N + 1 : ℝ) ^ 2) / 4 ≤
      goldbachFejerKernel N β := by
  have hre :=
    goldbachIntegerExponentialKernel_re_lower_on_core N hβ
  have hre0 :
      0 ≤
        (goldbachIntegerExponentialKernel N β).re := by
    exact le_trans (by positivity)
      hre
  have hsq :=
    Complex.re_sq_le_normSq
      (goldbachIntegerExponentialKernel N β)
  have hmono := mul_self_le_mul_self (by positivity : (0 : ℝ) ≤ (N + 1 : ℝ) / 2) hre
  unfold goldbachFejerKernel
  nlinarith

/-- Continuity of the real Fejér kernel. -/
@[continuity, fun_prop]
theorem continuous_goldbachFejerKernel
    (N : ℕ) :
    Continuous (goldbachFejerKernel N) := by
  unfold goldbachFejerKernel
    goldbachIntegerExponentialKernel
  fun_prop

/-- The fixed core carries at least `(N+1)/12` units of Fejér mass. -/
theorem goldbachFejerCoreMain_le_integral
    (N : ℕ) :
    goldbachFejerCoreMain N ≤
      goldbachFejerCoreIntegral N := by
  let δ := goldbachFejerCoreRadius N
  let C : ℝ := ((N + 1 : ℝ) ^ 2) / 4
  have hδ : 0 ≤ δ :=
    (goldbachFejerCoreRadius_pos N).le
  have hmono :
      (∫ _β in Set.Icc (-δ) δ, C) ≤
        ∫ β in Set.Icc (-δ) δ,
          goldbachFejerKernel N β := by
    apply setIntegral_mono_on
      (integrableOn_const measure_Icc_lt_top.ne)
      ((continuous_goldbachFejerKernel N).continuousOn.integrableOn_compact
        isCompact_Icc)
      measurableSet_Icc
    intro β hβ
    exact goldbachFejerKernel_lower_on_core N
      (by simpa [δ] using hβ)
  have hconst :
      (∫ _β in Set.Icc (-δ) δ, C) =
        goldbachFejerCoreMain N := by
    rw [setIntegral_const]
    rw [Real.volume_real_Icc_of_le (by linarith), smul_eq_mul]
    unfold C δ goldbachFejerCoreRadius
      goldbachFejerCoreMain
    field_simp
    ring
  rw [← hconst]
  exact hmono

/-- Every indexed denominator window contains the fixed core interval. -/
theorem goldbachFejerCoreRadius_le_arcRadius
    {Q N q : ℕ}
    (hq : 0 < q) (hqQ : q ≤ Q) :
    goldbachFejerCoreRadius N ≤
      goldbachRationalArcRadius Q N q := by
  have hqR : (0 : ℝ) < (q : ℝ) := by
    exact_mod_cast hq
  have hN : (0 : ℝ) < (N + 1 : ℝ) := by positivity
  have hqQ_R : (q : ℝ) ≤ (Q : ℝ) := by
    exact_mod_cast hqQ
  unfold goldbachFejerCoreRadius
    goldbachRationalArcRadius
  have hden :
      (0 : ℝ) <
        (q : ℝ) * (N + 1 : ℝ) := mul_pos hqR hN
  push_cast
  rw [div_le_div_iff₀ (by positivity : (0 : ℝ) < 6 * (N + 1 : ℝ)) hden]
  nlinarith

/-- Set inclusion form of the core-window containment. -/
theorem goldbachFejerCoreInterval_subset_symmetric
    {Q N q : ℕ}
    (hq : 0 < q) (hqQ : q ≤ Q) :
    Set.Icc
        (-goldbachFejerCoreRadius N)
        (goldbachFejerCoreRadius N) ⊆
      Set.Icc
        (-goldbachRationalArcRadius Q N q)
        (goldbachRationalArcRadius Q N q) := by
  intro β hβ
  have hr :=
    goldbachFejerCoreRadius_le_arcRadius
      (Q := Q) (N := N) hq hqQ
  constructor <;> linarith [hβ.1, hβ.2]

/-- The real part of the complex symmetric singular integral is exactly the
real Fejér-square set integral. -/
theorem goldbachSymmetricRealSingularIntegral_re_eq_fejerIntegral
    (Q N q : ℕ) :
    (goldbachSymmetricRealSingularIntegral Q N q).re =
      ∫ β in Set.Icc
          (-goldbachRationalArcRadius Q N q)
          (goldbachRationalArcRadius Q N q),
        goldbachFejerKernel N β := by
  unfold goldbachSymmetricRealSingularIntegral
  simp_rw [goldbachFiniteSingularKernel_eq_fejer]
  rw [integral_complex_ofReal]
  rfl

/-- A denominator-uniform lower bound for the actual symmetric finite
singular integral. -/
theorem goldbachFejerCoreMain_le_symmetric_re
    {Q N q : ℕ}
    (hq : 0 < q) (hqQ : q ≤ Q) :
    goldbachFejerCoreMain N ≤
      (goldbachSymmetricRealSingularIntegral Q N q).re := by
  rw [goldbachSymmetricRealSingularIntegral_re_eq_fejerIntegral]
  calc
    goldbachFejerCoreMain N ≤
      goldbachFejerCoreIntegral N :=
        goldbachFejerCoreMain_le_integral N
    _ ≤
      ∫ β in Set.Icc
          (-goldbachRationalArcRadius Q N q)
          (goldbachRationalArcRadius Q N q),
        goldbachFejerKernel N β := by
          unfold goldbachFejerCoreIntegral
          apply setIntegral_mono_set
            ((continuous_goldbachFejerKernel N).continuousOn.integrableOn_compact
              isCompact_Icc)
          · exact Filter.Eventually.of_forall
              (fun β => goldbachFejerKernel_nonneg N β)
          · exact Filter.Eventually.of_forall fun β hβ =>
              goldbachFejerCoreInterval_subset_symmetric
                (Q := Q) (N := N) hq hqQ hβ

/-- Every indexed symmetric singular integral has positive real part. -/
theorem goldbachSymmetricRealSingularIntegral_re_pos
    {Q N q : ℕ}
    (hq : 0 < q) (hqQ : q ≤ Q) :
    0 <
      (goldbachSymmetricRealSingularIntegral Q N q).re := by
  exact lt_of_lt_of_le
    (by unfold goldbachFejerCoreMain; positivity)
    (goldbachFejerCoreMain_le_symmetric_re hq hqQ)

/-- A sharp-enough elementary upper envelope for one symmetric window. -/
def goldbachFejerWindowUpper
    (Q N q : ℕ) : ℝ :=
  ((N + 1 : ℝ) ^ 2) *
    (2 * goldbachRationalArcRadius Q N q)

/-- The real part of one symmetric window is bounded above by the complete
pointwise kernel budget times the exact interval length. -/
theorem goldbachSymmetricRealSingularIntegral_re_le_upper
    (Q N q : ℕ) :
    (goldbachSymmetricRealSingularIntegral Q N q).re ≤
      goldbachFejerWindowUpper Q N q := by
  have hr :
      0 ≤ goldbachRationalArcRadius Q N q :=
    goldbachRationalArcRadius_nonneg Q N q
  have hmeasure :
      volume
        (Set.Icc
          (-goldbachRationalArcRadius Q N q)
          (goldbachRationalArcRadius Q N q)) < ∞ := by
    exact measure_Icc_lt_top
  have hnorm :
      ‖goldbachSymmetricRealSingularIntegral Q N q‖ ≤
        goldbachFejerWindowUpper Q N q := by
    unfold goldbachSymmetricRealSingularIntegral
      goldbachFejerWindowUpper
    calc
      ‖∫ β in Set.Icc
          (-goldbachRationalArcRadius Q N q)
          (goldbachRationalArcRadius Q N q),
          goldbachFiniteSingularKernel N β‖ ≤
        ((N + 1 : ℝ) ^ 2) *
          volume.real
            (Set.Icc
              (-goldbachRationalArcRadius Q N q)
              (goldbachRationalArcRadius Q N q)) := by
                exact norm_setIntegral_le_of_norm_le_const hmeasure
                  (fun β hβ =>
                    norm_goldbachFiniteSingularKernel_le N β)
      _ =
        ((N + 1 : ℝ) ^ 2) *
          (2 * goldbachRationalArcRadius Q N q) := by
            rw [Real.volume_real_Icc_of_le (by linarith)]
            ring
  exact (Complex.re_le_norm _).trans hnorm

/-- The symmetric singular integral itself is real. -/
theorem goldbachSymmetricRealSingularIntegral_im_zero
    (Q N q : ℕ) :
    (goldbachSymmetricRealSingularIntegral Q N q).im = 0 := by
  exact goldbachSymmetricRealSingularIntegral_im Q N q

end
end GRWTSK.NumberTheory.Primes.GoldbachFejerCoreLowerBound
```
