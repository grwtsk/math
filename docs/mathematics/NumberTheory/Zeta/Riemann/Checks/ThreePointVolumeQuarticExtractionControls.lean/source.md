# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.ThreePointVolumeQuarticExtractionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `804e47b00c9fc454d5e56aad6347c03a68a5328d` · SHA-256 `d32be8dd1c51f58997d4073e9594ba8bf55fd9c7f35c5226c86b7d3fcf2d9245`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
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
```
