import Surface.ContinuousAssurance.Authority

/-!
# Progressive assurance levels

Assurance level records how far evidence has progressed through the assurance
workflow.  It is deliberately independent of `AuthorityClass`: moving from a
development report to a release or audit record does not turn external data
into a kernel proof.

Wall-clock compliance is not represented by these definitions.  Deadlines and
process cancellation are executable-conformance obligations.
-/

namespace Surface.ContinuousAssurance

/-- Ordered assurance levels, from interactive feedback to formal audit. -/
inductive AssuranceLevel
  | development
  | localConformance
  | integration
  | release
  | formalAudit
  deriving DecidableEq, Repr

namespace AssuranceLevel

/-- Numeric rank used only for the declared progressive ordering. -/
def rank : AssuranceLevel → Nat
  | .development => 0
  | .localConformance => 1
  | .integration => 2
  | .release => 3
  | .formalAudit => 4

/-- `AtMost earlier later` means that `later` is no weaker as a stage. -/
def AtMost (earlier later : AssuranceLevel) : Prop :=
  earlier.rank ≤ later.rank

instance (earlier later : AssuranceLevel) : Decidable (AtMost earlier later) :=
  inferInstanceAs (Decidable (earlier.rank ≤ later.rank))

/-- Development is the lowest assurance level. -/
theorem development_is_lowest (level : AssuranceLevel) :
    AtMost .development level := by
  cases level <;> decide

/-- Every assurance level is at most itself. -/
theorem atMost_refl (level : AssuranceLevel) : AtMost level level :=
  Nat.le_refl _

/-- Progressive ordering is transitive. -/
theorem atMost_trans
    {first second third : AssuranceLevel}
    (firstSecond : AtMost first second)
    (secondThird : AtMost second third) :
    AtMost first third :=
  Nat.le_trans firstSecond secondThird

/-- A level cannot be strictly below itself. -/
theorem no_strict_self_advance (level : AssuranceLevel) :
    ¬ level.rank < level.rank :=
  Nat.lt_irrefl _

end AssuranceLevel

/-- Canonical adjacent progress edges. -/
inductive AssuranceAdvance : AssuranceLevel → AssuranceLevel → Prop
  | developmentToLocal : AssuranceAdvance .development .localConformance
  | localToIntegration : AssuranceAdvance .localConformance .integration
  | integrationToRelease : AssuranceAdvance .integration .release
  | releaseToAudit : AssuranceAdvance .release .formalAudit

/-- Every canonical assurance edge is monotone. -/
theorem assuranceAdvance_monotone
    {earlier later : AssuranceLevel}
    (edge : AssuranceAdvance earlier later) :
    earlier.AtMost later := by
  cases edge <;> decide

end Surface.ContinuousAssurance
