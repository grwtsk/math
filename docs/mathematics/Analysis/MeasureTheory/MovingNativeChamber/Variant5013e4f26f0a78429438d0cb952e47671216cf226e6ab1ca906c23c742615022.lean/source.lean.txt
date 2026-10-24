import FormalResearch.RiemannHypothesis.Conversation.MovingAffineChamber
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.SpecialFunctions.ExpDeriv

/-!
# An actual smooth native fold consumed by moving simple-zero seams

The weight is explicitly exp(-t/2), with exact cumulative primitive
-2*exp(-t/2). Its positive integral width normalizes the moving fold. The
result is jointly C¹ inside each ordered seam chamber and preserves exact
native mass fractions. This supplies one concrete usual-weight hypothesis,
not an assertion for arbitrary weights or across piecewise seam crossings.
Human native-clock/chamber direction: grwtsk contributors. Local native-fold
consumer: OpenAI Codex. Mathlib calculus retains upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.MovingNativeChamber
open MovingAffineChamber MeasureTheory
open scoped Topology ContDiff
noncomputable section

def cumulative (x : ℝ) : ℝ := -2*Real.exp (-x/2)
def width (a b : ℝ) : ℝ := cumulative b - cumulative a
def fold (a b x : ℝ) : ℝ :=
  AffineAccordionWeld.fold (cumulative a) (cumulative b) (cumulative x)

theorem cumulative_smooth (k : WithTop ℕ∞) : ContDiff ℝ k cumulative := by
  unfold cumulative
  fun_prop

theorem cumulative_strictMono : StrictMono cumulative := by
  intro x y hxy
  have he : Real.exp (-y/2) < Real.exp (-x/2) := Real.exp_lt_exp.mpr (by linarith)
  unfold cumulative
  linarith

theorem cumulative_has_deriv (x : ℝ) :
    HasDerivAt cumulative (Real.exp (-x/2)) x := by
  have h := ((Real.hasDerivAt_exp (-x/2)).comp x
    ((hasDerivAt_id x).neg.div_const 2)).const_mul (-2)
  have he : (-2 : ℝ)*(Real.exp (-x/2)*(-1/2)) = Real.exp (-x/2) := by ring
  simpa only [cumulative,he] using! h

theorem width_exact_integral (a b : ℝ) :
    width a b = ∫ t in a..b, Real.exp (-t/2) := by
  have hi : IntervalIntegrable (fun t : ℝ => Real.exp (-t/2)) volume a b :=
    (by fun_prop : Continuous (fun t : ℝ => Real.exp (-t/2))).intervalIntegrable _ _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => cumulative_has_deriv x) hi]
  rfl

theorem width_pos {a b : ℝ} (hab : a < b) : 0 < width a b :=
  sub_pos.mpr (cumulative_strictMono hab)

theorem native_fold_joint_c1 {a b : ℝ → ℝ} {l₀ x₀ : ℝ}
    (ha : ContDiffAt ℝ 1 a l₀) (hb : ContDiffAt ℝ 1 b l₀)
    (hab : a l₀ < b l₀) :
    ContDiffAt ℝ 1 (fun u : ℝ × ℝ => fold (a u.1) (b u.1) u.2) (l₀,x₀) := by
  have hf : ContDiffAt ℝ 1 (fun u : ℝ × ℝ =>
      AffineAccordionWeld.fold (cumulative (a u.1)) (cumulative (b u.1)) u.2)
      (l₀,cumulative x₀) :=
    moving_fold_joint_c1 ((cumulative_smooth 1).contDiffAt.comp l₀ ha)
      ((cumulative_smooth 1).contDiffAt.comp l₀ hb) (cumulative_strictMono hab)
  have hg : ContDiffAt ℝ 1 (fun u : ℝ × ℝ => (u.1,cumulative u.2)) (l₀,x₀) := by
    exact contDiffAt_fst.prodMk ((cumulative_smooth 1).contDiffAt.comp (l₀,x₀) contDiffAt_snd)
  simpa only [fold,Function.comp_apply] using! hf.comp (l₀,x₀) hg

theorem native_fold_exact_endpoints {a b : ℝ} (hab : a < b) :
    fold a b a = -1 ∧ fold a b b = 1 :=
  ⟨AffineAccordionWeld.fold_left _ _,
    AffineAccordionWeld.fold_right (cumulative_strictMono hab)⟩

theorem native_fold_maps_unit {a b x : ℝ} (hab : a < b) (hx : x ∈ Set.Icc a b) :
    fold a b x ∈ Set.Icc (-1 : ℝ) 1 :=
  AffineAccordionWeld.fold_maps_unit (cumulative_strictMono hab)
    ⟨cumulative_strictMono.monotone hx.1,cumulative_strictMono.monotone hx.2⟩

theorem native_fold_exact_mass_fraction {a b : ℝ} (hab : a < b) (x y : ℝ) :
    (fold a b y - fold a b x)/2 =
      (∫ t in x..y,Real.exp (-t/2)) / (∫ t in a..b,Real.exp (-t/2)) := by
  rw [← width_exact_integral,← width_exact_integral]
  unfold fold AffineAccordionWeld.fold width
  field_simp [sub_ne_zero.mpr (cumulative_strictMono hab).ne']
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.MovingNativeChamber
