import GRWTSK.ComputerScience.TheoryOfData.DataStructures.DependencyInvalidation
import GRWTSK.ComputerScience.TheoryOfData.DataStructures.EvidenceResidual

/-!
# A source-bound theorem for checking only affected obligations

Local attribution: grwtsk contributors.

A change explicitly declares source changes and policy changes. Coverage of source
changes and preservation of methods outside policy changes are hypotheses, not
properties inferred from a filename, hash, or generated manifest. Evidence binds
an obligation to its complete reachable input closure. Its stored snapshot must
agree with the current environment at every reachable input.

The main theorem `checking_selected_suffices` derives full current completeness
from old completeness and fresh evidence for new, source-affected, or
policy-affected requirements. It first proves that every actually missing current
obligation belongs to that conservative selection, then applies the existing
exact residual-completion theorem. No previous full-source report is relabeled.

The returned conclusion is evidence completeness, not authorization or an
operational speedup. Selection can overapproximate the true residual. Dependency
extraction, policy honesty, and the interpretation of `method` remain explicit
external premises. Novelty and independent analytical review: not assessed.
Compilation, fresh kernel checking, and transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.Verification.Incremental

open GRWTSK.Evidence
open GRWTSK.Cache.Dependency

universe u v w z

variable {N : Type u} {V : Type v} {E : Type w} {O : Type z}

/-- Agreement is indexed by the support actually consumed by a theorem. -/
def Agreement (support : N → Prop) (recorded live : N → V) : Prop :=
  ∀ n, support n → recorded n = live n

theorem agreement_refl (support : N → Prop) (environment : N → V) :
    Agreement support environment environment := fun _ _ => rfl

theorem agreement_trans {support : N → Prop} {a b c : N → V}
    (ab : Agreement support a b) (bc : Agreement support b c) : Agreement support a c :=
  fun n hn => (ab n hn).trans (bc n hn)

theorem agreement_restrict {small large : N → Prop} {a b : N → V}
    (included : ∀ n, small n → large n) (same : Agreement large a b) :
    Agreement small a b := fun n hn => same n (included n hn)

def BoundValid (edge : N → N → Prop) (root : O → N) (snapshot : E → N → V)
    (environment : N → V) (method : E → O → Prop) : E → O → Prop :=
  fun e o => method e o ∧ Agreement (Reachable edge (root o)) (snapshot e) environment

/-- Source and policy coverage are separate proof obligations. -/
structure Change (N : Type u) (V : Type v) (E : Type w) (O : Type z) where
  edge : N → N → Prop
  root : O → N
  snapshot : E → N → V
  previous : N → V
  current : N → V
  changedInput : N → Prop
  previousMethod : E → O → Prop
  currentMethod : E → O → Prop
  changedPolicy : O → Prop
  inputCoverage : ∀ n, previous n ≠ current n → changedInput n
  methodPreservation : ∀ e o, ¬ changedPolicy o → previousMethod e o → currentMethod e o

namespace Change

def before (change : Change N V E O) : E → O → Prop :=
  BoundValid change.edge change.root change.snapshot change.previous change.previousMethod

def after (change : Change N V E O) : E → O → Prop :=
  BoundValid change.edge change.root change.snapshot change.current change.currentMethod

/-- Old obligations can be reused only outside both affected-source and changed-policy sets. -/
def Selected (change : Change N V E O) (oldRequired newRequired : Collection O) :
    Collection O :=
  fun o => newRequired o ∧ (¬ oldRequired o ∨
    Affected change.edge change.changedInput (change.root o) ∨ change.changedPolicy o)

theorem closure_agrees (change : Change N V E O) (o : O)
    (unaffected : ¬ Affected change.edge change.changedInput (change.root o)) :
    Agreement (Reachable change.edge (change.root o)) change.previous change.current := by
  classical
  intro n path
  by_cases same : change.previous n = change.current n
  · exact same
  · exact False.elim (unaffected ⟨n, path, change.inputCoverage n same⟩)

/-- Exact snapshot transport along a proved unchanged transitive input closure. -/
theorem reuse (change : Change N V E O) (e : E) (o : O)
    (unaffected : ¬ Affected change.edge change.changedInput (change.root o))
    (policyUnchanged : ¬ change.changedPolicy o)
    (old : change.before e o) : change.after e o := by
  constructor
  · exact change.methodPreservation e o policyUnchanged old.1
  · exact agreement_trans old.2 (change.closure_agrees o unaffected)

