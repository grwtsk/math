/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Topology.MetricSpace.Contracting
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.Analytic.Order
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# A fixed-preconditioner Newton map on a closed complex disk

Uniform derivative defect and a self-map margin imply existence and uniqueness.
This is Banach's theorem applied to an actual complete disk, not an assumed
root or an iteration observed to converge. Equality in the self-map margin is
allowed; strict contractivity is required. A boundary root is not ruled out.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.NewtonDisk

open Metric Set

/-- A is fixed throughout the disk; this is not division by a varying derivative. -/
noncomputable def step (f : ℂ → ℂ) (A z : ℂ) : ℂ := z - A * f z

theorem step_deriv {f g : ℂ → ℂ} {A z : ℂ} (hf : HasDerivAt f (g z) z) :
    HasDerivAt (step f A) (1 - A * g z) z :=
  (hasDerivAt_id z).sub (hf.const_mul A)

/-- The derivative estimate is required everywhere in the closed disk. -/
theorem step_lipschitz {f g : ℂ → ℂ} {c A : ℂ} {R κ : ℝ}
    (hf : ∀ z ∈ closedBall c R, HasDerivAt f (g z) z)
    (hb : ∀ z ∈ closedBall c R, ‖1 - A * g z‖ ≤ κ)
    {u v : ℂ} (hu : u ∈ closedBall c R) (hv : v ∈ closedBall c R) :
    ‖step f A v - step f A u‖ ≤ κ * ‖v - u‖ :=
  (convex_closedBall c R).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun z hz => (step_deriv (hf z hz)).hasDerivWithinAt) hb hu hv

/-- No zero derivative can satisfy a strict Newton derivative-defect bound. -/
theorem derivative_ne_zero {a d : ℂ} {κ : ℝ}
    (hk : κ < 1) (hb : ‖1 - a * d‖ ≤ κ) : d ≠ 0 := by
  intro hd
  simp only [hd, mul_zero, sub_zero, norm_one] at hb
  exact (not_le_of_gt hk) hb

/-- The same bound excludes a zero preconditioner, without an extra axiom. -/
theorem preconditioner_ne_zero {a d : ℂ} {κ : ℝ}
    (hk : κ < 1) (hb : ‖1 - a * d‖ ≤ κ) : a ≠ 0 := by
  intro ha
  simp only [ha, zero_mul, sub_zero, norm_one] at hb
  exact (not_le_of_gt hk) hb

/-- Actual closed-disk invariance follows from the center residual plus variation. -/
theorem step_mapsTo {f g : ℂ → ℂ} {c A : ℂ} {R κ η : ℝ}
    (hR : 0 ≤ R) (hk : 0 ≤ κ)
    (hf : ∀ z ∈ closedBall c R, HasDerivAt f (g z) z)
    (hb : ∀ z ∈ closedBall c R, ‖1 - A * g z‖ ≤ κ)
    (hres : ‖A * f c‖ ≤ η) (hm : η + κ * R ≤ R) :
    MapsTo (step f A) (closedBall c R) (closedBall c R) := by
  have hc : c ∈ closedBall c R := by simpa using hR
  intro z hz
  have hzN : ‖z - c‖ ≤ R := by simpa only [mem_closedBall, dist_eq_norm] using hz
  rw [mem_closedBall, dist_eq_norm]
  have hl := step_lipschitz hf hb hc hz
  have hr : ‖step f A c - c‖ ≤ η := by
    have he : step f A c - c = -(A * f c) := by unfold step; ring
    simpa only [he, norm_neg] using hres
  calc
    ‖step f A z - c‖ ≤ ‖step f A z - step f A c‖ + ‖step f A c - c‖ :=
      by simpa only [dist_eq_norm] using dist_triangle (step f A z) (step f A c) c
    _ ≤ κ * ‖z - c‖ + η := add_le_add hl hr
    _ ≤ κ * R + η := add_le_add_right (mul_le_mul_of_nonneg_left hzN hk) η
    _ ≤ R := by linarith

/-- A root, a nonzero derivative, and uniqueness are consequences of the estimates. -/
theorem exists_unique_zero {f g : ℂ → ℂ} {c A : ℂ} {R κ η : ℝ}
    (hR : 0 ≤ R) (hk0 : 0 ≤ κ) (hk1 : κ < 1)
    (hf : ∀ z ∈ closedBall c R, HasDerivAt f (g z) z)
    (hb : ∀ z ∈ closedBall c R, ‖1 - A * g z‖ ≤ κ)
    (hres : ‖A * f c‖ ≤ η) (hm : η + κ * R ≤ R) :
    ∃ z ∈ closedBall c R, f z = 0 ∧ g z ≠ 0 ∧
      ∀ v ∈ closedBall c R, f v = 0 → v = z := by
  have hc : c ∈ closedBall c R := by simpa using hR
  have hA : A ≠ 0 := preconditioner_ne_zero hk1 (hb c hc)
  have hmap := step_mapsTo hR hk0 hf hb hres hm
  let K : ℝ≥0 := ⟨κ, hk0⟩
  have hcontract : ContractingWith K (hmap.restrict (step f A) _ _) := by
    refine ⟨hk1, (lipschitzWith_iff_dist_le_mul).mpr ?_⟩
    intro u v
    change dist (step f A u.1) (step f A v.1) ≤ κ * dist u.1 v.1
    simpa only [dist_eq_norm] using step_lipschitz hf hb v.2 u.2
  obtain ⟨z, hz, hfix, _, _⟩ := hcontract.exists_fixedPoint'
    isClosed_closedBall.isComplete hmap hc (edist_ne_top _ _)
  have hfz : f z = 0 := by
    have he : z - A * f z = z := hfix
    exact (mul_eq_zero.mp (sub_eq_self.mp he)).resolve_left hA
  refine ⟨z, hz, hfz, derivative_ne_zero hk1 (hb z hz), ?_⟩
  intro v hv hfv
  have hl := step_lipschitz hf hb hz hv
  simp only [step, hfz, hfv, mul_zero, sub_zero] at hl
  have hn : ‖v - z‖ = 0 := by nlinarith [norm_nonneg (v - z)]
  exact sub_eq_zero.mp (norm_eq_zero.mp hn)

/-- A posteriori position bound; it need not equal the actual distance. -/
theorem zero_distance_le {f g : ℂ → ℂ} {c A z : ℂ} {R κ η : ℝ}
    (hR : 0 ≤ R) (hk : κ < 1)
    (hf : ∀ u ∈ closedBall c R, HasDerivAt f (g u) u)
    (hb : ∀ u ∈ closedBall c R, ‖1 - A * g u‖ ≤ κ)
    (hres : ‖A * f c‖ ≤ η) (hz : z ∈ closedBall c R) (hfz : f z = 0) :
    ‖z - c‖ ≤ η / (1 - κ) := by
  have hc : c ∈ closedBall c R := by simpa using hR
  have hl := step_lipschitz hf hb hc hz
  have hr : ‖step f A c - c‖ ≤ η := by
    have he : step f A c - c = -(A * f c) := by unfold step; ring
    simpa only [he, norm_neg] using hres
  have htri : ‖step f A z - c‖ ≤ ‖step f A z - step f A c‖ + ‖step f A c - c‖ := by
    simpa only [dist_eq_norm] using dist_triangle (step f A z) (step f A c) c
  have he : step f A z = z := by simp [step, hfz]
  rw [he] at hl htri
  apply (le_div_iff₀ (sub_pos.mpr hk)).mpr
  nlinarith

/-- A genuine uniform second-derivative bound supplies derivative variation. -/
theorem derivative_variation {g g' : ℂ → ℂ} {c : ℂ} {R L : ℝ}
    (hR : 0 ≤ R)
    (hg : ∀ z ∈ closedBall c R, HasDerivAt g (g' z) z)
    (hL : ∀ z ∈ closedBall c R, ‖g' z‖ ≤ L)
    {z : ℂ} (hz : z ∈ closedBall c R) :
    ‖g z - g c‖ ≤ L * R := by
  have hc : c ∈ closedBall c R := by simpa using hR
  have hL0 : 0 ≤ L := (norm_nonneg _).trans (hL c hc)
  have hl := (convex_closedBall c R).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun u hu => (hg u hu).hasDerivWithinAt) hL hc hz
  exact hl.trans (mul_le_mul_of_nonneg_left (by simpa only [mem_closedBall, dist_eq_norm] using hz) hL0)

end GRWTSK.Analysis.Complex.NewtonDisk
