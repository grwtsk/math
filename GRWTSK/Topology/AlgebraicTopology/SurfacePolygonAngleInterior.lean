/-
Copyright (c) 2026 R.A. Jacob Martone. Released under MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#935. Parent PR #901 exact head
e08b2826f99c21c62b51b07a8b383109f424cd60.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress
import Mathlib.Topology.Instances.AddCircle.Real
import Mathlib.Tactic

/-!
# Fundamental-domain separation of original polygon edge interiors

The angular map from #889 is NOT yet known globally bijective. This
module proves its smaller source-specific injectivity statement on
the disjoint half-open original directed edges. It uses the actual
AddCircle fundamental-domain theorem, with no false R-real period
equality. The remaining t=1 endpoint identifications, global quotient
bijection and perimeter-to-circle Homeomorph remain OPEN.

This is a source draft only. Lean/Lake and F06 qualification NOT RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAngleInterior

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress

/-- Distinct original handles retain distinct cyclic ordinal positions. -/
theorem handleOrdinal_injective (k : ℕ) :
    Function.Injective (handleOrdinal k) := by
  intro a b hab
  cases a with
  | inl i =>
      cases b with
      | inl j =>
          apply congrArg Sum.inl
          apply Fin.ext
          simpa [handleOrdinal] using hab
      | inr j =>
          have hi := i.isLt
          simp only [handleOrdinal] at hab
          omega
  | inr i =>
      cases b with
      | inl j =>
          have hj := j.isLt
          simp only [handleOrdinal] at hab
          omega
      | inr j =>
          have he : i.val = j.val := by
            simp only [handleOrdinal] at hab
            omega
          exact congrArg Sum.inr (Fin.ext he)

/-- The original directed side ordinal is injective on all 4g side IDs. -/
theorem directedSideOrdinal_injective (k : ℕ) :
    Function.Injective (directedSideOrdinal k) := by
  intro c d h
  rcases c with ⟨hc, ic⟩
  rcases d with ⟨hd, id⟩
  have hic := ic.isLt
  have hid := id.isLt
  have hhandles : handleOrdinal k hc = handleOrdinal k hd := by
    unfold directedSideOrdinal at h
    omega
  have hside : ic.val = id.val := by
    unfold directedSideOrdinal at h
    omega
  have hh := handleOrdinal_injective k hhandles
  subst hd
  have hi : ic = id := Fin.ext hside
  subst id
  rfl

/-- Every original half-open directed edge parameter is inside the
true [0,N) fundamental domain of the additive circle of period N. -/
theorem interior_real_angle_mem_Ico (k : ℕ)
    (c : PolygonCorner k) (t : unitInterval)
    (ht : (t : ℝ) < 1) :
    ((directedSideOrdinal k c : ℝ) + (t : ℝ)) ∈
      Set.Ico (0 : ℝ) (angularPeriod k) := by
  have hordinal := directedSideOrdinal_bound k c
  have hnonneg : (0 : ℝ) ≤ (t : ℝ) := t.property.1
  have hordinal' : (directedSideOrdinal k c : ℝ) <
      (4 * (k + 2) : ℕ) := by exact_mod_cast hordinal
  constructor
  · positivity
  · unfold angularPeriod
    have hstep : directedSideOrdinal k c + 1 ≤ 4 * (k + 2) := by omega
    have hstep' : (directedSideOrdinal k c : ℝ) + 1 ≤
        (4 * (k + 2) : ℕ) := by exact_mod_cast hstep
    linarith

/-- Genuine AddCircle equivalence on two strictly interior source
addresses implies equality of their REAL representatives, not only
their residue classes. -/
theorem interior_angle_real_eq (k : ℕ)
    (c d : PolygonCorner k) (t u : unitInterval)
    (ht : (t : ℝ) < 1) (hu : (u : ℝ) < 1)
    (heq : sourceAngularAddress k (c, t) =
      sourceAngularAddress k (d, u)) :
    (directedSideOrdinal k c : ℝ) + t =
      (directedSideOrdinal k d : ℝ) + u := by
  letI : Fact (0 < angularPeriod k) := ⟨angularPeriod_pos k⟩
  have hc := interior_real_angle_mem_Ico k c t ht
  have hd := interior_real_angle_mem_Ico k d u hu
  exact (AddCircle.coe_eq_coe_iff_of_mem_Ico hc hd).mp heq

/-- SOURCE INTERIOR INJECTIVITY. No two distinct original directed
side interiors are accidentally identified by the angle formula.
The sole possible equality within t<1 is the same side and same t. -/
theorem interior_sourceAngle_injective (k : ℕ)
    (c d : PolygonCorner k) (t u : unitInterval)
    (ht : (t : ℝ) < 1) (hu : (u : ℝ) < 1)
    (heq : sourceAngularAddress k (c, t) =
      sourceAngularAddress k (d, u)) :
    c = d ∧ t = u := by
  have hr := interior_angle_real_eq k c d t u ht hu heq
  have hnonneg_t := t.property.1
  have hnonneg_u := u.property.1
  have hc : directedSideOrdinal k c = directedSideOrdinal k d := by
    have hdiff : (directedSideOrdinal k c : ℝ) <
        (directedSideOrdinal k d : ℝ) + 1 := by linarith
    have hdiff' : (directedSideOrdinal k d : ℝ) <
        (directedSideOrdinal k c : ℝ) + 1 := by linarith
    have hd_nat : directedSideOrdinal k c < directedSideOrdinal k d + 1 := by
      exact_mod_cast hdiff
    have hd_nat' : directedSideOrdinal k d < directedSideOrdinal k c + 1 := by
      exact_mod_cast hdiff'
    omega
  have hsource := directedSideOrdinal_injective k hc
  constructor
  · exact hsource
  · subst d
    have htueq : (t : ℝ) = u := by
      have hreal : (directedSideOrdinal k c : ℝ) + t =
          (directedSideOrdinal k c : ℝ) + u := hr
      linarith
    exact Subtype.ext htueq

/-- The quotient perimeter angle retains the same strict source
interior separation, by consuming #889's actual quotient equation. -/
theorem perimeterAngle_interior_separation (k : ℕ)
    (c d : PolygonCorner k) (t u : unitInterval)
    (ht : (t : ℝ) < 1) (hu : (u : ℝ) < 1)
    (heq : perimeterAngle k (perimeterProjection k (c, t)) =
      perimeterAngle k (perimeterProjection k (d, u))) :
    c = d ∧ t = u := by
  simp only [perimeterAngle_projection] at heq
  exact interior_sourceAngle_injective k c d t u ht hu heq

/-- Hostile positive control: an endpoint 1 and its NEXT side's
endpoint 0 have equal angular addresses, so the half-open hypothesis
is essential and must not be silently dropped. -/
theorem endpoint_alias_is_real (k : ℕ) (h : Handle k) :
    sourceAngularAddress k ((h, 0), 1) =
      sourceAngularAddress k ((h, 1), 0) :=
  sourceAngularAddress_of_next_ordinal k _ _
    (localSideOrdinal_seam01 k h)

/-- The first two different original sides nevertheless have different
true circle coordinates at their startpoints. -/
theorem distinct_source_corners_remain_distinct (k : ℕ) :
    sourceAngularAddress k ((firstHandle k, 0), 0) ≠
      sourceAngularAddress k ((firstHandle k, 1), 0) := by
  simpa only [← perimeterAngle_projection] using
    distinct_first_corner_angles k

/-- Genus-two source includes eight directed intervals; the
source interior separation theorem is uniform, not a bounded test. -/
theorem genusTwo_directed_count :
    Fintype.card (PolygonCorner 0) = 8 := by
  simpa using directed_edge_source_count 0

/-- Genus-three source includes twelve directed intervals. -/
theorem genusThree_directed_count :
    Fintype.card (PolygonCorner 1) = 12 := by
  simpa using directed_edge_source_count 1

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAngleInterior
