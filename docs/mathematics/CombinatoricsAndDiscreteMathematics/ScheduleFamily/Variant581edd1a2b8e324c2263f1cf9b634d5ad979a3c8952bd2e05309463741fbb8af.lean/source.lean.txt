import Mathlib.Data.Finset.Basic

/-!
# Registered finite schedule family
-/

namespace Mathematics.StratifiedBoundary

structure RegisteredScheduleFamily (Schedule : Type u)
    [DecidableEq Schedule] where
  familyId : String
  schedules : Finset Schedule
  nonempty : schedules.Nonempty
  authorityRef : String

end Mathematics.StratifiedBoundary
