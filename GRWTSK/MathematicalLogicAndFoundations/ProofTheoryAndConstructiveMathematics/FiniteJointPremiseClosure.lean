import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.JointPremiseInference

/-!
# Executable finite joint-premise closure

Local attribution: grwtsk contributors. MIT.

Extend `JointPremiseInference` without changing its rule or derivation model.
Scan for an enabled rule, add its conclusion, remove that rule occurrence, and
rescan the remaining rules. Fuel equal to the initial number of rule occurrences
suffices. A skipped rule is retained and can become enabled later. Empty and
repeated premise lists, repeated rule occurrences, alternative proofs, and cycles
are covered by the same construction. No finite universe of atoms is required.

`mem_finiteClosure_iff` connects the actual list-valued algorithm to `Derivable`.
`finiteClosure_filter_iff` connects it to the existing backward-slice theorem.
A negative answer is relative to the supplied finite rule/fact inventories, not
to omitted repository mathematics. This is not an extractor, SAT encoding,
minimum-proof algorithm, runtime theorem, or empirical AI-performance result.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay and transitive axiom
audit: NOT_RUN. Executable definitions and written proof terms are not receipts.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.LeastDependencyClosure

namespace Finite

universe u
variable {α : Type u}

/-- A selected occurrence and the remaining rule list. The scanner constructs
these fields; clients do not supply a missing closure/soundness hypothesis. -/
structure Selection (rules : List (Rule α)) (facts : List α) where
  rule : Rule α
  rest : List (Rule α)
  enabled : ∀ p, p ∈ rule.premises → p ∈ facts
  partition : ∀ r, r ∈ rules ↔ r = rule ∨ r ∈ rest
  shorter : rest.length < rules.length

/-- A complete scan either exhibits a rule to fire or certifies that the current
facts already respect every remaining rule. The proof fields are erased at runtime. -/
inductive Scan (rules : List (Rule α)) (facts : List α) where
  | closed : ClosedUnder (fun r => r ∈ rules) (fun a => a ∈ facts) → Scan rules facts
  | fire : Selection rules facts → Scan rules facts

/-- Deterministic, constructive scan; all listed premises must be present.
When a head rule is disabled, it is retained in the result of a later selection. -/
def scan [DecidableEq α] : (rules : List (Rule α)) → (facts : List α) → Scan rules facts
  | [], facts => .closed (by intro r hr; cases hr)
  | r :: rs, facts =>
      if ready : ∀ p, p ∈ r.premises → p ∈ facts then
        .fire {
          rule := r
          rest := rs
          enabled := ready
          partition := by intro s; exact List.mem_cons
          shorter := Nat.lt_succ_self rs.length
        }
      else
        match scan rs facts with
        | .closed hc => .closed (by
            intro s hs hp
            cases List.mem_cons.mp hs with
            | inl he =>
                subst s
                exact False.elim (ready hp)
            | inr hs => exact hc s hs hp)
        | .fire selected => .fire {
            rule := selected.rule
            rest := r :: selected.rest
            enabled := selected.enabled
            partition := by
              intro s
              simp only [List.mem_cons, selected.partition]
              exact or_left_comm
            shorter := Nat.succ_lt_succ selected.shorter
          }

/-- Fuel-bounded implementation. Each firing removes one rule occurrence.
Insufficient fuel is allowed here and produces a sound, possibly incomplete prefix.
Use `finiteClosure`, not an arbitrary fuel value, for the complete decision API. -/
def run [DecidableEq α] : Nat → List (Rule α) → List α → List α
  | 0, _, facts => facts
  | fuel + 1, rules, facts =>
      match scan rules facts with
      | .closed _ => facts
      | .fire selected => run fuel selected.rest (selected.rule.conclusion :: facts)

/-- No starting fact is lost, even with insufficient fuel. -/
theorem run_extends [DecidableEq α] (fuel : Nat) (rules : List (Rule α))
    (facts : List α) : Included (fun a => a ∈ facts) (fun a => a ∈ run fuel rules facts) := by
  induction fuel generalizing rules facts with
  | zero => intro a ha; exact ha
  | succ fuel ih =>
      cases hs : scan rules facts with
      | closed hc =>
          intro a ha
          simpa only [run, hs] using ha
      | fire selected =>
          intro a ha
          have hx := ih selected.rest (selected.rule.conclusion :: facts)
            (List.mem_cons.mpr (Or.inr ha))
          simpa only [run, hs] using hx

