/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoArchivedRemoteDiagonal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoLiteralDerivativePrice
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCompactGaugeBinding
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateGridComparison

/-!
# Rational arithmetic for the radius-two observed seed

Each row uses the archived rational derivative and remote price centers
and the exact signed reciprocal-grid moments. The integer inputs use
the frozen signal and kernel denominators. The diagonal includes the
reserved one tenth, and the second generator divides by the physical
mode in the compact seed gauge.

The rational inequalities spend `9 / 10^8` of the seed allowance. The
existing analytic grid comparison spends the remaining `1 / 10^8`. The signal field is an exact equality. The proof casts the three
rational inequalities and compares the twelve signed moment values
with the real evaluator. Connecting concrete data to the input fields
and proving literal source enclosures are separate obligations.
Independent mathematical review is pending.
-/

set_option autoImplicit false
set_option maxHeartbeats 2000000

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSeedRationalArithmetic

open GRWTSK.Algebra.LinearAlgebra
open RadiusTwoCandidateSeed RadiusTwoCompactGaugeBinding
open RadiusTwoCandidateScalarComparison RadiusTwoCovarianceGrid RadiusTwoCandidateGridComparison
open RadiusTwoArchivedRemoteDiagonal RadiusTwoLiteralDerivativePrice
open RadiusTwoWeightedMiddleStructure
open StructuredSchurNearestEven StructuredSchurIntegerReplay
open private α W from GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateScalarComparison
open private value from GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateGridComparison

/-- Integer scalar centers and signed reciprocal-grid moment numerators for one mode. -/
structure Inputs where
  mode : ℕ
  signal : ℤ
  boundary : ℤ
  core : ℤ
  toeplitz : Fin 2 → Fin 3 → ℤ
  hankel : Fin 2 → Fin 3 → ℤ

/-- The five integer fields of one compact seed row. -/
structure Raw where
  diag : ℤ
  firstPrimal : ℤ
  first : ℤ
  signal : ℤ
  second : ℤ

def signalScale : ℚ := 2^49

def kernelScale : ℚ := 2^56

def rawGeneratorScale : ℚ := 2^40

def alpha : ℚ := (1 + 1/4) * 2 / (1200000 * (149/100))

def centeredSignal (a : Inputs) : ℚ := (a.signal : ℚ) / signalScale

def gridMoment (v : ℤ) (r : ℕ) : ℚ :=
  (v : ℚ) / (kernelScale * signalScale^r)

def covariance (a : Inputs) : ℚ × ℚ × ℚ :=
  let t := fun (p : Fin 2) (r : Fin 3) => gridMoment (a.toeplitz p r) r.val
  let h := fun (p : Fin 2) (r : Fin 3) => gridMoment (a.hankel p r) r.val
  let u := centeredSignal a
  let W : ℚ := 100 / 39
  ((W/2) * (t 0 2 + h 0 2 + u * (h 0 1 - t 0 1)),
   (W/2) * (t 0 1 - h 0 1 - u * (t 0 0 + h 0 0)),
   (W/4) * (t 1 2 + h 1 2 + 2*u * (h 1 1 - t 1 1) +
      u^2 * (t 1 0 + h 1 0) + (t 0 2 + h 0 2 - u^2 * (t 0 0 + h 0 0))/a.mode))

def observedDiagonal (a : Inputs) : ℚ :=
  (a.core : ℚ) / signalScale - (covariance a).2.2 - alpha*(centeredSignal a)^2 -
    archivedDerivativeCenter*(a.mode : ℚ)^2 -
    archivedRemoteDiagonal a.mode ((a.boundary : ℚ) / signalScale)

def observedFirst (a : Inputs) : ℚ :=
  centeredSignal a - (covariance a).1 + archivedDerivativeCenter*(a.mode : ℚ)^3

def observedSecond (a : Inputs) : ℚ :=
  (covariance a).2.1 + alpha*a.mode*centeredSignal a

def rawDiagonal (v : Raw) : ℚ := (v.diag : ℚ) / rawGeneratorScale + 1 / 10

def rawFirst (v : Raw) : ℚ := (v.first : ℚ) / signalScale

def rawSecond (m : ℕ) (v : Raw) : ℚ := 512 * (v.second : ℚ) / ((m : ℚ) * rawGeneratorScale)

