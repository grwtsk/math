# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSignedHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07203d6c78db306a567165a1fa2f3d469962b279` · SHA-256 `5d48ecf736370d7e5cc175e8a9759da712bb1213ed6b3b0b76c27fdd60aa01db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.ConjugateAnalyticOrder
import GRWTSK.NumberTheory.Zeta.Riemann.LocalZeroSymmetry
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin

set_option autoImplicit false

/-!
# Exact signed-height normalization of the canonical analytic zero count

The positive head is a FILTER of the existing complete canonical head. Its
weights remain the analytic multiplicities of actual riemannZeta. Conjugation
preserves every finite multiplicity, not only simplicity. The sourced real-axis
exclusion is used before splitting into two signs. Upper endpoints are closed;
separate open and boundary masses record the endpoint correction explicitly.
No numerical zero count or asymptotic estimate is supplied by these identities.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CanonicalSignedHeight

open CanonicalZeroDivisor LocalZeroSymmetry
open scoped BigOperators Classical

noncomputable section

/-- Reuse the maintained real-axis theorem; do not assume there are no real zeros. -/
theorem im_ne_zero (z : ZeroPoint) : z.1.im ≠ 0 :=
  CriticalStripHeightDescent.nontrivialZetaZero_im_ne_zero z.2

/-- Finite analytic order, including a hypothetical repeated nontrivial zero. -/
theorem conjugate_multiplicity (z : ZeroPoint) :
    multiplicity (conjugatePoint z) = multiplicity z := by
  have h := GRWTSK.Analysis.Complex.ConjugateAnalyticOrder.finite_order_conjugation
    (f := riemannZeta) (z := z.1) (n := multiplicity z)
    (fun w => by simp [riemannZeta_conj])
    (analyticAt_point z) (analyticAt_point (conjugatePoint z))
    (multiplicity_cast z).symm
  have hh : (multiplicity (conjugatePoint z) : ℕ∞) = (multiplicity z : ℕ∞) :=
    (multiplicity_cast (conjugatePoint z)).trans h
  exact_mod_cast hh

theorem conjugate_injective : Function.Injective conjugatePoint := by
  intro z w h
  have hh := congrArg conjugatePoint h
  simpa only [conjugatePoint_involutive] using hh

/-- Closed upper endpoint, positive sign, original source and original weights. -/
def positiveHead (T : ℝ) : Finset ZeroPoint :=
  (heightHead T).filter (fun z => 0 < z.1.im)

def negativeHead (T : ℝ) : Finset ZeroPoint :=
  (heightHead T).filter (fun z => z.1.im < 0)

def positiveCount (T : ℝ) : ℕ := ∑ z ∈ positiveHead T, multiplicity z

def negativeCount (T : ℝ) : ℕ := ∑ z ∈ negativeHead T, multiplicity z

theorem mem_positiveHead (T : ℝ) (z : ZeroPoint) :
    z ∈ positiveHead T ↔ 0 < z.1.im ∧ z.1.im ≤ T := by
  rw [positiveHead, Finset.mem_filter, mem_heightHead]
  constructor
  · rintro ⟨hh, hp⟩
    exact ⟨hp, by simpa only [height, abs_of_pos hp] using hh⟩
  · rintro ⟨hp, hh⟩
    exact ⟨by simpa only [height, abs_of_pos hp] using hh, hp⟩

theorem conjugate_mem_positive_iff (T : ℝ) (z : ZeroPoint) :
    conjugatePoint z ∈ positiveHead T ↔ z ∈ negativeHead T := by
  simp only [positiveHead, negativeHead, Finset.mem_filter, mem_heightHead,
    conjugate_height, conjugatePoint_val]
  change (height z ≤ T ∧ 0 < -z.1.im) ↔ (height z ≤ T ∧ z.1.im < 0)
  simp

theorem negativeHead_eq_image (T : ℝ) :
    negativeHead T = (positiveHead T).image conjugatePoint := by
  ext z
  constructor
  · intro hz
    exact Finset.mem_image.mpr ⟨conjugatePoint z,
      (conjugate_mem_positive_iff T z).mpr hz, conjugatePoint_involutive z⟩
  · intro hz
    obtain ⟨w, hw, rfl⟩ := Finset.mem_image.mp hz
    apply (conjugate_mem_positive_iff T (conjugatePoint w)).mp
    simpa only [conjugatePoint_involutive] using hw

theorem signed_heads_disjoint (T : ℝ) : Disjoint (positiveHead T) (negativeHead T) := by
  apply Finset.disjoint_left.mpr
  intro z hp hn
  have hp' := (Finset.mem_filter.mp hp).2
  have hn' := (Finset.mem_filter.mp hn).2
  linarith

/-- The absence of height-zero atoms is essential to this equality. -/
theorem head_eq_signed_union (T : ℝ) :
    heightHead T = positiveHead T ∪ negativeHead T := by
  ext z
  constructor
  · intro hz
    rcases lt_or_gt_of_ne (im_ne_zero z) with hn | hp
    · exact Finset.mem_union.mpr (Or.inr (Finset.mem_filter.mpr ⟨hz, hn⟩))
    · exact Finset.mem_union.mpr (Or.inl (Finset.mem_filter.mpr ⟨hz, hp⟩))
  · intro hz
    rcases Finset.mem_union.mp hz with hp | hn
    · exact (Finset.mem_filter.mp hp).1
    · exact (Finset.mem_filter.mp hn).1

theorem negativeCount_eq_positiveCount (T : ℝ) : negativeCount T = positiveCount T := by
  unfold negativeCount
  rw [negativeHead_eq_image, Finset.sum_image]
  · simp only [conjugate_multiplicity, positiveCount]
  · intro a _ b _ hab
    exact conjugate_injective hab

/-- Both-sign CLOSED multiplicity count equals twice the positive CLOSED count. -/
theorem heightCount_eq_twice (T : ℝ) : heightCount T = 2 * positiveCount T := by
  unfold heightCount
  rw [head_eq_signed_union, Finset.sum_union (signed_heads_disjoint T)]
  change positiveCount T + negativeCount T = 2 * positiveCount T
  rw [negativeCount_eq_positiveCount]
  omega

theorem heightCount_even (T : ℝ) : Even (heightCount T) := by
  refine ⟨positiveCount T, ?_⟩
  rw [heightCount_eq_twice]
  omega

theorem heightCount_upper_iff (T : ℝ) (n : ℕ) :
    heightCount T ≤ 2 * n ↔ positiveCount T ≤ n := by
  rw [heightCount_eq_twice]
  omega

/-- A strict threshold excludes the next even mass, not just the next integer. -/
theorem heightCount_lt_four_iff (T : ℝ) :
    heightCount T < 4 ↔ positiveCount T ≤ 1 := by
  rw [heightCount_eq_twice]
  omega

theorem positiveHead_empty_of_nonpos {T : ℝ} (hT : T ≤ 0) : positiveHead T = ∅ := by
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro z hz
  have hp := (mem_positiveHead T z).mp hz
  linarith [hp.1, hp.2]

theorem counts_zero_of_nonpos {T : ℝ} (hT : T ≤ 0) :
    positiveCount T = 0 ∧ heightCount T = 0 := by
  have hp : positiveCount T = 0 := by
    simp only [positiveCount, positiveHead_empty_of_nonpos hT, Finset.sum_empty]
  exact ⟨hp, by rw [heightCount_eq_twice, hp, mul_zero]⟩

def positiveOpenHead (T : ℝ) : Finset ZeroPoint :=
  (positiveHead T).filter (fun z => z.1.im < T)

def boundaryHead (T : ℝ) : Finset ZeroPoint :=
  (positiveHead T).filter (fun z => z.1.im = T)

def positiveOpenCount (T : ℝ) : ℕ := ∑ z ∈ positiveOpenHead T, multiplicity z

def boundaryCount (T : ℝ) : ℕ := ∑ z ∈ boundaryHead T, multiplicity z

theorem mem_positiveOpenHead (T : ℝ) (z : ZeroPoint) :
    z ∈ positiveOpenHead T ↔ 0 < z.1.im ∧ z.1.im < T := by
  simp only [positiveOpenHead, Finset.mem_filter, mem_positiveHead]
  constructor
  · exact fun h => ⟨h.1.1, h.2⟩
  · exact fun h => ⟨⟨h.1, h.2.le⟩, h.2⟩

theorem mem_boundaryHead (T : ℝ) (z : ZeroPoint) :
    z ∈ boundaryHead T ↔ 0 < z.1.im ∧ z.1.im = T := by
  simp only [boundaryHead, Finset.mem_filter, mem_positiveHead]
  constructor
  · exact fun h => ⟨h.1.1, h.2⟩
  · exact fun h => ⟨⟨h.1, h.2.le⟩, h.2⟩

theorem open_boundary_disjoint (T : ℝ) :
    Disjoint (positiveOpenHead T) (boundaryHead T) := by
  apply Finset.disjoint_left.mpr
  intro z ho hb
  have hl := (mem_positiveOpenHead T z).mp ho
  have he := (mem_boundaryHead T z).mp hb
  linarith [hl.2, he.2]

theorem positiveHead_eq_open_union_boundary (T : ℝ) :
    positiveHead T = positiveOpenHead T ∪ boundaryHead T := by
  ext z
  constructor
  · intro hz
    have hh := (mem_positiveHead T z).mp hz
    rcases hh.2.lt_or_eq with hl | he
    · exact Finset.mem_union.mpr (Or.inl (Finset.mem_filter.mpr ⟨hz, hl⟩))
    · exact Finset.mem_union.mpr (Or.inr (Finset.mem_filter.mpr ⟨hz, he⟩))
  · intro hz
    rcases Finset.mem_union.mp hz with ho | hb
    · exact (Finset.mem_filter.mp ho).1
    · exact (Finset.mem_filter.mp hb).1

/-- A zero exactly on the cutoff contributes its ENTIRE analytic multiplicity. -/
theorem positiveCount_eq_open_add_boundary (T : ℝ) :
    positiveCount T = positiveOpenCount T + boundaryCount T := by
  calc
    positiveCount T = ∑ z ∈ positiveOpenHead T ∪ boundaryHead T, multiplicity z :=
      congrArg (fun S : Finset ZeroPoint => ∑ z ∈ S, multiplicity z)
        (positiveHead_eq_open_union_boundary T)
    _ = positiveOpenCount T + boundaryCount T :=
      Finset.sum_union (open_boundary_disjoint T)

theorem heightCount_eq_open_and_boundary (T : ℝ) :
    heightCount T = 2 * positiveOpenCount T + 2 * boundaryCount T := by
  rw [heightCount_eq_twice, positiveCount_eq_open_add_boundary]
  omega

/-- An explicitly named half-boundary convention, not an alias for closed count. -/
def positiveHalfCount (T : ℝ) : ℚ :=
  (positiveOpenCount T : ℚ) + (boundaryCount T : ℚ) / 2

theorem heightCount_eq_half_and_boundary (T : ℝ) :
    (heightCount T : ℚ) = 2 * positiveHalfCount T + (boundaryCount T : ℚ) := by
  rw [heightCount_eq_open_and_boundary]
  push_cast
  unfold positiveHalfCount
  ring

/-- A small complete upper count plus two actual points forces exact support.
This consumes an upper count; it does not manufacture one from the two points. -/
theorem head_eq_pair_of_count_le_two {T : ℝ} {z w : ZeroPoint}
    (hzw : z ≠ w) (hz : z ∈ heightHead T) (hw : w ∈ heightHead T)
    (hu : heightCount T ≤ 2) : heightHead T = {z, w} := by
  apply Finset.Subset.antisymm
  · intro v hv
    by_contra hnot
    have hvz : v ≠ z := fun h => hnot (by simp [h])
    have hvw : v ≠ w := fun h => hnot (by simp [h])
    have hsub : ({v, z, w} : Finset ZeroPoint) ⊆ heightHead T := by
      intro a ha
      simp only [Finset.mem_insert, Finset.mem_singleton] at ha
      rcases ha with rfl | rfl | rfl
      · exact hv
      · exact hz
      · exact hw
    have hc := Finset.card_le_card hsub
    have hcard : ({v, z, w} : Finset ZeroPoint).card = 3 := by
      simp [hvz, hvw, hzw]
    rw [hcard] at hc
    have hh := head_card_le_heightCount T
    omega
  · intro v hv
    simp only [Finset.mem_insert, Finset.mem_singleton] at hv
    rcases hv with rfl | rfl
    · exact hz
    · exact hw

end
end GRWTSK.RiemannHypothesis.CanonicalSignedHeight
```