/-- Every predicate that contains the initial facts and respects every supplied
rule contains every output atom, at every fuel level. No semantic rule validity
is inferred from the shape of a rule. -/
theorem run_preserves [DecidableEq α] (fuel : Nat) (rules : List (Rule α))
    (facts : List α) (holds : α → Prop)
    (hf : Included (fun a => a ∈ facts) holds)
    (hr : ClosedUnder (fun r => r ∈ rules) holds) :
    Included (fun a => a ∈ run fuel rules facts) holds := by
  induction fuel generalizing rules facts with
  | zero => exact hf
  | succ fuel ih =>
      cases hs : scan rules facts with
      | closed hc => simpa only [run, hs] using hf
      | fire selected =>
          have hf' : Included (fun a => a ∈ selected.rule.conclusion :: facts) holds := by
            intro a ha
            cases List.mem_cons.mp ha with
            | inl he =>
                subst a
                exact hr selected.rule ((selected.partition selected.rule).mpr (Or.inl rfl))
                  (by intro p hp; exact hf (selected.enabled p hp))
            | inr ha => exact hf ha
          have hr' : ClosedUnder (fun r => r ∈ selected.rest) holds := by
            intro r h hp
            exact hr r ((selected.partition r).mpr (Or.inr h)) hp
          have hx := ih selected.rest (selected.rule.conclusion :: facts) hf' hr'
          simpa only [run, hs] using hx

/-- With at least one unit of fuel per remaining rule occurrence, the output
is closed under every original rule. The budget is proved sufficient, rather
than assuming that a bounded iteration has stabilized. -/
theorem run_closed [DecidableEq α] (fuel : Nat) (rules : List (Rule α))
    (facts : List α) (budget : rules.length ≤ fuel) :
    ClosedUnder (fun r => r ∈ rules) (fun a => a ∈ run fuel rules facts) := by
  induction fuel generalizing rules facts with
  | zero =>
      cases rules with
      | nil => intro r hr; cases hr
      | cons r rs => simp at budget
  | succ fuel ih =>
      cases hs : scan rules facts with
      | closed hc => simpa only [run, hs] using hc
      | fire selected =>
          have hb : selected.rest.length ≤ fuel :=
            Nat.le_of_lt_succ (Nat.lt_of_lt_of_le selected.shorter budget)
          have hc := ih selected.rest (selected.rule.conclusion :: facts) hb
          intro r hr hp
          have hp' : ∀ p, p ∈ r.premises →
              p ∈ run fuel selected.rest (selected.rule.conclusion :: facts) := by
            simpa only [run, hs] using hp
          have hx : r.conclusion ∈
              run fuel selected.rest (selected.rule.conclusion :: facts) := by
            cases (selected.partition r).mp hr with
            | inl he =>
                subst r
                exact run_extends fuel selected.rest (selected.rule.conclusion :: facts)
                  (List.mem_cons.mpr (Or.inl rfl))
            | inr hr => exact hc r hr hp'
          simpa only [run, hs] using hx

/-- The complete executable closure. Output order and duplicate occurrences are
implementation details; its mathematical interface is membership. -/
def finiteClosure [DecidableEq α] (rules : List (Rule α)) (facts : List α) : List α :=
  run rules.length rules facts

theorem finiteClosure_extends [DecidableEq α] (rules : List (Rule α)) (facts : List α) :
    Included (fun a => a ∈ facts) (fun a => a ∈ finiteClosure rules facts) :=
  run_extends rules.length rules facts

theorem finiteClosure_closed [DecidableEq α] (rules : List (Rule α)) (facts : List α) :
    ClosedUnder (fun r => r ∈ rules) (fun a => a ∈ finiteClosure rules facts) :=
  run_closed rules.length rules facts (Nat.le_refl _)

/-- Soundness is a theorem about this implementation, not a supplied field. -/
theorem finiteClosure_sound [DecidableEq α] (rules : List (Rule α)) (facts : List α) :
    Included (fun a => a ∈ finiteClosure rules facts)
      (Derivable (fun r => r ∈ rules) (fun a => a ∈ facts)) :=
  run_preserves rules.length rules facts _
    (by intro a ha; exact Derivable.assumption ha)
    (derivable_closed (fun r => r ∈ rules) (fun a => a ∈ facts))

/-- Completeness follows from the constructed closed output, not from a finite
example or an assumption that the implementation already realizes derivability. -/
theorem finiteClosure_complete [DecidableEq α] (rules : List (Rule α)) (facts : List α) :
    Included (Derivable (fun r => r ∈ rules) (fun a => a ∈ facts))
      (fun a => a ∈ finiteClosure rules facts) :=
  derivable_sound (finiteClosure_extends rules facts) (finiteClosure_closed rules facts)

/-- Main correspondence: the actual finite computation answers the existing
inductive inference relation for exactly the supplied rule and fact inventories. -/
theorem mem_finiteClosure_iff [DecidableEq α] (rules : List (Rule α))
    (facts : List α) (a : α) :
    a ∈ finiteClosure rules facts ↔ Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) a := by
  constructor
  · intro h
    exact finiteClosure_sound rules facts h
  · intro h
    exact finiteClosure_complete rules facts h

/-- Executable Boolean query, with no classical decision procedure. -/
def decideFiniteClosure [DecidableEq α] (rules : List (Rule α)) (facts : List α)
    (a : α) : Bool := decide (a ∈ finiteClosure rules facts)

theorem decideFiniteClosure_eq_true_iff [DecidableEq α] (rules : List (Rule α))
    (facts : List α) (a : α) :
    decideFiniteClosure rules facts a = true ↔
      Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) a := by
  constructor
  · intro h
    exact (mem_finiteClosure_iff rules facts a).mp (of_decide_eq_true h)
  · intro h
    exact decide_eq_true ((mem_finiteClosure_iff rules facts a).mpr h)

