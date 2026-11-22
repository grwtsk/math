/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean / kernel / axiom checks: NOT_RUN.
-/
import Mathlib

/-!
# A source-identified graded cochain-complex and map contract

This is the cohomological algebra shared by possible cubical,
simplicial, crystalline, and prismatic realizations. It does not
construct their differentials: d^2=0 is a required field and must
be proved when realizing a concrete source. The complex is over
additive groups, with no assumed finiteness or arithmetic origin.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicTopology.SourceBoundCochainComplex

universe u v

/-- Cochain groups and differentials with an explicitly proved
square-zero law. No relation to an arithmetic source is presumed. -/
structure Cochains (C : ℕ → Type u) [∀ n, AddCommGroup (C n)] where
  d : ∀ n : ℕ, C n →+ C (n + 1)
  d_squared : ∀ (n : ℕ) (x : C n), d (n + 1) (d n x) = 0

variable {C : ℕ → Type u} [∀ n, AddCommGroup (C n)]

/-- A cocycle at degree n is annihilated by the given differential. -/
def Cochains.Closed (K : Cochains C) (n : ℕ) (x : C n) : Prop :=
  K.d n x = 0

/-- A coboundary in degree n+1 has a preimage at degree n. -/
def Cochains.ExactAtNext (K : Cochains C) (n : ℕ) (x : C (n + 1)) : Prop :=
  ∃ y : C n, K.d n y = x

/-- Every source-justified exact cochain is closed. -/
theorem Cochains.exact_closed (K : Cochains C) (n : ℕ) (x : C (n + 1))
    (h : K.ExactAtNext n x) : K.Closed (n + 1) x := by
  rcases h with ⟨y, rfl⟩
  exact K.d_squared n y

/-- The differential preserves addition by construction. -/
theorem Cochains.d_add (K : Cochains C) (n : ℕ) (x y : C n) :
    K.d n (x + y) = K.d n x + K.d n y :=
  map_add (K.d n) x y

/-- A source-preserving map of cochain complexes, with a mandatory
commuting square in each degree. -/
structure CochainMap
    {D : ℕ → Type v} [∀ n, AddCommGroup (D n)]
    (K : Cochains C) (L : Cochains D) where
  component : ∀ n : ℕ, C n →+ D n
  commutes : ∀ (n : ℕ) (x : C n),
    L.d n (component n x) = component (n + 1) (K.d n x)

variable {D : ℕ → Type v} [∀ n, AddCommGroup (D n)]
variable {K : Cochains C} {L : Cochains D}

/-- Cocycle status transports along a commuting cochain map. -/
theorem CochainMap.maps_closed (f : CochainMap K L)
    (n : ℕ) (x : C n) (hx : K.Closed n x) :
    L.Closed n (f.component n x) := by
  change L.d n (f.component n x) = 0
  rw [f.commutes n x, hx]
  simp

/-- Exact cochains transport along a commuting cochain map. -/
theorem CochainMap.maps_exact (f : CochainMap K L)
    (n : ℕ) (x : C (n + 1)) (hx : K.ExactAtNext n x) :
    L.ExactAtNext n (f.component (n + 1) x) := by
  rcases hx with ⟨y, rfl⟩
  exact ⟨f.component n y, f.commutes n y⟩

end GRWTSK.AlgebraicTopology.SourceBoundCochainComplex
