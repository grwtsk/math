# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourTermWitness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee0c19d3b626d8905bbbbc493376edbb8674c88f` · SHA-256 `9b90e489b71b53589ba272adb4cc3fab52cdc43251f8cdc1119f059dcf262079`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor
import Mathlib.Analysis.Normed.Module.Convex

set_option autoImplicit false

/-!
# An explicit four-term source enclosure and a closed analytic disk

All log, exponential, finite-rounding, source-tail, sample-margin and spatial
variation premises are instantiated in this file. The source is the same entire
pole-normalized zeta H used by the existing atlas. No external JSON, numerical
zeta evaluator or new analytic oracle occurs in the witness.

The integer cutoff is 4, not an unbounded computation. The resulting disk is
centered at 3/4+i/8 with radius 1/512. It is NOT a full shell, a new global height
seed, a zero-count/multiplicity certificate, or a Weil-form comparison.

These are source proof scripts. They have NOT been elaborated or kernel-audited.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.FourTermWitness

open Complex Set

noncomputable section

/-- The exact same center is consumed by every term, endpoint and spatial bound. -/
def center : ℂ := ⟨3 / 4, 1 / 8⟩

lemma center_norm_le : ‖center‖ ≤ (7 / 8 : ℝ) := by
  exact (Complex.norm_le_abs_re_add_abs_im center).trans (by norm_num [center])

lemma center_sub_one_norm_le : ‖center - 1‖ ≤ (3 / 8 : ℝ) := by
  exact (Complex.norm_le_abs_re_add_abs_im (center - 1)).trans (by norm_num [center])

/-- Reification uses coordinate inequalities, avoiding any approximate square root. -/
lemma norm_le_of_coordinate_sum {z : ℂ} {r : ℝ}
    (h : |z.re| + |z.im| ≤ r) : ‖z‖ ≤ r :=
  (Complex.norm_le_abs_re_add_abs_im z).trans h

/-- A second low-order positive-real logarithm derived from the existing analytic
Taylor theorem, not passed to the disk as an oracle. -/
lemma log_three_halves_enclosed :
    |Real.log (3 / 2 : ℝ) - 152 / 375| ≤ 1 / 6250 := by
  have h := ratioLog_encloses (q := (1 / 5 : ℝ)) (by norm_num) (by norm_num) 4
  norm_num [ratioLogCenter, ratioLogRadius, Complex.logTaylor,
    Finset.sum_range_succ] at h
  exact h

lemma log_three_enclosed :
    |Real.log (3 : ℝ) - 11104 / 10125| ≤ 1331 / 506250 := by
  have hid : Real.log (3 : ℝ) = Real.log 2 + Real.log (3 / 2 : ℝ) := by
    rw [← Real.log_mul (by norm_num : (2 : ℝ) ≠ 0)
      (by norm_num : (3 / 2 : ℝ) ≠ 0)]
    norm_num
  rw [hid]
  calc
    _ = |(Real.log 2 - 56 / 81) + (Real.log (3 / 2 : ℝ) - 152 / 375)| := by
      congr 1; ring
    _ ≤ |Real.log 2 - 56 / 81| + |Real.log (3 / 2 : ℝ) - 152 / 375| :=
      abs_add_le _ _
    _ ≤ (1 / 405 : ℝ) + 1 / 6250 :=
      add_le_add log_two_low_order_enclosure log_three_halves_enclosed
    _ = 1331 / 506250 := by norm_num

lemma log_four_enclosed : |Real.log (4 : ℝ) - 112 / 81| ≤ 2 / 405 := by
  have h := (logTwoLowOrder.powNat 2).encloses
  norm_num [RealLogEnclosure.powNat, logTwoLowOrder] at h
  exact h

/-- A local proof interface for explicit finite arithmetic checks. Each concrete
invocation below supplies all its premises, including rounding and error budgets. -/
lemma rounded_negative_power {x a d : ℝ} (hx : 1 ≤ x) (hd : 0 ≤ d)
    (hlog : |Real.log x - a| ≤ d)
    (hsmall : (7 / 8 : ℝ) * d ≤ 1)
    (harg : (7 / 8 : ℝ) * |a| ≤ 3 / 2)
    (v : ℂ)
    (hround : |(complexExpTaylor 10 (-center * (a : ℂ)) - v).re| +
      |(complexExpTaylor 10 (-center * (a : ℂ)) - v).im| ≤ 1 / 2048)
    (hbudget : 2 * ((7 / 8 : ℝ) * d) +
      complexExpTaylorRadius 10 (3 / 2) + 1 / 2048 ≤ 1 / 64) :
    ‖(x : ℂ) ^ (-center) - v‖ ≤ (1 / 64 : ℝ) := by
  let e : RealLogEnclosure x :=
    { center := a, radius := d, radius_nonneg := hd, encloses := hlog }
  let p := negativePowerEnclosureOfBounds hx e center (by norm_num [center])
    10 (7 / 8) (3 / 2) center_norm_le hsmall harg (by norm_num)
  have hp := p.encloses
  change ‖(x : ℂ) ^ (-center) - complexExpTaylor 10 (-center * (a : ℂ))‖ ≤
    2 * ((7 / 8 : ℝ) * d) + complexExpTaylorRadius 10 (3 / 2) at hp
  have hr := norm_le_of_coordinate_sum hround
  calc
    _ = ‖((x : ℂ) ^ (-center) - complexExpTaylor 10 (-center * (a : ℂ))) +
        (complexExpTaylor 10 (-center * (a : ℂ)) - v)‖ := by congr 1; ring
    _ ≤ ‖(x : ℂ) ^ (-center) - complexExpTaylor 10 (-center * (a : ℂ))‖ +
        ‖complexExpTaylor 10 (-center * (a : ℂ)) - v‖ := norm_add_le _ _
    _ ≤ 2 * ((7 / 8 : ℝ) * d) + complexExpTaylorRadius 10 (3 / 2) + 1 / 2048 :=
      add_le_add hp hr
    _ ≤ 1 / 64 := hbudget

/-- Rounded rational coordinates, not unproved evaluations of complex powers. -/
def value : ℕ → ℂ
  | 1 => 1
  | 2 => ⟨2429 / 4096, -(211 / 4096)⟩
  | 3 => ⟨891 / 2048, -(123 / 2048)⟩
  | 4 => ⟨715 / 2048, -(125 / 2048)⟩
  | _ => 0

-- Each norm-free rounding check expands only ten terms of a rational polynomial.
-- norm_num produces proof terms; no native_decide or external arithmetic oracle.
set_option maxRecDepth 2048 in
lemma power_two_enclosed : ‖(2 : ℂ) ^ (-center) - value 2‖ ≤ (1 / 64 : ℝ) := by
  apply rounded_negative_power (a := 56 / 81) (d := 1 / 405)
    (by norm_num) (by norm_num) log_two_low_order_enclosure
    (by norm_num) (by norm_num) (value 2)
  · norm_num [complexExpTaylor, Finset.sum_range_succ, pow_succ, center, value,
      Complex.mul_re, Complex.mul_im, Complex.div_re, Complex.div_im,
      Complex.normSq_apply]
  · norm_num [complexExpTaylorRadius]

set_option maxRecDepth 2048 in
lemma power_three_enclosed : ‖(3 : ℂ) ^ (-center) - value 3‖ ≤ (1 / 64 : ℝ) := by
  apply rounded_negative_power (a := 11104 / 10125) (d := 1331 / 506250)
    (by norm_num) (by norm_num) log_three_enclosed
    (by norm_num) (by norm_num) (value 3)
  · norm_num [complexExpTaylor, Finset.sum_range_succ, pow_succ, center, value,
      Complex.mul_re, Complex.mul_im, Complex.div_re, Complex.div_im,
      Complex.normSq_apply]
  · norm_num [complexExpTaylorRadius]

