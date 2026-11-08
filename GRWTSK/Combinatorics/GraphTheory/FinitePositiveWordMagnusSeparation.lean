/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate: module elaboration observed with Lean 4.34.1.
Fresh separate kernel replay and whole-module axiom audit NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.VoltageCoverLoopSeparation
import Mathlib

/-!
# Constructive ordered-subsequence separation of positive relational histories

The existing `VoltageCover.endpoints_injective` requires a separating finite-group
voltage assignment. The associated mathematical construction is the elementary
truncated noncommutative Magnus representation in the finite two-group
`UT_(n+1)(F₂)`. For a nonempty target word `w` of length `n`, assign each letter
`a` the unitriangular matrix `I + Σ_{w_i=a} E_(i,i+1)`. If `v` has length at most
`n`, the `(0,n)` entry of its matrix product equals one precisely when `v=w`.
For any two unequal positive words, choosing the longer one (or either when
lengths match) separates their voltages. Finite products of the resulting finite
two-groups separate a finite positive-word inventory. The resulting voltage
cover has exact path erasure by the previously published interface.

This file formalizes the coefficient-level *unconditional*, source-independent
separating-bit construction and its faithful finite-inventory path consumer.
It does not silently claim a Lean proof of the matrix-product bridge, of the
finite-two-group series, or of free-group residual-2 separation for arbitrary
reduced paths with inverse-edge cancellation. Those are separate interfaces.

The binary readouts here depend on marked, ordered source labels. They are not
invariant under an arbitrary symmetry permuting those labels, nor are they
conjugacy-invariant observations of unframed holonomy. Invariant orbit readouts
remain separate in `InvariantSpinHistoryBits.lean`.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
namespace PositiveWordSeparation

universe u v
variable {A : Type u} [DecidableEq A]

/-- Number of order-preserving subsequence embeddings of a pattern in a word.
The recursion on the remaining source word is finite and constructive. -/
def subsequenceCount (pattern : List A) : List A → Nat
  | [] => if pattern.isEmpty then 1 else 0
  | x :: xs =>
      subsequenceCount pattern xs +
        match pattern with
        | [] => 0
        | y :: ys => if y = x then subsequenceCount ys xs else 0

/-- A pattern longer than its source word has no subsequence embedding. -/
theorem count_zero_of_shorter {pattern word : List A}
    (h : word.length < pattern.length) :
    subsequenceCount pattern word = 0 := by
  induction word generalizing pattern with
  | nil =>
      cases pattern with
      | nil => simp at h
      | cons a ps => simp [subsequenceCount]
  | cons x xs ih =>
      cases pattern with
      | nil => simp at h
      | cons y ys =>
          have h₁ : xs.length < (y :: ys).length := by
            simp at h ⊢
            omega
          have h₂ : xs.length < ys.length := by
            simp at h
            omega
          have hskip : subsequenceCount (y :: ys) xs = 0 := ih h₁
          have htake : subsequenceCount ys xs = 0 := ih h₂
          simp [subsequenceCount, hskip, htake]

/-- A pattern and a word of equal length have exactly one embedding if
identical, and no embedding otherwise. This is not a probabilistic claim. -/
theorem count_same_length (pattern word : List A)
    (h : pattern.length = word.length) :
    subsequenceCount pattern word = if pattern = word then 1 else 0 := by
  induction word generalizing pattern with
  | nil =>
      cases pattern with
      | nil => simp [subsequenceCount]
      | cons y ys => simp at h
  | cons x xs ih =>
      cases pattern with
      | nil => simp at h
      | cons y ys =>
          have heq : ys.length = xs.length := by
            simpa using h
          have hshort : xs.length < (y :: ys).length := by
            simp [heq]
          have hskip : subsequenceCount (y :: ys) xs = 0 :=
            count_zero_of_shorter hshort
          have htail := ih ys heq
          by_cases hhead : y = x
          · subst y
            simp [subsequenceCount, hskip, htail]
          · simp [subsequenceCount, hskip, hhead, htail]

/-- The parity coefficient of the target word in its finite Magnus product.
The matrix interpretation is proved analytically, not asserted here by renaming. -/
def parityBit (pattern word : List A) : Bool :=
  decide (subsequenceCount pattern word % 2 = 1)

@[simp] theorem parityBit_self (pattern : List A) :
    parityBit pattern pattern = true := by
  have h : subsequenceCount pattern pattern = 1 := by
    simpa using count_same_length pattern pattern rfl
  simp [parityBit, h]

/-- A source shorter than the sought pattern has bit zero. -/
theorem parityBit_shorter {pattern word : List A}
    (h : word.length < pattern.length) :
    parityBit pattern word = false := by
  have hc := count_zero_of_shorter h
  simp [parityBit, hc]

/-- Equal-length distinct source words cannot share their top-word bit. -/
theorem parityBit_equal_length_ne {pattern word : List A}
    (hlen : pattern.length = word.length) (hne : pattern ≠ word) :
    parityBit pattern word = false := by
  have hc : subsequenceCount pattern word = 0 := by
    simpa [hne] using count_same_length pattern word hlen
  simp [parityBit, hc]

/-- An explicit *source-independent* pattern separating any two distinct
positive words. The pattern is one of the words, not a supplied type label. -/
theorem pair_separated_by_own_word (p q : List A) (hne : p ≠ q) :
    parityBit p p ≠ parityBit p q ∨
    parityBit q p ≠ parityBit q q := by
  rcases lt_trichotomy p.length q.length with hlt | heq | hgt
  · right
    have hz : parityBit q p = false := parityBit_shorter hlt
    simp [hz]
  · left
    have hz : parityBit p q = false :=
      parityBit_equal_length_ne heq hne
    simp [hz]
  · left
    have hz : parityBit p q = false := parityBit_shorter hgt
    simp [hz]