/-- Dependency planning is conservative with respect to the actual current residual. -/
theorem missing_in_selected (change : Change N V E O)
    (oldRequired newRequired : Collection O) (observed : Collection E)
    (oldComplete : Complete oldRequired change.before observed) :
    Collection.Included (Missing newRequired change.after observed)
      (change.Selected oldRequired newRequired) := by
  classical
  intro o missing
  refine ⟨missing.1, ?_⟩
  by_cases oldRequiredHere : oldRequired o
  · by_cases dirty : Affected change.edge change.changedInput (change.root o)
    · exact Or.inr (Or.inl dirty)
    · by_cases policyDirty : change.changedPolicy o
      · exact Or.inr (Or.inr policyDirty)
      · obtain ⟨e, present, valid⟩ := oldComplete o oldRequiredHere
        exact False.elim (missing.2 ⟨e, present, change.reuse e o dirty policyDirty valid⟩)
  · exact Or.inl oldRequiredHere

/-- The consumer theorem: targeted new evidence completes the current boundary. -/
theorem checking_selected_suffices (change : Change N V E O)
    (oldRequired newRequired : Collection O) (old fresh : Collection E)
    (oldComplete : Complete oldRequired change.before old)
    (checked : Complete (change.Selected oldRequired newRequired) change.after fresh) :
    Complete newRequired change.after (Collection.join old fresh) := by
  exact selected_work_suffices
    (change.missing_in_selected oldRequired newRequired old oldComplete) checked

/-- Any larger selected work set is sound, though not claimed efficient. -/
theorem checking_overapproximation_suffices (change : Change N V E O)
    (oldRequired newRequired selected : Collection O) (old fresh : Collection E)
    (oldComplete : Complete oldRequired change.before old)
    (covers : Collection.Included (change.Selected oldRequired newRequired) selected)
    (checked : Complete selected change.after fresh) :
    Complete newRequired change.after (Collection.join old fresh) := by
  apply change.checking_selected_suffices oldRequired newRequired old fresh oldComplete
  intro o ho
  exact checked o (covers o ho)

/-- Stable required consumers need no new witness, provided both stability premises hold. -/
theorem stable_requirements_complete (change : Change N V E O)
    (required : Collection O) (observed : Collection E)
    (oldComplete : Complete required change.before observed)
    (sourceStable : ∀ o, required o →
      ¬ Affected change.edge change.changedInput (change.root o))
    (policyStable : ∀ o, required o → ¬ change.changedPolicy o) :
    Complete required change.after observed := by
  intro o ho
  obtain ⟨e, present, valid⟩ := oldComplete o ho
  exact ⟨e, present, change.reuse e o (sourceStable o ho) (policyStable o ho) valid⟩

end Change

/-- Evidence tied to an old snapshot is not current merely because the method is unchanged. -/
theorem stale_snapshot_obstruction :
    BoundValid (fun _ _ : Unit => False) (fun _ : Unit => ())
      (fun _ _ : Unit => (0 : Nat)) (fun _ => 0) (fun _ _ => True) () () ∧
    ¬ BoundValid (fun _ _ : Unit => False) (fun _ : Unit => ())
      (fun _ _ : Unit => (0 : Nat)) (fun _ => 1) (fun _ _ => True) () () := by
  constructor
  · exact ⟨True.intro, fun _ _ => rfl⟩
  · intro current
    have impossible : (0 : Nat) = 1 := current.2 () (.refl ())
    cases impossible

/-- An empty historical profile says nothing about a newly introduced obligation. -/
theorem new_requirement_obstruction :
    Complete (fun _ : Unit => False) (fun _ _ : Unit => True) Collection.empty ∧
    Missing (fun _ : Unit => True) (fun _ _ : Unit => True) Collection.empty () := by
  constructor
  · intro _ impossible
    exact False.elim impossible
  · refine ⟨True.intro, ?_⟩
    intro supported
    obtain ⟨_, impossible, _⟩ := supported
    exact impossible

end GRWTSK.Verification.Incremental