set_option maxRecDepth 2048 in
lemma power_four_enclosed : ‖(4 : ℂ) ^ (-center) - value 4‖ ≤ (1 / 64 : ℝ) := by
  apply rounded_negative_power (a := 112 / 81) (d := 2 / 405)
    (by norm_num) (by norm_num) log_four_enclosed
    (by norm_num) (by norm_num) (value 4)
  · norm_num [complexExpTaylor, Finset.sum_range_succ, pow_succ, center, value,
      Complex.mul_re, Complex.mul_im, Complex.div_re, Complex.div_im,
      Complex.normSq_apply]
  · norm_num [complexExpTaylorRadius]

lemma all_four_enclosed (k : ℕ) (hk : k ∈ Finset.Icc 1 4) :
    ‖(k : ℂ) ^ (-center) - value k‖ ≤ (1 / 64 : ℝ) := by
  have hk' := Finset.mem_Icc.mp hk
  rcases hk' with ⟨hlo, hhi⟩
  interval_cases k
  · norm_num [value]
  · exact power_two_enclosed
  · exact power_three_enclosed
  · exact power_four_enclosed

/-- Every source index and the endpoint are explicitly populated by theorems above.
The constant error at k=1 is conservative, not a missing-source convention. -/
def enclosure : FinitePowerEnclosure 4 center where
  value := value
  error := fun _ => 1 / 64
  error_nonneg := by intro k hk; norm_num
  encloses := all_four_enclosed
  endpoint := 4 * value 4
  endpoint_error := 1 / 16
  endpoint_error_nonneg := by norm_num
  endpoint_encloses := by
    have hid := positive_base_endpoint_power (x := (4 : ℝ)) (by norm_num) center
    change (4 : ℂ) ^ (1 - center) = (4 : ℂ) * (4 : ℂ) ^ (-center) at hid
    rw [hid, ← mul_sub, norm_mul]
    have h := mul_le_mul_of_nonneg_left power_four_enclosed (by norm_num : (0 : ℝ) ≤ 4)
    norm_num at h ⊢
    exact h

lemma indices_four : Finset.Icc 1 4 = {1, 2, 3, 4} := by decide

lemma sample_eq : enclosure.sample = (⟨26993 / 32768, 3151 / 32768⟩ : ℂ) := by
  apply Complex.ext <;>
    norm_num [FinitePowerEnclosure.sample, enclosure, indices_four, value, center,
      Complex.mul_re, Complex.mul_im]

lemma sample_lower : (3 / 4 : ℝ) ≤ ‖enclosure.sample‖ := by
  have h : (3 / 4 : ℝ) ≤ enclosure.sample.re := by rw [sample_eq]; norm_num
  exact h.trans (Complex.re_le_norm _)

/-- The cutoff power is a rational inverse square root, discharged symbolically. -/
lemma tail_factor_four : (4 : ℝ) ^ (-(1 / 2 : ℝ)) / (1 / 2 : ℝ) = 1 := by
  norm_num

lemma source_error_le : enclosure.sourceError (1 / 2) ≤ (53 / 128 : ℝ) := by
  have h := enclosure.sourceError_le_factorBounds (σ := (1 / 2 : ℝ))
    (by norm_num) center_norm_le center_sub_one_norm_le
  norm_num [enclosure, indices_four, tail_factor_four] at h
  exact h

lemma source_enclosed :
    ‖poleNormalizedZeta center - enclosure.sample‖ ≤ (53 / 128 : ℝ) :=
  (enclosure.source_encloses (σ := (1 / 2 : ℝ))
    (by norm_num) (by norm_num) (by norm_num [center])).trans
    source_error_le

