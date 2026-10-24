# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Varianta334e8b9d8ded65fe3e97ecad021b9b1721f871256873819c679dbf8e4de0a5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da990ce0c419f1c0d6d31336deb055404d42ddde` · SHA-256 `a334e8b9d8ded65fe3e97ecad021b9b1721f871256873819c679dbf8e4de0a5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroArchimedeanContinuity
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator

/-!
# Continuity bounds for the actual arithmetic quadratic form

Every pairing estimate retains genuine L² membership. Supported exponential
moments and the source's translated correlations are controlled in L²; the
archimedean term is controlled in the exact logarithmic Fourier norm. This
module does not identify the arithmetic form with a completed Weil form.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroFormContinuity

open MeasureTheory Set
open scoped ENNReal
open FormalResearch.RiemannHypothesis.SourcePairing
open BridgeAdmissibility ZeroLogarithmicCore ZeroArchimedeanContinuity

noncomputable section

/-- Lebesgue translation preserves genuine L² membership. -/
theorem memLp_translate {f : ℝ → ℝ} (hf : MemLp f 2 volume) (t : ℝ) :
    MemLp (fun x ↦ f (x - t)) 2 volume :=
  hf.comp_measurePreserving (measurePreserving_sub_right volume t)

/-- Lebesgue translation preserves the genuine L² norm. -/
theorem lpNorm_translate {f : ℝ → ℝ} (hf : MemLp f 2 volume) (t : ℝ) :
    lpNorm (fun x ↦ f (x - t)) 2 volume = lpNorm f 2 volume := by
  rw [← toReal_eLpNorm (memLp_translate hf t).aestronglyMeasurable,
    ← toReal_eLpNorm hf.aestronglyMeasurable]
  exact congrArg ENNReal.toReal
    (eLpNorm_comp_measurePreserving hf.aestronglyMeasurable
      (measurePreserving_sub_right volume t))

/-- Every translated correlation of a genuine L² function is a genuine integral. -/
theorem correlation_integrable {f : ℝ → ℝ} (hf : MemLp f 2 volume) (t : ℝ) :
    Integrable (fun x ↦ f x * f (x - t)) :=
  hf.integrable_mul (memLp_translate hf t)

/-- The L² difference estimate for the source correlation is uniform in its real shift. -/
theorem correlation_sub_abs_le {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) (t : ℝ) :
    |(∫ x, f x * f (x - t)) - (∫ x, g x * g (x - t))| ≤
      lpNorm (fun x ↦ f x - g x) 2 volume *
        (lpNorm f 2 volume + lpNorm g 2 volume) := by
  have he : MemLp (fun x ↦ f x - g x) 2 volume := hf.sub hg
  have ht : MemLp (fun x ↦ f (x - t) - g (x - t)) 2 volume :=
    memLp_translate he t
  have hid : (∫ x, f x * f (x - t)) - (∫ x, g x * g (x - t)) =
      (∫ x, (f x - g x) * f (x - t)) +
      (∫ x, g x * (f (x - t) - g (x - t))) := by
    rw [← integral_sub (correlation_integrable hf t) (correlation_integrable hg t),
      ← integral_add (f := fun x ↦ (f x - g x) * f (x - t))
        (g := fun x ↦ g x * (f (x - t) - g (x - t)))
        (he.integrable_mul (memLp_translate hf t)) (hg.integrable_mul ht)]
    apply integral_congr_ae
    exact Filter.Eventually.of_forall (fun x ↦ by dsimp; ring)
  rw [hid]
  calc
    _ ≤ |∫ x, (f x - g x) * f (x - t)| +
        |∫ x, g x * (f (x - t) - g (x - t))| := abs_add_le _ _
    _ ≤ lpNorm (fun x ↦ f x - g x) 2 volume * lpNorm f 2 volume +
        lpNorm g 2 volume * lpNorm (fun x ↦ f x - g x) 2 volume := by
      simpa only [lpNorm_translate hf t, lpNorm_translate he t] using
        add_le_add (integral_mul_abs_le he (memLp_translate hf t))
          (integral_mul_abs_le hg ht)
    _ = _ := by ring

/-- A continuous moment weight restricted to the common compact support. -/
def supportedWeight (R : ℝ) (w : ℝ → ℝ) : ℝ → ℝ := (Icc (-R) R).indicator w

/-- Every supported continuous moment weight is genuinely square integrable. -/
theorem supportedWeight_memLp (R : ℝ) {w : ℝ → ℝ} (hw : Continuous w) :
    MemLp (supportedWeight R w) 2 volume := by
  apply (memLp_two_iff_integrable_sq
    (hw.aestronglyMeasurable.indicator measurableSet_Icc)).2
  have hi : Integrable ((Icc (-R) R).indicator (fun x ↦ w x ^ 2)) volume :=
    ((hw.pow 2).integrableOn_Icc).integrable_indicator measurableSet_Icc
  apply hi.congr
  exact Filter.Eventually.of_forall (fun x ↦ by
    by_cases hx : x ∈ Icc (-R) R <;> simp [hx])

