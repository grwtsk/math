# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceCriticalSignedSectorMassAttempt01.Variant8ca6071a32a601b6b4ccc07f3605d12c746e0465e6575353e4b7563fc8c0d404

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e567bc91f697db244334bbc2b55431cb9353e242` · SHA-256 `8ca6071a32a601b6b4ccc07f3605d12c746e0465e6575353e4b7563fc8c0d404`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCriticalWeightMassObstruction

/-!
Actual positive and negative critical-weight masses, with exact bounded cancellation.
These are kernel mass statements. No replacement of actual psi and no upper bound
for the actual critical-relative pairing is asserted here.
Direction: grwtsk contributors. Formal construction: OpenAI Codex issue ingestion.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalSignedSectorMass
open MeasureTheory Set
open SourceCriticalRelativeCompensation SourceCriticalWeightMassObstruction
open SourceContinuousHalfEnergy
open OmegaResearch.CriticalRelativePairing

def positiveCriticalWeightMass (A : ℝ) : ℝ :=
  ∫ t in Ioi (0 : ℝ), max (baselineLogKernel A t) 0

def negativeCriticalWeightMass (A : ℝ) : ℝ :=
  ∫ t in Ioi (0 : ℝ), max (-baselineLogKernel A t) 0

theorem positiveCriticalWeightMass_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun t => max (baselineLogKernel A t) 0) (Ioi (0 : ℝ)) :=
  (baselineLogKernel_integrable hA).pos_part

theorem negativeCriticalWeightMass_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun t => max (-baselineLogKernel A t) 0) (Ioi (0 : ℝ)) :=
  (baselineLogKernel_integrable hA).neg_part

private theorem positivePart_eq (x : ℝ) : max x 0 = (|x| + x) / 2 := by
  by_cases h : 0 ≤ x
  · rw [max_eq_left h, abs_of_nonneg h]
    ring
  · have hx : x ≤ 0 := (lt_of_not_ge h).le
    rw [max_eq_right hx, abs_of_nonpos hx]
    ring

private theorem negativePart_eq (x : ℝ) : max (-x) 0 = (|x| - x) / 2 := by
  rw [positivePart_eq, abs_neg]
  ring

theorem positiveCriticalWeightMass_eq {A : ℝ} (hA : 1 ≤ A) :
    positiveCriticalWeightMass A =
      (absoluteCriticalWeightMass A + (1 + criticalContinuousMoment A)) / 2 := by
  unfold positiveCriticalWeightMass
  have he : (fun t => max (baselineLogKernel A t) 0) =
      fun t => (|baselineLogKernel A t| + baselineLogKernel A t) / 2 :=
    funext (fun t => positivePart_eq (baselineLogKernel A t))
  rw [he, integral_div, integral_add (absoluteCriticalWeightMass_integrable hA)
    (baselineLogKernel_integrable hA), baselineLogKernel_integral hA]
  rfl

theorem negativeCriticalWeightMass_eq {A : ℝ} (hA : 1 ≤ A) :
    negativeCriticalWeightMass A =
      (absoluteCriticalWeightMass A - (1 + criticalContinuousMoment A)) / 2 := by
  unfold negativeCriticalWeightMass
  have he : (fun t => max (-baselineLogKernel A t) 0) =
      fun t => (|baselineLogKernel A t| - baselineLogKernel A t) / 2 :=
    funext (fun t => negativePart_eq (baselineLogKernel A t))
  rw [he, integral_div, integral_sub (absoluteCriticalWeightMass_integrable hA)
    (baselineLogKernel_integrable hA), baselineLogKernel_integral hA]
  rfl

theorem criticalWeightMass_difference {A : ℝ} (hA : 1 ≤ A) :
    positiveCriticalWeightMass A - negativeCriticalWeightMass A =
      1 + criticalContinuousMoment A := by
  rw [positiveCriticalWeightMass_eq hA, negativeCriticalWeightMass_eq hA]
  ring

theorem criticalWeightMass_sum {A : ℝ} (hA : 1 ≤ A) :
    positiveCriticalWeightMass A + negativeCriticalWeightMass A =
      absoluteCriticalWeightMass A := by
  rw [positiveCriticalWeightMass_eq hA, negativeCriticalWeightMass_eq hA]
  ring

theorem criticalWeightMass_difference_abs_lt_one {A : ℝ} (hA : 1 ≤ A) :
    |positiveCriticalWeightMass A - negativeCriticalWeightMass A| < 1 := by
  rw [criticalWeightMass_difference hA]
  have hh := criticalContinuousMoment_strict_bounds hA
  exact abs_lt.mpr ⟨by linarith, by linarith⟩

/-- Both actual sign sectors have exponential mass, despite bounded difference. -/
theorem criticalWeightMass_both_exponential_lower {A : ℝ} (hA : 40 ≤ A) :
    (5 / 16 : ℝ) * (Real.exp (A / 80) - 1) - 1 / 2 <
        positiveCriticalWeightMass A ∧
      (5 / 16 : ℝ) * (Real.exp (A / 80) - 1) - 1 / 2 <
        negativeCriticalWeightMass A := by
  have hA1 : 1 ≤ A := by linarith
  rw [positiveCriticalWeightMass_eq hA1, negativeCriticalWeightMass_eq hA1]
  have hm := absoluteCriticalWeightMass_exponential_lower hA
  have hh := criticalContinuousMoment_strict_bounds hA1
  constructor <;> linarith

theorem criticalWeightMass_both_linear_lower {A : ℝ} (hA : 40 ≤ A) :
    A / 256 - 1 / 2 < positiveCriticalWeightMass A ∧
      A / 256 - 1 / 2 < negativeCriticalWeightMass A := by
  have hA1 : 1 ≤ A := by linarith
  rw [positiveCriticalWeightMass_eq hA1, negativeCriticalWeightMass_eq hA1]
  have hm := absoluteCriticalWeightMass_linear_lower hA
  have hh := criticalContinuousMoment_strict_bounds hA1
  constructor <;> linarith

/-- Every supplied constant is exceeded in both actual sectors at a real tail scale. -/
theorem criticalWeightMass_both_exceed_constant (M R : ℝ) :
    ∃ A : ℝ, 40 ≤ A ∧ R ≤ A ∧ M < positiveCriticalWeightMass A ∧
      M < negativeCriticalWeightMass A := by
  let A : ℝ := max 40 (max R (256 * (M + 1)))
  have h40 : 40 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hM : 256 * (M + 1) ≤ A := (le_max_right _ _).trans (le_max_right _ _)
  have hlo := criticalWeightMass_both_linear_lower h40
  exact ⟨A, h40, hR, by linarith [hlo.1], by linarith [hlo.2]⟩

end FormalResearch.RiemannHypothesis.SourceCriticalSignedSectorMass
```
