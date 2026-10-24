# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.RationalJetPolePatch

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a23b1cb7dad20c5e46f1222f70c8015795334129` · SHA-256 `22cbe95f3c163e3453ea745f8c8c7fc8f9b75d4df888bd51ce1311911989c8db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleJet

set_option autoImplicit false

/-!
# Strict normalized-source patches with a computed actual center derivative

Take the smaller of TWO PROVED whole-disk derivative bounds. The new one uses
an actual center derivative enclosure and a sourced Cauchy curvature bound.
No caller supplies a derivative, curvature, source radius, or success flag.
This is an alternate local patch supplier. The existing contour/count checker
still uses its old radius and is NOT silently changed to accept this gate.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.RationalJetPolePatch

open Metric Set
open GRWTSK.Analysis.Complex GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude norm_le_magnitude)
open CriticalStripHeightDescent

/-- A true center-derivative norm bound, including source error and arithmetic. -/
def centerBound (c : Coordinates) (S : ℚ) (p : RationalPoleValue.Parameters) : ℚ :=
  let d := RationalPoleJet.derivativeBall c S p
  magnitude d.mid + d.rad

def curvature (c : Coordinates) (R S : ℚ) : ℚ :=
  2 * RationalPolePatch.sourceBound c S / (S - R)^2

def jetSlope (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) : ℚ :=
  centerBound c S p + curvature c R S * R

/-- A minimum is sound because BOTH candidates bound the SAME actual derivative. -/
def selectedSlope (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) : ℚ :=
  min (RationalPolePatch.slopeBound c R S) (jetSlope c R S p)

def imageRadius (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) : ℚ :=
  (RationalPoleValue.valueBall c p).rad + selectedSlope c R S p * R

def Valid (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) : Prop :=
  RationalPoleJet.check c S p = true ∧ 0 ≤ R ∧ R < S ∧
    0 ≤ (RationalPoleValue.valueBall c p).rad ∧
    imageRadius c R S p < RationalPolePatch.sampleLower (RationalPoleValue.valueBall c p).mid

instance validDecidable (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) :
    Decidable (Valid c R S p) := by unfold Valid; infer_instance

def check (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) : Bool :=
  decide (Valid c R S p)

theorem check_iff (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) :
    check c R S p = true ↔ Valid c R S p := by simp [check]

theorem sourceBound_on_disk {c : Coordinates} {S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : RationalPoleJet.check c S p = true) {z : ℂ}
    (hz : z ∈ closedBall (toComplex c) (S : ℝ)) :
    ‖poleNormalizedZeta z‖ ≤ (RationalPolePatch.sourceBound c S : ℝ) := by
  obtain ⟨_,_,hl⟩ := (RationalPoleJet.check_iff _ _ _).mp hc
  obtain ⟨hr,hB,hD⟩ := RationalPoleJet.disk_geometry c S hz
  have h := PoleNormalizedContourBounds.norm_le (by exact_mod_cast hl) hr hB hD
  simpa only [RationalPolePatch.sourceBound, Rat.cast_add, Rat.cast_mul, Rat.cast_div] using h

theorem centerBound_sound {c : Coordinates} {S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : RationalPoleJet.check c S p = true) :
    ‖deriv poleNormalizedZeta (toComplex c)‖ ≤ (centerBound c S p : ℝ) := by
  have h := CenterJetVariation.center_derivative_norm (RationalPoleJet.derivativeBall_sound hc)
  apply h.trans
  simpa only [centerBound, Rat.cast_add] using
    add_le_add_right (norm_le_magnitude (RationalPoleJet.derivativeBall c S p).mid)
      ((RationalPoleJet.derivativeBall c S p).rad : ℝ)

/-- One all-point estimate from source analyticity, not sampled F'' values. -/
theorem curvature_sound {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : RationalPoleJet.check c S p = true) (hRS : R < S) {z : ℂ}
    (hz : z ∈ closedBall (toComplex c) (R : ℝ)) :
    ‖deriv (deriv poleNormalizedZeta) z‖ ≤ (curvature c R S : ℝ) := by
  have h := ClosedDiskCauchy.norm_secondDeriv_le_on_inner (by exact_mod_cast hRS)
    (fun w _ => differentiable_poleNormalizedZeta w) (fun w hw => sourceBound_on_disk hc hw) hz
  simpa [curvature] using h

