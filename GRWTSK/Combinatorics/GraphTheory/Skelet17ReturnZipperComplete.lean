/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.Skelet17CanonicalModels
import Mathlib.Tactic

/-!
# Skelet #17: complete constructor dispatch for the source macro returns

This is a constructor-by-constructor consumer of the *actual* Coq-shaped
`ReturnedMacro` relation, not a newly defined substitute macro semantics.
The tape cases are exactly the seven existing unbounded zipper returns:
`increment_odd_zipper`, `increment_S_even_zipper`, `increment_O_zipper`,
`zero_S_zipper`, `zero_O_zipper`, `overflow_S_zipper`, `overflow_O_zipper`.

Critical detail: `Overflow` is not independently returned to the physical
tape. `ReturnedMacro.overflow` requires a subsequent `Zero` and `TryHalve`.
The `zeroEdge_result` uniqueness lemma derives the actual intermediate state
from this original `MacroEdge.zero` constructor; no assumption that an
intermediate control configuration was visited is introduced.

The physical comparison remains all-cells head-relative, and the output zipper
contains one semantically invisible explicit right-side zero. The complete
source proof is pinned to Coq-BB5 `BB5_Skelet17.v` at
ccz181078/Coq-BB5@9142e219229baf2245d3f70851947230ea28a318.

Authoring evidence: source proof candidate only. Lean compilation, fresh kernel
checking, axiom audit, and independent review have NOT_RUN status.
-/
set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- Literal source list interpreted by Coq `toConfig` for a positive first
component. Zero is only a totalization of the encoding, never silently a
physical configuration satisfying Coq `toConfig`. -/
private def macroExponents (u : MacroState) : List ℕ :=
  (u.1 - 1) :: u.2

/-- At the endpoint, TryHalve either removes a leading zero and takes the
first list element as first component, or leaves a positive first component
unchanged. The physical SOURCE WORD after either branch is captured exactly. -/
private theorem tryHalve_exponents
    {u v : MacroState} {tail : List MacroLabel}
    (h : TryHalvePath u tail v) :
    macroExponents v =
      if u.1 = 0 then u.2 else macroExponents u := by
  cases h with
  | take x xs => simp [macroExponents]
  | skip x xs => simp [macroExponents]

/-- If two source-exponent lists are equal, the corresponding zipper-return
witness transports without any quotient of the source macro relation. -/
private theorem sourceWord_return
    {u v : MacroState} (src dst : List ℕ)
    (hsrc : macroExponents u = src)
    (hdst : macroExponents v = dst)
    (h : ∃ bits : List Bool,
      WordPath ZipperEdge (atLeft .C (lowerLeftWord src) []) bits
        (atLeft .C (lowerLeftWord dst) [false])) :
    ∃ bits : List Bool,
      WordPath ZipperEdge (canonicalZipper u) bits
        {canonicalZipper v with right := [false]} := by
  rcases h with ⟨bits, path⟩
  refine ⟨bits, ?_⟩
  change WordPath ZipperEdge
    (atLeft .C (lowerLeftWord (macroExponents u)) []) bits
    (atLeft .C (lowerLeftWord (macroExponents v)) [false])
  rw [hsrc, hdst]
  exact path

/-- Last-element decomposition is uniquely defined, so a Zero macro step
has a unique target for a fixed source; this is not merely a parity rule. -/
private def splitLastNat : List ℕ → Option (List ℕ × ℕ)
  | [] => none
  | x :: xs =>
      match splitLastNat xs with
      | none => some ([], x)
      | some (prefix, last) => some (x :: prefix, last)

private theorem splitLastNat_append (xs : List ℕ) (y : ℕ) :
    splitLastNat (xs ++ [y]) = some (xs, y) := by
  induction xs with
  | nil => rfl
  | cons x xs ih => simpa [splitLastNat, ih]

private def zeroResult (s : MacroState) : MacroState :=
  match splitLastNat s.2 with
  | none => s
  | some (xs, y) => (s.1 - 1, xs ++ [y + 1, 0, 0])

private theorem zeroEdge_result
    {s t : MacroState} (h : MacroEdge s .zero t) :
    t = zeroResult s := by
  cases h with
  | zero x xs y hx hnz he hy =>
      simp [zeroResult, splitLastNat_append, Nat.add_sub_cancel]

/-- The parity and nonzero guards are retained, not replaced with a single
unproved `EvenPositive` axiom. -/
private theorem evenPositive_of_coq
    (xs : List ℕ)
    (hnz : ∀ t ∈ xs, t ≠ 0)
    (he : ∀ t ∈ xs, t % 2 = 0) :
    EvenPositive xs := by
  intro t ht
  exact ⟨he t ht, Nat.pos_of_ne_zero (hnz t ht)⟩

/-- Every genuine source-shaped returned macro transition is covered by
one of the existing arbitrary-exponent zipper simulations. A standalone
virtual Overflow is never assigned a physical read word. -/
theorem returnZipperComplete : ReturnZipperComplete := by
  intro u v word returned
  cases returned with
  | increment step after =>
      cases step with
      | incrementEven x xs y z zs hx hnz he hy =>
          have hxs := evenPositive_of_coq xs hnz he
          obtain ⟨n, hyEq⟩ : ∃ n : ℕ, y = 2 * n + 1 :=
            ⟨y / 2, by omega⟩
          have hv := tryHalve_exponents after
          by_cases hx0 : x = 0
          · subst x
            have hpath := increment_O_zipper n z xs zs hxs
            apply sourceWord_return
              (src := 0 :: xs ++ (2 * n + 1) :: z :: zs)
              (dst := xs ++ (2 * n + 1) :: (z + 1) :: zs)
            · simp [macroExponents, hyEq]
            · simpa [macroExponents, hyEq] using hv
            · exact hpath
          · obtain ⟨m, hxEq⟩ : ∃ m : ℕ, x = 2 * (m + 1) :=
              ⟨x / 2 - 1, by omega⟩
            have hpath := increment_S_even_zipper m n z xs zs hxs
            apply sourceWord_return
              (src := (2 * (m + 1)) :: xs ++ (2 * n + 1) :: z :: zs)
              (dst := (2 * (m + 1) - 1) ::
                xs ++ (2 * n + 1) :: (z + 1) :: zs)
            · simp [macroExponents, hxEq, hyEq]
            · simpa [macroExponents, hxEq, hx0, hyEq] using hv
            · exact hpath
      | incrementOdd x y xs hx =>
          obtain ⟨n, hxEq⟩ : ∃ n : ℕ, x = 2 * n + 1 :=
            ⟨x / 2, by omega⟩
          have hv := tryHalve_exponents after
          have hpath := increment_odd_zipper n y xs
          apply sourceWord_return
            (src := (2 * n + 1) :: y :: xs)
            (dst := (2 * n) :: (y + 1) :: xs)
          · simp [macroExponents, hxEq]
          · simpa [macroExponents, hxEq] using hv
          · exact hpath
  | zero step after =>
      cases step with
      | zero x xs y hx hnz he hy =>
          have hxs := evenPositive_of_coq xs hnz he
          obtain ⟨n, hyEq⟩ : ∃ n : ℕ, y = 2 * n :=
            ⟨y / 2, by omega⟩
          have hv := tryHalve_exponents after
          by_cases hx0 : x = 0
          · subst x
            have hpath := zero_O_zipper n xs hxs
            apply sourceWord_return
              (src := 0 :: xs ++ [2 * n])
              (dst := xs ++ [2 * n + 1, 0, 0])
            · simp [macroExponents, hyEq]
            · simpa [macroExponents, hyEq] using hv
            · exact hpath
          · obtain ⟨m, hxEq⟩ : ∃ m : ℕ, x = 2 * (m + 1) :=
              ⟨x / 2 - 1, by omega⟩
            have hpath := zero_S_zipper m n xs hxs
            apply sourceWord_return
              (src := (2 * (m + 1)) :: xs ++ [2 * n])
              (dst := (2 * (m + 1) - 1) ::
                xs ++ [2 * n + 1, 0, 0])
            · simp [macroExponents, hxEq, hyEq]
            · simpa [macroExponents, hxEq, hyEq, hx0] using hv
            · exact hpath
  | overflow first second after =>
      cases first with
      | overflow x xs y hx hnz he hy =>
          have hxs := evenPositive_of_coq xs hnz he
          have hnext := zeroEdge_result second
          have hnormalized :
              zeroResult (x + 1, xs ++ [y + 1, 0]) =
                (x, xs ++ [y + 1, 1, 0, 0]) := by
            have hlast : xs ++ [y + 1, 0] = (xs ++ [y + 1]) ++ [0] := by
              simp [List.append_assoc]
            rw [hlast]
            simp [zeroResult, splitLastNat_append, List.append_assoc]
          rw [hnormalized] at hnext
          -- An actual second Zero is forced to the unique normalized target.
          -- Rewriting it cannot invent a physical visit to the intermediate.
          cases hnext
          obtain ⟨n, hyEq⟩ : ∃ n : ℕ, y = 2 * n + 1 :=
            ⟨y / 2, by omega⟩
          have hv := tryHalve_exponents after
          by_cases hx0 : x = 0
          · subst x
            have hpath := overflow_O_zipper n xs hxs
            apply sourceWord_return
              (src := 0 :: xs ++ [2 * n + 1])
              (dst := xs ++ [2 * n + 2, 1, 0, 0])
            · simp [macroExponents, hyEq]
            · simpa [macroExponents, hyEq] using hv
            · exact hpath
          · obtain ⟨m, hxEq⟩ : ∃ m : ℕ, x = 2 * (m + 1) :=
              ⟨x / 2 - 1, by omega⟩
            have hpath := overflow_S_zipper m n xs hxs
            apply sourceWord_return
              (src := (2 * (m + 1)) :: xs ++ [2 * n + 1])
              (dst := (2 * (m + 1) - 1) ::
                xs ++ [2 * n + 2, 1, 0, 0])
            · simp [macroExponents, hxEq, hyEq]
            · simpa [macroExponents, hxEq, hyEq, hx0] using hv
            · exact hpath

/-! ### Universal physical return, retaining the actual endpoint

The minimal representation invariant is `ZipperModels`: control, scanned
cell, and every cell on each side, with zero beyond finite storage. Absolute
origin and exterior zero padding are not invariants of Coq's stream tapes.
Parity/nonzero guards belong to the macro constructors, not to the physical
simulation. A radius-two agreement alone cannot replace this invariant.

The following consumer starts from ANY physical representative of the source.
Thus successive macro returns can reuse the actual previous endpoint; they
need not reset the head or tape to `encodePhysical`. This is a relative
replacement for the legacy absolute `fullReturn`, not a proof of that stronger
premise. All imported source candidates retain their NOT_RUN evidence status.
-/

/-- An all-cells relative equality transports the complete zipper model. -/
theorem ZipperModels.transport_relative
    {z : TapeZipper} {c d : PhysicalTape}
    (model : ZipperModels z c) (rel : RelativeTape c d) :
    ZipperModels z d := by
  refine ⟨model.control_eq.trans rel.control_eq,
    model.scan_eq.trans (rel.at 0), ?_, ?_⟩
  · intro n
    exact (model.left_eq n).trans (rel.at (-((n : ℤ) + 1)))
  · intro n
    exact (model.right_eq n).trans (rel.at ((n : ℤ) + 1))

/-- Universal source return from any correctly represented input tape.
The word is the complete ordered physical READ word; `macroWord` is retained
separately by the source relation. No execution hypothesis is supplied. -/
theorem returnedToPhysical_relative_from
    {u v : MacroState} {macroWord : List MacroLabel} {c : PhysicalTape}
    (returned : ReturnedMacro u macroWord v)
    (input : RelativeTape c (encodePhysical u)) :
    ∃ (bits : List Bool) (d : PhysicalTape),
      WordPath TapeReadStep c bits d ∧ RelativeTape d (encodePhysical v) := by
  obtain ⟨bits, path⟩ := returnZipperComplete returned
  have sourceModel : ZipperModels (canonicalZipper u) c :=
    ZipperModels.transport_relative (canonicalModels_all u) input.symm
  obtain ⟨d, physical, targetModel⟩ := zipper_path_to_physical path sourceModel
  have canonicalTarget : ZipperModels
      {canonicalZipper v with right := [false]} (encodePhysical v) :=
    (zipperModels_right_zero_iff (canonicalZipper v) (encodePhysical v)).2
      (canonicalModels_all v)
  exact ⟨bits, d, physical, zipper_models_to_relative targetModel canonicalTarget⟩