/-- Closed disk; boundary points are part of the mathematical target. -/
def disk : Set ℂ := Metric.closedBall center (1 / 512)

lemma disk_radius {z : ℂ} (hz : z ∈ disk) : ‖z - center‖ ≤ (1 / 512 : ℝ) := by
  simpa only [disk, Metric.mem_closedBall, dist_eq_norm] using hz

lemma disk_real_lower {z : ℂ} (hz : z ∈ disk) : (1 / 2 : ℝ) ≤ z.re := by
  have hr := (Complex.re_le_norm (center - z)).trans
    (by simpa only [norm_sub_rev] using disk_radius hz)
  simp only [Complex.sub_re, center] at hr
  linarith

lemma disk_norm_le_one {z : ℂ} (hz : z ∈ disk) : ‖z‖ ≤ (1 : ℝ) := by
  calc
    ‖z‖ = ‖(z - center) + center‖ := by congr 1; ring
    _ ≤ ‖z - center‖ + ‖center‖ := norm_add_le _ _
    _ ≤ (1 / 512 : ℝ) + 7 / 8 := add_le_add (disk_radius hz) center_norm_le
    _ ≤ 1 := by norm_num

lemma derivative_bound_on_disk {z : ℂ} (hz : z ∈ disk) :
    ‖deriv poleNormalizedZeta z‖ ≤ (45 : ℝ) := by
  have h := poleNormalized_deriv_norm_le (a := (1 / 4 : ℝ)) (B := 1)
    (by norm_num) (by simpa using disk_real_lower hz) (disk_norm_le_one hz)
  norm_num at h
  exact h

/-- No numerical or zero-free-region premise is passed to this patch constructor. -/
def patch : SampleVariationPatch poleNormalizedZeta disk :=
  SampleVariationPatch.ofDerivativeEnclosure (U := disk) (V := disk) center enclosure.sample
    (3 / 4) (53 / 128) 45 (1 / 512)
    (by norm_num) (by norm_num) (by norm_num)
    (convex_closedBall center (1 / 512))
    (by norm_num [disk]) (fun _ hz => hz)
    (fun z _ => differentiable_poleNormalizedZeta z)
    (fun _ hz => derivative_bound_on_disk hz)
    (fun _ hz => disk_radius hz)
    sample_lower source_enclosed (by norm_num)

/-- The concrete strict margin after charging all three error layers. -/
theorem norm_lower_on_disk {z : ℂ} (hz : z ∈ disk) :
    (127 / 512 : ℝ) ≤ ‖poleNormalizedZeta z‖ := by
  have h := patch.value_norm_lower hz
  change (3 / 4 : ℝ) - 53 / 128 - 45 * (1 / 512) ≤ _ at h
  norm_num at h
  exact h

theorem poleNormalized_nonzero_on_disk {z : ℂ} (hz : z ∈ disk) :
    poleNormalizedZeta z ≠ 0 := patch.nonzero hz

/-- A single inhabited cover, not an all-height/all-margin cover claim. -/
def cover : FiniteVariationCover poleNormalizedZeta disk where
  count := 1
  region := fun _ => disk
  patch := fun _ => patch
  covers := fun _ hz => ⟨⟨0, by norm_num⟩, hz⟩

/-- The original zero predicate is the consumer, with no change of analytic source. -/
theorem noTargetZero_disk : NoTargetZero disk := by
  intro z hz hzero
  exact poleNormalized_nonzero_on_disk hz (poleNormalizedZeta_zero_of_target hzero)

/-- This patch is outside the previous small global seed, but is not a larger strip. -/
theorem disk_above_old_seed {z : ℂ} (hz : z ∈ disk) : (1 / 16 : ℝ) < z.im := by
  have hr := (Complex.im_le_norm (center - z)).trans
    (by simpa only [norm_sub_rev] using disk_radius hz)
  simp only [Complex.sub_im, center] at hr
  linarith

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.FourTermWitness
```
