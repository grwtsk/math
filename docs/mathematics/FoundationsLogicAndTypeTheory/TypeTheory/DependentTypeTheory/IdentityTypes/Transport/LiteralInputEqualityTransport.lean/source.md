# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.Transport.LiteralInputEqualityTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc3903d4c63e8cfeaf2eb8a51626350763aa3e0b` · SHA-256 `039a8400f52bc357c01b78f7b12da6f41b376ac528d42e724d70ee0853f3d623`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
