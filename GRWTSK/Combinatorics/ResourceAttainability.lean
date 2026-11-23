import Mathlib

/-!
# Resource-indexed attainability and finite minimal frontiers

Local mathematical attribution: grwtsk contributors.
Consumer: https://github.com/grwtsk/sofic/issues/10 (A07).
SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel checking, transitive axiom
audit and independent review: NOT_RUN. Source-only publication.

Use the existing pointwise natural-vector representation (compare
GRWTSK.Combinatorics.ResourcesEdition2, blob
8b8562049e93fc16aa03371cae2b98468b0342b4), not a second custom order.
The four coordinates are a different profile from that source's fourteen.
The inherited Mathlib finite Pi order, distributive lattice and WQO are used
directly. Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612:
Order/WellQuasiOrder.lean (Pi.wellQuasiOrderedLE),
Order/WellFoundedSet.lean (Set.IsPWO.exists_le_minimal),
Order/Antichain.lean (setOfPred_minimal_antichain).
The proofs below specialize these library results; no novelty claim.
The abstract execution relation and cost must be instantiated with real
finite execution semantics, exact contextual judgments and checked cost bounds.
No cost-measurement, discovery completeness or kernel-refinement theorem is
asserted without those suppliers.
-/

set_option autoImplicit false

namespace GRWTSK.ResourceAttainability

universe u v w

/-- Encoded bytes, work, peak resident space, elapsed latency in declared units. -/
abbrev ResourceVec := Fin 4 → Nat

namespace ResourceVec

abbrev B (r : ResourceVec) : Nat := r 0
abbrev W (r : ResourceVec) : Nat := r 1
abbrev S (r : ResourceVec) : Nat := r 2
abbrev T (r : ResourceVec) : Nat := r 3

example : PartialOrder ResourceVec := inferInstance
example : DistribLattice ResourceVec := inferInstance
example : OrderBot ResourceVec := inferInstance
example : WellQuasiOrderedLE ResourceVec := inferInstance

theorem le_iff (r s : ResourceVec) : r ≤ s ↔ ∀ i, r i ≤ s i := Iff.rfl

theorem meet_coordinate (r s : ResourceVec) (i : Fin 4) :
    (r ⊓ s) i = min (r i) (s i) := rfl

theorem join_coordinate (r s : ResourceVec) (i : Fin 4) :
    (r ⊔ s) i = max (r i) (s i) := rfl

/- The cost of a schedule is not inferred from the coordinatewise additive
operation: peak space and latency require a separate execution model. -/
end ResourceVec

inductive Mode where
  | verify | recover | discover | apply
  deriving DecidableEq, Repr

/-- Admissibility and a finite cost are supplied for a witness, not inferred
from a stored declaration name or a successful proposal. Claim includes its
context, target identity and foundation; State includes the fixed source and
execution model. The validity of the runtime refinement is a separate goal. -/
structure ExecutionModel (State : Type u) (Claim : Type v) where
  Witness : Type w
  derives : State → Claim → Prop
  valid : State → Mode → Claim → Witness → Prop
  cost : State → Mode → Claim → Witness → ResourceVec
  sound : ∀ I j p e, valid I j p e → derives I p

variable {State : Type u} {Claim : Type v}

def Attainable (A : ExecutionModel.{u,v,w} State Claim) (I : State)
    (j : Mode) (r : ResourceVec) (p : Claim) : Prop :=
  ∃ e, A.valid I j p e ∧ A.cost I j p e ≤ r

theorem attainable_monotone (A : ExecutionModel.{u,v,w} State Claim)
    {I : State} {j : Mode} {r s : ResourceVec} {p : Claim}
    (hrs : r ≤ s) (h : Attainable A I j r p) : Attainable A I j s p := by
  obtain ⟨e, he, hc⟩ := h
  exact ⟨e, he, le_trans hc hrs⟩

theorem attainable_sound (A : ExecutionModel.{u,v,w} State Claim)
    {I : State} {j : Mode} {r : ResourceVec} {p : Claim}
    (h : Attainable A I j r p) : A.derives I p := by
  obtain ⟨e, he, _⟩ := h
  exact A.sound I j p e he

