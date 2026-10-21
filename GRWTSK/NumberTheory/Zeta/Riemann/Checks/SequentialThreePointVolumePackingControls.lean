/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SequentialThreePointVolumePacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SequentialThreePointVolumePackingControls

open GRWTSK.RiemannHypothesis

/-- A sequence cannot choose unrelated first points at adjacent stages: the
shared point is definitionally fixed. -/
theorem adjacent_windows_share_first_overlap
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    (seq.packingAt (n + 1)).first = (seq.packingAt n).second :=
  seq.packingAt_succ_first n

/-- A sequence cannot choose unrelated second points at adjacent stages. -/
theorem adjacent_windows_share_second_overlap
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    (seq.packingAt (n + 1)).second = (seq.packingAt n).third :=
  seq.packingAt_succ_second n

/-- Every sliding window remains positive without a new positivity premise. -/
theorem every_window_nonnegative
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    0 ≤ seq.valueAt n :=
  seq.valueAt_nonnegative n

/-- Every window carries exactly the three source-valid labels inherited from
the one global source sequence. -/
theorem every_window_source_valid
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    seq.IsPrimePowerSource (seq.source n) ∧
      seq.IsPrimePowerSource (seq.source (n + 1)) ∧
        seq.IsPrimePowerSource (seq.source (n + 2)) :=
  seq.window_source_ok n

end GRWTSK.RiemannHypothesis.Checks.SequentialThreePointVolumePackingControls
