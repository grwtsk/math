/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; Lean compilation and kernel audit NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeHypercube

/-!
# Exact compatibility contracts for dimension-increasing atlas embeddings

An embedding between source binary address spaces must preserve the
one-bit graph ports, additive syndrome and zero/negation of port
labels. These are *proof fields*, not assumptions silently discharged
by changing the number of coordinates.

The laws imply commuting canonical guidepost maps, preservation of
the frozen address predicate, and closure under composition.
A concrete zero-padding construction from 16 to 64 dimensions
still requires an implementation satisfying these explicit laws.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CompatiblePrimeDimensionEmbedding

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube

/-- A source-compatible binary hypercube embedding, preserving both
coordinate edges and the original arithmetic-free syndrome. -/
structure CompatibleEmbedding (m n : ℕ) where
  address : Cell m ↪ Cell n
  port : Port m ↪ Port n
  port_zero : port 0 = 0
  port_neg : ∀ i, port (-i) = -(port i)
  syndrome_commutes : ∀ x, syndrome (address x) = port (syndrome x)
  neighbor_commutes : ∀ x i, address (neighbor x i) =
    neighbor (address x) (port i)

/-- A compatible embedding preserves each original frozen zero-syndrome cell. -/
theorem preserves_frozen {m n : ℕ} (e : CompatibleEmbedding m n)
    (x : Cell m) (hx : Frozen m x) :
    Frozen n (e.address x) := by
  change syndrome (e.address x) = 0
  rw [e.syndrome_commutes, show syndrome x = 0 from hx, e.port_zero]

/-- The guidepost decoder commutes with a compatible dimension lift. -/
theorem guidepost_commutes {m n : ℕ} (e : CompatibleEmbedding m n)
    (x : Cell m) :
    e.address (guidepost x) = guidepost (e.address x) := by
  change e.address (neighbor x (-syndrome x)) =
    neighbor (e.address x) (-syndrome (e.address x))
  rw [e.neighbor_commutes, e.port_neg, e.syndrome_commutes]

/-- The identity preserves all source navigation operations. -/
def CompatibleEmbedding.identity (m : ℕ) : CompatibleEmbedding m m where
  address := ⟨id, fun _ _ h => h⟩
  port := ⟨id, fun _ _ h => h⟩
  port_zero := rfl
  port_neg := fun _ => rfl
  syndrome_commutes := fun _ => rfl
  neighbor_commutes := fun _ _ => rfl

/-- Compatible embeddings compose, without dropping the original source
identity or silently assigning new primes to existing positions. -/
def CompatibleEmbedding.then {m n k : ℕ}
    (a : CompatibleEmbedding m n) (b : CompatibleEmbedding n k) :
    CompatibleEmbedding m k where
  address := a.address.trans b.address
  port := a.port.trans b.port
  port_zero := by
    change b.port (a.port 0) = 0
    rw [a.port_zero, b.port_zero]
  port_neg := by
    intro i
    change b.port (a.port (-i)) = -(b.port (a.port i))
    rw [a.port_neg, b.port_neg]
  syndrome_commutes := by
    intro x
    change syndrome (b.address (a.address x)) =
      b.port (a.port (syndrome x))
    rw [b.syndrome_commutes, a.syndrome_commutes]
  neighbor_commutes := by
    intro x i
    change b.address (a.address (neighbor x i)) =
      neighbor (b.address (a.address x)) (b.port (a.port i))
    rw [a.neighbor_commutes, b.neighbor_commutes]

/-- The identity embedding leaves the decoded beacon address unchanged. -/
theorem identity_guidepost (m : ℕ) (x : Cell m) :
    (CompatibleEmbedding.identity m).address (guidepost x) =
      guidepost ((CompatibleEmbedding.identity m).address x) :=
  guidepost_commutes (CompatibleEmbedding.identity m) x

/-- Two successive compatible lifts preserve the original beacon. -/
theorem composition_guidepost {m n k : ℕ}
    (a : CompatibleEmbedding m n) (b : CompatibleEmbedding n k)
    (x : Cell m) :
    (a.then b).address (guidepost x) =
      guidepost ((a.then b).address x) :=
  guidepost_commutes (a.then b) x

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CompatiblePrimeDimensionEmbedding
