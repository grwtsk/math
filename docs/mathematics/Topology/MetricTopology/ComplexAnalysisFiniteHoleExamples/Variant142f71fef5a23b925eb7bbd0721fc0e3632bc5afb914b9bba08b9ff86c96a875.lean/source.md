# Complete source: GRWTSK.Topology.MetricTopology.ComplexAnalysisFiniteHoleExamples.Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9786a7a2b67ccd0bc664a6e357c52778c9e5ecfe` · SHA-256 `142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Core.ComplexAnalysis.FiniteHoleGeometry
import Mathlib.Tactic

/-!
# Finite-hole geometry examples

These coefficient-free examples exercise the private CA-02 geometry layer.
They assert no contour, residue, explicit-formula, positivity, RH, or GRH
theorem.
-/

namespace Surface.Audit.ComplexAnalysisFiniteHoleExamples

open Set Complex Metric
open Surface.Core.ComplexAnalysis

noncomputable section

/-- No holes in a nondegenerate rectangle. -/
def zeroHoleExample :
    RectangleHoleConfiguration ((-3 : ℂ) - 3 * I) (3 + 3 * I) :=
  RectangleHoleConfiguration.empty _ _

/-- One radius-one disk centered at the origin. -/
def oneCentralHoleExample :
    RectangleHoleConfiguration ((-3 : ℂ) - 3 * I) (3 + 3 * I) :=
  RectangleHoleConfiguration.singleton _ _ 0 1 (by norm_num) (by
    apply closedBall_subset_openRectangle_of_coordinateMargin <;> norm_num)

/-- Two separated radius-one-half disks centered at `-1` and `1`. -/
def twoSeparatedHolesExample :
    RectangleHoleConfiguration ((-3 : ℂ) - 3 * I) (3 + 3 * I) :=
  RectangleHoleConfiguration.pair _ _ (-1) 1 (1 / 2) (1 / 2)
    (by norm_num) (by norm_num) (by norm_num)
    (by apply closedBall_subset_openRectangle_of_coordinateMargin <;> norm_num)
    (by apply closedBall_subset_openRectangle_of_coordinateMargin <;> norm_num)
    (by
      rw [disjoint_closedBall_closedBall_iff (by norm_num) (by norm_num)]
      norm_num [Complex.dist_eq, Complex.norm_def])

/-- Translation of the one-hole configuration away from the origin. -/
def translatedHoleExample :
    RectangleHoleConfiguration ((-1 : ℂ) - 2 * I) (5 + 4 * I) :=
  RectangleHoleConfiguration.singleton _ _ (2 + I) 1 (by norm_num) (by
    apply closedBall_subset_openRectangle_of_coordinateMargin <;> norm_num)

/-- A uniformly enlarged rectangle and central disk. -/
def scaledHoleExample :
    RectangleHoleConfiguration ((-6 : ℂ) - 6 * I) (6 + 6 * I) :=
  RectangleHoleConfiguration.singleton _ _ 0 2 (by norm_num) (by
    apply closedBall_subset_openRectangle_of_coordinateMargin <;> norm_num)

example : zeroHoleExample.centers = ∅ := rfl
example : oneCentralHoleExample.centers = {0} := rfl
example : twoSeparatedHolesExample.centers = {-1, 1} := rfl

end

end Surface.Audit.ComplexAnalysisFiniteHoleExamples
```
