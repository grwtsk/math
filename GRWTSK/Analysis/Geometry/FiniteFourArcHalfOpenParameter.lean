/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing GRWTSK and Mathlib source retain their upstream licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcNonintersection
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Global unique half-open parameterization of four source Bezier arcs

For each genuine arc retain its real parameter 0 <= t < 1.
This includes every geometric starting vertex exactly once while
excluding the duplicated terminal endpoint of each adjacent patch.
The map to the true Bezier point is injective across this complete
finite family, and its image covers every closed-interval arc value.

This is a canonical *set-theoretic* parameterization of the closed
source. The disjoint union of half-open intervals does not carry the
circle quotient topology here; continuity, a topological embedding
and Jordan separation require a separate quotient/gluing theorem.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

/-- Choose exactly one representation for each geometric seam. -/
structure HalfOpenArcTime where
  arc : Fin 4
  time : ℝ
  time_nonneg : 0 ≤ time
  time_lt_one : time < 1

namespace HalfOpenArcTime

/-- Equality needs only the two data fields; the interval proofs are
proof-irrelevant. -/
theorem ext {a b : HalfOpenArcTime}
    (harc : a.arc = b.arc) (htime : a.time = b.time) : a = b := by
  cases a
  cases b
  cases harc
  cases htime
  rfl

/-- Actual polynomial source evaluation at its canonical half-open
geometric parameter, not an invented trace or fitted drawing. -/
def point (a : HalfOpenArcTime) : Plane :=
  (patch a.arc).eval a.time

theorem point_zero (a : HalfOpenArcTime) (h : a.time = 0) :
    a.point = vertex a.arc := by
  simp [point, h, patch, GRWTSK.Analysis.Geometry.QuadraticBezierContact.Segment.eval_zero]

/-- Every nonzero canonical time lies in the genuine open source
arc and is excluded from all four seam vertices. -/
theorem time_pos_of_ne_zero (a : HalfOpenArcTime)
    (h : a.time ≠ 0) : 0 < a.time := by
  rcases lt_or_eq_of_le a.time_nonneg with hp | heq
  · exact hp
  · exact False.elim (h heq.symm)

theorem point_ne_vertex_of_time_ne_zero (a : HalfOpenArcTime)
    (h : a.time ≠ 0) (j : Fin 4) :
    a.point ≠ vertex j :=
  patch_interior_ne_vertex a.arc j
    (a.time_pos_of_ne_zero h) a.time_lt_one

/-- No two canonical half-open geometric parameters represent the
same point, including at all four original source seams. -/
theorem point_injective : Function.Injective point := by
  intro a b hab
  have hi : a.arc = b.arc := by
    by_cases ha : a.time = 0
    · have hva : a.point = vertex a.arc := a.point_zero ha
      by_cases hb : b.time = 0
      · have hvb : b.point = vertex b.arc := b.point_zero hb
        exact vertex_injective (hva.symm.trans (hab.trans hvb))
      · have hn := b.point_ne_vertex_of_time_ne_zero hb a.arc
        exact False.elim (hn (hab.symm.trans hva))
    · by_cases hb : b.time = 0
      · have hvb : b.point = vertex b.arc := b.point_zero hb
        have hn := a.point_ne_vertex_of_time_ne_zero ha b.arc
        exact False.elim (hn (hab.trans hvb))
      · by_contra hne
        have hn := distinct_patch_interiors_disjoint
          a.arc b.arc hne (a.time_pos_of_ne_zero ha) a.time_lt_one
          (b.time_pos_of_ne_zero hb) b.time_lt_one
        exact hn hab
  have ht : a.time = b.time := by
    have heq : (patch a.arc).eval a.time =
        (patch a.arc).eval b.time := by
      simpa [point, hi] using hab
    exact patch_injective_nonnegative a.arc
      a.time_nonneg b.time_nonneg heq
  exact HalfOpenArcTime.ext hi ht

end HalfOpenArcTime

/-- Every exact original arc point for 0 <= t <= 1 belongs to the
canonical half-open image: t=1 is represented by next arc at t=0. -/
theorem closed_patch_point_has_halfOpen_representation
    (i : Fin 4) {t : ℝ}
    (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    ∃ a : HalfOpenArcTime, a.point = (patch i).eval t := by
  by_cases hlast : t = 1
  · refine ⟨⟨next i, 0, le_refl 0, by norm_num⟩, ?_⟩
    change (patch (next i)).eval 0 = (patch i).eval t
    rw [hlast]
    exact (endpoint_join i).symm
  · have hstrict : t < 1 := lt_of_le_of_ne ht1 hlast
    exact ⟨⟨i, t, ht0, hstrict⟩, rfl⟩

/-- The canonical parameterization is injective and exhausts the
entire finite family of real closed-interval patch evaluations.
No quotient topology is inferred from this set-level statement. -/
theorem halfOpen_geometry_certificate :
    Function.Injective HalfOpenArcTime.point ∧
      (∀ i : Fin 4, ∀ t : ℝ,
        0 ≤ t → t ≤ 1 →
        ∃ a : HalfOpenArcTime,
          a.point = (patch i).eval t) := by
  exact ⟨HalfOpenArcTime.point_injective, fun i t ht0 ht1 =>
    closed_patch_point_has_halfOpen_representation i ht0 ht1⟩

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
