/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.TypedEllipsoidAtlas
import Mathlib.Analysis.Convex.Combination
import Mathlib.Analysis.Convex.Segment
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Opposite ellipsoid views of one finite four-corner source

The exact finite catalog is `{−1,1} × {−1,1}`. The geometric source is its
real convex hull, not the finite catalog itself: a positive-dimensional disk
cannot be contained in four points. We prove the hull is `[-1,1] × [-1,1]`.
The quadratic form `x²+y²` at level one is inscribed in that hull; at level two
it circumscribes the same hull. The shared representation does not identify
the constructions, levels, certificates, or residual sectors.

These are John-style and Loewner-style *containment* witnesses only. We use
the atlas construction tags with radius-squared normalization, and supply
positive definiteness and containment rather than assume them from the tags.
Neither witness asserts volume optimality. Existence/uniqueness/optimality of
John or Loewner ellipsoids, polarity and arithmetic transfers remain unproved.
This is a local elementary construction, not an imported paper theorem.

Consumer: the existing `EllipsoidView` source/carrier return interface now has
two concrete views of exactly the same finite-generated source. In particular,
the inscribed view must pay its omitted corners and the circumscribed view must
retain its added cap. Explicit points refute reversal of either containment.

Source interface: TypedEllipsoidAtlas.lean, original commit
65f236224b9e810ed62047c67db0b2dd546bdf10,
blob ca2acb9682b919b62be54aa41b2aa66fa59e66c5 (math#1496).
SOURCE_PROOF_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN /
TRANSITIVE AXIOM AUDIT NOT_RUN / EXPECTED-INTERFACE CHECK NOT_RUN.
-/

namespace GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.FiniteSquareEllipsoidViews

open Set
open GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.TypedEllipsoidAtlas

/-- The exact finite catalog; its convex hull is the comparison source. -/
def corners : Set (ℝ × ℝ) :=
  ({-1, 1} : Set ℝ) ×ˢ ({-1, 1} : Set ℝ)

theorem corners_finite : corners.Finite :=
  (Set.finite_pair (-1 : ℝ) 1).prod (Set.finite_pair (-1 : ℝ) 1)

def source : Set (ℝ × ℝ) := convexHull ℝ corners

theorem source_eq_box :
    source = Icc (-1 : ℝ) 1 ×ˢ Icc (-1 : ℝ) 1 := by
  unfold source corners
  simp only [convexHull_prod, convexHull_pair,
    segment_eq_Icc (by norm_num : (-1 : ℝ) ≤ 1)]

theorem mem_source_iff (x : ℝ × ℝ) :
    x ∈ source ↔ (-1 ≤ x.1 ∧ x.1 ≤ 1) ∧ (-1 ≤ x.2 ∧ x.2 ≤ 1) := by
  rw [source_eq_box]
  rfl

/-- Both constructions use this actual quadratic form. -/
noncomputable def squareForm : QuadraticForm ℝ (ℝ × ℝ) :=
  (QuadraticMap.sq (R := ℝ)).comp (LinearMap.fst ℝ ℝ ℝ) +
    (QuadraticMap.sq (R := ℝ)).comp (LinearMap.snd ℝ ℝ ℝ)

theorem squareForm_apply (x : ℝ × ℝ) :
    squareForm x = x.1 ^ 2 + x.2 ^ 2 := by
  change x.1 * x.1 + x.2 * x.2 = _
  ring

theorem squareForm_posDef : squareForm.PosDef := by
  intro x hx
  rw [squareForm_apply]
  have hnonzero : x.1 ≠ 0 ∨ x.2 ≠ 0 := by
    by_contra h
    push_neg at h
    exact hx (Prod.ext h.1 h.2)
  rcases hnonzero with h | h
  · have := sq_pos_of_ne_zero h
    nlinarith [sq_nonneg x.2]
  · have := sq_pos_of_ne_zero h
    nlinarith [sq_nonneg x.1]

/-- The radius is data, not a construction-identifying representation tag. -/
noncomputable def disk (level : ℝ) (hlevel : 0 ≤ level) :
    QuadraticEllipsoid (ℝ × ℝ) where
  center := 0
  form := squareForm
  radiusSq := level
  radiusSq_nonnegative := hlevel
  form_nonnegative x := by
    rw [squareForm_apply]
    exact add_nonneg (sq_nonneg _) (sq_nonneg _)

noncomputable def inner : QuadraticEllipsoid (ℝ × ℝ) := disk 1 (by norm_num)
noncomputable def outer : QuadraticEllipsoid (ℝ × ℝ) := disk 2 (by norm_num)

theorem mem_disk_iff (level : ℝ) (hlevel : 0 ≤ level) (x : ℝ × ℝ) :
    x ∈ (disk level hlevel).carrier ↔ x.1 ^ 2 + x.2 ^ 2 ≤ level := by
  simp [QuadraticEllipsoid.carrier, disk, squareForm_apply]

theorem inner_full : inner.IsFullDimensional :=
  ⟨squareForm_posDef, by norm_num [inner, disk]⟩

theorem outer_full : outer.IsFullDimensional :=
  ⟨squareForm_posDef, by norm_num [outer, disk]⟩

/-- John-style direction: every unit-disk point belongs to the source hull. -/
theorem inner_subset_source : inner.carrier ⊆ source := by
  intro x hx
  have h : x.1 ^ 2 + x.2 ^ 2 ≤ 1 := (mem_disk_iff 1 _ x).mp hx
  rw [mem_source_iff]
  constructor <;> constructor <;>
    nlinarith [sq_nonneg x.1, sq_nonneg x.2,
      sq_nonneg (x.1 - 1), sq_nonneg (x.1 + 1),
      sq_nonneg (x.2 - 1), sq_nonneg (x.2 + 1)]

/-- Loewner-style direction: every source-hull point belongs to the outer disk. -/
theorem source_subset_outer : source ⊆ outer.carrier := by
  intro x hx
  obtain ⟨⟨ha, hb⟩, ⟨hc, hd⟩⟩ := (mem_source_iff x).mp hx
  apply (mem_disk_iff 2 _ x).mpr
  have hfirst : x.1 ^ 2 ≤ 1 := by nlinarith [mul_nonneg (by linarith : 0 ≤ 1 - x.1) (by linarith : 0 ≤ 1 + x.1)]
  have hsecond : x.2 ^ 2 ≤ 1 := by nlinarith [mul_nonneg (by linarith : 0 ≤ 1 - x.2) (by linarith : 0 ≤ 1 + x.2)]
  linarith

/-- Distinct witness types explicitly restrict their scope to containment. -/
structure JohnStyleContainmentWitness where
  full : inner.IsFullDimensional
  containment : inner.carrier ⊆ source

structure LoewnerStyleContainmentWitness where
  full : outer.IsFullDimensional
  containment : source ⊆ outer.carrier

def sourceId : String := "four-corners:{-1,1}x{-1,1}:real-convex-hull:v1"

noncomputable def johnStyle : EllipsoidView (ℝ × ℝ) JohnStyleContainmentWitness where
  profile := { EllipsoidProfile.john with normalization := .radiusSquared }
  geometry := inner
  source := source
  relation := .inscribed inner_subset_source
  relation_compatible := rfl
  sourceId := sourceId
  constructionId := "unit-disk:john-style:containment-only:v1"
  witness := ⟨inner_full, inner_subset_source⟩

noncomputable def loewnerStyle : EllipsoidView (ℝ × ℝ) LoewnerStyleContainmentWitness where
  profile := { EllipsoidProfile.loewner with normalization := .radiusSquared }
  geometry := outer
  source := source
  relation := .circumscribed source_subset_outer
  relation_compatible := rfl
  sourceId := sourceId
  constructionId := "radius-squared-two:loewner-style:containment-only:v1"
  witness := ⟨outer_full, source_subset_outer⟩

/-- Exact source equality and identity do not merge construction identities. -/
theorem same_source_distinct_views :
    johnStyle.source = loewnerStyle.source ∧
    johnStyle.sourceId = loewnerStyle.sourceId ∧
    johnStyle.profile.representation = loewnerStyle.profile.representation ∧
    johnStyle.geometry.form = loewnerStyle.geometry.form ∧
    johnStyle.profile.construction ≠ loewnerStyle.profile.construction ∧
    johnStyle.constructionId ≠ loewnerStyle.constructionId := by
  refine ⟨rfl, rfl, rfl, rfl, ?_, ?_⟩ <;> decide

theorem opposite_relations :
    johnStyle.relation.kind = .inscribed ∧
    loewnerStyle.relation.kind = .circumscribed := ⟨rfl, rfl⟩

/-- Exact omitted and added sectors; neither reverse direction is free. -/
theorem residual_ledger :
    johnStyle.comparison.omittedSource = source \ inner.carrier ∧
    johnStyle.comparison.addedCarrier = ∅ ∧
    loewnerStyle.comparison.omittedSource = ∅ ∧
    loewnerStyle.comparison.addedCarrier = outer.carrier \ source :=
  ⟨rfl, rfl, rfl, rfl⟩

theorem omitted_corner : (1, 1) ∈ johnStyle.comparison.omittedSource := by
  change (1, 1) ∈ source \ inner.carrier
  constructor
  · rw [mem_source_iff]
    norm_num
  · rw [show inner = disk 1 (by norm_num) from rfl, mem_disk_iff]
    norm_num

theorem added_cap : ((7 / 5 : ℝ), 0) ∈ loewnerStyle.comparison.addedCarrier := by
  change ((7 / 5 : ℝ), 0) ∈ outer.carrier \ source
  constructor
  · rw [show outer = disk 2 (by norm_num) from rfl, mem_disk_iff]
    norm_num
  · rw [mem_source_iff]
    norm_num

theorem neither_containment_reverses :
    ¬ source ⊆ inner.carrier ∧ ¬ outer.carrier ⊆ source := by
  have hi : (1, 1) ∈ source \ inner.carrier := omitted_corner
  have ho : ((7 / 5 : ℝ), 0) ∈ outer.carrier \ source := added_cap
  exact ⟨fun h => hi.2 (h hi.1), fun h => ho.2 (h ho.1)⟩

/-- Consumer-facing sandwich, with source identity fixed throughout. -/
theorem source_sandwich :
    johnStyle.geometry.carrier ⊆ johnStyle.source ∧
    johnStyle.source = loewnerStyle.source ∧
    loewnerStyle.source ⊆ loewnerStyle.geometry.carrier :=
  ⟨inner_subset_source, rfl, source_subset_outer⟩

theorem inscribed_source_return :
    source ⊆ inner.carrier ∪ johnStyle.comparison.omittedSource :=
  johnStyle.source_return

theorem circumscribed_carrier_return :
    outer.carrier ⊆ source ∪ loewnerStyle.comparison.addedCarrier :=
  loewnerStyle.carrier_return

end GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.FiniteSquareEllipsoidViews
