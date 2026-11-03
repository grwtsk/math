/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficShiftPeriodicPointBridge
import GRWTSK.DynamicalSystemsAndErgodicTheory.SymbolicDynamicsBasicPublic
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Actual product-topological one-sided factor-language subshift

Use the existing SymbolicDynamics.FullShift.Subshift.ofForbidden,
not an invented topology. A forbidden word is represented by an
actual finite pattern on [0,word.length), with its original labels.
We prove the carrier is EXACTLY the repository's existing
every-finite-factor HasFiniteBlock language predicate.

An Inhabited discrete alphabet and its product topology are
explicit requirements of the upstream pattern API. The restricted
one-sided shift preserves the carrier, and the identity on original
streams is a real dynamical semiconjugacy and period equivalence.

The realized finite-factor language may be smaller than the
specified finite-path language: no extendibility is silently assumed.
No two-sided conjugacy or arithmetic/spectral return is claimed.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalFactorSpace

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficShiftPeriodicPointBridge

universe v
variable {Alphabet : Type v}
  [TopologicalSpace Alphabet] [DiscreteTopology Alphabet] [Inhabited Alphabet]

/-- One exact original finite word as an upstream finite pattern,
padded with the default letter OUTSIDE its original length. -/
noncomputable def sourceWordPattern
    (word : List Alphabet) : SymbolicDynamics.FullShift.Pattern Alphabet ℕ where
  config := fun k =>
    if h : k < word.length then word.get ⟨k, h⟩ else default
  support := Finset.range word.length
  condition := by
    intro k hk
    have hnot : ¬ k < word.length := by
      simpa only [Finset.mem_range] using hk
    simp [hnot]

