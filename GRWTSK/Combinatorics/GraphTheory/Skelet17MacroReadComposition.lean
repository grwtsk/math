/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.Skelet17GrayMacroObserver
import GRWTSK.Combinatorics.GraphTheory.Skelet17RadiusTwoReadObserver

/-!
# Skelet #17: composition of macro and binary read observers

This module reuses the existing `SearchSoficLanguage.WordPath` for BOTH
alphabets. It formalizes the exact *source return shapes* appearing in
Coq-BB5 `BB5_Skelet17.v` at revision
9142e219229baf2245d3f70851947230ea28a318:

* `Increment_toConfig`: Increment; TryHalve;
* `Zero_toConfig`: Zero; TryHalve;
* `Overflow_toConfig`: Overflow; Zero; TryHalve.

TryHalve is either the actual Halve macro rule or an identity operation. The
intermediate state after standalone Overflow need NOT be a visited physical
machine state. Hence there is no claim that each abstract macro event is one
TM instruction. The true source comparison exists in the cited Coq development;
it has not been imported or newly rechecked in Lean here.

An explicit `SourceReadPort` carries the TWO still-unproved bridge obligations:
  (a) each returned Coq-shaped macro chain has a realized physical read trace;
  (b) each physical read step is sound under the radius-two knowledge update.
These are FIELDS, not hidden axioms or definitions that make execution true.
Given actual witnesses, `returnedMacro_paired` supplies an authentic physical
binary-read path AND the source-projected Gray macro path. The label lists
remain separate. In particular this module does NOT assert that a naïve
synchronous product `G2 × H1` rejects more than 5 of the 64 six-bit words, or
that the two distinct entropy rates have a combined value.

Primary proof: induction on the original labeled paths; no probabilities,
pruning-by-spectrum, or erasure of read/write/head-motion information.
Counterexample boundary: `GrayEdge` has edges that are only necessary
conditions on source transitions; it cannot create the missing physical bridge.
The source Coq nonhalting theorem is neither replaced nor reproved.
AI-assisted formalization candidate. No new Lean build, kernel replay or
transitive axiom audit was executed. No new source-dependent theorem priority
is claimed.
-/
set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- Exactly the source's `TryHalve`: take Halve from a zero first component,
or leave a positive first component unchanged. The event word records whether
Halve was actually taken. -/
inductive TryHalvePath : MacroState → List MacroLabel → MacroState → Prop where
  | take (x : ℕ) (xs : List ℕ) :
      TryHalvePath (0, x :: xs) [.halve] (x + 1, xs)
  | skip (x : ℕ) (xs : List ℕ) :
      TryHalvePath (x + 1, xs) [] (x + 1, xs)

/-- TryHalve is either a genuine Halve step or the zero-length identity path. -/
theorem TryHalvePath.toWordPath
    {u v : MacroState} {word : List MacroLabel}
    (h : TryHalvePath u word v) : WordPath MacroEdge u word v := by
  cases h with
  | take x xs =>
      exact WordPath.cons (MacroEdge.halve x xs) (WordPath.nil _)
  | skip x xs =>
      exact WordPath.nil _

/-- Composite return shapes for which the cited Coq source supplies an
individual multi-TM-step adapter, *after* the TryHalve phase. -/
inductive ReturnedMacro : MacroState → List MacroLabel → MacroState → Prop where
  | increment {u middle v : MacroState} {tail : List MacroLabel}
      (step : MacroEdge u .increment middle)
      (after : TryHalvePath middle tail v) :
      ReturnedMacro u (.increment :: tail) v
  | zero {u middle v : MacroState} {tail : List MacroLabel}
      (step : MacroEdge u .zero middle)
      (after : TryHalvePath middle tail v) :
      ReturnedMacro u (.zero :: tail) v
  | overflow {u middle next v : MacroState} {tail : List MacroLabel}
      (first : MacroEdge u .overflow middle)
      (second : MacroEdge middle .zero next)
      (after : TryHalvePath next tail v) :
      ReturnedMacro u (.overflow :: .zero :: tail) v

