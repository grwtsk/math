# Complete source: GRWTSK.Topology.GeneralTopology.FiniteHoleGeometry.Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e42d77efa6637ede5812843ebd8e42f0dd0d094` · SHA-256 `192fb033f445290d7c8b4a5b060f99ba416d83f1639c0c3d7bab3cbea0c3733b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RectangleHoleConfiguration.Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RectangleHoleConfiguration.Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba","mathematical_subject":"Topology.GeneralTopology","original_sha256":"04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ComplexAnalysis/FiniteHoleGeometry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.ComplexAnalysis.RectangleContour
public import Mathlib.Tactic.SetNotationForOrder
import Mathlib.Tactic

/-!
# Finite circular holes inside a complex rectangle

This module is the coefficient-free geometric substrate for finite-hole
contour excision.  A configuration records only positive radii, containment
strictly inside an axis-aligned rectangle, and pairwise disjoint closed balls.
It contains no integrand and no contour or residue identity.

The pinned mathlib version has circle integrals and raw rectangular-edge
integrals, but no cycle integral, winding-number API, or general analytic
residue object.  Accordingly the incubation strategy is rectangle-plus-circles
first; a cycle-general reformulation is deferred to upstream API review.
-/


namespace GRWTSK.Topology.GeneralTopology.RectangleHoleConfiguration.Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Set Complex Metric

/-- Open axis-aligned rectangle between two complex corners. Endpoint order is
irrelevant because each coordinate interval uses `min` and `max`. -/
def openRectangle (z w : ℂ) : Set ℂ :=
  Set.Ioo (min z.re w.re) (max z.re w.re) ×ℂ
    Set.Ioo (min z.im w.im) (max z.im w.im)

theorem isOpen_openRectangle (z w : ℂ) :
    IsOpen (openRectangle z w) := by
  exact isOpen_Ioo.reProdIm isOpen_Ioo

/-- A coordinate-margin criterion placing a closed disk strictly inside an
open rectangle. -/
theorem closedBall_subset_openRectangle_of_coordinateMargin
    {lower upper center : ℂ} {radius : ℝ}
    (hReLower : min lower.re upper.re < center.re - radius)
    (hReUpper : center.re + radius < max lower.re upper.re)
    (hImLower : min lower.im upper.im < center.im - radius)
    (hImUpper : center.im + radius < max lower.im upper.im) :
    closedBall center radius ⊆ openRectangle lower upper := by
  intro point hpoint
  have hnorm : ‖point - center‖ ≤ radius := by
    simpa only [Complex.dist_eq] using (mem_closedBall.mp hpoint)
  have hreNorm : |point.re - center.re| ≤ ‖point - center‖ := by
    simpa only [sub_re] using Complex.abs_re_le_norm (point - center)
  have himNorm : |point.im - center.im| ≤ ‖point - center‖ := by
    simpa only [sub_im] using Complex.abs_im_le_norm (point - center)
  have hre : |point.re - center.re| ≤ radius := hreNorm.trans hnorm
  have him : |point.im - center.im| ≤ radius := himNorm.trans hnorm
  rw [openRectangle, Complex.mem_reProdIm]
  constructor
  · rw [Set.mem_Ioo]
    rcases abs_le.mp hre with ⟨hreLower, hreUpper⟩
    constructor <;> linarith
  · rw [Set.mem_Ioo]
    rcases abs_le.mp him with ⟨himLower, himUpper⟩
    constructor <;> linarith

/-- The set-theoretic boundary used by the rectangle incubation layer. -/
def rectangleBoundary (z w : ℂ) : Set ℂ :=
  closedRectangle z w \ openRectangle z w

/-- A finite family of pairwise disjoint positive-radius closed balls lying
strictly inside a rectangle. The geometry is independent of every integrand. -/
structure RectangleHoleConfiguration (lower upper : ℂ) where
  centers : Finset ℂ
  radius : ℂ → ℝ
  radius_pos : ∀ z ∈ centers, 0 < radius z
  closedBall_subset_interior :
    ∀ z ∈ centers, closedBall z (radius z) ⊆ openRectangle lower upper
  pairwise_disjoint :
    (centers : Set ℂ).PairwiseDisjoint fun z ↦ closedBall z (radius z)

namespace RectangleHoleConfiguration

variable {lower upper : ℂ}

/-- The center of every hole lies in the open rectangle. -/
theorem hole_center_mem_rectangle
    (holes : RectangleHoleConfiguration lower upper)
    {z : ℂ} (hz : z ∈ holes.centers) :
    z ∈ openRectangle lower upper := by
  exact holes.closedBall_subset_interior z hz
    (mem_closedBall_self (holes.radius_pos z hz).le)

/-- Every circular boundary of a hole lies in the open rectangle. -/
theorem hole_circle_subset_rectangle
    (holes : RectangleHoleConfiguration lower upper)
    {z : ℂ} (hz : z ∈ holes.centers) :
    sphere z (holes.radius z) ⊆ openRectangle lower upper :=
  sphere_subset_closedBall.trans (holes.closedBall_subset_interior z hz)

/-- A hole circle is disjoint from the set-theoretic rectangle boundary. -/
theorem hole_circle_disjoint_rectangle_boundary
    (holes : RectangleHoleConfiguration lower upper)
    {z : ℂ} (hz : z ∈ holes.centers) :
    Disjoint (sphere z (holes.radius z)) (rectangleBoundary lower upper) := by
  rw [Set.disjoint_left]
  intro p hpSphere hpBoundary
  exact hpBoundary.2 (holes.hole_circle_subset_rectangle hz hpSphere)

/-- Closed balls belonging to distinct hole centers are disjoint. -/
theorem hole_closedBalls_disjoint
    (holes : RectangleHoleConfiguration lower upper)
    {z w : ℂ} (hz : z ∈ holes.centers) (hw : w ∈ holes.centers)
    (hzw : z ≠ w) :
    Disjoint (closedBall z (holes.radius z))
      (closedBall w (holes.radius w)) :=
  holes.pairwise_disjoint hz hw hzw

/-- The hole circles are pairwise disjoint. -/
theorem hole_circles_pairwise_disjoint
    (holes : RectangleHoleConfiguration lower upper) :
    (holes.centers : Set ℂ).PairwiseDisjoint fun z ↦ sphere z (holes.radius z) :=
  holes.pairwise_disjoint.mono_on fun _ _ ↦ sphere_subset_closedBall

/-- A distinct hole center does not belong to the other hole's closed ball. -/
theorem hole_center_ne_other_center
    (holes : RectangleHoleConfiguration lower upper)
    {z w : ℂ} (hz : z ∈ holes.centers) (hw : w ∈ holes.centers)
    (hzw : z ≠ w) :
    z ∉ closedBall w (holes.radius w) := by
  exact (holes.pairwise_disjoint hz hw hzw).notMem_of_mem_left
    (mem_closedBall_self (holes.radius_pos z hz).le)

/-- Union of all closed hole balls. -/
def finiteHoleUnion
    (holes : RectangleHoleConfiguration lower upper) : Set ℂ :=
  ⋃ z ∈ holes.centers, closedBall z (holes.radius z)

theorem finiteHoleUnion_isClosed
    (holes : RectangleHoleConfiguration lower upper) :
    IsClosed holes.finiteHoleUnion := by
  exact isClosed_biUnion_finset fun _ _ ↦ isClosed_closedBall

/-- The open rectangle with every closed hole ball removed. -/
def puncturedRectangle
    (holes : RectangleHoleConfiguration lower upper) : Set ℂ :=
  openRectangle lower upper \ holes.finiteHoleUnion

theorem puncturedRectangle_isOpen
    (holes : RectangleHoleConfiguration lower upper) :
    IsOpen holes.puncturedRectangle :=
  (isOpen_openRectangle lower upper).sdiff holes.finiteHoleUnion_isClosed

/-- The empty finite-hole configuration. -/
def empty (lower upper : ℂ) : RectangleHoleConfiguration lower upper where
  centers := ∅
  radius := fun _ ↦ 1
  radius_pos := by simp
  closedBall_subset_interior := by simp
  pairwise_disjoint := by simp [Set.PairwiseDisjoint]

/-- Construct a one-hole configuration from positivity and containment. -/
def singleton (lower upper center : ℂ) (radius : ℝ)
    (hr : 0 < radius)
    (hBall : closedBall center radius ⊆ openRectangle lower upper) :
    RectangleHoleConfiguration lower upper where
  centers := {center}
  radius := fun _ ↦ radius
  radius_pos := by simpa
  closedBall_subset_interior := by simpa
  pairwise_disjoint := by
    simpa only [Finset.coe_singleton] using
      (Set.pairwiseDisjoint_singleton center
        (fun z : ℂ ↦ closedBall z radius))

/-- Construct a two-hole configuration from individual containment and
disjointness. -/
def pair (lower upper c₁ c₂ : ℂ) (r₁ r₂ : ℝ)
    (hc : c₁ ≠ c₂) (hr₁ : 0 < r₁) (hr₂ : 0 < r₂)
    (hBall₁ : closedBall c₁ r₁ ⊆ openRectangle lower upper)
    (hBall₂ : closedBall c₂ r₂ ⊆ openRectangle lower upper)
    (hDisjoint : Disjoint (closedBall c₁ r₁) (closedBall c₂ r₂)) :
    RectangleHoleConfiguration lower upper where
  centers := {c₁, c₂}
  radius := fun z ↦ if z = c₁ then r₁ else r₂
  radius_pos := by
    have hc' : c₂ ≠ c₁ := Ne.symm hc
    intro z hz
    simp only [Finset.mem_insert, Finset.mem_singleton] at hz
    rcases hz with rfl | rfl
    · simpa using hr₁
    · simp [hc', hr₂]
  closedBall_subset_interior := by
    have hc' : c₂ ≠ c₁ := Ne.symm hc
    intro z hz
    simp only [Finset.mem_insert, Finset.mem_singleton] at hz
    rcases hz with rfl | rfl
    · simpa using hBall₁
    · simpa [hc'] using hBall₂
  pairwise_disjoint := by
    have hc' : c₂ ≠ c₁ := Ne.symm hc
    intro z hz w hw hzw
    simp only [Finset.coe_insert, Finset.coe_singleton, Set.mem_insert_iff,
      Set.mem_singleton_iff] at hz hw
    rcases hz with rfl | rfl <;> rcases hw with rfl | rfl
    · exact (hzw rfl).elim
    · simpa only [Function.onFun, if_pos, if_neg hc'] using hDisjoint
    · simpa only [Function.onFun, if_pos, if_neg hc'] using hDisjoint.symm
    · exact (hzw rfl).elim

end RectangleHoleConfiguration

end

end Surface.Core.ComplexAnalysis
```