/-- No external separation certificate is needed for distinct ordered words. -/
theorem exists_separating_pattern (p q : List A) (hne : p ≠ q) :
    ∃ pattern : List A, parityBit pattern p ≠ parityBit pattern q := by
  rcases pair_separated_by_own_word p q hne with h | h
  · exact ⟨p, h⟩
  · exact ⟨q, h⟩

/-- An inventory's signatures are made solely from its source word labels. -/
def inventorySignature {P : Type v} (words : P → List A) (p : P) :
    P → Bool := fun anchor => parityBit (words anchor) (words p)

/-- A faithful identity-bearing inventory is distinguished by actual source
bits. No user-supplied type map or graph classifier occurs in this proof. -/
theorem inventorySignature_injective {P : Type v}
    (words : P → List A) (faithful : Function.Injective words) :
    Function.Injective (inventorySignature words) := by
  intro p q hsig
  by_contra hpq
  have hwords : words p ≠ words q := fun heq => hpq (faithful heq)
  rcases pair_separated_by_own_word (words p) (words q) hwords with hp | hq
  · have hbit := congrFun hsig p
    exact hp (by simpa [inventorySignature] using hbit)
  · have hbit := congrFun hsig q
    exact hq (by simpa [inventorySignature] using hbit)

/-- An exact finite inventory of distinct words supplies the separating
premise needed by any source type assignment. The type labels are not used
to construct the bits. -/
theorem source_type_separated {P : Type v} {Kind : Type*}
    (words : P → List A) (faithful : Function.Injective words)
    (typeOf : P → Kind) (p q : P) (different : typeOf p ≠ typeOf q) :
    ∃ anchor : P,
      inventorySignature words p anchor ≠ inventorySignature words q anchor := by
  have hpq : p ≠ q := by
    intro h
    exact different (congrArg typeOf h)
  have hw : words p ≠ words q := by
    intro h
    exact hpq (faithful h)
  rcases pair_separated_by_own_word (words p) (words q) hw with h | h
  · exact ⟨p, h⟩
  · exact ⟨q, h⟩

/-- A source-backed partial classifier for the *finite* word inventory.
The existence choice is confined to actual source signatures. It is not an
executable algorithm until finite search/decidable equality is specified. -/
noncomputable def sourceClassifier {P : Type v} [Fintype P] {Kind : Type*}
    (words : P → List A) (typeOf : P → Kind)
    (signature : P → Bool) : Option Kind := by
  classical
  exact if h : ∃ p : P, inventorySignature words p = signature then
    some (typeOf (Classical.choose h))
  else none

/-- If the source inventory has unique ordered histories, classification
of every actual source signature returns precisely its assigned source type. -/
theorem sourceClassifier_correct {P : Type v} [Fintype P] {Kind : Type*}
    (words : P → List A) (faithful : Function.Injective words)
    (typeOf : P → Kind) (p : P) :
    sourceClassifier words typeOf (inventorySignature words p) = some (typeOf p) := by
  unfold sourceClassifier
  split_ifs with h
  · have hp : Classical.choose h = p :=
      inventorySignature_injective words faithful (Classical.choose_spec h)
    simp [hp]
  · exact False.elim (h ⟨p, rfl⟩)

/-- No signature is assigned a type without a matching source representative. -/
theorem sourceClassifier_has_source {P : Type v} [Fintype P] {Kind : Type*}
    (words : P → List A) (typeOf : P → Kind)
    (signature : P → Bool) (k : Kind)
    (accepted : sourceClassifier words typeOf signature = some k) :
    ∃ p : P, inventorySignature words p = signature ∧ typeOf p = k := by
  unfold sourceClassifier at accepted
  split_ifs at accepted with h
  · exact ⟨Classical.choose h, Classical.choose_spec h,
      Option.some.inj accepted⟩

/-- Typed source adapter: a bouquet graph's one-vertex loops are exact lists
of edge identities, and the `Path.labels` map recovers the complete word. -/
def bouquetEdge (A : Type u) (_ _ : PUnit) : Type u := A

def asBouquetPath : (letters : List A) →
    Path (bouquetEdge A) PUnit.unit PUnit.unit
  | [] => .refl _
  | x :: xs => .cons x (asBouquetPath xs)

@[simp] theorem labels_asBouquetPath (letters : List A) :
    Path.labels (fun {_ _} (x : A) => x) (asBouquetPath letters) = letters := by
  induction letters with
  | nil => rfl
  | cons x xs ih => simp [asBouquetPath, Path.labels, ih]

/-- Positive paths of the bouquet have exact identity-bearing word encoding. -/
theorem asBouquetPath_injective :
    Function.Injective (asBouquetPath (A := A)) := by
  intro p q h
  have congr := congrArg (Path.labels (fun {_ _} (x : A) => x)) h
  simpa using congr

/-- Every pair of distinct, composable positive bouquet loops has an explicit
separating ordered-subsequence bit on its exact original labels. -/
theorem bouquet_paths_separated (p q : List A) (hne : p ≠ q) :
    ∃ pattern : List A,
      parityBit pattern
        (Path.labels (fun {_ _} (x : A) => x) (asBouquetPath p)) ≠
      parityBit pattern
        (Path.labels (fun {_ _} (x : A) => x) (asBouquetPath q)) := by
  simpa only [labels_asBouquetPath] using exists_separating_pattern p q hne

end PositiveWordSeparation
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
