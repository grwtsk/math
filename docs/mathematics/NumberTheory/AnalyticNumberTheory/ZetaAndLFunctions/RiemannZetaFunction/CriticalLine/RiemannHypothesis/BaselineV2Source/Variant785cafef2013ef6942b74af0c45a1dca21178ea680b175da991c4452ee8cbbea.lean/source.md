# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BaselineV2Source.Variant785cafef2013ef6942b74af0c45a1dca21178ea680b175da991c4452ee8cbbea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21d492100dd60769828688a1eeda8171527c1f75` · SHA-256 `785cafef2013ef6942b74af0c45a1dca21178ea680b175da991c4452ee8cbbea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction

/-!
# Actual finite Mangoldt square storage

Independently specified arithmetic baselines and actual source norm squares
reconstruct signed moments. Positivity of the square sum is not a uniform
budget for its difference from the changing baseline. Invisible atoms require
joint baseline/storage padding. The original Vaughan counterterms are unchanged.

AI attribution: developed with OpenAI Codex; checked by Lean.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtStorage
open MeasureTheory Set ArithmeticFunction
open scoped InnerProductSpace
open SourcePairing SourceReflectionDuality SourceScaleL2Continuity
open SourceMangoldtInteraction SourcePrimeMomentScale SourcePrimePowerPartition
open SourceDiagonalMainTerm WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent EstimateMobiusSplit
open EstimatePrimeSmoothDefect EstimateMertensResidual

/-- The literal right-shift square, with coefficient one half. -/
def translationStorage (s : ℝ) (f : ComplexL2) : ℝ := ‖f - translation s f‖ ^ 2 / 2

/-- A norm square complements the full real coefficient; no absolute value is introduced. -/
theorem translationStorage_eq (s : ℝ) (f : ComplexL2) :
    translationStorage s f = ‖f‖ ^ 2 - (⟪f, translation s f⟫_ℂ).re := by
  unfold translationStorage
  rw [norm_sub_sq (𝕜 := ℂ), (translation s).norm_map]
  ring

theorem translationStorage_nonneg (s : ℝ) (f : ComplexL2) :
    0 ≤ translationStorage s f := div_nonneg (sq_nonneg _) (by norm_num)

theorem translationStorage_zero (f : ComplexL2) : translationStorage 0 f = 0 := by
  simp [translationStorage, translation_zero]

theorem translationStorage_neg (s : ℝ) (f : ComplexL2) :
    translationStorage (-s) f = translationStorage s f := by
  rw [translationStorage_eq, translationStorage_eq, translation_self_real_even]

/-- Storage uses the actual positive-scale normalized source, not a fitted residual. -/
def sourceSquareStorage (A s : ℝ) : ℝ := translationStorage s (originalSourceState A)

theorem sourceSquareStorage_eq {A : ℝ} (hA : 0 < A) (s : ℝ) :
    sourceSquareStorage A s = 1 - sourceCorrelation explicitSecondDerivative A s := by
  rw [sourceSquareStorage, translationStorage_eq, originalSourceState_norm hA,
    ← sourceCorrelation_eq_inner hA]
  norm_num

theorem sourceSquareStorage_nonneg (A s : ℝ) : 0 ≤ sourceSquareStorage A s :=
  translationStorage_nonneg _ _

theorem sourceSquareStorage_zero (A : ℝ) : sourceSquareStorage A 0 = 0 :=
  translationStorage_zero _

/-- Every finite baseline coefficient is independently fixed by the actual arithmetic. -/
theorem mangoldtCoefficient_nonneg (n : ℕ) : 0 ≤ mangoldtCoefficient n :=
  mul_nonneg vonMangoldt_nonneg (Real.exp_pos _).le

def finiteMangoldtBaseline (S : Finset ℕ) : ℝ := ∑ n ∈ S, mangoldtCoefficient n

def finiteMangoldtStorage (S : Finset ℕ) (f : ComplexL2) : ℝ :=
  ∑ n ∈ S, mangoldtCoefficient n * translationStorage (Real.log n) f

theorem finiteMangoldtBaseline_nonneg (S : Finset ℕ) : 0 ≤ finiteMangoldtBaseline S :=
  Finset.sum_nonneg fun _ _ => mangoldtCoefficient_nonneg _

