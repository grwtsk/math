# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.RationalPolePatch

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd6ac991c5f07a1438648fe7531882670b787c45` · SHA-256 `6de470bb03809ed2dff80cc04b281c71d9de45de03733c1aa9b83c1ba10135f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PoleNormalizedContourBounds
import GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleNormalizedJet

set_option autoImplicit false

/-!
# Rational strict-margin gate with an actual normalized-source variation bound

This checker computes its Cauchy bound from the exact center and the two radii.
No sampled derivative, caller-supplied derivative bound or distance-to-pole
inverse is consumed. Analytic meaning of the supplied VALUE ball is still a proof
input. A passing gate alone is not an analytic certificate, coverage or a count.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.RationalPolePatch

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude magnitude_nonneg norm_le_magnitude)
open CriticalStripHeightDescent

/-- Coordinate lower bound; the L1 magnitude is an UPPER bound, never used here. -/
def sampleLower (v : Coordinates) : ℚ := max |v.1| |v.2|

def leftMargin (c : Coordinates) (S : ℚ) : ℚ := c.1 - S

def sizeBound (c : Coordinates) (S : ℚ) : ℚ := magnitude c + S

def factorBound (c : Coordinates) (S : ℚ) : ℚ := magnitude (sub c one) + S

def sourceBound (c : Coordinates) (S : ℚ) : ℚ :=
  sizeBound c S + sizeBound c S * factorBound c S / leftMargin c S

def slopeBound (c : Coordinates) (R S : ℚ) : ℚ := sourceBound c S / (S - R)

def Valid (c : Coordinates) (R S : ℚ) (v : Ball) : Prop :=
  0 ≤ R ∧ R < S ∧ 0 < leftMargin c S ∧ 0 ≤ v.rad ∧
    v.rad + slopeBound c R S * R < sampleLower v.mid

instance validDecidable (c : Coordinates) (R S : ℚ) (v : Ball) : Decidable (Valid c R S v) :=
  inferInstanceAs (Decidable (0 ≤ R ∧ R < S ∧ 0 < leftMargin c S ∧ 0 ≤ v.rad ∧
    v.rad + slopeBound c R S * R < sampleLower v.mid))

def check (c : Coordinates) (R S : ℚ) (v : Ball) : Bool := decide (Valid c R S v)

theorem check_iff_valid (c : Coordinates) (R S : ℚ) (v : Ball) :
    check c R S v = true ↔ Valid c R S v := by simp [check]

theorem sampleLower_le (v : Coordinates) : (sampleLower v : ℝ) ≤ ‖toComplex v‖ := by
  have hr : |(v.1 : ℝ)| ≤ ‖toComplex v‖ := by
    simpa [toComplex] using Complex.abs_re_le_norm (toComplex v)
  have hi : |(v.2 : ℝ)| ≤ ‖toComplex v‖ := by
    simpa [toComplex] using Complex.abs_im_le_norm (toComplex v)
  rcases le_total |v.1| |v.2| with h | h
  · simpa only [sampleLower, max_eq_right h, Rat.cast_abs] using hi
  · simpa only [sampleLower, max_eq_left h, Rat.cast_abs] using hr

/-- The old patch type gets a derived whole-disk variation theorem. The supplied
ball must already enclose the SAME actual normalized function at the exact center. -/
noncomputable def patchOfCheck {c : Coordinates} {R S : ℚ} {v : Ball}
    (hc : check c R S v = true) (hv : Holds v (poleNormalizedZeta (toComplex c))) :
    SampleVariationPatch poleNormalizedZeta (Metric.closedBall (toComplex c) (R : ℝ)) := by
  obtain ⟨hR, hRS, hl, he, hm⟩ := (check_iff_valid _ _ _ _).mp hc
  have hS : 0 < S := lt_of_le_of_lt hR hRS
  have hB : ‖toComplex c‖ + (S : ℝ) ≤ (sizeBound c S : ℝ) := by
    simpa only [sizeBound, Rat.cast_add] using add_le_add_right (norm_le_magnitude c) (S : ℝ)
  have hD : ‖toComplex c - 1‖ + (S : ℝ) ≤ (factorBound c S : ℝ) := by
    simpa only [factorBound, Rat.cast_add, toComplex_sub, toComplex_one] using
      add_le_add_right (norm_le_magnitude (sub c one)) (S : ℝ)
  have hB0 : (0 : ℝ) ≤ (sizeBound c S : ℝ) := by
    exact_mod_cast add_nonneg (magnitude_nonneg c) hS.le
  have hD0 : (0 : ℝ) ≤ (factorBound c S : ℝ) := by
    exact_mod_cast add_nonneg (magnitude_nonneg (sub c one)) hS.le
  apply PoleNormalizedContourBounds.samplePatch
    (c := toComplex c) (a := toComplex v.mid) (σ := (leftMargin c S : ℝ))
    (B := (sizeBound c S : ℝ)) (D := (factorBound c S : ℝ))
    (b := (sampleLower v.mid : ℝ)) (δ := (v.rad : ℝ))
    (S := (S : ℝ)) (by exact_mod_cast hR) (by exact_mod_cast hRS)
    (by exact_mod_cast hl) hB0 hD0
  · simp [leftMargin, toComplex]
  · exact hB
  · exact hD
  · exact_mod_cast he
  · exact sampleLower_le v.mid
  · exact hv
  · have hmr : (v.rad : ℝ) + (slopeBound c R S : ℝ) * (R : ℝ) < (sampleLower v.mid : ℝ) := by
      exact_mod_cast hm
    simpa only [slopeBound, sourceBound, Rat.cast_div, Rat.cast_sub, Rat.cast_add,
      Rat.cast_mul] using hmr

theorem check_sound {c : Coordinates} {R S : ℚ} {v : Ball}
    (hc : check c R S v = true) (hv : Holds v (poleNormalizedZeta (toComplex c))) :
    ∀ z ∈ Metric.closedBall (toComplex c) (R : ℝ), poleNormalizedZeta z ≠ 0 :=
  fun _ hz => (patchOfCheck hc hv).nonzero hz

/-- Complete finite value assembly, derived source remainder, then whole-disk
nonvanishing. Every positive-base leaf proof and the STRICT final guard survive. -/
theorem assembled_patch_sound (bits : ℕ) (c : Coordinates) {N : ℕ} (hN : 1 ≤ N)
    (p : ℕ) (logs powers : ℕ → Ball) (hpos : 0 < c.1) {R S : ℚ}
    (hl : ∀ k ∈ Finset.Icc 1 N, Holds (logs k) (Real.log (k : ℝ) : ℂ))
    (hp : ∀ k ∈ Finset.Icc 1 N, Holds (powers k) ((k : ℂ) ^ (-toComplex c)))
    (hg : check c R S (RationalPoleNormalizedJet.sourceBall c N p
      (RationalPoleNormalizedJet.assemble bits c N (p + 1) logs powers).1) = true) :
    ∀ z ∈ Metric.closedBall (toComplex c) (R : ℝ), poleNormalizedZeta z ≠ 0 := by
  have hf := (RationalPoleNormalizedJet.assemble_sound bits c hN (p + 1) logs powers hl hp).1
  exact check_sound hg (RationalPoleNormalizedJet.sourceBall_sound hN p hpos hf)

end GRWTSK.RiemannHypothesis.RationalPolePatch
```