/-- Every source-return shape preserves the COMPLETE ordered macro word.
This is a theorem about the literal source list relations, not physical tapes. -/
theorem ReturnedMacro.toWordPath
    {u v : MacroState} {word : List MacroLabel}
    (h : ReturnedMacro u word v) : WordPath MacroEdge u word v := by
  cases h with
  | increment step after =>
      exact WordPath.cons step after.toWordPath
  | zero step after =>
      exact WordPath.cons step after.toWordPath
  | overflow first second after =>
      exact WordPath.cons first
        (WordPath.cons second after.toWordPath)

/-- The source-return macro word is faithfully accepted by the Gray graph,
with identical labels and source-projected endpoints. -/
theorem ReturnedMacro.toGrayWordPath
    {u v : MacroState} {word : List MacroLabel}
    (h : ReturnedMacro u word v) :
    WordPath GrayEdge (grayObserve u) word (grayObserve v) :=
  macroPath_to_gray h.toWordPath

/-- A source-specific port needed to interpret returned macro chains as
actual *binary read words*. No instance is provided without its missing Coq
to Lean or natively proved execution correspondence.

`coherent` relates the possibly-unknown 5-cell local state to a concrete
physical tape/head configuration; the original complete tape data is not
modeled or discarded merely by constructing this interface. -/
structure SourceReadPort (PhysicalConfig : Type) where
  physicalStep : PhysicalConfig → Bool → PhysicalConfig → Prop
  encode : MacroState → PhysicalConfig
  coherent : ReadNode → PhysicalConfig → Prop
  initialCoherent : ∀ u : MacroState,
    ∃ r : ReadNode, coherent r (encode u)
  /-- Exact Coq-shaped macro return -> full physical read-word witness. -/
  returnedToPhysical :
    ∀ {u v : MacroState} {macroWord : List MacroLabel},
      ReturnedMacro u macroWord v →
        ∃ bits : List Bool,
          WordPath physicalStep (encode u) bits (encode v)
  /-- Every actual one-step read preserves the declared local knowledge.
  This must cover writes, head direction and unknown-cell forgetting. -/
  physicalStepToRead :
    ∀ {c d : PhysicalConfig} {bit : Bool} {r : ReadNode},
      physicalStep c bit d → coherent r c →
        ∃ r' : ReadNode, ReadEdge r bit r' ∧ coherent r' d

/-- Source-exact physical word paths lift to radius-two words if a faithful
one-step knowledge adapter has been supplied. No tape step is inferred from
abstract acceptance alone. -/
theorem SourceReadPort.liftPhysicalWord
    {PhysicalConfig : Type}
    (P : SourceReadPort PhysicalConfig)
    {c d : PhysicalConfig} {bits : List Bool}
    (h : WordPath P.physicalStep c bits d)
    {r : ReadNode} (hc : P.coherent r c) :
    ∃ r' : ReadNode,
      WordPath ReadEdge r bits r' ∧ P.coherent r' d := by
  induction h generalizing r with
  | nil c =>
      exact ⟨r, WordPath.nil r, hc⟩
  | @cons c m d bit tail step rest ih =>
      obtain ⟨rm, edge, hm⟩ := P.physicalStepToRead step hc
      obtain ⟨rd, path, hd⟩ := ih hm
      exact ⟨rd, WordPath.cons edge path, hd⟩

/-- The meaningful composition theorem: provided *both actual source ports*,
one returned macro chain has a concrete binary read word in radius two and a
Gray macro word. The words have different alphabets and cannot be equated. -/
theorem returnedMacro_paired
    {PhysicalConfig : Type}
    (P : SourceReadPort PhysicalConfig)
    {u v : MacroState} {macroWord : List MacroLabel}
    (h : ReturnedMacro u macroWord v) :
    ∃ (bits : List Bool) (start finish : ReadNode),
      P.coherent start (P.encode u) ∧
      WordPath ReadEdge start bits finish ∧
      P.coherent finish (P.encode v) ∧
      WordPath GrayEdge (grayObserve u) macroWord (grayObserve v) := by
  obtain ⟨bits, physicalPath⟩ := P.returnedToPhysical h
  obtain ⟨start, hstart⟩ := P.initialCoherent u
  obtain ⟨finish, readPath, hfinish⟩ :=
    P.liftPhysicalWord physicalPath hstart
  exact ⟨bits, start, finish, hstart, readPath, hfinish,
    h.toGrayWordPath⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17
