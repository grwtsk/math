import Formal.Patches.Mathlib.Algebra
import Formal.Patches.Mathlib.Analysis
import Formal.Patches.Mathlib.MeasureTheory
import Formal.Patches.Mathlib.NumberTheory
import Formal.Patches.Mathlib.Topology

/-!
Local Mathlib patch boundary root.

Files classified as local Mathlib patches require an upstream-status decision
before they can contribute theorem authority to the first-party kernel. This
root imports only conceptual patch markers, not the patch corpus.
-/

namespace Formal.Patches.Mathlib

inductive UpstreamStatus where
  | localOnly
  | upstreamPending
  | upstreamed
  deriving DecidableEq, Repr

def defaultStatus : UpstreamStatus := .localOnly

theorem defaultStatus_is_localOnly : defaultStatus = .localOnly := by
  rfl

def conceptualBoundaries : List String :=
  [ "Algebra"
  , "Analysis"
  , "MeasureTheory"
  , "NumberTheory"
  , "Topology"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 5 := by
  rfl

end Formal.Patches.Mathlib