/-- On a supported source function, restricting the weight leaves the moment integrand exact. -/
theorem moment_integrand_eq {R : ℝ} {f w : ℝ → ℝ}
    (hs : Function.support f ⊆ Icc (-R) R) :
    (fun x ↦ w x * f x) = (fun x ↦ supportedWeight R w x * f x) := by
  funext x
  by_cases hx : x ∈ Icc (-R) R
  · simp [supportedWeight, hx]
  · have hz : f x = 0 := Function.notMem_support.mp (fun h ↦ hx (hs h))
    simp [hz]

/-- Supported L² sources have genuine integrals against continuous weights. -/
theorem moment_integrable {R : ℝ} {f w : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hs : Function.support f ⊆ Icc (-R) R)
    (hw : Continuous w) : Integrable (fun x ↦ w x * f x) := by
  rw [moment_integrand_eq hs]
  exact (supportedWeight_memLp R hw).integrable_mul hf

/-- The exact supported weight norm controls the corresponding exponential or other moment. -/
theorem moment_abs_le {R : ℝ} {f w : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hs : Function.support f ⊆ Icc (-R) R)
    (hw : Continuous w) :
    |∫ x, w x * f x| ≤ lpNorm (supportedWeight R w) 2 volume * lpNorm f 2 volume := by
  rw [moment_integrand_eq hs]
  exact integral_mul_abs_le (supportedWeight_memLp R hw) hf

/-- Differences retain the same exact common support. -/
theorem support_sub_subset {R : ℝ} {f g : ℝ → ℝ}
    (hf : Function.support f ⊆ Icc (-R) R) (hg : Function.support g ⊆ Icc (-R) R) :
    Function.support (fun x ↦ f x - g x) ⊆ Icc (-R) R := by
  intro x hx
  by_contra hn
  have hfz := Function.notMem_support.mp (fun h ↦ hn (hf h))
  have hgz := Function.notMem_support.mp (fun h ↦ hn (hg h))
  exact hx (by simp [hfz, hgz])

/-- The difference of two genuine moments equals the moment of the difference. -/
theorem moment_sub {R : ℝ} {f g w : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hsf : Function.support f ⊆ Icc (-R) R) (hsg : Function.support g ⊆ Icc (-R) R)
    (hw : Continuous w) :
    (∫ x, w x * f x) - (∫ x, w x * g x) = ∫ x, w x * (f x - g x) := by
  simp only [mul_sub]
  exact (integral_sub (moment_integrable hf hsf hw) (moment_integrable hg hsg hw)).symm

/-- The exact finite coefficient supplied by the two supported exponential weights. -/
def poleCoefficient (R : ℝ) : ℝ :=
  2 * lpNorm (supportedWeight R (fun x ↦ Real.exp (x / 2))) 2 volume *
    lpNorm (supportedWeight R (fun x ↦ Real.exp (-x / 2))) 2 volume

/-- The pole continuity coefficient is nonnegative. -/
theorem poleCoefficient_nonneg (R : ℝ) : 0 ≤ poleCoefficient R := by
  unfold poleCoefficient
  exact mul_nonneg (mul_nonneg (by norm_num) lpNorm_nonneg) lpNorm_nonneg

/-- Both source pole moments are controlled without omitting their product or factor two. -/
theorem pole_sub_abs_le {R : ℝ} {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hsf : Function.support f ⊆ Icc (-R) R) (hsg : Function.support g ⊆ Icc (-R) R) :
    |realPoleContribution f - realPoleContribution g| ≤
      poleCoefficient R * lpNorm (fun x ↦ f x - g x) 2 volume *
        (lpNorm f 2 volume + lpNorm g 2 volume) := by
  have hp : Continuous (fun x : ℝ ↦ Real.exp (x / 2)) := by fun_prop
  have hm : Continuous (fun x : ℝ ↦ Real.exp (-x / 2)) := by fun_prop
  have he : MemLp (fun x ↦ f x - g x) 2 volume := hf.sub hg
  have hes := support_sub_subset hsf hsg
  have hmf := moment_abs_le hf hsf hm
  have hpg := moment_abs_le hg hsg hp
  have hpe := moment_abs_le he hes hp
  have hme := moment_abs_le he hes hm
  rw [← moment_sub hf hg hsf hsg hp] at hpe
  rw [← moment_sub hf hg hsf hsg hm] at hme
  let pf := ∫ x, Real.exp (x / 2) * f x
  let mf := ∫ x, Real.exp (-x / 2) * f x
  let pg := ∫ x, Real.exp (x / 2) * g x
  let mg := ∫ x, Real.exp (-x / 2) * g x
  change |pf - pg| ≤ _ at hpe
  change |mf - mg| ≤ _ at hme
  change |mf| ≤ _ at hmf
  change |pg| ≤ _ at hpg
  change |2 * pf * mf - 2 * pg * mg| ≤ _
  calc
    _ = 2 * |(pf - pg) * mf + pg * (mf - mg)| := by
      rw [← abs_of_pos (show (0 : ℝ) < 2 by norm_num), ← abs_mul]
      congr 1
      ring
    _ ≤ 2 * (|pf - pg| * |mf| + |pg| * |mf - mg|) := by
      simpa only [abs_mul] using mul_le_mul_of_nonneg_left
        (abs_add_le ((pf - pg) * mf) (pg * (mf - mg))) (by norm_num : (0 : ℝ) ≤ 2)
    _ ≤ 2 * ((lpNorm (supportedWeight R (fun x ↦ Real.exp (x / 2))) 2 volume *
          lpNorm (fun x ↦ f x - g x) 2 volume) *
          (lpNorm (supportedWeight R (fun x ↦ Real.exp (-x / 2))) 2 volume *
            lpNorm f 2 volume) +
        (lpNorm (supportedWeight R (fun x ↦ Real.exp (x / 2))) 2 volume *
          lpNorm g 2 volume) *
          (lpNorm (supportedWeight R (fun x ↦ Real.exp (-x / 2))) 2 volume *
            lpNorm (fun x ↦ f x - g x) 2 volume)) := by
      gcongr <;> exact mul_nonneg lpNorm_nonneg lpNorm_nonneg
    _ = _ := by unfold poleCoefficient; ring

/-- The source finite prime coefficient keeps its strict cutoff, including the prime-two term. -/
def primeCoefficient (R : ℝ) : ℝ :=
  2 * ∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * R)⌋₊).filter
    (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * R)),
    |ArithmeticFunction.vonMangoldt n / Real.sqrt n|

/-- The finite prime coefficient is nonnegative. -/
theorem primeCoefficient_nonneg (R : ℝ) : 0 ≤ primeCoefficient R := by
  unfold primeCoefficient
  positivity

