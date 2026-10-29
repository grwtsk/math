import FormalResearch.RiemannHypothesis.Conversation.WeightedHodge

/-!
# Alternating affine folds weld the same endpoint at a shared seam

Batch 05 AC05-02 uses the standard unit [-1,1] and alternates the orientation
of adjacent folds. The literal affine map has its exact inverse and endpoints,
is increasing before orientation, and gives identical images at every shared
seam after orientation. This geometric law does not bound amplitude, scalar
mass or an arithmetic source. Native nonlinear transport remains separate.

Human accordion direction: grwtsk contributors. Local affine interface and
Lean proofs: OpenAI Codex. Mathlib ordered-field laws retain upstream identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.AffineAccordionWeld

noncomputable section

/-- The fold in this module, with the following exact parameterization.

def fold (a b x : ℝ) : ℝ := -1 + 2 * (x - a) / (b - a)
-/
def fold (a b x : ℝ) : ℝ := -1 + 2 * (x - a) / (b - a)
/-- The unfold point in this module, with the following exact parameterization.

def unfoldPoint (a b s : ℝ) : ℝ := a + (s + 1) * (b - a) / 2
-/
def unfoldPoint (a b s : ℝ) : ℝ := a + (s + 1) * (b - a) / 2
/-- The oriented fold in this module, with the following exact parameterization.

def orientedFold (j : ℕ) (a b x : ℝ) : ℝ := (-1 : ℝ) ^ j * fold a b x
-/
def orientedFold (j : ℕ) (a b x : ℝ) : ℝ := (-1 : ℝ) ^ j * fold a b x

theorem fold_left (a b : ℝ) : fold a b a = -1 := by simp [fold]

theorem fold_right {a b : ℝ} (hab : a < b) : fold a b b = 1 := by
  unfold fold
  field_simp [sub_ne_zero.mpr hab.ne']
  ring

theorem fold_unfold {a b : ℝ} (hab : a < b) (s : ℝ) :
    fold a b (unfoldPoint a b s) = s := by
  unfold fold unfoldPoint
  field_simp [sub_ne_zero.mpr hab.ne']
  ring

theorem unfold_fold {a b : ℝ} (hab : a < b) (x : ℝ) :
    unfoldPoint a b (fold a b x) = x := by
  unfold fold unfoldPoint
  field_simp [sub_ne_zero.mpr hab.ne']
  ring

theorem fold_strictMono {a b : ℝ} (hab : a < b) : StrictMono (fold a b) := by
  intro x y hxy
  unfold fold
  simpa only [add_comm] using add_lt_add_left (div_lt_div_of_pos_right (mul_lt_mul_of_pos_left
    (sub_lt_sub_right hxy a) (by norm_num : (0 : ℝ) < 2)) (sub_pos.mpr hab)) (-1)

theorem fold_maps_unit {a b x : ℝ} (hab : a < b) (hx : x ∈ Set.Icc a b) :
    fold a b x ∈ Set.Icc (-1 : ℝ) 1 := by
  have hm := (fold_strictMono hab).monotone
  constructor
  · simpa only [fold_left] using hm hx.1
  · simpa only [fold_right hab] using hm hx.2

theorem shared_seam_weld {a b c : ℝ} (hab : a < b) (j : ℕ) :
    orientedFold j a b b = orientedFold (j + 1) b c b := by
  simp only [orientedFold, fold_right hab, fold_left, pow_succ]
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.AffineAccordionWeld
