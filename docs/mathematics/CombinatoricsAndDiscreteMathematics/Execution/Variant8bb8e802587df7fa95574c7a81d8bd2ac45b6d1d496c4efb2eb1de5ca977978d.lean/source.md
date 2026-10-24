# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Execution.Variant8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65c3c692a2d7893a25204bb51b7159e6c9232415` · SHA-256 `8bb8e802587df7fa95574c7a81d8bd2ac45b6d1d496c4efb2eb1de5ca977978d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Machine

/-!
# Total fuel-bounded execution

The tentative successor is checked before recursion.  If it exceeds the
budget, the machine reports the last admitted state and the successor's named
exceeded dimensions.
-/

namespace Mathematics.GraphAccess

inductive MachineResolution
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (machine : AccessMachine G req outputs)
  | completed
      (result : CertifiedModeOutput outputs)
      (usage : TraversalUsage)
      (withinBudget :
        WithinBudget usage req.budget)
  | residual
      (frontier : ResidualFrontier G req)
  | unknown
      (frontier : ResidualFrontier G req)
      (unknowns : Finset GraphAccessUnknownKind)
      (unknowns_nonempty : unknowns.Nonempty)
  | operationalFailure
      (failure : OperationalFailure)

def runMachine
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (machine : AccessMachine G req outputs) :
    (fuel : Nat) →
    (state : machine.State) →
    machine.invariant state →
    WithinBudget (machine.usage state) req.budget →
    MachineResolution machine
  | 0, state, _, _ =>
      .residual
        (machine.frontier state .fuelExhausted)
  | fuel + 1, state, stateInvariant, currentBudget =>
      match continued :
        machine.step state with
      | .continue next =>
          have nextInvariant :
              machine.invariant next :=
            machine.step_preserves
              state next stateInvariant continued
          if nextBudget :
              WithinBudget
                (machine.usage next)
                req.budget
          then
            runMachine machine fuel next
              nextInvariant nextBudget
          else
            .residual
              (machine.frontier state
                (.budgetExhausted
                  (exceededDimensions
                    (machine.usage next)
                    req.budget)))
      | .terminal result =>
          .completed result
            (machine.usage state) currentBudget
      | .blocked unknowns unknowns_nonempty =>
          .unknown
            (machine.frontier state
              .blockedByUnknowns)
            unknowns unknowns_nonempty
      | .operationalFailure failure =>
          .operationalFailure failure

def executeMachine
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (machine : AccessMachine G req outputs) :
    MachineResolution machine :=
  runMachine machine req.budget.maxSteps
    machine.initial
    machine.initial_invariant
    machine.initial_within_budget

theorem accessMachine_total
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (machine : AccessMachine G req outputs) :
    ∃ result, executeMachine machine = result :=
  ⟨executeMachine machine, rfl⟩

theorem completed_has_mode_certificate
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    {result : CertifiedModeOutput outputs}
    {usage : TraversalUsage}
    {completionBudget :
      WithinBudget usage req.budget}
    (_completed :
      executeMachine machine =
        .completed result usage completionBudget) :
    Nonempty (outputs.Certificate result.payload) :=
  ⟨result.certificate⟩

def completed_output_kind_matches_objective
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    {result : CertifiedModeOutput outputs}
    {usage : TraversalUsage}
    {completionBudget :
      WithinBudget usage req.budget}
    (_completed :
      executeMachine machine =
        .completed result usage completionBudget) :
    outputs.Payload req.objective.productKind :=
  result.payload

theorem zero_fuel_returns_residual
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    {state : machine.State}
    (stateInvariant : machine.invariant state)
    (withinBudget :
      WithinBudget
        (machine.usage state)
        req.budget) :
    runMachine machine 0 state
      stateInvariant withinBudget =
    .residual
      (machine.frontier state .fuelExhausted) :=
  rfl

theorem budget_exhaustion_returns_residual
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    {state next : machine.State}
    (stateInvariant : machine.invariant state)
    (withinBudget :
      WithinBudget
        (machine.usage state)
        req.budget)
    (continued :
      machine.step state =
        .continue next)
    (nextOverBudget :
      ¬ WithinBudget
        (machine.usage next)
        req.budget)
    (fuel : Nat) :
    runMachine machine (fuel + 1) state
      stateInvariant withinBudget =
    .residual
      (machine.frontier state
        (.budgetExhausted
          (exceededDimensions
            (machine.usage next)
            req.budget))) := by
  simp only [runMachine]
  split <;> simp_all

theorem resource_exhaustion_has_no_unreachability_certificate
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    {frontier : ResidualFrontier G req}
    (_residual :
      executeMachine machine =
        .residual frontier)
    (_cause :
      frontier.cause = .fuelExhausted ∨
      ∃ dimensions,
        frontier.cause =
          .budgetExhausted dimensions) :
    ¬ HasCertifiedTargetUnreachability frontier :=
  id

theorem executeMachine_deterministic
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    {left right : MachineResolution machine}
    (leftResult : executeMachine machine = left)
    (rightResult : executeMachine machine = right) :
    left = right :=
  leftResult.symm.trans rightResult

theorem completed_usage_within_budget
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    {result : CertifiedModeOutput outputs}
    {usage : TraversalUsage}
    {completionBudget :
      WithinBudget usage req.budget}
    (_completed :
      executeMachine machine =
        .completed result usage completionBudget) :
    WithinBudget usage req.budget :=
  completionBudget

end Mathematics.GraphAccess
```