/-- Center accuracy and curvature jointly bound every derivative on the inner disk. -/
theorem jetSlope_sound {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : RationalPoleJet.check c S p = true) (hR : 0 ≤ R) (hRS : R < S) {z : ℂ}
    (hz : z ∈ closedBall (toComplex c) (R : ℝ)) :
    ‖deriv poleNormalizedZeta z‖ ≤ (jetSlope c R S p : ℝ) := by
  have hR' : (0 : ℝ) ≤ (R : ℝ) := by exact_mod_cast hR
  have hL : (0 : ℝ) ≤ (curvature c R S : ℝ) :=
    (norm_nonneg _).trans (curvature_sound hc hRS (mem_closedBall_self hR'))
  have h := CenterJetVariation.derivative_norm_le hR' hL (centerBound_sound hc)
    (fun w _ => differentiable_poleNormalizedZeta.deriv w)
    (fun w hw => curvature_sound hc hRS hw) hz
  simpa only [jetSlope, Rat.cast_add, Rat.cast_mul] using h

/-- The inherited first-order Cauchy bound is still a valid fallback. -/
theorem oldSlope_sound {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : RationalPoleJet.check c S p = true) (hRS : R < S) {z : ℂ}
    (hz : z ∈ closedBall (toComplex c) (R : ℝ)) :
    ‖deriv poleNormalizedZeta z‖ ≤ (RationalPolePatch.slopeBound c R S : ℝ) := by
  have h := ClosedDiskCauchy.norm_iteratedDeriv_le_on_inner 1 (by exact_mod_cast hRS)
    (fun w _ => differentiable_poleNormalizedZeta w) (fun w hw => sourceBound_on_disk hc hw) hz
  simpa [RationalPolePatch.slopeBound] using h

theorem selectedSlope_sound {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : RationalPoleJet.check c S p = true) (hR : 0 ≤ R) (hRS : R < S) {z : ℂ}
    (hz : z ∈ closedBall (toComplex c) (R : ℝ)) :
    ‖deriv poleNormalizedZeta z‖ ≤ (selectedSlope c R S p : ℝ) := by
  rw [selectedSlope, Rat.cast_min]
  exact le_min (oldSlope_sound hc hRS hz) (jetSlope_sound hc hR hRS hz)

/-- Quantitative containment in the SAME image disk at every point, not just nonvanishing. -/
theorem image_bound {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : RationalPoleJet.check c S p = true) (hR : 0 ≤ R) (hRS : R < S) {z : ℂ}
    (hz : z ∈ closedBall (toComplex c) (R : ℝ)) :
    ‖poleNormalizedZeta z - toComplex (RationalPoleValue.valueBall c p).mid‖ ≤
      (imageRadius c R S p : ℝ) := by
  have hc0 : toComplex c ∈ closedBall (toComplex c) (R : ℝ) :=
    mem_closedBall_self (by exact_mod_cast hR)
  have hM : (0 : ℝ) ≤ (selectedSlope c R S p : ℝ) :=
    (norm_nonneg _).trans (selectedSlope_sound hc hR hRS hc0)
  have hv := Convex.norm_image_sub_le_of_norm_deriv_le
    (fun w _ => differentiable_poleNormalizedZeta w)
    (fun w hw => selectedSlope_sound hc hR hRS hw) (convex_closedBall _ _) hc0 hz
  have hv' : ‖poleNormalizedZeta z - poleNormalizedZeta (toComplex c)‖ ≤
      (selectedSlope c R S p : ℝ) * (R : ℝ) :=
    hv.trans (mul_le_mul_of_nonneg_left
      (by simpa only [mem_closedBall, dist_eq_norm] using hz) hM)
  have he := RationalPoleValue.valueBall_sound ((RationalPoleJet.check_iff _ _ _).mp hc).1
  calc
    _ ≤ ‖poleNormalizedZeta z - poleNormalizedZeta (toComplex c)‖ +
        ‖poleNormalizedZeta (toComplex c) - toComplex (RationalPoleValue.valueBall c p).mid‖ := by
      simpa only [dist_eq_norm] using dist_triangle (poleNormalizedZeta z)
        (poleNormalizedZeta (toComplex c)) (toComplex (RationalPoleValue.valueBall c p).mid)
    _ ≤ (selectedSlope c R S p : ℝ) * (R : ℝ) +
        ((RationalPoleValue.valueBall c p).rad : ℝ) := add_le_add hv' he
    _ = _ := by simp only [imageRadius, Rat.cast_add, Rat.cast_mul]; ring

/-- Return the EXISTING local patch type; no alternate definition of nonvanishing. -/
noncomputable def patchOfCheck {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    (h : check c R S p = true) :
    SampleVariationPatch poleNormalizedZeta (closedBall (toComplex c) (R : ℝ)) := by
  obtain ⟨hc,hR,hRS,he,hm⟩ := (check_iff _ _ _ _).mp h
  have hM : (0 : ℝ) ≤ (selectedSlope c R S p : ℝ) :=
    (norm_nonneg _).trans (selectedSlope_sound hc hR hRS
      (mem_closedBall_self (by exact_mod_cast hR)))
  refine {
    center := toComplex (RationalPoleValue.valueBall c p).mid
    lower := (RationalPolePatch.sampleLower (RationalPoleValue.valueBall c p).mid : ℝ)
    error := (imageRadius c R S p : ℝ)
    error_nonneg := ?_
    sample_lower := RationalPolePatch.sampleLower_le _
    variation := fun z hz => image_bound hc hR hRS hz
    strict_margin := by exact_mod_cast hm }
  simp only [imageRadius, Rat.cast_add, Rat.cast_mul]
  exact add_nonneg (by exact_mod_cast he) (mul_nonneg hM (by exact_mod_cast hR))

theorem check_sound {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    (h : check c R S p = true) :
    ∀ z ∈ closedBall (toComplex c) (R : ℝ), poleNormalizedZeta z ≠ 0 :=
  fun _ hz => (patchOfCheck h).nonzero hz

/-- No regression in the radius budget, but the new source-jet guard is still required. -/
theorem imageRadius_le_old (c : Coordinates) {R : ℚ} (hR : 0 ≤ R) (S : ℚ)
    (p : RationalPoleValue.Parameters) :
    imageRadius c R S p ≤ (RationalPoleValue.valueBall c p).rad +
      RationalPolePatch.slopeBound c R S * R := by
  unfold imageRadius selectedSlope
  exact add_le_add_left (mul_le_mul_of_nonneg_right (min_le_left _ _) hR) _

theorem accepts_of_old {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    (hj : RationalPoleJet.check c S p = true)
    (ho : RationalPolePatch.check c R S (RationalPoleValue.valueBall c p) = true) :
    check c R S p = true := by
  obtain ⟨hR,hRS,_hl,he,hm⟩ := (RationalPolePatch.check_iff_valid _ _ _ _).mp ho
  exact (check_iff _ _ _ _).mpr
    ⟨hj,hR,hRS,he,(imageRadius_le_old c hR S p).trans_lt hm⟩

end GRWTSK.RiemannHypothesis.RationalJetPolePatch
```