/-- Explicit universal physical return at the canonical source, with the
head-relative endpoint required by the original Coq representation. -/
theorem returnedToPhysical_relative
    {u v : MacroState} {macroWord : List MacroLabel}
    (returned : ReturnedMacro u macroWord v) :
    ∃ (bits : List Bool) (d : PhysicalTape),
      WordPath TapeReadStep (encodePhysical u) bits d ∧
      RelativeTape d (encodePhysical v) :=
  returnedToPhysical_relative_from returned (RelativeTape.refl _)

/-- Continue the SAME observer from an actual preceding physical endpoint.
Unknown cells are never replaced by zeros and no observer reset is needed. -/
theorem pairedRelative_continuing
    {u v : MacroState} {macroWord : List MacroLabel}
    {c : PhysicalTape} {start : ReadNode}
    (returned : ReturnedMacro u macroWord v)
    (input : RelativeTape c (encodePhysical u))
    (coherent : TapeCoherent start c) :
    ∃ (bits : List Bool) (d : PhysicalTape) (finish : ReadNode),
      WordPath TapeReadStep c bits d ∧
      RelativeTape d (encodePhysical v) ∧
      WordPath ReadEdge start bits finish ∧ TapeCoherent finish d ∧
      WordPath GrayEdge (grayObserve u) macroWord (grayObserve v) := by
  obtain ⟨bits, d, physical, relative⟩ :=
    returnedToPhysical_relative_from returned input
  obtain ⟨finish, reads, model⟩ := physicalWordsToRead physical coherent
  exact ⟨bits, d, finish, physical, relative, reads, model,
    returned.toGrayWordPath⟩

/-! ### Exact obstruction to reusing the bounded Zero word absolutely

The seven-step Zero endpoint has head +1. Determinism rules out an absolute
head-zero endpoint for that SAME read word. This does not rule out a later
visit under a different word, and therefore is not a disproof of the legacy
existential `fullReturn`. The relative bridge above needs no such later visit.
-/

/-- Every relational physical step is computed by the original interpreter. -/
theorem TapeReadStep.nextPhysical_eq
    {c d : PhysicalTape} {bit : Bool} (step : TapeReadStep c bit d) :
    nextPhysical c = some (bit, d) := by
  cases step with
  | step c a hi => simp [nextPhysical, hi]

/-- A physical word path fixes its finite interpreter result, including the
actual endpoint and the number of steps. This is the converse of soundness. -/
theorem physicalPath_run
    {c d : PhysicalTape} {bits : List Bool}
    (path : WordPath TapeReadStep c bits d) :
    runPhysical bits.length c = some (bits, d) := by
  induction path with
  | nil c => rfl
  | cons step tail ih =>
      simp [runPhysical, step.nextPhysical_eq, ih]

/-- The known Zero read word cannot finish at the absolute canonical head.
Only this word is excluded; no universal nonreachability claim is made. -/
theorem zero_small_no_absolute_same_word :
    ¬ WordPath TapeReadStep (encodePhysical (1, [0]))
      zeroReadBits (encodePhysical (2, [0, 0])) := by
  intro path
  have actual : runPhysical 7 (encodePhysical (1, [0])) =
      some (zeroReadBits, encodePhysical (2, [0, 0])) := by
    simpa only [zeroReadBits, List.length_cons, List.length_nil] using
      physicalPath_run path
  have endpoints := Option.some.inj (zero_small_run.symm.trans actual)
  have heads := congrArg (fun p : List Bool × PhysicalTape => p.2.head) endpoints
  norm_num [translatePhysical, encodePhysical] at heads

/-- The *same* physical and Gray observations now follow from the two
named proof candidates, with no explicit source-return argument in the type. -/
theorem pairedRelative_unconditional
    {u v : MacroState} {macroWord : List MacroLabel}
    (h : ReturnedMacro u macroWord v) :
    ∃ bits : List Bool, ∃ start finish : ReadNode,
      TapeCoherent start (encodePhysical u) ∧
      WordPath ReadEdge start bits finish ∧
      TapeCoherent finish (encodePhysical v) ∧
      WordPath GrayEdge (grayObserve u) macroWord (grayObserve v) := by
  exact pairedRelative canonicalModels_all returnZipperComplete h

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17
