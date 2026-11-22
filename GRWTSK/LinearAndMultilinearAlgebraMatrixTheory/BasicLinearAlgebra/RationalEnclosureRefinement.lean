/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalRealBounds
import Mathlib.Logic.Relation
import Mathlib.Tactic

/-!
# Synchronizing exact rational enclosures of one real source

Endpoint refinement is a geometric relation, not a source certificate. Two
independently sound enclosures can be intersected. Their intersection is sound,
and its diameter cannot increase. A finite sequence of such intersections is
sound at every stage. Arbitrarily narrow common enclosures identify a unique
real value only with the stated all-accuracy existence premise.

Consumers are signed Weil scalar/entry enclosures and exact arithmetic readouts.
Statistical agreement, graph cycles, and endpoint nesting alone do not supply
the `Encloses` hypotheses.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

def intersect (a b : Bounds) : Bounds := (max a.1 b.1, min a.2 b.2)

/-- `Refines a b` means that the interval `a` is contained in `b`. -/
def Refines (a b : Bounds) : Prop := b.1 ≤ a.1 ∧ a.2 ≤ b.2

def width (a : Bounds) : ℚ := a.2 - a.1

def midpoint (a : Bounds) : ℚ := (a.1 + a.2) / 2

theorem refines_refl (a : Bounds) : Refines a a := ⟨le_rfl, le_rfl⟩

theorem refines_trans {a b c : Bounds} (hab : Refines a b) (hbc : Refines b c) :
    Refines a c := ⟨hbc.1.trans hab.1, hab.2.trans hbc.2⟩

theorem refines_antisymm {a b : Bounds} (hab : Refines a b) (hba : Refines b a) :
    a = b := Prod.ext (le_antisymm hba.1 hab.1) (le_antisymm hab.2 hba.2)

theorem intersect_refines_left (a b : Bounds) : Refines (intersect a b) a :=
  ⟨le_max_left _ _, min_le_left _ _⟩

theorem intersect_refines_right (a b : Bounds) : Refines (intersect a b) b :=
  ⟨le_max_right _ _, min_le_right _ _⟩

theorem intersect_comm (a b : Bounds) : intersect a b = intersect b a := by
  simp [intersect, max_comm, min_comm]

theorem intersect_assoc (a b c : Bounds) :
    intersect (intersect a b) c = intersect a (intersect b c) := by
  simp [intersect, max_assoc, min_assoc]

theorem intersect_idem (a : Bounds) : intersect a a = a := by simp [intersect]

/-- Source identity is retained: both inputs enclose the same `x`. -/
theorem intersect_sound {a b : Bounds} {x : ℝ}
    (ha : Encloses a x) (hb : Encloses b x) : Encloses (intersect a b) x := by
  simp only [Encloses, intersect, Rat.cast_max, Rat.cast_min]
  exact ⟨max_le ha.1 hb.1, le_min ha.2 hb.2⟩

theorem encloses_width_nonneg {a : Bounds} {x : ℝ} (h : Encloses a x) :
    0 ≤ width a := by
  have hc : (a.1 : ℝ) ≤ (a.2 : ℝ) := h.1.trans h.2
  exact sub_nonneg.2 (Rat.cast_le.1 hc)

theorem width_le_of_refines {a b : Bounds} (h : Refines a b) : width a ≤ width b := by
  unfold width
  linarith [h.1, h.2]

theorem midpoint_error_le {a : Bounds} {x : ℝ} (h : Encloses a x) :
    |x - (midpoint a : ℝ)| ≤ (width a : ℝ) / 2 := by
  simp only [midpoint, width, Rat.cast_div, Rat.cast_add, Rat.cast_sub, Rat.cast_ofNat]
  rw [abs_le]
  constructor <;> linarith [h.1, h.2]

theorem common_values_distance_le {a : Bounds} {x y : ℝ}
    (hx : Encloses a x) (hy : Encloses a y) : |x - y| ≤ (width a : ℝ) := by
  simp only [width, Rat.cast_sub]
  rw [abs_le]
  constructor <;> linarith [hx.1, hx.2, hy.1, hy.2]

/-- A path of certified endpoint refinements only supplies endpoint refinement. -/
theorem refines_of_path {a b : Bounds}
    (h : Relation.ReflTransGen (fun u v : Bounds => Refines v u) a b) : Refines b a := by
  induction h with
  | refl => exact refines_refl _
  | tail h hab ih => exact refines_trans hab ih

/-- A finite synchronization step; the initial bound is retained even for `[]`. -/
def synchronize (initial : Bounds) (observations : List Bounds) : Bounds :=
  observations.foldl intersect initial

theorem synchronize_sound (observations : List Bounds) {initial : Bounds} {x : ℝ}
    (hinit : Encloses initial x) (hobs : ∀ a ∈ observations, Encloses a x) :
    Encloses (synchronize initial observations) x := by
  induction observations generalizing initial with
  | nil => exact hinit
  | cons a as ih =>
      apply ih (intersect_sound hinit (hobs a (by simp)))
      intro b hb
      exact hobs b (by simp [hb])

theorem synchronize_refines (observations : List Bounds) (initial : Bounds) :
    Refines (synchronize initial observations) initial := by
  induction observations generalizing initial with
  | nil => exact refines_refl _
  | cons a as ih =>
      exact refines_trans (ih (intersect initial a)) (intersect_refines_left initial a)

theorem synchronize_error_le (observations : List Bounds) {initial : Bounds} {x : ℝ}
    (hinit : Encloses initial x) (hobs : ∀ a ∈ observations, Encloses a x) :
    |x - (midpoint (synchronize initial observations) : ℝ)| ≤ (width initial : ℝ) / 2 := by
  have hsmall := width_le_of_refines (synchronize_refines observations initial)
  have hc : (width (synchronize initial observations) : ℝ) ≤ (width initial : ℝ) :=
    Rat.cast_le.2 hsmall
  exact (midpoint_error_le (synchronize_sound observations hinit hobs)).trans
    (div_le_div_of_nonneg_right hc (by norm_num))

/-- The universal precision premise cannot be replaced by a finite prefix. -/
theorem eq_of_arbitrarily_narrow_common_enclosures {x y : ℝ}
    (h : ∀ ε : ℝ, 0 < ε → ∃ a : Bounds,
      Encloses a x ∧ Encloses a y ∧ (width a : ℝ) < ε) : x = y := by
  by_contra hne
  have hp : 0 < |x - y| := abs_pos.2 (sub_ne_zero.2 hne)
  obtain ⟨a, hx, hy, hnarrow⟩ := h |x - y| hp
  exact (not_lt_of_ge (common_values_distance_le hx hy)) hnarrow

/-- A tighter interval can be false even when its parent is true. -/
theorem refinement_alone_is_not_a_source_certificate :
    Refines ((0 : ℚ), 0) ((0 : ℚ), 2) ∧
      Encloses ((0 : ℚ), 2) 1 ∧ ¬ Encloses ((0 : ℚ), 0) 1 := by
  norm_num [Refines, Encloses]

/-- Inconsistent observations cannot both be enclosures of the same source. -/
theorem disjoint_enclosures_impossible {a b : Bounds} {x : ℝ}
    (ha : Encloses a x) (hb : Encloses b x) (hdisjoint : a.2 < b.1) : False := by
  have hc : (a.2 : ℝ) < (b.1 : ℝ) := Rat.cast_lt.2 hdisjoint
  linarith [ha.2, hb.1]

end GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
