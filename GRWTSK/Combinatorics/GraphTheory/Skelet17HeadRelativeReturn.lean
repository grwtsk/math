/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.Skelet17TapeMacroReturns
import GRWTSK.Combinatorics.GraphTheory.Skelet17TapeZipperPhysicalBridge

/-!
# Skelet #17: head-relative physical tape return, with exterior zero padding

The Coq `lower` tape has no distinguished absolute origin. The earlier port's
endpoint `WordPath TapeReadStep (encodePhysical u) bits (encodePhysical v)`
was too strong: Zero and Overflow can finish at head position +1 although
canonical re-encoding fixes the head at zero. The correct return compares ALL
head-relative cell reads and the original machine control state.

`zipper_models_to_relative` proves full semantic equivalence, not merely
agreement in the five-cell sofic observer. `nearBit_append_false` shows that
explicit exterior zeros change no semantic tape. `pairedRelative` composes a
SOURCE-SHAPED zipper return with a physical read path and the preexisting Gray
observer, keeping the two alphabets different.

Two required predicates remain EXPLICIT until discharged by checked proofs:
`CanonicalModels`, comparing the actual `encodePhysical` with the source
zipper, and `ReturnZipperComplete`, covering all returned macro constructors.
The source is Coq-BB5 `BB5_Skelet17.v` at
9142e219229baf2245d3f70851947230ea28a318. This file does not assign
these predicates by fiat or import the upstream Coq proof into Lean.
-/
set_option autoImplicit false
namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- Appending a single exterior blank changes no near-boundary read. -/
theorem nearBit_append_false (xs : List Bool) (n : ℕ) :
    nearBit (xs ++ [false]) n = nearBit xs n := by
  induction xs generalizing n with
  | nil => cases n <;> rfl
  | cons b bs ih =>
      cases n with
      | zero => rfl
      | succ n => simpa [nearBit] using ih n

/-- The single extra right-hand zero is semantic padding, not a required
new cell or an endpoint condition. -/
theorem zipperModels_right_zero_iff
    (z : TapeZipper) (c : PhysicalTape) :
    ZipperModels {z with right := z.right ++ [false]} c ↔
      ZipperModels z c := by
  constructor
  · intro h
    refine ⟨h.control_eq, h.scan_eq, h.left_eq, ?_⟩
    intro n
    simpa [nearBit_append_false] using h.right_eq n
  · intro h
    refine ⟨h.control_eq, h.scan_eq, h.left_eq, ?_⟩
    intro n
    simpa [nearBit_append_false] using h.right_eq n

/-- Physical tapes modeled by the SAME zipper have identical control and
all head-relative cells, without requiring equal absolute scanning positions. -/
theorem zipper_models_to_relative
    {z : TapeZipper} {c d : PhysicalTape}
    (hc : ZipperModels z c) (hd : ZipperModels z d) :
    RelativeTape c d := by
  refine ⟨hc.control_eq.symm.trans hd.control_eq, ?_⟩
  intro offset
  rcases lt_trichotomy offset 0 with hn | hz | hp
  · let n : ℕ := (-offset - 1).toNat
    have hn_eq : offset = -((n : ℤ) + 1) := by
      dsimp [n]
      omega
    rw [hn_eq, ← hc.left_eq n, ← hd.left_eq n]
  · subst offset
    exact hc.scan_eq.symm.trans hd.scan_eq
  · let n : ℕ := (offset - 1).toNat
    have hp_eq : offset = (n : ℤ) + 1 := by
      dsimp [n]
      omega
    rw [hp_eq, ← hc.right_eq n, ← hd.right_eq n]

/-- The source list is written in the EXISTING `lowerLeftWord` format. -/
def canonicalZipper (u : MacroState) : TapeZipper :=
  atLeft .C (lowerLeftWord ((u.1 - 1) :: u.2)) []

/-- Representation obligation for the original physical encoder, not an
assumed theorem disguised as a definition. -/
def CanonicalModels (u : MacroState) : Prop :=
  ZipperModels (canonicalZipper u) (encodePhysical u)

/-- Complete symbolic source macro return, with every actual read bit and
one harmless exterior blank. The six parity branches are written upstream. -/
def ReturnZipperComplete : Prop :=
  ∀ {u v : MacroState} {word : List MacroLabel},
    ReturnedMacro u word v →
      ∃ bits : List Bool,
        WordPath ZipperEdge (canonicalZipper u) bits
          {canonicalZipper v with right := [false]}

/-- Source-shaped zipper return lifts to actual physical execution and a
head-relative endpoint: never equate differently anchored absolute tapes. -/
theorem zipper_return_to_relative
    {u v : MacroState} {bits : List Bool}
    (hsource : CanonicalModels u) (htarget : CanonicalModels v)
    (path : WordPath ZipperEdge (canonicalZipper u) bits
      {canonicalZipper v with right := [false]}) :
    ∃ finish : PhysicalTape,
      WordPath TapeReadStep (encodePhysical u) bits finish ∧
      RelativeTape finish (encodePhysical v) := by
  obtain ⟨finish, physical, sem⟩ := zipper_path_to_physical path hsource
  have sameCanon : ZipperModels
      {canonicalZipper v with right := [false]} (encodePhysical v) :=
    (zipperModels_right_zero_iff (canonicalZipper v) (encodePhysical v)).2
      htarget
  exact ⟨finish, physical, zipper_models_to_relative sem sameCanon⟩

/-- Return to BOTH actual physical read words and Gray macro word paths.
The exact finite information can be consumed only after `canonical` and
`returns` have been separately established. -/
theorem pairedRelative
    (canonical : ∀ u : MacroState, CanonicalModels u)
    (returns : ReturnZipperComplete)
    {u v : MacroState} {macroWord : List MacroLabel}
    (h : ReturnedMacro u macroWord v) :
    ∃ bits : List Bool, ∃ start finish : ReadNode,
      TapeCoherent start (encodePhysical u) ∧
      WordPath ReadEdge start bits finish ∧
      TapeCoherent finish (encodePhysical v) ∧
      WordPath GrayEdge (grayObserve u) macroWord (grayObserve v) := by
  obtain ⟨bits, zipperPath⟩ := returns h
  obtain ⟨physicalFinish, actualPath, relative⟩ :=
    zipper_return_to_relative (canonical u) (canonical v) zipperPath
  obtain ⟨start, hstart⟩ := exists_initial_read (encodePhysical u)
  obtain ⟨finish, reads, coherent⟩ := physicalWordsToRead actualPath hstart
  exact ⟨bits, start, finish, hstart, reads,
    coherent.transport relative, h.toGrayWordPath⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17
