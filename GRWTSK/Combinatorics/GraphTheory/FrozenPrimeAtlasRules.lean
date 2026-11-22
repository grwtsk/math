/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean build / kernel replay / axiom audit: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeHypercube

/-!
# Reversible frozen-prime rules and the exact discrete leaf partition

Pinned includes whichever primary or secondary prime identities have
already been assigned. An admitted rule is a *bijection of address
contents*, fixes each pinned address individually, and preserves each
cell's unique primary guidepost. It need not preserve every edge of the
ambient hypercube, so it is not automatically a cubical or simplicial
automorphism.

The source defines a discrete partition of addresses into guidepost
fibers. A PL or smooth geometric foliation is a separate construction.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeAtlasRules

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube

/-- Reversible operations that preserve the pinned identities and their
unique primary guidepost owners. -/
structure Rule (m : ℕ) (Pinned : Set (Cell m)) where
  toEquiv : Cell m ≃ Cell m
  fixesPinned : ∀ x, x ∈ Pinned → toEquiv x = x
  preservesOwner : ∀ x, guidepost (toEquiv x) = guidepost x

variable {m : ℕ} {Pinned : Set (Cell m)}

/-- The identity transformation is always allowed. -/
def Rule.identity : Rule m Pinned where
  toEquiv := Equiv.refl _
  fixesPinned := by intro x _; rfl
  preservesOwner := by intro x; rfl

/-- Sequential composition preserves both independent invariants. -/
def Rule.then (a b : Rule m Pinned) : Rule m Pinned where
  toEquiv := a.toEquiv.trans b.toEquiv
  fixesPinned := by
    intro x hx
    change b.toEquiv (a.toEquiv x) = x
    rw [a.fixesPinned x hx, b.fixesPinned x hx]
  preservesOwner := by
    intro x
    change guidepost (b.toEquiv (a.toEquiv x)) = guidepost x
    exact (b.preservesOwner (a.toEquiv x)).trans (a.preservesOwner x)

/-- Inversion is permitted because the rules are address bijections. -/
def Rule.inverse (r : Rule m Pinned) : Rule m Pinned where
  toEquiv := r.toEquiv.symm
  fixesPinned := by
    intro x hx
    apply r.toEquiv.injective
    simpa using (r.fixesPinned x hx).symm
  preservesOwner := by
    intro x
    have h := r.preservesOwner (r.toEquiv.symm x)
    simpa using h.symm

/-- Identity acts as the literal identity, not merely an orbit quotient. -/
theorem identity_apply (x : Cell m) :
    (Rule.identity (m := m) (Pinned := Pinned)).toEquiv x = x := rfl

/-- Composition is the original pair of operations in order. -/
theorem then_apply (a b : Rule m Pinned) (x : Cell m) :
    (a.then b).toEquiv x = b.toEquiv (a.toEquiv x) := rfl

/-- Reversal after a transition returns the original exact address. -/
theorem inverse_after_apply (r : Rule m Pinned) (x : Cell m) :
    r.inverse.toEquiv (r.toEquiv x) = x := by
  exact r.toEquiv.symm_apply_apply x

/-- A source-specified primary frozen set is included among pinned cells. -/
def AllPrimaryPinned (Pinned : Set (Cell m)) : Prop :=
  ∀ x, Frozen m x → x ∈ Pinned

/-- Under the explicit inclusion, no rule can move a primary beacon. -/
theorem primary_fixed (r : Rule m Pinned)
    (hPrimary : AllPrimaryPinned Pinned) (x : Cell m)
    (hx : Frozen m x) : r.toEquiv x = x :=
  r.fixesPinned x (hPrimary x hx)

/-- The same primary beacon is frozen following an admitted rule. -/
theorem primary_stays_frozen (r : Rule m Pinned)
    (hPrimary : AllPrimaryPinned Pinned) (x : Cell m)
    (hx : Frozen m x) : Frozen m (r.toEquiv x) := by
  rw [primary_fixed r hPrimary x hx]
  exact hx

/-- The discrete guidepost fiber containing a cell. -/
def leaf (c : Cell m) : Set (Cell m) :=
  {x | guidepost x = c}

/-- Every cell belongs to its owner fiber. -/
theorem belongs_to_owner_leaf (x : Cell m) :
    x ∈ leaf (guidepost x) := rfl

/-- Two guidepost fibers that share a cell have the same label. -/
theorem leaf_label_unique (c d x : Cell m)
    (hc : x ∈ leaf c) (hd : x ∈ leaf d) : c = d :=
  hc.symm.trans hd

/-- Every admitted transformation stays within the same discrete leaf. -/
theorem rule_preserves_leaf (r : Rule m Pinned) (x : Cell m) :
    r.toEquiv x ∈ leaf (guidepost x) :=
  r.preservesOwner x

/-- Composition retains the exact original owner of a cell. -/
theorem composition_preserves_owner (a b : Rule m Pinned) (x : Cell m) :
    guidepost ((a.then b).toEquiv x) = guidepost x :=
  (a.then b).preservesOwner x

/-- Inverting an operation retains the exact original owner. -/
theorem inverse_preserves_owner (r : Rule m Pinned) (x : Cell m) :
    guidepost (r.inverse.toEquiv x) = guidepost x :=
  r.inverse.preservesOwner x

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeAtlasRules
