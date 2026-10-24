# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalCover

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8448980c5c8be5b8a0bbfddcb687e6d2f8ee535d` · SHA-256 `a8beec9336d5442b583b08656794019b250393cd7ea241503029edb86e3487ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPatchCertificate
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact rational subdivision of source-bearing analytic patches

The finite tree below checks GEOMETRIC COVERAGE only. Each leaf selects an actual
analytic disk certificate for the same exact function F. The rational guard uses
an L1 coordinate envelope, hence is sufficient but not necessary for Euclidean
disk inclusion. A rejection is not a proof that the source has a zero.

Both children of a split contain the seam. Every split lies strictly inside its
parent, all rectangles are ordered, and every leaf index is in Fin count. There
is no empty-leaf constructor, parser, external oracle, or mutable execution state.
A proof that `check = true` is still required; a Python/JSON result cannot fill it.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalPatchCover

structure Rectangle where
  left : ℚ
  right : ℚ
  bottom : ℚ
  top : ℚ
  deriving DecidableEq, Repr

namespace Rectangle

def WellFormed (b : Rectangle) : Prop := b.left ≤ b.right ∧ b.bottom ≤ b.top

instance (b : Rectangle) : Decidable b.WellFormed :=
  inferInstanceAs (Decidable (b.left ≤ b.right ∧ b.bottom ≤ b.top))

def west (b : Rectangle) (cut : ℚ) : Rectangle := { b with right := cut }
def east (b : Rectangle) (cut : ℚ) : Rectangle := { b with left := cut }
def south (b : Rectangle) (cut : ℚ) : Rectangle := { b with top := cut }
def north (b : Rectangle) (cut : ℚ) : Rectangle := { b with bottom := cut }

end Rectangle

structure Disk where
  re : ℚ
  im : ℚ
  radius : ℚ
  deriving DecidableEq, Repr

namespace Disk

def realReach (d : Disk) (b : Rectangle) : ℚ :=
  max |b.left - d.re| |b.right - d.re|

def imagReach (d : Disk) (b : Rectangle) : ℚ :=
  max |b.bottom - d.im| |b.top - d.im|

/-- A conservative, square-root-free enclosure of ALL points of the rectangle. -/
def ContainsBox (d : Disk) (b : Rectangle) : Prop :=
  0 ≤ d.radius ∧ d.realReach b + d.imagReach b ≤ d.radius

instance (d : Disk) (b : Rectangle) : Decidable (d.ContainsBox b) :=
  inferInstanceAs
    (Decidable (0 ≤ d.radius ∧ d.realReach b + d.imagReach b ≤ d.radius))

end Disk

/-- A finite geometric proof plan. Analytic witnesses are separate and source-indexed. -/
inductive Tree (count : ℕ) where
  | leaf (index : Fin count)
  | splitReal (cut : ℚ) (lower upper : Tree count)
  | splitImag (cut : ℚ) (lower upper : Tree count)
  deriving Repr

namespace Tree

/-- Only finite rational comparisons. There is no call to zeta, log, exp or a norm. -/
def check {count : ℕ} (disks : Fin count → Disk) : Tree count → Rectangle → Bool
  | .leaf i, b => decide (b.WellFormed ∧ (disks i).ContainsBox b)
  | .splitReal cut l r, b =>
      decide (b.WellFormed ∧ b.left < cut ∧ cut < b.right) &&
        (check disks l (b.west cut) && check disks r (b.east cut))
  | .splitImag cut l r, b =>
      decide (b.WellFormed ∧ b.bottom < cut ∧ cut < b.top) &&
        (check disks l (b.south cut) && check disks r (b.north cut))

def leafCount {count : ℕ} : Tree count → ℕ
  | .leaf _ => 1
  | .splitReal _ l r => l.leafCount + r.leafCount
  | .splitImag _ l r => l.leafCount + r.leafCount

end Tree

noncomputable section

/-- The rational bounds denote a CLOSED rectangle in the actual complex plane. -/
def Rectangle.carrier (b : Rectangle) : Set ℂ :=
  {z | (b.left : ℝ) ≤ z.re ∧ z.re ≤ (b.right : ℝ) ∧
    (b.bottom : ℝ) ≤ z.im ∧ z.im ≤ (b.top : ℝ)}

def Disk.center (d : Disk) : ℂ := ⟨(d.re : ℝ), (d.im : ℝ)⟩
def Disk.carrier (d : Disk) : Set ℂ := Metric.closedBall d.center (d.radius : ℝ)

lemma Rectangle.carrier_nonempty (b : Rectangle) (hb : b.WellFormed) :
    b.carrier.Nonempty := by
  refine ⟨⟨(b.left : ℝ), (b.bottom : ℝ)⟩, le_rfl, ?_, le_rfl, ?_⟩
  · exact_mod_cast hb.1
  · exact_mod_cast hb.2

/-- Endpoint control of one real coordinate controls every point between them. -/
lemma abs_sub_le_endpoint_max {lo hi x c : ℝ} (hlo : lo ≤ x) (hhi : x ≤ hi) :
    |x - c| ≤ max |lo - c| |hi - c| := by
  apply abs_le.mpr
  constructor
  · have h := neg_abs_le (lo - c)
    have hm : |lo - c| ≤ max |lo - c| |hi - c| := le_max_left _ _
    linarith
  · have h := le_abs_self (hi - c)
    have hm : |hi - c| ≤ max |lo - c| |hi - c| := le_max_right _ _
    linarith

/-- Analytic-free soundness of the exact rational rectangle-to-disk guard. -/
theorem Disk.containsBox_sound (d : Disk) (b : Rectangle) (h : d.ContainsBox b) :
    b.carrier ⊆ d.carrier := by
  intro z hz
  have hxl : |b.left - d.re| ≤ d.realReach b := le_max_left _ _
  have hxr : |b.right - d.re| ≤ d.realReach b := le_max_right _ _
  have hyb : |b.bottom - d.im| ≤ d.imagReach b := le_max_left _ _
  have hyt : |b.top - d.im| ≤ d.imagReach b := le_max_right _ _
  have hxl' : |(b.left : ℝ) - (d.re : ℝ)| ≤ (d.realReach b : ℝ) := by
    exact_mod_cast hxl
  have hxr' : |(b.right : ℝ) - (d.re : ℝ)| ≤ (d.realReach b : ℝ) := by
    exact_mod_cast hxr
  have hyb' : |(b.bottom : ℝ) - (d.im : ℝ)| ≤ (d.imagReach b : ℝ) := by
    exact_mod_cast hyb
  have hyt' : |(b.top : ℝ) - (d.im : ℝ)| ≤ (d.imagReach b : ℝ) := by
    exact_mod_cast hyt
  have hx : |z.re - (d.re : ℝ)| ≤ (d.realReach b : ℝ) :=
    (abs_sub_le_endpoint_max hz.1 hz.2.1).trans (max_le hxl' hxr')
  have hy : |z.im - (d.im : ℝ)| ≤ (d.imagReach b : ℝ) :=
    (abs_sub_le_endpoint_max hz.2.2.1 hz.2.2.2).trans (max_le hyb' hyt')
  have hsum : (d.realReach b : ℝ) + (d.imagReach b : ℝ) ≤ (d.radius : ℝ) := by
    exact_mod_cast h.2
  change dist z d.center ≤ (d.radius : ℝ)
  rw [dist_eq_norm]
  exact (Complex.norm_le_abs_re_add_abs_im (z - d.center)).trans
    (by simpa only [Complex.sub_re, Complex.sub_im, Disk.center] using
      (add_le_add hx hy).trans hsum)

/-- The interior seam is present on BOTH sides; no area-only coverage argument. -/
theorem Rectangle.west_east_union (b : Rectangle) {cut : ℚ}
    (hc : b.left ≤ cut ∧ cut ≤ b.right) :
    (b.west cut).carrier ∪ (b.east cut).carrier = b.carrier := by
  have hl : (b.left : ℝ) ≤ (cut : ℝ) := by exact_mod_cast hc.1
  have hr : (cut : ℝ) ≤ (b.right : ℝ) := by exact_mod_cast hc.2
  ext z
  constructor
  · rintro (hz | hz)
    · exact ⟨hz.1, hz.2.1.trans hr, hz.2.2⟩
    · exact ⟨hl.trans hz.1, hz.2.1, hz.2.2⟩
  · intro hz
    rcases le_total z.re (cut : ℝ) with h | h
    · exact Or.inl ⟨hz.1, h, hz.2.2⟩
    · exact Or.inr ⟨h, hz.2.1, hz.2.2⟩

theorem Rectangle.south_north_union (b : Rectangle) {cut : ℚ}
    (hc : b.bottom ≤ cut ∧ cut ≤ b.top) :
    (b.south cut).carrier ∪ (b.north cut).carrier = b.carrier := by
  have hl : (b.bottom : ℝ) ≤ (cut : ℝ) := by exact_mod_cast hc.1
  have hr : (cut : ℝ) ≤ (b.top : ℝ) := by exact_mod_cast hc.2
  ext z
  constructor
  · rintro (hz | hz)
    · exact ⟨hz.1, hz.2.1, hz.2.2.1, hz.2.2.2.trans hr⟩
    · exact ⟨hz.1, hz.2.1, hl.trans hz.2.2.1, hz.2.2.2⟩
  · intro hz
    rcases le_total z.im (cut : ℝ) with h | h
    · exact Or.inl ⟨hz.1, hz.2.1, hz.2.2.1, h⟩
    · exact Or.inr ⟨hz.1, hz.2.1, h, hz.2.2.2⟩

namespace Tree

/-- An inverted target cannot be accepted vacuously. -/
theorem check_wellFormed {count : ℕ} (disks : Fin count → Disk)
    (tree : Tree count) (b : Rectangle) (h : tree.check disks b = true) :
    b.WellFormed := by
  cases tree with
  | leaf i =>
      have hh : b.WellFormed ∧ (disks i).ContainsBox b := by
        simpa only [check, decide_eq_true_eq] using h
      exact hh.1
  | splitReal cut l r =>
      have hh : (b.WellFormed ∧ b.left < cut ∧ cut < b.right) ∧
          (l.check disks (b.west cut) = true ∧ r.check disks (b.east cut) = true) := by
        simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using h
      exact hh.1.1
  | splitImag cut l r =>
      have hh : (b.WellFormed ∧ b.bottom < cut ∧ cut < b.top) ∧
          (l.check disks (b.south cut) = true ∧ r.check disks (b.north cut) = true) := by
        simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using h
      exact hh.1.1

/-- Each accepted tree supplies actual covering membership at EVERY target point. -/
theorem check_covers {count : ℕ} (disks : Fin count → Disk) (tree : Tree count) :
    ∀ b : Rectangle, tree.check disks b = true →
      ∀ z ∈ b.carrier, ∃ i : Fin count, z ∈ (disks i).carrier := by
  induction tree with
  | leaf i =>
      intro b h z hz
      have hh : b.WellFormed ∧ (disks i).ContainsBox b := by
        simpa only [check, decide_eq_true_eq] using h
      exact ⟨i, (disks i).containsBox_sound b hh.2 hz⟩
  | splitReal cut l r ihl ihr =>
      intro b h z hz
      have hh : (b.WellFormed ∧ b.left < cut ∧ cut < b.right) ∧
          (l.check disks (b.west cut) = true ∧ r.check disks (b.east cut) = true) := by
        simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using h
      rcases le_total z.re (cut : ℝ) with hc | hc
      · exact ihl (b.west cut) hh.2.1 z ⟨hz.1, hc, hz.2.2⟩
      · exact ihr (b.east cut) hh.2.2 z ⟨hc, hz.2.1, hz.2.2⟩
  | splitImag cut l r ihl ihr =>
      intro b h z hz
      have hh : (b.WellFormed ∧ b.bottom < cut ∧ cut < b.top) ∧
          (l.check disks (b.south cut) = true ∧ r.check disks (b.north cut) = true) := by
        simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using h
      rcases le_total z.im (cut : ℝ) with hc | hc
      · exact ihl (b.south cut) hh.2.1 z ⟨hz.1, hz.2.1, hz.2.2.1, hc⟩
      · exact ihr (b.north cut) hh.2.2 z ⟨hz.1, hz.2.1, hc, hz.2.2.2⟩

/-- A successful nonempty rectangle cover must have an inhabited disk family. -/
theorem count_pos_of_check {count : ℕ} (disks : Fin count → Disk)
    (tree : Tree count) (b : Rectangle) (h : tree.check disks b = true) : 0 < count := by
  obtain ⟨z, hz⟩ := b.carrier_nonempty (tree.check_wellFormed disks b h)
  obtain ⟨i, _⟩ := tree.check_covers disks b h z hz
  exact lt_of_le_of_lt (Nat.zero_le i.val) i.isLt

/-- Geometry becomes an analytic cover ONLY with genuine patches for the same F. -/
def toFiniteVariationCover {count : ℕ} {F : ℂ → ℂ}
    (disks : Fin count → Disk)
    (patches : ∀ i, SampleVariationPatch F (disks i).carrier)
    (tree : Tree count) (b : Rectangle) (h : tree.check disks b = true) :
    FiniteVariationCover F b.carrier where
  count := count
  region := fun i => (disks i).carrier
  patch := patches
  covers := tree.check_covers disks b h

/-- A downstream shell fragment may consume the cover only with proved inclusion.
The exact function and the analytic leaf certificates are unchanged. -/
def toTargetCover {count : ℕ} {F : ℂ → ℂ} {U : Set ℂ}
    (disks : Fin count → Disk)
    (patches : ∀ i, SampleVariationPatch F (disks i).carrier)
    (tree : Tree count) (b : Rectangle) (h : tree.check disks b = true)
    (hU : U ⊆ b.carrier) : FiniteVariationCover F U where
  count := count
  region := fun i => (disks i).carrier
  patch := patches
  covers := fun z hz => tree.check_covers disks b h z (hU hz)

/-- Even one omitted point disproves acceptance of the proposed geometric tree. -/
theorem not_check_of_uncovered {count : ℕ} (disks : Fin count → Disk)
    (tree : Tree count) (b : Rectangle) {z : ℂ}
    (hz : z ∈ b.carrier) (hmiss : ∀ i, z ∉ (disks i).carrier) :
    tree.check disks b ≠ true := by
  intro h
  obtain ⟨i, hi⟩ := tree.check_covers disks b h z hz
  exact hmiss i hi

/-- Valid geometry cannot hide an actual source zero in any leaf or seam. -/
theorem not_check_of_source_zero {count : ℕ} {F : ℂ → ℂ}
    (disks : Fin count → Disk)
    (patches : ∀ i, SampleVariationPatch F (disks i).carrier)
    (tree : Tree count) (b : Rectangle) {z : ℂ}
    (hz : z ∈ b.carrier) (hzero : F z = 0) : tree.check disks b ≠ true := by
  intro h
  exact (tree.toFiniteVariationCover disks patches b h).nonzero hz hzero

end Tree
end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalPatchCover
```
