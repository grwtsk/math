/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ThreePointVolumeQuarticExtraction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.ThreePointVolumeQuarticExtractionControls

open GRWTSK.RiemannHypothesis

/-- Collinear consecutive displacements give zero packing volume. -/
def collinearPacking : ThreePointPacking where
  first := ⟨0, 0⟩
  second := ⟨1, 0⟩
  third := ⟨2, 0⟩

theorem collinearPacking_zero :
    collinearPacking.gramVolume = 0 := by
  norm_num [collinearPacking, ThreePointPacking.gramVolume,
    ThreePointPacking.orientedVolume, ThreePointPacking.edge01,
    ThreePointPacking.edge12, PackingPoint.sub]

/-- A unit right-angle path has unit squared volume. -/
def unitCornerPacking : ThreePointPacking where
  first := ⟨0, 0⟩
  second := ⟨1, 0⟩
  third := ⟨1, 1⟩

theorem unitCornerPacking_one :
    unitCornerPacking.gramVolume = 1 := by
  norm_num [unitCornerPacking, ThreePointPacking.gramVolume,
    ThreePointPacking.orientedVolume, ThreePointPacking.edge01,
    ThreePointPacking.edge12, PackingPoint.sub]

/-- No three-point packing Gram volume can be negative. -/
theorem packing_volume_ne_negative
    (p : ThreePointPacking) :
    ¬ p.gramVolume < 0 :=
  not_lt_of_ge p.gramVolume_nonnegative

/-- The signed quartic remains logically distinct: off-center it is negative,
whereas the three-point packing carrier is always nonnegative. -/
theorem positive_packing_does_not_identify_signed_quartic
    {a : ℝ} (ha : a ≠ 0) (t : ℝ) (p : ThreePointPacking) :
    p.gramVolume ≥ 0 ∧ witnessTrace a t < 0 :=
  ⟨p.gramVolume_nonnegative, witnessTrace_neg ha t⟩

end GRWTSK.RiemannHypothesis.Checks.ThreePointVolumeQuarticExtractionControls