/-- The original finite prime sum is controlled uniformly in its finitely many shifts. -/
theorem prime_sub_abs_le (R : ℝ) {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    |2 * ∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * R)⌋₊).filter
        (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * R)),
        ArithmeticFunction.vonMangoldt n / Real.sqrt n * (∫ x, f x * f (x - Real.log n)) -
      2 * ∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * R)⌋₊).filter
        (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * R)),
        ArithmeticFunction.vonMangoldt n / Real.sqrt n * (∫ x, g x * g (x - Real.log n))| ≤
      primeCoefficient R * lpNorm (fun x ↦ f x - g x) 2 volume *
        (lpNorm f 2 volume + lpNorm g 2 volume) := by
  let s := (Finset.Icc 2 ⌊Real.exp (2 * R)⌋₊).filter
    (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * R))
  let c (n : ℕ) := ArithmeticFunction.vonMangoldt n / Real.sqrt n
  let C := lpNorm (fun x ↦ f x - g x) 2 volume *
    (lpNorm f 2 volume + lpNorm g 2 volume)
  change |2 * ∑ n ∈ s, c n * (∫ x, f x * f (x - Real.log n)) -
    2 * ∑ n ∈ s, c n * (∫ x, g x * g (x - Real.log n))| ≤ _
  calc
    _ = 2 * |∑ n ∈ s, c n * ((∫ x, f x * f (x - Real.log n)) -
        (∫ x, g x * g (x - Real.log n)))| := by
      rw [← mul_sub, abs_mul, abs_of_pos (show (0 : ℝ) < 2 by norm_num)]
      congr 2
      rw [← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro n hn
      ring
    _ ≤ 2 * ∑ n ∈ s, |c n * ((∫ x, f x * f (x - Real.log n)) -
        (∫ x, g x * g (x - Real.log n)))| := by
      gcongr
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ 2 * ∑ n ∈ s, |c n| * C := by
      gcongr with n hn
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_left (correlation_sub_abs_le hf hg (Real.log n)) (abs_nonneg _)
    _ = _ := by rw [← Finset.sum_mul]; unfold primeCoefficient C s c; ring

/-- A finite common-support continuity constant for the actual arithmetic form. -/
def formCoefficient (R : ℝ) : ℝ :=
  (|archimedeanConstant| + 4) + poleCoefficient R + primeCoefficient R

/-- The common-support continuity coefficient is nonnegative. -/
theorem formCoefficient_nonneg (R : ℝ) :
    0 ≤ formCoefficient R := by
  unfold formCoefficient
  exact add_nonneg (add_nonneg (by positivity) (poleCoefficient_nonneg R))
    (primeCoefficient_nonneg R)

/-- The exact arithmetic quadratic form is continuous on a fixed support in the source
logarithmic norm. Every source function and weighted Fourier square has genuine membership. -/
theorem realArithmeticForm_sub_abs_le {R : ℝ} {f g : ℝ → ℝ}
    (hf : Integrable f) (hg : Integrable g)
    (hf2 : MemLp f 2 volume) (hg2 : MemLp g 2 volume)
    (hsf : Function.support f ⊆ Icc (-R) R) (hsg : Function.support g ⊆ Icc (-R) R)
    (hwf : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)))
    (hwg : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier g ξ)))
    (hwe : Integrable (fun ξ ↦ logarithmicWeight ξ *
      Complex.normSq (sourceFourier (fun x ↦ f x - g x) ξ))) :
    |realArithmeticForm R f - realArithmeticForm R g| ≤
      formCoefficient R * logarithmicNorm (fun x ↦ f x - g x) *
        (logarithmicNorm f + logarithmicNorm g) := by
  have hF := lpNorm_le_logarithmicNorm hf hf2 hwf
  have hG := lpNorm_le_logarithmicNorm hg hg2 hwg
  have hE := lpNorm_le_logarithmicNorm (hf.sub hg) (hf2.sub hg2) hwe
  have hpair : lpNorm (fun x ↦ f x - g x) 2 volume *
      (lpNorm f 2 volume + lpNorm g 2 volume) ≤
      logarithmicNorm (fun x ↦ f x - g x) * (logarithmicNorm f + logarithmicNorm g) :=
    mul_le_mul hE (add_le_add hF hG) (add_nonneg lpNorm_nonneg lpNorm_nonneg)
      (logarithmicNorm_nonneg _)
  have hpole := (pole_sub_abs_le hf2 hg2 hsf hsg).trans
    (show poleCoefficient R * lpNorm (fun x ↦ f x - g x) 2 volume *
        (lpNorm f 2 volume + lpNorm g 2 volume) ≤
      poleCoefficient R * logarithmicNorm (fun x ↦ f x - g x) *
        (logarithmicNorm f + logarithmicNorm g) by
      simpa only [mul_assoc] using mul_le_mul_of_nonneg_left hpair (poleCoefficient_nonneg R))
  have hprime := (prime_sub_abs_le R hf2 hg2).trans
    (show primeCoefficient R * lpNorm (fun x ↦ f x - g x) 2 volume *
        (lpNorm f 2 volume + lpNorm g 2 volume) ≤
      primeCoefficient R * logarithmicNorm (fun x ↦ f x - g x) *
        (logarithmicNorm f + logarithmicNorm g) by
      simpa only [mul_assoc] using mul_le_mul_of_nonneg_left hpair (primeCoefficient_nonneg R))
  have harch := ZeroArchimedeanContinuity.archimedeanValue_sub_le hf hg hwf hwg hwe
  let p (v : ℝ → ℝ) := 2 * ∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * R)⌋₊).filter
    (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * R)),
    ArithmeticFunction.vonMangoldt n / Real.sqrt n * (∫ x, v x * v (x - Real.log n))
  change |p f - p g| ≤ _ at hprime
  change |ZeroArchimedeanContinuity.archimedeanValue f + realPoleContribution f - p f -
    (ZeroArchimedeanContinuity.archimedeanValue g + realPoleContribution g - p g)| ≤ _
  calc
    _ = |(ZeroArchimedeanContinuity.archimedeanValue f -
          ZeroArchimedeanContinuity.archimedeanValue g) +
        (realPoleContribution f - realPoleContribution g) + -(p f - p g)| := by
      congr 1
      ring
    _ ≤ |ZeroArchimedeanContinuity.archimedeanValue f -
        ZeroArchimedeanContinuity.archimedeanValue g| +
        |realPoleContribution f - realPoleContribution g| + |p f - p g| := by
      exact (abs_add_le _ _).trans (by
        simpa only [abs_neg] using
          add_le_add (abs_add_le
            (ZeroArchimedeanContinuity.archimedeanValue f -
              ZeroArchimedeanContinuity.archimedeanValue g)
            (realPoleContribution f - realPoleContribution g))
            (le_rfl : |-(p f - p g)| ≤ |-(p f - p g)|))
    _ ≤ _ := by
      have h := add_le_add (add_le_add harch hpole) hprime
      simpa only [formCoefficient, add_mul] using h

end
end ZeroFormContinuity
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
