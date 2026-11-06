import GRWTSK.ComputerScience.TheoryOfData.DataStructures.CacheFactorization

/-!
# Scoped cache observations and trace noninterference

Local attribution: grwtsk contributors.

Noninterference is the existing fiber-constancy property for an independently
chosen public view. The observable must include every channel being claimed:
values alone do not include hit/miss metadata, timing, allocation, or traffic.
The finite-trace theorem propagates equal public views through view-respecting
steps and applies an observation-sufficiency premise at every intermediate state.

A separate pure lookup model proves that a write at one tenant/key coordinate
cannot change another tenant's slice, and that disjoint writes commute. This
models functional partitioning, not physical isolation, encryption, erasure of
backups, or side-channel protection. The Boolean counterexample has a constant
returned value and a secret-dependent hit flag.

Primary arguments are function extensionality, case analysis on coordinates, and
list induction. Consumers are scoped replay and observation-complete privacy
contracts. Novelty and independent analytical review: not assessed. Compilation,
fresh kernel checking, and transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.Cache.Observation

universe u v w x y

variable {S : Type u} {P : Type v} {O : Type w}

/-- The entire chosen observation must factor through the public view. -/
abbrev Noninterfering (view : S → P) (observe : S → O) : Prop :=
  FiberConstant view observe

def RespectsView (view : S → P) (step : S → S) : Prop :=
  FiberConstant view (fun s => view (step s))

theorem observation_postcompose {Q : Type x} {view : S → P} {observe : S → O}
    (safe : Noninterfering view observe) (redact : O → Q) :
    Noninterfering view (fun state => redact (observe state)) :=
  sufficient_postcomposition safe redact

theorem respectsView_identity (view : S → P) : RespectsView view (fun state => state) :=
  fun _ _ h => h

theorem respectsView_composition {view : S → P} {first second : S → S}
    (hf : RespectsView view first) (hs : RespectsView view second) :
    RespectsView view (fun state => second (first state)) :=
  fun a b same => hs (first a) (first b) (hf a b same)

def trace (observe : S → O) : List (S → S) → S → List O
  | [], state => [observe state]
  | step :: rest, state => observe state :: trace observe rest (step state)

/-- Intermediate observations are included, not just the final returned value. -/
theorem trace_noninterfering (view : S → P) (observe : S → O)
    (observationSafe : Noninterfering view observe) (steps : List (S → S))
    (stepSafe : ∀ step, step ∈ steps → RespectsView view step) :
    Noninterfering view (trace observe steps) := by
  revert stepSafe
  induction steps with
  | nil =>
      intro _ a b same
      simp only [trace]
      rw [observationSafe a b same]
  | cons step rest ih =>
      intro stepSafe
      have headSafe : RespectsView view step := stepSafe step (by simp)
      have tailSafe : ∀ f, f ∈ rest → RespectsView view f := by
        intro f member
        exact stepSafe f (by simp [member])
      have tailResult := ih tailSafe
      intro a b same
      simp only [trace]
      rw [observationSafe a b same, tailResult (step a) (step b) (headSafe a b same)]

variable {Tenant : Type x} {Key : Type y} {Value : Type w}

abbrev PartitionedStore (Tenant : Type x) (Key : Type y) (Value : Type w) :=
  Tenant → Key → Option Value

def write [DecidableEq Tenant] [DecidableEq Key]
    (store : PartitionedStore Tenant Key Value) (owner : Tenant) (key : Key) (value : Value) :
    PartitionedStore Tenant Key Value :=
  fun tenant query => if tenant = owner ∧ query = key then some value else store tenant query

@[simp] theorem write_lookup [DecidableEq Tenant] [DecidableEq Key]
    (store : PartitionedStore Tenant Key Value) (owner : Tenant) (key : Key) (value : Value) :
    write store owner key value owner key = some value := by simp [write]

theorem foreign_tenant_unchanged [DecidableEq Tenant] [DecidableEq Key]
    (store : PartitionedStore Tenant Key Value) (owner reader : Tenant)
    (key query : Key) (value : Value) (foreign : reader ≠ owner) :
    write store owner key value reader query = store reader query := by
  simp [write, foreign]

theorem other_key_unchanged [DecidableEq Tenant] [DecidableEq Key]
    (store : PartitionedStore Tenant Key Value) (owner reader : Tenant)
    (key query : Key) (value : Value) (other : query ≠ key) :
    write store owner key value reader query = store reader query := by
  simp [write, other]

/-- The complete foreign lookup function, including hit/miss, is unchanged. -/
theorem foreign_slice_unchanged [DecidableEq Tenant] [DecidableEq Key]
    (store : PartitionedStore Tenant Key Value) (owner reader : Tenant)
    (key : Key) (value : Value) (foreign : reader ≠ owner) :
    write store owner key value reader = store reader := by
  funext query
  exact foreign_tenant_unchanged store owner reader key query value foreign

theorem overwrite_same_coordinate [DecidableEq Tenant] [DecidableEq Key]
    (store : PartitionedStore Tenant Key Value) (owner : Tenant) (key : Key)
    (first last : Value) :
    write (write store owner key first) owner key last = write store owner key last := by
  funext reader query
  by_cases hit : reader = owner ∧ query = key <;> simp [write, hit]

/-- Commutation is proved for disjoint coordinates, not assumed for arbitrary effects. -/
theorem disjoint_writes_commute [DecidableEq Tenant] [DecidableEq Key]
    (store : PartitionedStore Tenant Key Value) (a b : Tenant) (ka kb : Key)
    (va vb : Value) (separated : a ≠ b ∨ ka ≠ kb) :
    write (write store a ka va) b kb vb = write (write store b kb vb) a ka va := by
  funext reader query
  by_cases first : reader = a ∧ query = ka
  · by_cases second : reader = b ∧ query = kb
    · have owners : a = b := first.1.symm.trans second.1
      have keys : ka = kb := first.2.symm.trans second.2
      exact False.elim (separated.elim (fun h => h owners) (fun h => h keys))
    · simp [write, first, second]
  · by_cases second : reader = b ∧ query = kb <;> simp [write, first, second]

def clearTenant [DecidableEq Tenant] (store : PartitionedStore Tenant Key Value)
    (owner : Tenant) : PartitionedStore Tenant Key Value :=
  fun tenant key => if tenant = owner then none else store tenant key

theorem clearing_foreign_slice [DecidableEq Tenant]
    (store : PartitionedStore Tenant Key Value) (owner reader : Tenant)
    (foreign : reader ≠ owner) : clearTenant store owner reader = store reader := by
  funext key
  simp [clearTenant, foreign]

theorem clearing_is_idempotent [DecidableEq Tenant]
    (store : PartitionedStore Tenant Key Value) (owner : Tenant) :
    clearTenant (clearTenant store owner) owner = clearTenant store owner := by
  funext reader key
  by_cases same : reader = owner <;> simp [clearTenant, same]

/-- A returned value can hide a leak in auxiliary metadata. -/
theorem value_only_observation_is_insufficient :
    Noninterfering (fun _ : Bool => ()) (fun _ => ()) ∧
    ¬ Noninterfering (fun _ : Bool => ()) (fun secret => ((), secret)) := by
  constructor
  · exact fun _ _ _ => rfl
  · intro safe
    have pairEqual := safe false true rfl
    have impossible : false = true := congrArg Prod.snd pairEqual
    cases impossible

end GRWTSK.Cache.Observation
