/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.Calculus.FDeriv.Analytic
import Mathlib.Topology.MetricSpace.Contracting
import Mathlib.Tactic.LinearCombination

set_option autoImplicit false

/-!
# Local zero existence from a contracting correction map

The map is z - A*f(z), with a fixed nonzero approximate inverse A. A residual
bound alone is not enough: the derivative defect is bounded on the WHOLE closed
disk and a self-map budget is checked. No fixed point or zero is assumed.
This is a source draft, NOT_RUN / NOT_KERNEL_AUDITED; no numerical root finder
or choice-free construction is claimed.
-/

namespace GRWTSK.Analysis.Complex.ContractiveZeroDisk

open Set Metric
open scoped Topology

noncomputable section

def correction (f : ℂ → ℂ) (A : ℂ) (z : ℂ) : ℂ := z - A * f z

/-- The derivative defect belongs to this actual correction map. -/
theorem hasDerivAt_correction (f : ℂ → ℂ) (A z : ℂ)
    (hf : DifferentiableAt ℂ f z) :
    HasDerivAt (correction f A) (1 - A * deriv f z) z := by
  exact (hasDerivAt_id z).sub (hf.hasDerivAt.const_mul A)

/-- All-point derivative control, not samples, gives the disk Lipschitz bound. -/
theorem correction_lipschitz (f : ℂ → ℂ) (A c : ℂ) (r q : ℝ)
    (hf : ∀ z ∈ closedBall c r, DifferentiableAt ℂ f z)
    (hdefect : ∀ z ∈ closedBall c r, ‖1 - A * deriv f z‖ ≤ q)
    (z : ℂ) (hz : z ∈ closedBall c r) (w : ℂ) (hw : w ∈ closedBall c r) :
    ‖correction f A z - correction f A w‖ ≤ q * ‖z - w‖ :=
  (convex_closedBall c r).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun u hu => (hasDerivAt_correction f A u (hf u hu)).hasDerivWithinAt)
    hdefect hw hz

/-- Existence, uniqueness, and an a posteriori location bound are conclusions.
The self-map inequality may be an equality, but q<1 is always strict. -/
theorem exists_unique_zero (f : ℂ → ℂ) (A c : ℂ) (r q Y : ℝ)
    (hA : A ≠ 0) (hr : 0 < r) (hq0 : 0 ≤ q) (hq1 : q < 1)
    (hf : ∀ z ∈ closedBall c r, DifferentiableAt ℂ f z)
    (hdefect : ∀ z ∈ closedBall c r, ‖1 - A * deriv f z‖ ≤ q)
    (hres : ‖A * f c‖ ≤ Y) (hself : Y + q * r ≤ r) :
    ∃ z ∈ closedBall c r, f z = 0 ∧ ‖z - c‖ ≤ Y / (1 - q) ∧
      ∀ w ∈ closedBall c r, f w = 0 → w = z := by
  have hc : c ∈ closedBall c r := mem_closedBall_self hr.le
  have hlip := correction_lipschitz f A c r q hf hdefect
  have hcenter : ‖correction f A c - c‖ ≤ Y := by
    have he : correction f A c - c = -(A * f c) := by unfold correction; ring
    rw [he, norm_neg]
    exact hres
  have hmaps : MapsTo (correction f A) (closedBall c r) (closedBall c r) := by
    intro z hz
    rw [mem_closedBall, dist_eq_norm]
    have hzR : ‖z - c‖ ≤ r := by simpa [mem_closedBall, dist_eq_norm] using hz
    calc
      _ ≤ ‖correction f A z - correction f A c‖ + ‖correction f A c - c‖ :=
        norm_sub_le_norm_sub_add_norm_sub _ _ _
      _ ≤ q * ‖z - c‖ + Y := add_le_add (hlip z hz c hc) hcenter
      _ ≤ q * r + Y := add_le_add_left (mul_le_mul_of_nonneg_left hzR hq0) Y
      _ ≤ r := by linarith
  have hcontract : ContractingWith (⟨q, hq0⟩ : NNReal)
      (hmaps.restrict (correction f A) (closedBall c r) (closedBall c r)) := by
    refine ⟨hq1, LipschitzWith.of_dist_le_mul ?_⟩
    intro z w
    change dist (correction f A z.1) (correction f A w.1) ≤ q * dist z.1 w.1
    simpa only [dist_eq_norm] using hlip z.1 z.2 w.1 w.2
  obtain ⟨z, hz, hfix, _, _⟩ := hcontract.exists_fixedPoint'
    (isClosed_closedBall.isComplete) hmaps hc (edist_ne_top c (correction f A c))
  have hfixeq : correction f A z = z := hfix
  have hprod : A * f z = 0 := by
    dsimp [correction] at hfixeq
    linear_combination -hfixeq
  have hzero : f z = 0 := (mul_eq_zero.mp hprod).resolve_left hA
  have hloc : ‖z - c‖ ≤ Y / (1 - q) := by
    apply (le_div_iff₀ (by linarith : 0 < 1 - q)).mpr
    have htriangle := norm_sub_le_norm_sub_add_norm_sub (correction f A z) (correction f A c) c
    have hd := hlip z hz c hc
    rw [hfixeq] at htriangle hd
    nlinarith
  refine ⟨z, hz, hzero, hloc, ?_⟩
  intro w hw hwzero
  have hwfix : correction f A w = w := by simp [correction, hwzero]
  have h := hlip w hw z hz
  rw [hwfix, hfixeq] at h
  have hn : ‖w - z‖ = 0 := by
    apply le_antisymm _ (norm_nonneg (w - z))
    by_contra hnpos
    have hp : 0 < ‖w - z‖ := lt_of_not_ge hnpos
    have hstrict := mul_lt_mul_of_pos_right hq1 hp
    linarith
  exact sub_eq_zero.mp (norm_eq_zero.mp hn)

/-- A strict defect bound also excludes a vanishing derivative on the disk. -/
theorem deriv_ne_zero_of_defect (A d : ℂ) (q : ℝ) (hq : q < 1)
    (h : ‖1 - A * d‖ ≤ q) : d ≠ 0 := by
  intro hd
  rw [hd, mul_zero, sub_zero, norm_one] at h
  linarith

/-- A bound on the actual second derivative supplies first-derivative variation. -/
theorem derivative_variation (f : ℂ → ℂ) (c : ℂ) (r M : ℝ) (hr : 0 ≤ r)
    (hf : AnalyticOnNhd ℂ f (closedBall c r))
    (hM : ∀ z ∈ closedBall c r, ‖deriv (deriv f) z‖ ≤ M)
    (z : ℂ) (hz : z ∈ closedBall c r) :
    ‖deriv f z - deriv f c‖ ≤ M * ‖z - c‖ :=
  (convex_closedBall c r).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun w hw => (hf w hw).deriv.differentiableAt.hasDerivAt.hasDerivWithinAt)
    hM (mem_closedBall_self hr) hz

/-- Center value and derivative enclosures are separate from the all-disk curvature.
A is fixed throughout the disk, not a totalized inverse derivative at each point. -/
theorem center_enclosure_bounds (f : ℂ → ℂ) (A c v d : ℂ) (r M ev ed : ℝ)
    (hr : 0 ≤ r) (hM0 : 0 ≤ M)
    (hf : AnalyticOnNhd ℂ f (closedBall c r))
    (hM : ∀ z ∈ closedBall c r, ‖deriv (deriv f) z‖ ≤ M)
    (hv : ‖f c - v‖ ≤ ev) (hd : ‖deriv f c - d‖ ≤ ed) :
    ‖A * f c‖ ≤ ‖A‖ * (‖v‖ + ev) ∧
      ∀ z ∈ closedBall c r, ‖1 - A * deriv f z‖ ≤
        ‖1 - A * d‖ + ‖A‖ * (ed + M * r) := by
  constructor
  · rw [norm_mul]
    apply mul_le_mul_of_nonneg_left _ (norm_nonneg A)
    have h := norm_le_norm_sub_add (f c) v
    linarith
  · intro z hz
    have hzR : ‖z - c‖ ≤ r := by simpa [mem_closedBall, dist_eq_norm] using hz
    have hvar := (derivative_variation f c r M hr hf hM z hz).trans
      (mul_le_mul_of_nonneg_left hzR hM0)
    have hdiff : ‖deriv f z - d‖ ≤ ed + M * r := by
      have ht := norm_sub_le_norm_sub_add_norm_sub (deriv f z) (deriv f c) d
      linarith
    have hid : 1 - A * deriv f z = (1 - A * d) - A * (deriv f z - d) := by ring
    rw [hid]
    calc
      _ ≤ ‖1 - A * d‖ + ‖A * (deriv f z - d)‖ := norm_sub_le _ _
      _ ≤ _ := by
        rw [norm_mul]
        exact add_le_add_right (mul_le_mul_of_nonneg_left hdiff (norm_nonneg A)) _

end
end GRWTSK.Analysis.Complex.ContractiveZeroDisk
