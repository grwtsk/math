import Mathlib.Data.Finset.Prod

/-!
# Antichain algebra of unresolved route leaves

`zero` means no represented finite route. `one` means a complete route with no
unresolved leaves.  They are deliberately distinct.
-/

namespace Mathematics.ProofStrategy

universe u

abbrev Requirement (Obligation : Type u) :=
  Finset Obligation

abbrev FrontierFamily (Obligation : Type u) :=
  Finset (Requirement Obligation)

def frontierZero
    (Obligation : Type u) :
    FrontierFamily Obligation :=
  ∅

def frontierOne
    (Obligation : Type u)
    [DecidableEq Obligation] :
    FrontierFamily Obligation :=
  {∅}

def InclusionMinimal
    {Obligation : Type u}
    [DecidableEq Obligation]
    (family : FrontierFamily Obligation)
    (candidate : Requirement Obligation) : Prop :=
  candidate ∈ family ∧
    ∀ other ∈ family, other ⊆ candidate → candidate ⊆ other

noncomputable def normalizeFrontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    (family : FrontierFamily Obligation) :
    FrontierFamily Obligation := by
  classical
  exact family.filter (InclusionMinimal family)

noncomputable def frontierOr
    {Obligation : Type u}
    [DecidableEq Obligation]
    (left right : FrontierFamily Obligation) :
    FrontierFamily Obligation :=
  normalizeFrontier (left ∪ right)

noncomputable def frontierAnd
    {Obligation : Type u}
    [DecidableEq Obligation]
    (left right : FrontierFamily Obligation) :
    FrontierFamily Obligation := by
  classical
  exact normalizeFrontier
    ((left.product right).image fun pair => pair.1 ∪ pair.2)

theorem frontierZero_ne_frontierOne
    (Obligation : Type u)
    [DecidableEq Obligation] :
    frontierZero Obligation ≠ frontierOne Obligation := by
  simp [frontierZero, frontierOne]

@[simp] theorem empty_mem_frontierOne
    (Obligation : Type u)
    [DecidableEq Obligation] :
    (∅ : Requirement Obligation) ∈ frontierOne Obligation := by
  simp [frontierOne]

end Mathematics.ProofStrategy