theorem finiteMangoldtStorage_nonneg (S : Finset ℕ) (f : ComplexL2) :
    0 ≤ finiteMangoldtStorage S f :=
  Finset.sum_nonneg fun _ _ =>
    mul_nonneg (mangoldtCoefficient_nonneg _) (translationStorage_nonneg _ _)

/-- Reconstruction retains every coefficient and cross term inside the actual norm square. -/
theorem finiteMangoldt_reconstruction (S : Finset ℕ) (f : ComplexL2) :
    (∑ n ∈ S, mangoldtCoefficient n * (⟪f, translation (Real.log n) f⟫_ℂ).re) =
      finiteMangoldtBaseline S * ‖f‖ ^ 2 - finiteMangoldtStorage S f := by
  simp only [finiteMangoldtBaseline, finiteMangoldtStorage, Finset.sum_mul,
    ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  rw [translationStorage_eq]
  ring

/-- Complete actual closed inventory, including every prime power. -/
def mangoldtBaseline (A : ℝ) : ℝ := finiteMangoldtBaseline (primePowerInventory (2 * A))

def mangoldtStorage (A : ℝ) : ℝ :=
  finiteMangoldtStorage (primePowerInventory (2 * A)) (originalSourceState A)

theorem mangoldtBaseline_nonneg (A : ℝ) : 0 ≤ mangoldtBaseline A :=
  finiteMangoldtBaseline_nonneg _

theorem mangoldtStorage_nonneg (A : ℝ) : 0 ≤ mangoldtStorage A :=
  finiteMangoldtStorage_nonneg _ _

theorem mangoldtInteraction_eq_baseline_norm_sub_storage (A : ℝ) (f : ComplexL2) :
    (⟪f, mangoldtInteraction A f⟫_ℂ).re =
      mangoldtBaseline A * ‖f‖ ^ 2 -
        finiteMangoldtStorage (primePowerInventory (2 * A)) f := by
  rw [mangoldtInteraction_self_real, finiteMangoldt_reconstruction]
  rfl

theorem closedPrimeMoment_eq_baseline_sub_storage {A : ℝ} (hA : 0 < A) :
    closedPrimeMoment A = mangoldtBaseline A - mangoldtStorage A := by
  rw [closedPrimeMoment_eq_quadratic hA, mangoldtInteraction_eq_baseline_norm_sub_storage,
    originalSourceState_norm hA]
  simp [mangoldtStorage]

theorem mertensResidual_eq_baseline_sub_storage {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = mangoldtBaseline A - mangoldtStorage A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  exact closedPrimeMoment_eq_baseline_sub_storage (by linarith)

def firstPrimeBaseline (A : ℝ) : ℝ := finiteMangoldtBaseline (primeLogInventory (2 * A))

def firstPrimeStorage (A : ℝ) : ℝ :=
  finiteMangoldtStorage (primeLogInventory (2 * A)) (originalSourceState A)

theorem firstPrimeBaseline_nonneg (A : ℝ) : 0 ≤ firstPrimeBaseline A :=
  finiteMangoldtBaseline_nonneg _

theorem firstPrimeStorage_nonneg (A : ℝ) : 0 ≤ firstPrimeStorage A :=
  finiteMangoldtStorage_nonneg _ _

theorem firstPrimeMoment_eq_baseline_sub_storage {A : ℝ} (hA : 0 < A) :
    firstPrimeMoment A = firstPrimeBaseline A - firstPrimeStorage A := by
  unfold firstPrimeMoment firstPrimeBaseline firstPrimeStorage
  have h := finiteMangoldt_reconstruction (primeLogInventory (2 * A)) (originalSourceState A)
  rw [originalSourceState_norm hA] at h
  simp only [one_pow, mul_one] at h
  rw [← h]
  apply Finset.sum_congr rfl
  intro p hp
  rw [← sourceCorrelation_eq_inner hA]
  unfold closedPrimeWeight exponentialTest mangoldtCoefficient
  ring

end FormalResearch.RiemannHypothesis.SourceMangoldtStorage
```
