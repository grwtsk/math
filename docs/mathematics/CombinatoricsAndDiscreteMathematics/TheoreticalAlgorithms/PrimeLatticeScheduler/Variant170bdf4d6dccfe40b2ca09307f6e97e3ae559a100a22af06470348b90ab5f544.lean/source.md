# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeLatticeScheduler.Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93ed1833aeea51e788da16aa840c93f1b7909ba3` · SHA-256 `170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Refactor.PrimeLatticePlan
public import Surface.Core.GoalGraph

/-!
# Closed-loop PrimeLattice scheduler

This is a Mealy-style deterministic planning surface.  Observations may change
which task is attempted next, but neither observations nor scheduler outputs
carry Lean theorem authority.  Kernel authority remains available only
through the existing proof-bearing verification and receipt types.
-/

public section

namespace Surface.Refactor

/-- Closed-loop observe/advance machinery with no proof or authority field. -/
@[surface_novel]
structure PrimeLatticeScheduler where
  State : Type
  Observation : Type
  observe : State → Observation
  advance : State → Observation → State

namespace PrimeLatticeScheduler

/-- One deterministic feedback tick. -/
@[expose]
def tick (scheduler : PrimeLatticeScheduler) :
    scheduler.State → scheduler.State :=
  fun state ↦ scheduler.advance state (scheduler.observe state)

@[surface_novel, surface_published]
theorem tick_eq_observe_then_advance
    (scheduler : PrimeLatticeScheduler) (state : scheduler.State) :
    scheduler.tick state =
      scheduler.advance state (scheduler.observe state) :=
  rfl

end PrimeLatticeScheduler

/-- Typed observations useful to a generator.  Every field is diagnostic or
planning data; none asserts that a proposition has been proved. -/
@[surface_novel]
structure PrimeLatticeObservation where
  unresolvedGoalIds : List Surface.Core.GoalCellId
  importFailures : List String
  axiomClosureChanges : List String
  packetScaleObligations : List String
  geometricSideConditions : List String
  gramDiagnostics : List String
  projectFingerprint : ContentHash256
  sourceFingerprint : ContentHash256
deriving Repr

/-- A deterministic scheduler output is explicitly planning authority. -/
@[expose]
def primeLatticeSchedulerAuthority : RefactorAuthority := .deterministic

@[surface_novel, surface_published]
theorem primeLattice_scheduler_not_kernel_authority :
    primeLatticeSchedulerAuthority ≠ .leanKernelChecked := by
  intro h
  cases h

end Surface.Refactor
```
