import FormalResearch.RiemannHypothesis.Conversation.SimpleZeroChamber
import FormalResearch.RiemannHypothesis.Conversation.AffineAccordionWeld

/-!
# Moving centers, radii and affine fold charts inside a simple-zero chamber

Two ordered simple zeros supply C¹ seam graphs. Their ordering persists on
a common parameter neighborhood, so the exact affine fold has a nonzero
denominator and is jointly C¹ in parameter and position. Its endpoint,
inverse, unit-interval and seam-weld laws consume the existing affine API.
No smoothness across moving piecewise seams, complete zero census, native
weight regularity or discriminant-crossing uniformity is inferred.
Human chamber and folding direction: grwtsk contributors. Local checked
compatibility and consumer: OpenAI Codex. Mathlib IFT remains upstream.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.MovingAffineChamber
open SimpleZeroChamber
open scoped Topology ContDiff
noncomputable section

def center (a b : ℝ → ℝ) (l : ℝ) : ℝ := (a l + b l) / 2
def radius (a b : ℝ → ℝ) (l : ℝ) : ℝ := (b l - a l) / 2

theorem moving_center_c1 {a b : ℝ → ℝ} {l₀ : ℝ}
    (ha : ContDiffAt ℝ 1 a l₀) (hb : ContDiffAt ℝ 1 b l₀) :
    ContDiffAt ℝ 1 (center a b) l₀ :=
  (ha.add hb).div_const 2

theorem moving_radius_c1 {a b : ℝ → ℝ} {l₀ : ℝ}
    (ha : ContDiffAt ℝ 1 a l₀) (hb : ContDiffAt ℝ 1 b l₀) :
    ContDiffAt ℝ 1 (radius a b) l₀ :=
  (hb.sub ha).div_const 2

theorem ordered_seams_stay_ordered {a b : ℝ → ℝ} {l₀ : ℝ}
    (ha : ContDiffAt ℝ 1 a l₀) (hb : ContDiffAt ℝ 1 b l₀)
    (hab : a l₀ < b l₀) :
    ∀ᶠ l in 𝓝 l₀, a l < b l ∧ 0 < radius a b l := by
  filter_upwards [ha.continuousAt.eventually_lt hb.continuousAt hab] with l hl
  exact ⟨hl,div_pos (sub_pos.mpr hl) (by norm_num)⟩

theorem centered_fold_eq {a b x : ℝ} (hab : a < b) :
    (x - (a+b)/2) / ((b-a)/2) = AffineAccordionWeld.fold a b x := by
  unfold AffineAccordionWeld.fold
  field_simp [sub_ne_zero.mpr hab.ne']
  ring

theorem moving_fold_joint_c1 {a b : ℝ → ℝ} {l₀ x₀ : ℝ}
    (ha : ContDiffAt ℝ 1 a l₀) (hb : ContDiffAt ℝ 1 b l₀)
    (hab : a l₀ < b l₀) :
    ContDiffAt ℝ 1 (fun u : ℝ × ℝ =>
      AffineAccordionWeld.fold (a u.1) (b u.1) u.2) (l₀,x₀) := by
  have ha' := ha.comp (l₀,x₀) contDiffAt_fst
  have hb' := hb.comp (l₀,x₀) contDiffAt_fst
  have hn := contDiffAt_snd.sub ha'
  have hd := hb'.sub ha'
  have htwo : ContDiffAt ℝ 1 (fun _ : ℝ × ℝ => (2 : ℝ)) (l₀,x₀) := contDiffAt_const
  have hneg : ContDiffAt ℝ 1 (fun _ : ℝ × ℝ => (-1 : ℝ)) (l₀,x₀) := contDiffAt_const
  have hq := (htwo.mul hn).div hd
    (sub_ne_zero.mpr hab.ne')
  simpa only [AffineAccordionWeld.fold, Function.comp_apply] using! hneg.add hq

theorem moving_panel_exact_laws {a b : ℝ → ℝ} {l : ℝ}
    (hab : a l < b l) :
    AffineAccordionWeld.fold (a l) (b l) (a l) = -1 ∧
    AffineAccordionWeld.fold (a l) (b l) (b l) = 1 ∧
    (∀ x ∈ Set.Icc (a l) (b l),
      AffineAccordionWeld.fold (a l) (b l) x ∈ Set.Icc (-1 : ℝ) 1) ∧
    (∀ s, AffineAccordionWeld.fold (a l) (b l)
      (AffineAccordionWeld.unfoldPoint (a l) (b l) s) = s) :=
  ⟨AffineAccordionWeld.fold_left _ _,AffineAccordionWeld.fold_right hab,
    fun _ hx => AffineAccordionWeld.fold_maps_unit hab hx,
    AffineAccordionWeld.fold_unfold hab⟩

theorem two_simple_zeros_supply_moving_panel {g : ℝ × ℝ → ℝ} {l₀ a₀ b₀ x₀ : ℝ}
    (ha : ContDiffAt ℝ 1 g (l₀,a₀)) (hb : ContDiffAt ℝ 1 g (l₀,b₀))
    (hza : g (l₀,a₀) = 0) (hzb : g (l₀,b₀) = 0)
    (hsa : spatialSlope g (l₀,a₀) ≠ 0) (hsb : spatialSlope g (l₀,b₀) ≠ 0)
    (hab : a₀ < b₀) :
    ∃ a b : ℝ → ℝ, a l₀ = a₀ ∧ b l₀ = b₀ ∧
      ContDiffAt ℝ 1 a l₀ ∧ ContDiffAt ℝ 1 b l₀ ∧
      ContDiffAt ℝ 1 (center a b) l₀ ∧ ContDiffAt ℝ 1 (radius a b) l₀ ∧
      ContDiffAt ℝ 1 (fun u : ℝ × ℝ =>
        AffineAccordionWeld.fold (a u.1) (b u.1) u.2) (l₀,x₀) ∧
      (∀ᶠ l in 𝓝 l₀, g (l,a l) = 0 ∧ g (l,b l) = 0 ∧
        a l < b l ∧ 0 < radius a b l) := by
  obtain ⟨a,ha0,hac,haz,_haunique⟩ := simple_zero_local_c1_graph ha hza hsa
  obtain ⟨b,hb0,hbc,hbz,_hbunique⟩ := simple_zero_local_c1_graph hb hzb hsb
  have hab' : a l₀ < b l₀ := by simpa only [ha0,hb0] using hab
  refine ⟨a,b,ha0,hb0,hac,hbc,moving_center_c1 hac hbc,
    moving_radius_c1 hac hbc,moving_fold_joint_c1 hac hbc hab',?_⟩
  filter_upwards [haz,hbz,ordered_seams_stay_ordered hac hbc hab'] with l hal hbl horder
  exact ⟨hal,hbl,horder⟩

end
end GRWTSK.RiemannHypothesis.Conversation.MovingAffineChamber
