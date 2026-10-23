/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinBounds
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor
import GRWTSK.Analysis.Complex.ClosedDiskCauchy

set_option autoImplicit false

/-!
# Source-exact contour bounds for the residue-normalized zeta function

Reuse the actual normalized source, including its value one at the removed pole.
Analytic weights are transported, not relabeled. The fractional-Mellin identity
supplies whole-disk bounds without dividing by the distance to the pole. A
quantitative closed pole collar replaces the old noneffective radius for this
application. No closed contour, winding number or complete upper count is built.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.PoleNormalizedContourBounds

open Metric Set Filter
open scoped Topology
open CriticalStripHeightDescent
open GRWTSK.Analysis.Complex

noncomputable section

/-- The factor s-1 is an analytic unit at every nonpole point. -/
theorem analytic_order_eq {s : ℂ} (hs : s ≠ 1) :
    analyticOrderAt poleNormalizedZeta s = analyticOrderAt riemannZeta s := by
  have heq : poleNormalizedZeta =ᶠ[𝓝 s] (fun z : ℂ => (z - 1) * riemannZeta z) := by
    filter_upwards [eventually_ne_nhds hs] with z hz
    exact poleNormalizedZeta_of_ne hz
  calc
    _ = analyticOrderAt ((fun z : ℂ => z - 1) * riemannZeta) s := analyticOrderAt_congr heq
    _ = analyticOrderAt (fun z : ℂ => z - 1) s + analyticOrderAt riemannZeta s :=
      analyticOrderAt_mul (by fun_prop) (analyticOn_riemannZeta s hs)
    _ = _ := by rw [analyticOrderAt_id_sub_const_of_ne hs, zero_add]

/-- Exact conversion to the already maintained analytic-multiplicity source. -/
theorem canonical_weight_eq (z : CanonicalZeroDivisor.ZeroPoint) :
    analyticOrderNatAt poleNormalizedZeta z.1 = CanonicalZeroDivisor.multiplicity z := by
  simp only [analyticOrderNatAt, CanonicalZeroDivisor.multiplicity, analytic_order_eq z.2.2.2]

/-- The removed pole is neither a source zero nor an extra count contribution. -/
theorem order_at_one : analyticOrderAt poleNormalizedZeta (1 : ℂ) = 0 :=
  analyticOrderAt_eq_zero.mpr (Or.inr (by simp))

/-- Exact zero correspondence on the RIGHT half-plane. Negative trivial zeros
are not silently included as canonical points outside this domain. -/
theorem zero_iff_target {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s = 0 ↔ NontrivialZetaZero s := by
  constructor
  · intro hz
    have hs1 : s ≠ 1 := by intro he; simpa [he] using hz
    refine ⟨(poleNormalizedZeta_eq_zero_iff hs1).mp hz, ?_, hs1⟩
    rintro ⟨n, hn⟩
    have hr := congrArg Complex.re hn
    simp at hr
    have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    nlinarith
  · exact poleNormalizedZeta_zero_of_target

/-- Actual source bound, uniform in imaginary height once B and D are bounded.
There is no inverse distance-to-pole factor. -/
theorem norm_le {s : ℂ} {σ B D : ℝ}
    (hσ : 0 < σ) (hs : σ ≤ s.re) (hB : ‖s‖ ≤ B) (hD : ‖s - 1‖ ≤ D) :
    ‖poleNormalizedZeta s‖ ≤ B + B * D / σ := by
  have hB0 : 0 ≤ B := (norm_nonneg _).trans hB
  have hD0 : 0 ≤ D := (norm_nonneg _).trans hD
  have hi := fractionalMellin_norm_le hσ hs
  rw [poleNormalized_eq_fractional (hσ.trans_le hs), fractionalPoleModel]
  calc
    _ ≤ ‖s‖ + ‖s * (s - 1) * fractionalMellin s‖ := norm_sub_le _ _
    _ = ‖s‖ + ‖s‖ * ‖s - 1‖ * ‖fractionalMellin s‖ := by rw [norm_mul, norm_mul]
    _ ≤ B + B * D * (1 / σ) := by gcongr
    _ = _ := by ring

/-- All-point disk geometry, not sampled boundary geometry. -/
theorem disk_bounds {c z : ℂ} {S σ B D : ℝ}
    (hleft : σ ≤ c.re - S) (hB : ‖c‖ + S ≤ B) (hD : ‖c - 1‖ + S ≤ D)
    (hz : z ∈ closedBall c S) : σ ≤ z.re ∧ ‖z‖ ≤ B ∧ ‖z - 1‖ ≤ D := by
  have hd : ‖z - c‖ ≤ S := by simpa only [mem_closedBall, dist_eq_norm] using hz
  have hre := (Complex.abs_re_le_norm (z - c)).trans hd
  have hlo := (abs_le.mp hre).1
  simp only [Complex.sub_re] at hlo
  refine ⟨by linarith, ?_, ?_⟩
  · calc
      _ = ‖c + (z - c)‖ := by congr 1; ring
      _ ≤ ‖c‖ + ‖z - c‖ := norm_add_le _ _
      _ ≤ B := (add_le_add_left hd _).trans hB
  · calc
      _ = ‖(c - 1) + (z - c)‖ := by congr 1; ring
      _ ≤ ‖c - 1‖ + ‖z - c‖ := norm_add_le _ _
      _ ≤ D := (add_le_add_left hd _).trans hD

/-- A sourced first-derivative bound on the ENTIRE smaller closed disk. -/
theorem derivative_bound {c z : ℂ} {R S σ B D : ℝ}
    (hRS : R < S) (hσ : 0 < σ) (hleft : σ ≤ c.re - S)
    (hB : ‖c‖ + S ≤ B) (hD : ‖c - 1‖ + S ≤ D) (hz : z ∈ closedBall c R) :
    ‖deriv poleNormalizedZeta z‖ ≤ (B + B * D / σ) / (S - R) := by
  have hb : ∀ w ∈ closedBall c S, ‖poleNormalizedZeta w‖ ≤ B + B * D / σ := by
    intro w hw
    obtain ⟨hl, hv, hp⟩ := disk_bounds hleft hB hD hw
    exact norm_le hσ hl hv hp
  simpa using ClosedDiskCauchy.norm_iteratedDeriv_le_on_inner 1 hRS
    (fun w _ => differentiable_poleNormalizedZeta w) hb hz

/-- The existing patch type receives an actual derivative supplier. The center
value enclosure and the strict margin remain independent mathematical inputs. -/
def samplePatch {c a : ℂ} {R S σ B D b δ : ℝ}
    (hR : 0 ≤ R) (hRS : R < S) (hσ : 0 < σ) (hB0 : 0 ≤ B) (hD0 : 0 ≤ D)
    (hleft : σ ≤ c.re - S) (hB : ‖c‖ + S ≤ B) (hD : ‖c - 1‖ + S ≤ D)
    (hδ : 0 ≤ δ) (hb : b ≤ ‖a‖) (he : ‖poleNormalizedZeta c - a‖ ≤ δ)
    (hm : δ + ((B + B * D / σ) / (S - R)) * R < b) :
    SampleVariationPatch poleNormalizedZeta (closedBall c R) :=
  SampleVariationPatch.ofDerivativeEnclosure c a b δ
    ((B + B * D / σ) / (S - R)) R hδ
    (div_nonneg (add_nonneg hB0 (div_nonneg (mul_nonneg hB0 hD0) hσ.le))
      (sub_pos.mpr hRS).le) hR
    (convex_closedBall c R) (mem_closedBall_self hR) (Subset.refl _)
    (fun z _ => differentiable_poleNormalizedZeta z)
    (fun z hz => derivative_bound hRS hσ hleft hB hD hz)
    (fun z hz => by simpa only [mem_closedBall, dist_eq_norm] using hz) hb he hm

/-- A quantitative pole collar directly from the exact Mellin identity. -/
theorem pole_variation {r : ℝ} (hr : 0 ≤ r) (hr1 : r < 1) {s : ℂ}
    (hs : ‖s - 1‖ ≤ r) : ‖poleNormalizedZeta s - 1‖ ≤ 2 * r / (1 - r) := by
  have hσ : 0 < 1 - r := sub_pos.mpr hr1
  have hre := (Complex.abs_re_le_norm (s - 1)).trans hs
  have hleft : 1 - r ≤ s.re := by
    have hl := (abs_le.mp hre).1
    simp only [Complex.sub_re, Complex.one_re] at hl
    linarith
  have hsize : ‖s‖ ≤ 1 + r := by
    calc
      _ = ‖(1 : ℂ) + (s - 1)‖ := by congr 1; ring
      _ ≤ ‖(1 : ℂ)‖ + ‖s - 1‖ := norm_add_le _ _
      _ ≤ 1 + r := by simpa using add_le_add_left hs 1
  have hM := fractionalMellin_norm_le hσ hleft
  rw [poleNormalized_eq_fractional (hσ.trans_le hleft), fractionalPoleModel]
  calc
    _ = ‖(s - 1) - s * (s - 1) * fractionalMellin s‖ := by congr 1; ring
    _ ≤ ‖s - 1‖ + ‖s * (s - 1) * fractionalMellin s‖ := norm_sub_le _ _
    _ = ‖s - 1‖ + ‖s‖ * ‖s - 1‖ * ‖fractionalMellin s‖ := by rw [norm_mul, norm_mul]
    _ ≤ r + (1 + r) * r * (1 / (1 - r)) := by gcongr
    _ = _ := by field_simp [hσ.ne']; ring

/-- Closed radius one-fifth, not an unspecified existential neighborhood. -/
theorem pole_collar_variation {s : ℂ} (hs : ‖s - 1‖ ≤ (1 / 5 : ℝ)) :
    ‖poleNormalizedZeta s - 1‖ ≤ (1 / 2 : ℝ) := by
  simpa using pole_variation (by norm_num : (0 : ℝ) ≤ 1 / 5) (by norm_num) hs

def poleCollarPatch : SampleVariationPatch poleNormalizedZeta (closedBall (1 : ℂ) (1 / 5)) where
  center := 1
  lower := 1
  error := 1 / 2
  error_nonneg := by norm_num
  sample_lower := by simp
  variation := by
    intro s hs
    simpa only [poleNormalizedZeta_one] using pole_collar_variation
      (by simpa only [mem_closedBall, dist_eq_norm] using hs)
  strict_margin := by norm_num

theorem pole_collar_lower {s : ℂ} (hs : ‖s - 1‖ ≤ (1 / 5 : ℝ)) :
    (1 / 2 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  have h := poleCollarPatch.value_norm_lower
    (show s ∈ closedBall (1 : ℂ) (1 / 5) by simpa only [mem_closedBall, dist_eq_norm] using hs)
  norm_num [poleCollarPatch] at h
  exact h

theorem no_target_in_pole_collar {s : ℂ} (hs : ‖s - 1‖ ≤ (1 / 5 : ℝ)) :
    ¬ NontrivialZetaZero s := by
  intro hz
  have h := pole_collar_lower hs
  rw [poleNormalizedZeta_zero_of_target hz, norm_zero] at h
  norm_num at h

/-- The distance factor is retained when going BACK to the unnormalized source. -/
theorem punctured_pole_lower {s : ℂ} (hs : ‖s - 1‖ ≤ (1 / 5 : ℝ)) (hs1 : s ≠ 1) :
    (1 / 2 : ℝ) ≤ ‖s - 1‖ * ‖riemannZeta s‖ := by
  have h := pole_collar_lower hs
  rwa [poleNormalizedZeta_of_ne hs1, norm_mul] at h

end
end GRWTSK.RiemannHypothesis.PoleNormalizedContourBounds
