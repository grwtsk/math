import FormalResearch.RiemannHypothesis.Conversation.FinitePanelCompression

/-!
# Positive subdivision retains height, width and scalar debt

Batch 05 AC05-03 compares the parent's compression with the native-width
weighted child compressions. The supplied finite partition has positive widths,
nonnegative debts, additive width and debt, and child heights at most the
parent height. Under those exact premises the parent's compression cannot
exceed the weighted child average, which cannot exceed any common child cap.
Partition selection and a useful actual-prime child cap are not supplied.

Human subdivision warning: grwtsk contributors. Local finite algebra and
consumer: OpenAI Codex. Mathlib finite sums retain upstream formal origin.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.PositiveSubdivision

open scoped BigOperators
noncomputable section

/-- The compression in this module, with the following exact parameterization.

def compression (D H W : ℝ) : ℝ := D / (H * W)
-/
def compression (D H W : ℝ) : ℝ := D / (H * W)

theorem exact_scalar_debt {D H W : ℝ} (hH : H ≠ 0) (hW : W ≠ 0) :
    D = H * W * compression D H W := by
  unfold compression
  field_simp

theorem parent_le_weighted_children {ι : Type*} (s : Finset ι)
    (D H W : ι → ℝ) {Hp Wp Dp : ℝ}
    (_hHp : 0 < Hp) (hWp : 0 < Wp) (hW : ∀ i ∈ s, 0 < W i)
    (hH : ∀ i ∈ s, 0 < H i) (hD : ∀ i ∈ s, 0 ≤ D i)
    (hheight : ∀ i ∈ s, H i ≤ Hp) (hdebt : Dp = ∑ i ∈ s, D i) :
    compression Dp Hp Wp ≤ ∑ i ∈ s, (W i / Wp) * compression (D i) (H i) (W i) := by
  unfold compression
  rw [hdebt, Finset.sum_div]
  apply Finset.sum_le_sum
  intro i hi
  have hd := div_le_div_of_nonneg_left (hD i hi) (hH i hi) (hheight i hi)
  have hdw := div_le_div_of_nonneg_right hd hWp.le
  have hparent : D i / (Hp * Wp) = (D i / Hp) / Wp := by ring
  have hchild : W i / Wp * (D i / (H i * W i)) = (D i / H i) / Wp := by
    field_simp [(hW i hi).ne', (hH i hi).ne', hWp.ne']
  simpa only [hparent, hchild] using hdw

theorem weighted_children_le_cap {ι : Type*} (s : Finset ι)
    (D H W : ι → ℝ) {Wp C : ℝ} (hWp : 0 < Wp)
    (hW : ∀ i ∈ s, 0 ≤ W i) (hwidth : (∑ i ∈ s, W i) = Wp)
    (hcap : ∀ i ∈ s, compression (D i) (H i) (W i) ≤ C) :
    (∑ i ∈ s, (W i / Wp) * compression (D i) (H i) (W i)) ≤ C := by
  calc
    _ ≤ ∑ i ∈ s, (W i / Wp) * C := Finset.sum_le_sum
      (fun i hi => mul_le_mul_of_nonneg_left (hcap i hi) (div_nonneg (hW i hi) hWp.le))
    _ = C := by rw [← Finset.sum_mul, ← Finset.sum_div, hwidth, div_self hWp.ne', one_mul]

theorem subdivision_compression_limit {ι : Type*} (s : Finset ι)
    (D H W : ι → ℝ) {Hp Wp Dp C : ℝ}
    (hHp : 0 < Hp) (hWp : 0 < Wp) (hW : ∀ i ∈ s, 0 < W i)
    (hH : ∀ i ∈ s, 0 < H i) (hD : ∀ i ∈ s, 0 ≤ D i)
    (hheight : ∀ i ∈ s, H i ≤ Hp) (hdebt : Dp = ∑ i ∈ s, D i)
    (hwidth : (∑ i ∈ s, W i) = Wp)
    (hcap : ∀ i ∈ s, compression (D i) (H i) (W i) ≤ C) :
    compression Dp Hp Wp ≤ C :=
  (parent_le_weighted_children s D H W hHp hWp hW hH hD hheight hdebt).trans
    (weighted_children_le_cap s D H W hWp (fun i hi => (hW i hi).le) hwidth hcap)

end
end GRWTSK.RiemannHypothesis.Conversation.PositiveSubdivision
