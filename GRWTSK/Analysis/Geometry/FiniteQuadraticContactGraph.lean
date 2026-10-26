/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Imported Mathlib/GRWTSK work retains original authorship and licenses. -/
import GRWTSK.Analysis.Geometry.QuadraticBezierContact

set_option autoImplicit false

/-!
# Two-patch finite quadratic contact graph

This is an actual one-contact **incidence graph** built from de Casteljau
subdivision of a source quadratic Bezier segment.  Every patch, tangent
scale, and seam is derived from the same source and interior cut.  The
source identifier and analytic multiplicity are shared, not inferred
from graphical proximity.

This module proves no planar embedding, two-dimensional CW attaching
maps, infinite sheaf, boundary quotient, or zeta identification.  In
particular its single directed contact is NOT a return cycle.
-/

namespace GRWTSK.Analysis.Geometry.FiniteQuadraticContactGraph

open GRWTSK.Analysis.Geometry.QuadraticBezierContact

universe u v

/-- A finite two-vertex/one-edge contact graph with an actual quadratic
source; no geometric self-gluing is inserted. -/
structure SplitGraph (ι : Type u) (SourceLabel : Type v) where
  source : Segment ι
  cut : ℝ
  cut_pos : 0 < cut
  cut_lt_one : cut < 1
  sourceLabel : SourceLabel
  multiplicity : ℕ
  multiplicity_pos : 0 < multiplicity

namespace SplitGraph

variable {ι : Type u} {SourceLabel : Type v}

/-- Left/right patch indices are `Fin 2`; this is only a graph of patches. -/
def patch (G : SplitGraph ι SourceLabel) (i : Fin 2) : Segment ι :=
  if i = 0 then G.source.left G.cut else G.source.right G.cut

@[simp] theorem patch_zero (G : SplitGraph ι SourceLabel) :
    G.patch 0 = G.source.left G.cut := by
  simp [patch]

@[simp] theorem patch_one (G : SplitGraph ι SourceLabel) :
    G.patch 1 = G.source.right G.cut := by
  simp [patch]

/-- The exact sole directed contact goes from patch zero to patch one. -/
def contactStart (_G : SplitGraph ι SourceLabel) (_e : Fin 1) : Fin 2 := 0

def contactFinish (_G : SplitGraph ι SourceLabel) (_e : Fin 1) : Fin 2 := 1

/-- Both patch records share one immutable source identifier. -/
def patchSourceLabel (G : SplitGraph ι SourceLabel) (_i : Fin 2) : SourceLabel :=
  G.sourceLabel

@[simp] theorem patchSourceLabel_agree
    (G : SplitGraph ι SourceLabel) (i j : Fin 2) :
    G.patchSourceLabel i = G.patchSourceLabel j := rfl

/-- Source multiplicity belongs to the original curve and is not generated
again by taking two overlapping geometric representations. -/
def patchMultiplicity (G : SplitGraph ι SourceLabel) (_i : Fin 2) : ℕ :=
  G.multiplicity

@[simp] theorem patchMultiplicity_agree
    (G : SplitGraph ι SourceLabel) (i j : Fin 2) :
    G.patchMultiplicity i = G.patchMultiplicity j := rfl

/-- The actual contact has the exact shared point and two scaled jets
proved for de Casteljau subdivision in `QuadraticBezierContact`. -/
def seam (G : SplitGraph ι SourceLabel) :
    ScaledHermiteContact (G.patch 0) (G.patch 1) where
  common := G.source.jet G.cut
  leftScale := G.cut
  rightScale := 1 - G.cut
  left_point := by
    simpa [patch, Segment.jet] using G.source.left_join_point G.cut
  right_point := by
    simpa [patch, Segment.jet] using G.source.right_join_point G.cut
  left_tangent := by
    simpa [patch, Segment.jet] using G.source.left_velocity_one_scaled G.cut
  right_tangent := by
    simpa [patch, Segment.jet] using G.source.right_velocity_zero_scaled G.cut

/-- Both independent orientation multipliers are strictly positive. -/
theorem seam_positive (G : SplitGraph ι SourceLabel) :
    G.seam.Positive := by
  change 0 < G.cut ∧ 0 < 1 - G.cut
  exact ⟨G.cut_pos, sub_pos.mpr G.cut_lt_one⟩

theorem seam_common_point (G : SplitGraph ι SourceLabel) :
    G.seam.common.point = G.source.eval G.cut := rfl

theorem seam_common_tangent (G : SplitGraph ι SourceLabel) :
    G.seam.common.tangent = G.source.velocity G.cut := rfl

theorem seam_matches_patches (G : SplitGraph ι SourceLabel) :
    (G.patch 0).eval 1 = (G.patch 1).eval 0 :=
  (G.seam.left_point).trans (G.seam.right_point).symm

/-- The left patch reproduces the original source after exactly the
declared reparameterization; this holds for every real parameter. -/
theorem left_source_eval (G : SplitGraph ι SourceLabel) (t : ℝ) :
    (G.patch 0).eval t = G.source.eval (G.cut * t) := by
  simpa [patch] using G.source.left_eval G.cut t

/-- Likewise the right patch reproduces the remaining source interval. -/
theorem right_source_eval (G : SplitGraph ι SourceLabel) (t : ℝ) :
    (G.patch 1).eval t =
      G.source.eval (G.cut + (1 - G.cut) * t) := by
  simpa [patch] using G.source.right_eval G.cut t

/-- The orientation-preserving left/right endpoint jets are not asserted
equal as raw parameter velocities: their scaling factors are retained. -/
theorem seam_left_jet_scale (G : SplitGraph ι SourceLabel) :
    (G.patch 0).velocity 1 = G.cut • G.source.velocity G.cut :=
  G.seam.left_tangent

theorem seam_right_jet_scale (G : SplitGraph ι SourceLabel) :
    (G.patch 1).velocity 0 =
      (1 - G.cut) • G.source.velocity G.cut :=
  G.seam.right_tangent

end SplitGraph

end GRWTSK.Analysis.Geometry.FiniteQuadraticContactGraph