/-- The four exact rational checks at the gridded seed allowance. -/
def Checked (a : Inputs) (v : Raw) : Prop :=
  |observedDiagonal a - rawDiagonal v| ≤ 9 / 10^8 ∧
  |observedFirst a - rawFirst v| ≤ 9 / 10^8 ∧
  a.signal = v.signal ∧
  |observedSecond a - rawSecond a.mode v| ≤ 9 / 10^8

instance (a : Inputs) (v : Raw) : Decidable (Checked a v) := by
  unfold Checked
  infer_instance

noncomputable section

/-- The four rational checks become real checks once the exact row inputs are bound. -/
theorem castChecked {a : Inputs} {v : Raw} (h : Checked a v) :
    |(observedDiagonal a : ℝ) - (rawDiagonal v : ℝ)| ≤ 9 / 10^8 ∧
    |(observedFirst a : ℝ) - (rawFirst v : ℝ)| ≤ 9 / 10^8 ∧
    (centeredSignal a : ℝ) = ((v.signal : ℚ) / signalScale : ℚ) ∧
    |(observedSecond a : ℝ) - (rawSecond a.mode v : ℝ)| ≤ 9 / 10^8 := by
  obtain ⟨hd, hf, hs, hg⟩ := h
  refine ⟨?_, ?_, ?_, ?_⟩
  · have hcast := (Rat.cast_le (K := ℝ)).mpr hd
    push_cast at hcast
    exact hcast
  · have hcast := (Rat.cast_le (K := ℝ)).mpr hf
    push_cast at hcast
    exact hcast
  · simp only [centeredSignal, hs]
  · have hcast := (Rat.cast_le (K := ℝ)).mpr hg
    push_cast at hcast
    exact hcast

def gridRow (v : Raw) : GridRow 2 :=
  ⟨v.diag, ![v.firstPrimal, v.signal], ![v.first, v.second]⟩

/-- Decode in the same gauge as the compact high-floor seed consumer. -/
theorem rawCast (v : Raw) (seed : Fin 399936 → GridRow 2) (i : Fin 399936)
    (hv : seed i = gridRow v) :
    (rawDiagonal v : ℝ) = (coefficientsFromRaw seed).diag i ∧
    (rawFirst v : ℝ) = (coefficientsFromRaw seed).first i ∧
    (((v.signal : ℚ) / signalScale : ℚ) : ℝ) = (coefficientsFromRaw seed).signal i ∧
    (rawSecond (mode 400000 i) v : ℝ) = (coefficientsFromRaw seed).normalizedSecond i := by
  simp only [coefficientsFromRaw, hv, gridRow, Matrix.cons_val_zero, Matrix.cons_val_one]
  unfold rawDiagonal rawFirst rawSecond decodeGenerator signalScale
    rawGeneratorScale StructuredSchurIntegerReplay.generatorScale
  push_cast
  norm_num
  constructor
  · ring
  constructor <;> ring

/-- Rational arithmetic with the 12 checked grid moments has exactly the real evaluator's values. -/
theorem covarianceCast (a : Inputs) (M : Moments)
    (ht : ∀ p : Fin 2, ∀ r : Fin 3,
      (gridMoment (a.toeplitz p r) r.val : ℝ) = M.toeplitz (p.val + 1) r.val)
    (hh : ∀ p : Fin 2, ∀ r : Fin 3,
      (gridMoment (a.hankel p r) r.val : ℝ) = M.hankel (p.val + 1) r.val) :
    let E := evaluate (a.mode : ℝ) (centeredSignal a : ℝ) (100 / 39) M
    ((covariance a).1 : ℝ) = E.1 ∧
    ((covariance a).2.1 : ℝ) = E.2.1 ∧
    ((covariance a).2.2 : ℝ) = E.2.2 := by
  dsimp only [covariance, evaluate]
  push_cast
  rw [ht 0 0, ht 0 1, ht 0 2, ht 1 0, ht 1 1, ht 1 2,
      hh 0 0, hh 0 1, hh 0 2, hh 1 0, hh 1 1, hh 1 2]
  exact ⟨rfl, rfl, rfl⟩

/-- The checked row compares the four observation fields to the actual raw gauge,
using the grid rather than the analytic covariance. -/
private theorem compare (a : Inputs) (v : Raw) (s : Observations) (seed : Fin 399936 → GridRow 2)
    (i : Fin 399936) (M : Moments) (h : Checked a v) (hv : seed i = gridRow v)
    (hm : a.mode = mode 400000 i)
    (hs : (centeredSignal a : ℝ) = s.signal (mode 400000 i))
    (hc : (((a.core : ℚ) / signalScale : ℚ) : ℝ) = s.coreDiagonal i)
    (hδ : (archivedDerivativeCenter : ℝ) = s.derivativePrice)
    (hr : (archivedRemoteDiagonal a.mode ((a.boundary : ℚ)/signalScale) : ℝ) =
      s.remoteDiagonal i)
    (ht : ∀ p : Fin 2, ∀ r : Fin 3,
      (gridMoment (a.toeplitz p r) r.val : ℝ) = M.toeplitz (p.val + 1) r.val)
    (hh : ∀ p : Fin 2, ∀ r : Fin 3,
      (gridMoment (a.hankel p r) r.val : ℝ) = M.hankel (p.val + 1) r.val) :
    let m := mode 400000 i
    let u := s.signal m
    let e := evaluate m u (100 / 39) M
    let c := coefficientsFromRaw seed
    |s.coreDiagonal i - e.2.2 - (alpha : ℝ)*u^2 - s.derivativePrice*(m : ℝ)^2 -
      s.remoteDiagonal i - c.diag i| ≤ 9 / 10^8 ∧
    |u - e.1 + s.derivativePrice*(m : ℝ)^3 - c.first i| ≤ 9 / 10^8 ∧
    u = c.signal i ∧
    |e.2.1 + (alpha : ℝ)*(m : ℝ)*u - c.normalizedSecond i| ≤ 9 / 10^8 := by
  obtain ⟨hd, hf, hu, hg⟩ := castChecked h
  obtain ⟨hvd, hvf, hvu, hvg⟩ := rawCast v seed i hv
  obtain ⟨he₁, he₂, he₃⟩ := covarianceCast a M ht hh
  rw [hm, hs] at he₁ he₂ he₃
  unfold observedDiagonal at hd
  unfold observedFirst at hf
  unfold observedSecond at hg
  push_cast at hd hf hg hc
  rw [hc, he₃, hs, hδ, hr, hm, hvd] at hd
  rw [hs, he₁, hδ, hm, hvf] at hf
  rw [hs, hvu] at hu
  rw [he₂, hm, hs, hvg] at hg
  exact ⟨hd, hf, hu, hg⟩

private theorem alpha_eq : (alpha : ℝ) = α := by
  norm_num [alpha, α, remoteFirst]

/-- One exact row check supplies the four comparisons in the gridded seed gauge. -/
theorem gridArithmeticRow (a : Inputs) (v : Raw) (s : Observations)
    (seed : Fin 399936 → GridRow 2) (i : Fin 399936) (moments : Fin 399936 → Moments)
    (h : Checked a v) (hv : seed i = gridRow v)
    (hm : a.mode = mode 400000 i)
    (hs : (centeredSignal a : ℝ) = s.signal (mode 400000 i))
    (hc : (((a.core : ℚ) / signalScale : ℚ) : ℝ) = s.coreDiagonal i)
    (hδ : (archivedDerivativeCenter : ℝ) = s.derivativePrice)
    (hr : (archivedRemoteDiagonal a.mode ((a.boundary : ℚ) / signalScale) : ℝ) =
      s.remoteDiagonal i)
    (ht : ∀ p : Fin 2, ∀ r : Fin 3,
      (gridMoment (a.toeplitz p r) r.val : ℝ) = (moments i).toeplitz (p.val + 1) r.val)
    (hh : ∀ p : Fin 2, ∀ r : Fin 3,
      (gridMoment (a.hankel p r) r.val : ℝ) = (moments i).hankel (p.val + 1) r.val) :
    let v := ofMoments s moments
    let c := coefficientsFromRaw seed
    |v.diag i - c.diag i| ≤ 9 / 10^8 ∧
    |v.first i - c.first i| ≤ 9 / 10^8 ∧
    v.signal i = c.signal i ∧
    |v.normalizedSecond i - c.normalizedSecond i| ≤ 9 / 10^8 := by
  simpa only [ofMoments, value, W, Function.comp_apply, alpha_eq] using
    compare a v s seed i (moments i) h hv hm hs hc hδ hr ht hh

end

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSeedRationalArithmetic
