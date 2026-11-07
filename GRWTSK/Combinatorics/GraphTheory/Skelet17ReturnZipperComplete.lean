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
