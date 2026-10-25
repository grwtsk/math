# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Authorization.RootedDerivations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ae46f1e24192d38e5f464b0a4e5da7de12d66f7` · SHA-256 `f34374cda7bd1d244c770fc7949035bd1d39ba08745bf1224c351a830a67aa5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Init

/-!
# Finite rooted derivations of scoped authorization

Conceptual direction and authorship: grwtsk contributors.
Lean formulation and proof development with AI assistance.

This module studies a finite inductive calculus, not an operational authority
registry. `roots` and `delegates` are independent mathematical parameters.
Interpreting them as actual authority, including identity, delegation rights,
current validity, and revocation, requires evidence outside this calculus. A
time-dependent application must supply the appropriate parameters at each time;
the theorems do not make an earlier authorization persist after revocation.

Every derivation has a finite path from a root. Explicit root and edge hypotheses
give invariant and scope preservation. Adding source or evidence symbols as
annotations is conservative: erasing them leaves an ordinary rooted derivation.
The finite examples use only abstract symbols and contain no authority records.
-/

universe u v w x y

namespace GRWTSK.Logic.Authorization

variable {Principal : Type u} {Scope : Type v}

/-- A finite authorization derivation. An edge can extend an existing derivation;
an edge alone, including an edge in a cycle, is not an introduction rule. -/
inductive RootedDerivation
    (roots : Principal → Scope → Prop)
    (delegates : Principal → Scope → Principal → Scope → Prop) :
    Principal → Scope → Prop where
  | root {p : Principal} {s : Scope} :
      roots p s → RootedDerivation roots delegates p s
  | step {p q : Principal} {s t : Scope} :
      RootedDerivation roots delegates p s → delegates p s q t →
      RootedDerivation roots delegates q t

/-- A finite, possibly empty path in the scoped delegation relation. -/
inductive DelegationPath
    (delegates : Principal → Scope → Principal → Scope → Prop)
    (p : Principal) (s : Scope) : Principal → Scope → Prop where
  | refl :
      DelegationPath delegates p s p s
  | step {q r : Principal} {t z : Scope} :
      DelegationPath delegates p s q t → delegates q t r z →
      DelegationPath delegates p s r z

variable {roots : Principal → Scope → Prop}
variable {delegates : Principal → Scope → Principal → Scope → Prop}

/-- The root belongs to this derivation's ancestry, not merely somewhere in the
ambient relation. Finiteness is supplied by the inductive path. -/
theorem derivation_has_root_path {p : Principal} {s : Scope}
    (h : RootedDerivation roots delegates p s) :
    ∃ r t, roots r t ∧ DelegationPath delegates r t p s := by
  induction h with
  | @root p s hr =>
      exact ⟨p, s, hr, DelegationPath.refl⟩
  | step _ edge ih =>
      obtain ⟨r, t, hr, path⟩ := ih
      exact ⟨r, t, hr, DelegationPath.step path edge⟩

/-- Every finite derivation contains an independently supplied root premise. -/
theorem derivation_has_root {p : Principal} {s : Scope}
    (h : RootedDerivation roots delegates p s) :
    ∃ r t, roots r t := by
  obtain ⟨r, t, hr, _⟩ := derivation_has_root_path h
  exact ⟨r, t, hr⟩

/-- A supplied root and a finite path suffice for a derivation in this calculus. -/
theorem derivation_of_root_path {r p : Principal} {t s : Scope}
    (hr : roots r t) (path : DelegationPath delegates r t p s) :
    RootedDerivation roots delegates p s := by
  induction path with
  | refl => exact RootedDerivation.root hr
  | step _ edge ih => exact RootedDerivation.step ih edge

/-- Characterization by rooted finite paths; no greatest-fixed-point or cyclic
proof interpretation is used. -/
theorem derivation_iff_root_path {p : Principal} {s : Scope} :
    RootedDerivation roots delegates p s ↔
      ∃ r t, roots r t ∧ DelegationPath delegates r t p s := by
  constructor
  · exact derivation_has_root_path
  · intro h
    obtain ⟨r, t, hr, path⟩ := h
    exact derivation_of_root_path hr path

/-- If there are no roots, no relation of delegation edges can create a finite
derivation. In particular, unrooted cycles cannot do so. -/
theorem no_roots_no_derivation
    (noRoots : ∀ p s, ¬ roots p s) (p : Principal) (s : Scope) :
    ¬ RootedDerivation roots delegates p s := by
  intro h
  obtain ⟨r, t, hr⟩ := derivation_has_root h
  exact noRoots r t hr

/-- An invariant follows only from explicit root and edge preservation premises. -/
theorem derivation_preserves
    (property : Principal → Scope → Prop)
    (rootCondition : ∀ p s, roots p s → property p s)
    (edgeCondition : ∀ p s q t,
      property p s → delegates p s q t → property q t)
    {p : Principal} {s : Scope}
    (h : RootedDerivation roots delegates p s) : property p s := by
  induction h with
  | root hr => exact rootCondition _ _ hr
  | step _ edge ih => exact edgeCondition _ _ _ _ ih edge

/-- A scope is interpreted by a predicate on abstract actions. The conclusion
requires that roots respect `bound` and every delegation narrows that predicate.
Neither hypothesis is inferred from the name or existence of an edge. -/
theorem derivation_scope_preserved
    {Action : Type w} (allows : Scope → Action → Prop) (bound : Action → Prop)
    (rootCondition : ∀ p s, roots p s → ∀ a, allows s a → bound a)
    (edgeCondition : ∀ p s q t,
      delegates p s q t → ∀ a, allows t a → allows s a)
    {p : Principal} {s : Scope}
    (h : RootedDerivation roots delegates p s) :
    ∀ a, allows s a → bound a := by
  apply derivation_preserves (fun _ scope => ∀ a, allows scope a → bound a)
    rootCondition ?_ h
  intro p s q t parent edge a ha
  exact parent a (edgeCondition p s q t edge a ha)

/-- Sources and evidence can annotate a derivation, but do not replace its root
or delegation premises. Their types carry no implicit authority interpretation.
The conservativity theorem below depends on exactly these introduction rules. -/
inductive SymbolicDerivation
    (roots : Principal → Scope → Prop)
    (delegates : Principal → Scope → Principal → Scope → Prop)
    (Source : Type x) (Evidence : Type y) : Principal → Scope → Prop where
  | root {p : Principal} {s : Scope} :
      roots p s → SymbolicDerivation roots delegates Source Evidence p s
  | step {p q : Principal} {s t : Scope} :
      SymbolicDerivation roots delegates Source Evidence p s → delegates p s q t →
      SymbolicDerivation roots delegates Source Evidence q t
  | cite {p : Principal} {s : Scope} :
      Source → SymbolicDerivation roots delegates Source Evidence p s →
      SymbolicDerivation roots delegates Source Evidence p s
  | support {p : Principal} {s : Scope} :
      Evidence → SymbolicDerivation roots delegates Source Evidence p s →
      SymbolicDerivation roots delegates Source Evidence p s

variable {Source : Type x} {Evidence : Type y}

/-- Erasing all source and evidence annotations preserves a rooted derivation. -/
theorem symbolic_derivation_erases {p : Principal} {s : Scope}
    (h : SymbolicDerivation roots delegates Source Evidence p s) :
    RootedDerivation roots delegates p s := by
  induction h with
  | root hr => exact RootedDerivation.root hr
  | step _ edge ih => exact RootedDerivation.step ih edge
  | cite _ _ ih => exact ih
  | support _ _ ih => exact ih

/-- The extension permits an ordinary derivation without any annotation. -/
theorem derivation_adds_symbols {p : Principal} {s : Scope}
    (h : RootedDerivation roots delegates p s) :
    SymbolicDerivation roots delegates Source Evidence p s := by
  induction h with
  | root hr => exact SymbolicDerivation.root hr
  | step _ edge ih => exact SymbolicDerivation.step ih edge

/-- Source and evidence annotations are a conservative extension, not a route
from arbitrary symbols to authority. This is a theorem about the defined rules,
not a claim that arbitrary external systems enforce those rules. -/
theorem symbolic_derivation_iff_derivation {p : Principal} {s : Scope} :
    SymbolicDerivation roots delegates Source Evidence p s ↔
      RootedDerivation roots delegates p s :=
  ⟨symbolic_derivation_erases, derivation_adds_symbols⟩

/-- Even inhabited source and evidence types cannot fill a missing root premise. -/
theorem no_roots_no_symbolic_derivation
    (noRoots : ∀ p s, ¬ roots p s) (p : Principal) (s : Scope) :
    ¬ SymbolicDerivation roots delegates Source Evidence p s := by
  intro h
  exact no_roots_no_derivation noRoots p s (symbolic_derivation_erases h)

namespace Examples

/-- A finite two-node cycle with one abstract scope. -/
inductive CycleStep : Bool → Unit → Bool → Unit → Prop where
  | forward : CycleStep false () true ()
  | backward : CycleStep true () false ()

/-- Both edges exist, so the negative result is not caused by a missing cycle. -/
theorem cycle_has_edges :
    CycleStep false () true () ∧ CycleStep true () false () :=
  ⟨CycleStep.forward, CycleStep.backward⟩

/-- Neither node has a derivation when the root predicate is empty. -/
theorem cycle_has_no_derivation (p : Bool) (s : Unit) :
    ¬ RootedDerivation (fun (_ : Bool) (_ : Unit) => False) CycleStep p s :=
  no_roots_no_derivation (fun _ _ h => h) p s

/-- A finite counterexample to promotion from inhabited source/evidence types
and cyclic delegation edges to a derivation. The `Unit` values are only symbols. -/
theorem symbols_and_cycle_do_not_create_authority :
    Nonempty Unit ∧ Nonempty Unit ∧
      CycleStep false () true () ∧ CycleStep true () false () ∧
      ¬ SymbolicDerivation (fun (_ : Bool) (_ : Unit) => False)
        CycleStep Unit Unit false () := by
  refine ⟨⟨()⟩, ⟨()⟩, CycleStep.forward, CycleStep.backward, ?_⟩
  exact no_roots_no_symbolic_derivation (fun _ _ h => h) false ()

end Examples

end GRWTSK.Logic.Authorization
```
