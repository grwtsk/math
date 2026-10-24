# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RefinementTree.Variant4d1ec1147d1746c58a02b413289aa31f72ad19f5d5b92c2c3b61f13e459dc2d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc32a87453e3d07fb8c77bf7a80d5b1847dc078a` · SHA-256 `4d1ec1147d1746c58a02b413289aa31f72ad19f5d5b92c2c3b61f13e459dc2d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.WeightedHodge

/-!
# Finite refinement trees retain the root and every defect

The finite Hodge identity is lifted to every binary tree of positive-width
packets. The total detail is independent of the tree when the leaf packet
multiset is unchanged. This does not infer an infinite or adaptive arithmetic
estimate from the finite decomposition.

Source: audited RH conversation Batch 06. Human framework and direction:
grwtsk contributors. Local finite interface and Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.RefinementTree

noncomputable section

inductive Tree where
  | leaf (width value : ℝ)
  | split (left right : Tree)

def packets : Tree → List (ℝ × ℝ)
  | .leaf w v => [(w, v)]
  | .split l r => packets l ++ packets r

def width : Tree → ℝ
  | .leaf w _ => w
  | .split l r => width l + width r

def value : Tree → ℝ
  | .leaf _ v => v
  | .split l r => value l + value r

def leafEnergy : Tree → ℝ
  | .leaf w v => v ^ 2 / w
  | .split l r => leafEnergy l + leafEnergy r

def detailEnergy : Tree → ℝ
  | .leaf _ _ => 0
  | .split l r => detailEnergy l + detailEnergy r +
      (width r * value l - width l * value r) ^ 2 /
        (width l * width r * (width l + width r))

def Positive : Tree → Prop
  | .leaf w _ => 0 < w
  | .split l r => Positive l ∧ Positive r

theorem width_positive (t : Tree) (ht : Positive t) : 0 < width t := by
  induction t with
  | leaf w v => exact ht
  | split l r ihl ihr => exact add_pos (ihl ht.1) (ihr ht.2)

/-- This equality includes the signed root at every level of the tree. -/
theorem full_tree_identity (t : Tree) (ht : Positive t) :
    leafEnergy t = value t ^ 2 / width t + detailEnergy t := by
  induction t with
  | leaf w v => simp [leafEnergy, value, width, detailEnergy]
  | split l r ihl ihr =>
      have hl := ihl ht.1
      have hr := ihr ht.2
      have hb := WeightedHodge.binary_refinement_identity
        (width_positive l ht.1) (width_positive r ht.2) (value l) (value r)
      simp only [leafEnergy, value, width, detailEnergy]
      linarith

theorem detailEnergy_nonneg (t : Tree) (ht : Positive t) : 0 ≤ detailEnergy t := by
  induction t with
  | leaf w v => exact le_rfl
  | split l r ihl ihr =>
      have hl := width_positive l ht.1
      have hr := width_positive r ht.2
      exact add_nonneg (add_nonneg (ihl ht.1) (ihr ht.2))
        (div_nonneg (sq_nonneg _) (by positivity))

theorem root_energy_le (t : Tree) (ht : Positive t) :
    value t ^ 2 / width t ≤ leafEnergy t := by
  rw [full_tree_identity t ht]
  linarith [detailEnergy_nonneg t ht]

theorem width_eq_packet_sum (t : Tree) : width t = (packets t |>.map Prod.fst).sum := by
  induction t with
  | leaf w v => simp [width, packets]
  | split l r ihl ihr => simp [width, packets, List.map_append, ihl, ihr]

theorem value_eq_packet_sum (t : Tree) : value t = (packets t |>.map Prod.snd).sum := by
  induction t with
  | leaf w v => simp [value, packets]
  | split l r ihl ihr => simp [value, packets, List.map_append, ihl, ihr]

theorem leafEnergy_eq_packet_sum (t : Tree) :
    leafEnergy t = (packets t |>.map (fun p => p.2 ^ 2 / p.1)).sum := by
  induction t with
  | leaf w v => simp [leafEnergy, packets]
  | split l r ihl ihr => simp [leafEnergy, packets, List.map_append, ihl, ihr]

/-- Split order changes the defects' locations, but not their total energy. -/
theorem split_order_invariant (t u : Tree) (ht : Positive t) (hu : Positive u)
    (hpackets : (packets t).Perm (packets u)) : detailEnergy t = detailEnergy u := by
  have hw : width t = width u := by
    rw [width_eq_packet_sum, width_eq_packet_sum]
    exact (hpackets.map Prod.fst).sum_eq
  have hv : value t = value u := by
    rw [value_eq_packet_sum, value_eq_packet_sum]
    exact (hpackets.map Prod.snd).sum_eq
  have he : leafEnergy t = leafEnergy u := by
    rw [leafEnergy_eq_packet_sum, leafEnergy_eq_packet_sum]
    exact (hpackets.map (fun p => p.2 ^ 2 / p.1)).sum_eq
  rw [full_tree_identity t ht, full_tree_identity u hu, hw, hv] at he
  linarith

/-- The signed root and the unnormalized detail reconstruct both children. -/
theorem binary_perfect_reconstruction {w₁ w₂ : ℝ} (h₁ : 0 < w₁) (h₂ : 0 < w₂)
    (v₁ v₂ : ℝ) :
    (w₁ * (v₁ + v₂) + (w₂ * v₁ - w₁ * v₂)) / (w₁ + w₂) = v₁ ∧
      (w₂ * (v₁ + v₂) - (w₂ * v₁ - w₁ * v₂)) / (w₁ + w₂) = v₂ := by
  constructor <;> field_simp [(add_pos h₁ h₂).ne'] <;> ring

end
end GRWTSK.RiemannHypothesis.Conversation.RefinementTree
```