/-- Full finite-budget coverage is conditional on a real witness for each
derivable claim in the designated mode; in discovery this is not automatic. -/
theorem union_budgets_iff_derives (A : ExecutionModel.{u,v,w} State Claim)
    (I : State) (j : Mode)
    (coverage : ∀ p, A.derives I p → ∃ e, A.valid I j p e) (p : Claim) :
    (∃ r, Attainable A I j r p) ↔ A.derives I p := by
  constructor
  · rintro ⟨r, hr⟩
    exact attainable_sound A hr
  · intro hp
    obtain ⟨e, he⟩ := coverage p hp
    exact ⟨A.cost I j p e, e, he, le_rfl⟩

def costRegion (A : ExecutionModel.{u,v,w} State Claim) (I : State)
    (j : Mode) (p : Claim) : Set ResourceVec :=
  {r | Attainable A I j r p}

def frontier (A : ExecutionModel.{u,v,w} State Claim) (I : State)
    (j : Mode) (p : Claim) : Set ResourceVec :=
  {r | Minimal (· ∈ costRegion A I j p) r}

theorem frontier_antichain (A : ExecutionModel.{u,v,w} State Claim)
    (I : State) (j : Mode) (p : Claim) :
    IsAntichain (· ≤ ·) (frontier A I j p) :=
  setOfPred_minimal_antichain _

/-- Dickson finiteness, including the empty (unattainable) frontier. -/
theorem frontier_finite (A : ExecutionModel.{u,v,w} State Claim)
    (I : State) (j : Mode) (p : Claim) : (frontier A I j p).Finite :=
  WellQuasiOrderedLE.finite_of_isAntichain (frontier_antichain A I j p)

/-- Exact upward generation by the true minimal frontier. This does not
compute the frontier from finite observations. -/
theorem frontier_characterization (A : ExecutionModel.{u,v,w} State Claim)
    (I : State) (j : Mode) (p : Claim) (r : ResourceVec) :
    Attainable A I j r p ↔ ∃ m ∈ frontier A I j p, m ≤ r := by
  constructor
  · intro hr
    have hr' : r ∈ costRegion A I j p := hr
    obtain ⟨m, hmr, hm⟩ :=
      (Set.isPWO_of_wellQuasiOrderedLE (costRegion A I j p)).exists_le_minimal hr'
    exact ⟨m, hm, hmr⟩
  · rintro ⟨m, hm, hmr⟩
    have hmin : Minimal (· ∈ costRegion A I j p) m := hm
    exact attainable_monotone A hmr hmin.1

/-- Strict filtration improvement is defined over a common fixed model. -/
def FiltrationImproves (A : ExecutionModel.{u,v,w} State Claim) (I J : State) : Prop :=
  (∀ p, A.derives I p ↔ A.derives J p) ∧
  ∀ j r p, Attainable A I j r p → Attainable A J j r p

def StrictImprovement (A : ExecutionModel.{u,v,w} State Claim) (I J : State) : Prop :=
  FiltrationImproves A I J ∧
  ∃ j r p, Attainable A J j r p ∧ ¬ Attainable A I j r p

def DistortedSimulation (A : ExecutionModel.{u,v,w} State Claim)
    (ψ : ResourceVec →o ResourceVec) (I J : State) : Prop :=
  ∀ j r p, Attainable A I j r p → Attainable A J j (ψ r) p

theorem distorted_comp (A : ExecutionModel.{u,v,w} State Claim)
    {I J H : State} {ψ χ : ResourceVec →o ResourceVec}
    (h : DistortedSimulation A ψ I J) (k : DistortedSimulation A χ J H) :
    DistortedSimulation A (χ.comp ψ) I H := by
  intro j r p hp
  exact k j (ψ r) p (h j r p hp)

theorem improves_trans (A : ExecutionModel.{u,v,w} State Claim) {I J H : State}
    (h : FiltrationImproves A I J) (k : FiltrationImproves A J H) :
    FiltrationImproves A I H :=
  ⟨fun p => (h.1 p).trans (k.1 p),
    fun j r p hp => k.2 j r p (h.2 j r p hp)⟩

end GRWTSK.ResourceAttainability
