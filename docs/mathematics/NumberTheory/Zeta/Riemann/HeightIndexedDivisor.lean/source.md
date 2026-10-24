# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.HeightIndexedDivisor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f693410a2b2a1d52a3e86418fad252daa042487` · SHA-256 `f284b3626fe8bc350ee88460d5072a2e5796c542440566c519b05742e9a70255`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SeparatedContourHeights
import GRWTSK.NumberTheory.Zeta.Riemann.AdmissibleRectangles
import GRWTSK.Analysis.Complex.RectangularPoleReduction

set_option autoImplicit false

/-!
# Exact rectangular divisor with independent left and height cutoffs

The left cutoff N and the positive height T are independent. The pole, actual
canonical height head and first N trivial points are reused. The old chosen
height is recovered exactly, not identified with the new separated choice.
No numerical enumeration or count-growth estimate is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.HeightIndexedDivisor

open Set
open scoped BigOperators
open CanonicalZeroDivisor TrivialZeroResidues AdmissibleRectangles SeparatedContourHeights
open GRWTSK.Analysis.Complex.RectangularPoleReduction

noncomputable section

/-- Actual points; T controls the nontrivial head, N controls the negative-even prefix. -/
def singularHeadAt (N : ℕ) (T : ℝ) : Finset ℂ := by
  classical
  exact insert 1 (((heightHead T).image (fun z : ZeroPoint => z.1)) ∪
    ((Finset.range N).image trivialPoint))

/-- Compatibility with the earlier qualitative inventory is exact at its own cutoff. -/
theorem singularHeadAt_old (N : ℕ) :
    singularHeadAt N (contourHeight N) = singularHead N := rfl

/-- The negative-odd left cutoff, independently of the vertical height. -/
theorem trivial_left_iff (N k : ℕ) : leftEdge N < (trivialPoint k).re ↔ k < N := by
  constructor
  · intro hl
    exact (trivial_mem_interior_iff N k).mp
      ⟨hl, (trivialPoint_re_neg k).trans (by norm_num),
        by simpa [trivialPoint] using contourHeight_pos N⟩
  · intro hk
    exact ((trivial_mem_interior_iff N k).mpr hk).1

/-- Strict interior equals the closed height inventory only at an avoided height. -/
theorem mem_singularHeadAt_iff (N : ℕ) (T : ℝ) (hT : 0 < T)
    (havoid : ∀ z : ZeroPoint, height z ≠ T) (s : ℂ) :
    s ∈ singularHeadAt N T ↔
      (leftEdge N < s.re ∧ s.re < 2 ∧ |s.im| < T) ∧
        (s = 1 ∨ riemannZeta s = 0) := by
  classical
  constructor
  · intro hs
    rcases Finset.mem_insert.mp hs with rfl | hs
    · exact ⟨⟨(leftEdge_neg N).trans (by norm_num), by norm_num,
        by simpa using hT⟩, Or.inl rfl⟩
    rcases Finset.mem_union.mp hs with hs | hs
    · obtain ⟨z, hz, rfl⟩ := Finset.mem_image.mp hs
      exact ⟨⟨(leftEdge_neg N).trans (point_mem_strip z).1,
        (point_mem_strip z).2.trans (by norm_num),
        lt_of_le_of_ne ((mem_heightHead T z).mp hz) (havoid z)⟩, Or.inr z.2.1⟩
    · obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp hs
      exact ⟨⟨(trivial_left_iff N k).mpr (Finset.mem_range.mp hk),
        (trivialPoint_re_neg k).trans (by norm_num),
        by simpa [trivialPoint] using hT⟩, Or.inr (zeta_trivialPoint k)⟩
  · rintro ⟨hs, rfl | hz⟩
    · exact Finset.mem_insert_self _ _
    apply Finset.mem_insert_of_mem
    rcases (zeta_zero_iff s).mp hz with hnt | ⟨k, rfl⟩
    · apply Finset.mem_union_left
      exact Finset.mem_image.mpr ⟨⟨s, hnt⟩, (mem_heightHead T ⟨s, hnt⟩).mpr hs.2.2.le, rfl⟩
    · apply Finset.mem_union_right
      exact Finset.mem_image.mpr ⟨k, Finset.mem_range.mpr ((trivial_left_iff N k).mp hs.1), rfl⟩

/-- Even on the filled CLOSED rectangle, every actual zero or pole belongs to this inventory.
No avoidance assumption is needed for this direction because heightHead is right-closed. -/
theorem singular_mem_of_closed (N : ℕ) (T : ℝ) (s : ℂ)
    (hs : s ∈ closedRectangle (leftEdge N) 2 T)
    (hz : s = 1 ∨ riemannZeta s = 0) : s ∈ singularHeadAt N T := by
  classical
  rcases hz with rfl | hz
  · exact Finset.mem_insert_self _ _
  apply Finset.mem_insert_of_mem
  rcases (zeta_zero_iff s).mp hz with hnt | ⟨k, rfl⟩
  · apply Finset.mem_union_left
    exact Finset.mem_image.mpr ⟨⟨s, hnt⟩, (mem_heightHead T ⟨s, hnt⟩).mpr hs.2.2, rfl⟩
  · have hne : (trivialPoint k).re ≠ leftEdge N := by
      intro he
      exact zeta_ne_zero_on_left N (trivialPoint k) he (zeta_trivialPoint k)
    have hk := (trivial_left_iff N k).mp (lt_of_le_of_ne hs.1 hne.symm)
    apply Finset.mem_union_right
    exact Finset.mem_image.mpr ⟨k, Finset.mem_range.mpr hk, rfl⟩

/-- Sum over disjoint POINT families. Equal heights never merge complex points. -/
theorem sum_singularHeadAt (N : ℕ) (T : ℝ) (f : ℂ → ℂ) :
    (∑ p ∈ singularHeadAt N T, f p) =
      f 1 + (∑ z ∈ heightHead T, f z.1) + ∑ k ∈ Finset.range N, f (trivialPoint k) := by
  classical
  let A := (heightHead T).image (fun z : ZeroPoint => z.1)
  let B := (Finset.range N).image trivialPoint
  have hone : (1 : ℂ) ∉ A ∪ B := by
    intro hm
    rcases Finset.mem_union.mp hm with hm | hm
    · obtain ⟨z, _, hz⟩ := Finset.mem_image.mp hm
      exact z.2.2.2 hz
    · obtain ⟨k, _, hk⟩ := Finset.mem_image.mp hm
      exact riemannZeta_one_ne_zero (hk ▸ zeta_trivialPoint k)
  have hd : Disjoint A B := by
    apply Finset.disjoint_left.mpr
    intro p hpA hpB
    obtain ⟨z, _, rfl⟩ := Finset.mem_image.mp hpA
    obtain ⟨k, _, hk⟩ := Finset.mem_image.mp hpB
    apply trivialPoint_not_nontrivial k
    rw [hk]
    exact z.2
  change (∑ p ∈ insert 1 (A ∪ B), f p) = _
  rw [Finset.sum_insert hone, Finset.sum_union hd]
  dsimp only [A, B]
  rw [Finset.sum_image (fun a _ b _ he => Subtype.val_injective he),
    Finset.sum_image (fun a _ b _ he => trivialPoint_injective he)]
  ring

/-- The negative-even inventory is controlled only by the left cutoff, not the height. -/
theorem trivial_mem_headAt_iff (N k : ℕ) (T : ℝ) :
    trivialPoint k ∈ singularHeadAt N T ↔ k < N := by
  classical
  constructor
  · intro hp
    rcases Finset.mem_insert.mp hp with hp | hp
    · exact False.elim (riemannZeta_one_ne_zero (hp ▸ zeta_trivialPoint k))
    rcases Finset.mem_union.mp hp with hp | hp
    · obtain ⟨z, _, hz⟩ := Finset.mem_image.mp hp
      exact False.elim (trivialPoint_not_nontrivial k (hz ▸ z.2))
    · obtain ⟨j, hj, he⟩ := Finset.mem_image.mp hp
      have hjk : j = k := trivialPoint_injective he
      subst j
      exact Finset.mem_range.mp hj
  · intro hk
    exact Finset.mem_insert_of_mem (Finset.mem_union_right _
      (Finset.mem_image.mpr ⟨k, Finset.mem_range.mpr hk, rfl⟩))

/-- Perturbing only the height leaves the entire pole-and-zero inventory unchanged. -/
theorem singularHeadAt_rounded (N J : ℕ) (T : ℝ)
    (herr : |T - separatedHeight J| ≤ heightClearance J / 2) :
    singularHeadAt N T = singularHeadAt N (separatedHeight J) := by
  unfold singularHeadAt
  rw [rounded_heightHead_eq J T herr]

/-- The certified half-gap perturbation is itself an admissible contour height. -/
theorem rounded_avoids (J : ℕ) (T : ℝ)
    (herr : |T - separatedHeight J| ≤ heightClearance J / 2) (z : ZeroPoint) :
    height z ≠ T := by
  intro he
  have hc := rounded_height_clearance J T herr z
  rw [he, sub_self, abs_zero] at hc
  linarith [heightClearance_pos J]

end
end GRWTSK.RiemannHypothesis.HeightIndexedDivisor
```
