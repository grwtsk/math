# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeightedSourceRetainedReadout.Variant4bdb76a74782d6f8b67a8f162551fad35358f7810d3bf6d5b4e707407643da38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8697b66c41f31bcac6905b959ec92a5f4b47a8ef` · SHA-256 `4bdb76a74782d6f8b67a8f162551fad35358f7810d3bf6d5b4e707407643da38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.WeightedSourceEnergy
import FormalResearch.RiemannHypothesis.Conversation.WeightedSourcePickupIdentity

/-!
# Fixed-window retained readout and paid discarded signal

Written continuation 2026-10-09: grwtsk contributors. Formal consumer: OpenAI
Codex. Retained representatives need not have compact support. The fixed
window [-A,3A] supplies the scalar test and the full discarded square energy
is paid. This file does not construct an orthogonal Fourier cutoff or claim
a real-frequency tail identity: those require the separately pinned Fourier
realization and its integrability and normalization laws.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.WeightedSourceRetainedReadout
open WeightedSourcePickup WeightedSourcePickupIdentity WeightedSourceMass WeightedSourceEnergy
open FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
open MeasureTheory Set
noncomputable section

/-- The retained reading in this module, with the following exact parameterization.

def retainedReading (A : ℝ) (h : ℝ → ℝ) : ℝ := (∫ x in (-A)..(3 * A), h x) / (∫ x : ℝ,
prescribedSource A x)
-/
def retainedReading (A : ℝ) (h : ℝ → ℝ) : ℝ :=
  (∫ x in (-A)..(3 * A), h x) / (∫ x : ℝ, prescribedSource A x)

/-- The discarded energy in this module, with the following exact parameterization.

def discardedEnergy (A t : ℝ) (h : ℝ → ℝ) : ℝ := ∫ x : ℝ, (sourceVector A t x - h x) ^ 2
-/
def discardedEnergy (A t : ℝ) (h : ℝ → ℝ) : ℝ :=
  ∫ x : ℝ, (sourceVector A t x - h x) ^ 2

/-- The same uniform scalar decoder applies to an arbitrary full square-
integrable error on this fixed window. It asserts no support of the error. -/
theorem finite_window_error_payment {A : ℝ} (hA : 1 ≤ A) (e : ℝ → ℝ)
    (hi : IntervalIntegrable e volume (-A) (3 * A))
    (hi2 : Integrable (fun x ↦ e x ^ 2) volume) :
    |(∫ x in (-A)..(3 * A), e x) / (∫ x : ℝ, prescribedSource A x)| ≤
      massDecoder * Real.sqrt (∫ x : ℝ, e x ^ 2) := by
  have hab : -A ≤ 3 * A := by linarith
  have he : 0 ≤ ∫ x : ℝ, e x ^ 2 := integral_nonneg (fun _ ↦ sq_nonneg _)
  have hcs :=
    open FormalResearch.RiemannHypothesis.Conversation.SupplierWeakMertens in
      integral_sq_le_length_mul_integral_sq hab hi hi2.intervalIntegrable
  have hwindow : (∫ x in (-A)..(3 * A), e x ^ 2) ≤ ∫ x : ℝ, e x ^ 2 := by
    rw [intervalIntegral.integral_of_le hab]
    exact setIntegral_le_integral hi2 (ae_of_all _ fun _ ↦ sq_nonneg _)
  apply mass_decoder_of_square_bound hA he
  have hmul := mul_le_mul_of_nonneg_left hwindow (by linarith : 0 ≤ 3 * A - -A)
  linarith

/-- A retained vector may spread outside the original support. Only the
window-integrability and genuine full error energy are required. -/
theorem retained_reading_error {A : ℝ} (hA : 1 ≤ A) (t : ℝ) (h : ℝ → ℝ)
    (hi : IntervalIntegrable h volume (-A) (3 * A))
    (he : Integrable (fun x ↦ (sourceVector A t x - h x) ^ 2) volume) :
    |weightedRecording A t - retainedReading A h| ≤
      massDecoder * Real.sqrt (discardedEnergy A t h) := by
  have hfull := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume)
    (sourceVector_support hA t)
  have hs := (sourceVector_continuous hA t).intervalIntegrable (μ := volume) (-A) (3 * A)
  rw [weightedRecording_mass_decoder hA, retainedReading, ← sub_div, ← hfull,
    ← intervalIntegral.integral_sub hs hi]
  exact finite_window_error_payment hA _ (hs.sub hi) he

theorem original_pickup_retained_error {A t : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (h : ℝ → ℝ)
    (hi : IntervalIntegrable h volume (-A) (3 * A))
    (he : Integrable (fun x ↦ (sourceVector A t x - h x) ^ 2) volume) :
    |centeredPickup A t - retainedReading A h| ≤
      massDecoder * Real.sqrt (discardedEnergy A t h) := by
  rw [centeredPickup_exact hA ht]
  exact retained_reading_error hA t h hi he

/-- A retained signed estimate and a separately paid tail return together. -/
theorem original_pickup_of_retained_and_tail {A t B T : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (h : ℝ → ℝ)
    (hi : IntervalIntegrable h volume (-A) (3 * A))
    (he : Integrable (fun x ↦ (sourceVector A t x - h x) ^ 2) volume)
    (hB : |retainedReading A h| ≤ B) (hT : discardedEnergy A t h ≤ T) :
    |centeredPickup A t| ≤ B + massDecoder * Real.sqrt T := by
  have herr := original_pickup_retained_error hA ht h hi he
  have htail := mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt hT) decoder_nonneg
  calc
    _ ≤ |centeredPickup A t - retainedReading A h| + |retainedReading A h| := by
      simpa only [sub_add_cancel] using abs_add_le
        (centeredPickup A t - retainedReading A h) (retainedReading A h)
    _ ≤ _ := by linarith

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourceRetainedReadout
```
