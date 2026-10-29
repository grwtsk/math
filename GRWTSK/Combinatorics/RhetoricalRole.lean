import DAF.Universe.Id
import Mathlib.Data.Fintype.Basic
import Mathlib.Tactic.DeriveFintype

/-!
# Transport-level rhetorical role vocabulary

The closed seven-role vocabulary is owned by the lower-level universe layer
because theorem-cell and external-response locators use it without importing
the rhetorical Hilbert implementation.
-/

namespace DAF.Universe

/-- Canonical closed rhetorical-role vocabulary. -/
inductive RhetoricalRole where
  | base
  | premise
  | conclusion
  | positive
  | negative
  | source
  | target
  deriving DecidableEq, Repr, Fintype

/-- Canonical transport tag.  Downstream runtimes may mirror this only as a
checked adapter to a Lean-generated manifest. -/
def RhetoricalRole.tag : RhetoricalRole → Nat
  | .base => 0
  | .premise => 1
  | .conclusion => 2
  | .positive => 3
  | .negative => 4
  | .source => 5
  | .target => 6

/-- Canonical lower-case transport spelling. -/
def RhetoricalRole.name : RhetoricalRole → String
  | .base => "base"
  | .premise => "premise"
  | .conclusion => "conclusion"
  | .positive => "positive"
  | .negative => "negative"
  | .source => "source"
  | .target => "target"

theorem RhetoricalRole.tag_injective : Function.Injective RhetoricalRole.tag := by
  intro left right equality
  cases left <;> cases right <;> simp_all [RhetoricalRole.tag]

end DAF.Universe
