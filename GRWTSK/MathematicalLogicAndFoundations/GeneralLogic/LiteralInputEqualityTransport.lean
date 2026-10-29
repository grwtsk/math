/-!
# Exact input binding for a certifying frontend

The native observer supplies bytes independently of the Python reifier. These
contracts do not postulate that a pathname, reader or compiler is authentic.
They establish what successful literal equality transfers once that IO boundary
has provided its observations.
-/
namespace GRWTSK.FrontendBinding

abbrev Bytes := List UInt8

structure Inputs where
  plan : Bytes
  expected : Bytes
  observed : Bytes
  deriving DecidableEq

def check (frozen actual : Inputs) : Bool := decide (frozen = actual)

theorem check_iff (frozen actual : Inputs) : check frozen actual = true ↔ frozen = actual := by
  simp [check]

theorem accepted_plan_exact {frozen actual : Inputs} (accepted : check frozen actual = true) :
    frozen.plan = actual.plan := congrArg Inputs.plan ((check_iff _ _).mp accepted)

theorem accepted_expected_exact {frozen actual : Inputs} (accepted : check frozen actual = true) :
    frozen.expected = actual.expected := congrArg Inputs.expected ((check_iff _ _).mp accepted)

theorem accepted_observed_exact {frozen actual : Inputs} (accepted : check frozen actual = true) :
    frozen.observed = actual.observed := congrArg Inputs.observed ((check_iff _ _).mp accepted)

theorem changed_input_rejected (frozen actual : Inputs) (changed : frozen ≠ actual) :
    check frozen actual = false := by simp [check, changed]

/-- Properties kernel-checked for reified bytes apply to independently observed
bytes after the binding check; no hash injectivity assumption is needed. -/
theorem accepted_property_transfer {frozen actual : Inputs} (predicate : Inputs → Prop)
    (proof : predicate frozen) (accepted : check frozen actual = true) : predicate actual := by
  exact (check_iff _ _).mp accepted ▸ proof

theorem changed_plan_rejected (frozen actual : Inputs) (changed : frozen.plan ≠ actual.plan) :
    check frozen actual = false := by
  apply changed_input_rejected
  intro equal
  exact changed (congrArg Inputs.plan equal)

theorem empty_inputs_nonvacuous : check ⟨[], [], []⟩ ⟨[], [], []⟩ = true := rfl

end GRWTSK.FrontendBinding
