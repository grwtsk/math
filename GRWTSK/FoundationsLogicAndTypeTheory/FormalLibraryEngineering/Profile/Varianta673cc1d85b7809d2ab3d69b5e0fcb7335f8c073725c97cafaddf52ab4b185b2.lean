/-!
# Declared assurance operation profiles

Support is constructive: a supported operation carries the operation itself
and a closure proof for valid states.  `unsupported` carries neither, so
declaring an operation unsupported creates no artificial proof obligation.
-/

universe u

namespace Surface.ContinuousAssurance

/-- Optional support for one state operation, with validity closure. -/
inductive OperationSupport
    {State : Type u}
    (Valid : State → Prop) : Type u
  | unsupported
  | supported
      (operation : State → State)
      (closed : ∀ state, Valid state → Valid (operation state))

/-- The complete operation profile declared by an assurance implementation. -/
structure AssuranceProfile (State : Type u) where
  Valid : State → Prop
  identity : OperationSupport Valid
  composition : OperationSupport Valid
  transport : OperationSupport Valid
  evidenceCollection : OperationSupport Valid
  claimClassification : OperationSupport Valid
  gating : OperationSupport Valid
  attestation : OperationSupport Valid
  refinement : OperationSupport Valid
  adapterExecution : OperationSupport Valid
  reflexiveReview : OperationSupport Valid

namespace OperationSupport

/-- Every supported operation preserves the profile's validity predicate. -/
theorem preservesValidity
    {State : Type u}
    {Valid : State → Prop}
    (operation : State → State)
    (closed : ∀ state, Valid state → Valid (operation state))
    (state : State)
    (valid : Valid state) :
    Valid (operation state) :=
  closed state valid

end OperationSupport

/-- A profile can explicitly decline every optional operation. -/
def unsupportedProfile (State : Type u) : AssuranceProfile State where
  Valid := fun _ => True
  identity := .unsupported
  composition := .unsupported
  transport := .unsupported
  evidenceCollection := .unsupported
  claimClassification := .unsupported
  gating := .unsupported
  attestation := .unsupported
  refinement := .unsupported
  adapterExecution := .unsupported
  reflexiveReview := .unsupported

end Surface.ContinuousAssurance