/-- The upstream additive pattern occurrence matches the exact
original Fin-indexed finite block at any natural offset. -/
theorem sourceWordPattern_occurs_iff
    (trace : ℕ → Alphabet) (word : List Alphabet) (offset : ℕ) :
    (sourceWordPattern word).occursInAt trace offset ↔
      ∀ i : Fin word.length,
        trace (offset + i.val) = word.get i := by
  change (∀ k : ℕ, k ∈ Finset.range word.length →
      trace (offset + k) =
        (if h : k < word.length then word.get ⟨k, h⟩ else default)) ↔ _
  constructor
  · intro h i
    have hi := h i.val (Finset.mem_range.mpr i.isLt)
    simpa only [dif_pos i.isLt] using hi
  · intro h k hk
    have hk' : k < word.length := Finset.mem_range.mp hk
    have hi := h (⟨k, hk'⟩ : Fin word.length)
    simpa only [dif_pos hk'] using hi

/-- Every original finite observed factor is precisely some actual
translated occurrence of the SAME source-word pattern. -/
theorem hasFiniteBlock_iff_sourceWordPattern
    (trace : ℕ → Alphabet) (word : List Alphabet) :
    HasFiniteBlock trace word ↔
      ∃ offset : ℕ, (sourceWordPattern word).occursInAt trace offset := by
  unfold HasFiniteBlock
  exact exists_congr (fun offset =>
    (sourceWordPattern_occurs_iff trace word offset).symm)

/-- All and ONLY the original inadmissible source words are
forbidden, with their exact label order and finite support. -/
def forbiddenSourceWordPatterns
    (language : List Alphabet → Prop) :
    Set (SymbolicDynamics.FullShift.Pattern Alphabet ℕ) :=
  {p | ∃ word : List Alphabet,
    ¬ language word ∧ p = sourceWordPattern word}

/-- A GENUINE closed, additive Nat-indexed subshift from the
upstream source's forbidden-pattern construction. -/
noncomputable def completeFactorSubshift
    (language : List Alphabet → Prop) :
    SymbolicDynamics.FullShift.Subshift Alphabet ℕ :=
  SymbolicDynamics.FullShift.Subshift.ofForbidden
    (forbiddenSourceWordPatterns language)

/-- Exact source carrier comparison. The finite source words
must be admitted at EVERY offset, not merely the prefix. -/
theorem mem_completeFactorSubshift_iff
    (language : List Alphabet → Prop) (trace : ℕ → Alphabet) :
    trace ∈ (completeFactorSubshift language).carrier ↔
      ∀ word : List Alphabet,
        HasFiniteBlock trace word → language word := by
  change (∀ p ∈ forbiddenSourceWordPatterns language,
      ∀ offset : ℕ, ¬ p.occursInAt trace offset) ↔ _
  constructor
  · intro h word hblock
    by_contra hbad
    have hp : sourceWordPattern word ∈ forbiddenSourceWordPatterns language :=
      ⟨word, hbad, rfl⟩
    obtain ⟨offset, hocc⟩ :=
      (hasFiniteBlock_iff_sourceWordPattern trace word).mp hblock
    exact h (sourceWordPattern word) hp offset hocc
  · intro h p hp offset hocc
    obtain ⟨word, hbad, rfl⟩ := hp
    exact hbad (h word
      ((hasFiniteBlock_iff_sourceWordPattern trace word).mpr
        ⟨offset, hocc⟩))

/-- Closedness in the actual product topology supplied by the
existing Subshift rather than a new topological hypothesis. -/
theorem completeFactorSubshift_isClosed
    (language : List Alphabet → Prop) :
    IsClosed (completeFactorSubshift language).carrier :=
  (completeFactorSubshift language).isClosed

/-- The original literal one-step shift is exactly additive
FullShift.shift 1 on every original Nat-indexed stream. -/
theorem oneSidedShift_eq_additiveShift_one
    (trace : ℕ → Alphabet) :
    oneSidedShift trace =
      SymbolicDynamics.FullShift.shift (1 : ℕ) trace := by
  funext k
  change trace (k + 1) = trace (1 + k)
  rw [Nat.add_comm]

/-- The topological subshift is shift invariant, hence stays
inside its actual closed carrier under the original one-step shift. -/
theorem completeFactorSubshift_shift_mem
    (language : List Alphabet → Prop)
    (trace : ℕ → Alphabet)
    (htrace : trace ∈ (completeFactorSubshift language).carrier) :
    oneSidedShift trace ∈ (completeFactorSubshift language).carrier := by
  rw [oneSidedShift_eq_additiveShift_one]
  exact (completeFactorSubshift language).mapsTo 1 htrace

/-- Same true streams, now restricted by the upstream topological
Subshift carrier; no replacement alphabet or source quotient. -/
def TopologicalAdmissibleStream
    (language : List Alphabet → Prop) :=
  {trace : ℕ → Alphabet //
    trace ∈ (completeFactorSubshift language).carrier}

/-- Original one-step shift on the actual closed topological carrier. -/
noncomputable def topologicalShift
    (language : List Alphabet → Prop)
    (p : TopologicalAdmissibleStream language) :
    TopologicalAdmissibleStream language :=
  ⟨oneSidedShift p.val,
    completeFactorSubshift_shift_mem language p.val p.property⟩

/-- True equivalence of the existing topological carrier and
previously formalized all-factors admissible streams. The map
and inverse are literally the same Nat-indexed labels. -/
noncomputable def topologicalStream_equiv_admissibleStream
    (language : List Alphabet → Prop) :
    TopologicalAdmissibleStream language ≃
      AdmissibleInfiniteStream language where
  toFun := fun p =>
    ⟨p.val, (mem_completeFactorSubshift_iff language p.val).mp p.property⟩
  invFun := fun p =>
    ⟨p.val, (mem_completeFactorSubshift_iff language p.val).mpr p.property⟩
  left_inv := by
    intro p
    apply Subtype.ext
    rfl
  right_inv := by
    intro p
    apply Subtype.ext
    rfl

/-- Genuine semiconjugacy of the two EXISTING one-sided shifts,
with no time change, letter change or forgotten observation. -/
theorem topologicalShift_semiconj
    (language : List Alphabet → Prop) :
    Function.Semiconj
      (topologicalStream_equiv_admissibleStream language)
      (topologicalShift language)
      (admissibleShift language) := by
  intro p
  apply Subtype.ext
  rfl

/-- ALL Mathlib periodicity predicates are preserved AND reflected
under the actual topological carrier equivalence. -/
theorem topologicalShift_isPeriodicPt_iff
    (language : List Alphabet → Prop) (n : ℕ)
    (p : TopologicalAdmissibleStream language) :
    Function.IsPeriodicPt (topologicalShift language) n p ↔
      Function.IsPeriodicPt (admissibleShift language) n
        ((topologicalStream_equiv_admissibleStream language) p) := by
  constructor
  · intro hp
    exact hp.map (topologicalShift_semiconj language)
  · intro hp
    change ((topologicalShift language)^[n] p) = p
    apply (topologicalStream_equiv_admissibleStream language).injective
    have hcomm :=
      ((topologicalShift_semiconj language).iterate_right n).eq p
    change ((admissibleShift language)^[n])
        ((topologicalStream_equiv_admissibleStream language) p) =
      ((topologicalStream_equiv_admissibleStream language) p) at hp
    exact hcomm.trans hp

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalFactorSpace
