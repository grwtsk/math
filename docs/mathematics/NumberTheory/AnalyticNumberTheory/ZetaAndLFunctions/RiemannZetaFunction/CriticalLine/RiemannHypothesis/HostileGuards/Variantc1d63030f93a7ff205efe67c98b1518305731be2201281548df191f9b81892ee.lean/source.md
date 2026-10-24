# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HostileGuards.Variantc1d63030f93a7ff205efe67c98b1518305731be2201281548df191f9b81892ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a46d866e81de9c44ff82d73591f18c556094b61` · SHA-256 `c1d63030f93a7ff205efe67c98b1518305731be2201281548df191f9b81892ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages

open FormalResearch.RiemannHypothesis
open SourcePairedPrimeAverages SourcePairedPrimeWork SourceFirstPrimeAbel
open WeightedPrimeAbel SourceDiagonalMainTerm SourceMangoldtStorage

example {A : ℝ} (hA : 1 ≤ A) : 0 < negativeMass A := negativeMass_pos hA

example {A : ℝ} (hA : 1 ≤ A) : positiveMass A - negativeMass A = -1 :=
  mass_difference hA

example {A : ℝ} (hA : 1 ≤ A) :
    criticalSignedWork A = pairedErrorContrast A - negativeErrorMean A :=
  criticalSignedWork_eq_contrast_sub_mean hA

example (θ A : ℝ) : centeredPairedErrorContrast θ A = pairedErrorContrast A :=
  centeredPairedErrorContrast_eq θ A

example {A : ℝ} (hA : 1 ≤ A) (θ : ℝ) :
    centeredPairedErrorContrast θ A - centeredNegativeErrorMean θ A =
      criticalSignedWork A - θ := by
  have h := criticalSignedWork_eq_centered_contrast hA θ
  linarith

example (s t : ℝ) :
    primeLogError s - primeLogError t = primeLogWindow t s (fun _ => 1) - (s-t) :=
  primeError_difference_window s t

example {s t : ℝ} (hs : s < Real.log 2) (ht : t < Real.log 2) (horder : s < t) :
    0 < primeLogError s - primeLogError t := by
  rw [primeError_difference_before_first hs ht]
  linarith

example : primeLogError (Real.log 2 / 2) - primeLogError 0 < 0 :=
  primeError_negative_difference_fixture

example {A : ℝ} (hA : 1 ≤ A) :
    firstPrimeStorageSurplus A = pairedErrorContrast A - negativeErrorMean A -
      criticalContinuousMoment A - diagonalMainCoefficient A * A :=
  firstPrimeStorageSurplus_eq_contrast hA

example : PairedContrastTailLowerBound ↔ CriticalAbelTailLowerBound :=
  pairedContrast_tail_iff_criticalAbel_tail
```
