import Mathlib.Data.Real.Basic

/-!
# Kakeya scale windows

A scale window records the transverse and axial scales of a tube as positive
real geometry.  It replaces integer labels by the quantities those labels are
intended to approximate.
-/

namespace Mathematics.Geometry.Kakeya

/-- Positive transverse and axial scales with the transverse scale no larger. -/
structure ScaleWindow where
  fine : ℝ
  coarse : ℝ
  finePositive : 0 < fine
  fine_le_coarse : fine ≤ coarse

theorem ScaleWindow.coarsePositive (scale : ScaleWindow) :
    0 < scale.coarse :=
  lt_of_lt_of_le scale.finePositive scale.fine_le_coarse

theorem ScaleWindow.fineNonnegative (scale : ScaleWindow) :
    0 ≤ scale.fine :=
  scale.finePositive.le

theorem ScaleWindow.coarseNonnegative (scale : ScaleWindow) :
    0 ≤ scale.coarse :=
  scale.coarsePositive.le

end Mathematics.Geometry.Kakeya