/-- Reordering or repeating inventory entries changes neither derivability nor
membership. No claim is made that returned lists have identical order or length. -/
theorem finiteClosure_inventory_congr [DecidableEq α]
    (rules rules' : List (Rule α)) (facts facts' : List α)
    (hr : ∀ r, r ∈ rules ↔ r ∈ rules') (hf : ∀ a, a ∈ facts ↔ a ∈ facts') (a : α) :
    a ∈ finiteClosure rules facts ↔ a ∈ finiteClosure rules' facts' := by
  constructor
  · intro h
    apply finiteClosure_complete rules' facts'
    exact derivable_mono (by intro r h; exact (hr r).mp h)
      (by intro p h; exact (hf p).mp h) (finiteClosure_sound rules facts h)
  · intro h
    apply finiteClosure_complete rules facts
    exact derivable_mono (by intro r h; exact (hr r).mpr h)
      (by intro p h; exact (hf p).mpr h) (finiteClosure_sound rules' facts' h)

/-- Retrieval consumer: filtering both inventories by a decidable backward-closed
slice preserves the computed answer at every retained atom. The slice condition
is essential and is exactly the one consumed by `derivable_restrict`. -/
theorem finiteClosure_filter_iff [DecidableEq α] (rules : List (Rule α))
    (facts : List α) (keep : α → Prop) [DecidablePred keep]
    (closed : ∀ ⦃a b⦄, keep a → RuleDepends (fun r => r ∈ rules) a b → keep b)
    {a : α} (ha : keep a) :
    a ∈ finiteClosure (rules.filter (fun r => decide (keep r.conclusion)))
      (facts.filter (fun p => decide (keep p))) ↔ a ∈ finiteClosure rules facts := by
  simp only [mem_finiteClosure_iff]
  constructor
  · intro h
    exact derivable_mono
      (by intro r hr; exact (List.mem_filter.mp hr).1)
      (by intro p hp; exact (List.mem_filter.mp hp).1) h
  · intro h
    have hs := derivable_restrict closed h ha
    exact derivable_mono
      (by
        intro r hr
        exact List.mem_filter.mpr ⟨hr.1, decide_eq_true hr.2⟩)
      (by
        intro p hp
        exact List.mem_filter.mpr ⟨hp.1, decide_eq_true hp.2⟩) hs

namespace Examples

/-- Zero-premise rules supply facts even when the input fact list is empty. -/
theorem emptyPremise : decideFiniteClosure [⟨[], 0⟩] [] 0 = true := by decide

/-- An empty inventory cannot invent a fact. -/
theorem emptyInventory : decideFiniteClosure ([] : List (Rule Nat)) [] 0 = false := by decide

/-- One known conjunct is not enough. -/
theorem missingConjunct : decideFiniteClosure [binaryRule] [0] 2 = false := by decide

/-- The second alternative can succeed although the first has a missing premise. -/
theorem alternativeProof :
    decideFiniteClosure [⟨[0], 2⟩, ⟨[1], 2⟩] [1] 2 = true := by decide

/-- Logical premises are reusable, not linear resources consumed on occurrence. -/
theorem repeatedPremise : decideFiniteClosure [⟨[0, 0], 1⟩] [0] 1 = true := by decide

theorem repeatedPremiseStillNeedsOther :
    decideFiniteClosure [⟨[0, 0, 1], 2⟩] [0] 2 = false := by decide

/-- Cyclic support with no seed does not supply a derivation. -/
theorem unseededCycle :
    decideFiniteClosure [⟨[0], 1⟩, ⟨[1], 0⟩] [] 0 = false := by decide

theorem seededCycle :
    decideFiniteClosure [⟨[0], 1⟩, ⟨[1], 0⟩] [0] 1 = true := by decide

/-- A rule skipped earlier must be reconsidered after a later rule fires. -/
theorem rescanRequired :
    decideFiniteClosure [⟨[1], 2⟩, ⟨[0], 1⟩, ⟨[], 0⟩] [] 2 = true := by decide

/-- Duplicate rules may use extra fuel, but do not change logical membership. -/
theorem duplicateRules :
    decideFiniteClosure [⟨[0], 1⟩, ⟨[0], 1⟩] [0, 0] 1 = true := by decide

/-- The public API supplies its complete budget; a truncated run is not a
complete non-derivability test. -/
theorem insufficientFuel :
    (0 : Nat) ∉ run 0 [⟨[], 0⟩] [] ∧ decideFiniteClosure [⟨[], 0⟩] [] 0 = true := by decide

/-- Filtering to the goal alone can delete a needed fact and change the answer. -/
theorem incompleteSlice :
    decideFiniteClosure [⟨[0], 1⟩] [0] 1 = true ∧
      decideFiniteClosure [⟨[0], 1⟩] [] 1 = false := by decide

end Examples
end Finite
end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference
