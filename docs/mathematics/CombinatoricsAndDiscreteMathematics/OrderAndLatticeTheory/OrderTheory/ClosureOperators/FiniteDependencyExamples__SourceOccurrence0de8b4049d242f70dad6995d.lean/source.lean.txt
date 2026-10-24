/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.Order.Closure.FiniteDependencyClosure

/-!
# CCC cyclic dependency fixtures

These finite kernel checks distinguish exact transitive invalidation from one
direct-dependency pass, arbitrary cycle activation, and invalidation of unrelated
nodes. Edges retain the consumer-to-prerequisite orientation. Finite step
computations are checked by `decide` and the recursion equations are proved in
the kernel, with no native-code decision oracle.
They are tests of the finite dependency model, not of an external dependency
extractor, source-revision detector, or arithmetic theorem.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

namespace DependencyFixtures

/-- Nodes 0 and 1 form a cycle. Node 1 also depends on seed 2, node 3 depends on
node 1, and node 4 is unrelated. -/
def cyclicDependencies (node : Fin 5) : Finset (Fin 5) :=
  if node = 0 then {1}
  else if node = 1 then {0, 2}
  else if node = 3 then {1}
  else ∅

/-- A changed prerequisite activates exactly its cyclic/transitive consumers. -/
theorem cyclic_affected_exact :
    affectedClosure cyclicDependencies {2} = {0, 1, 2, 3} := by
  have hfirst : dependencyStep cyclicDependencies {2} ≠ {2} := by decide
  have hfirst_eq : dependencyStep cyclicDependencies {2} = {1, 2} := by decide
  have hsecond : dependencyStep cyclicDependencies {1, 2} ≠ {1, 2} := by decide
  have hsecond_eq : dependencyStep cyclicDependencies {1, 2} = {0, 1, 2, 3} := by decide
  rw [affectedClosure, dif_neg hfirst, hfirst_eq]
  rw [affectedClosure, dif_neg hsecond, hsecond_eq]
  apply affectedClosure_eq_of_closed
  exact (dependencyStep_eq_iff_closed cyclicDependencies {0, 1, 2, 3}).mp (by decide)

/-- Unrelated evidence is not invalidated merely because another component
contains a cycle. -/
theorem unrelated_survives :
    (4 : Fin 5) ∉ affectedClosure cyclicDependencies {2} := by
  rw [cyclic_affected_exact]
  decide

/-- A cycle without any changed seed does not spontaneously invalidate itself. -/
theorem unseeded_cycle_stays_clear :
    affectedClosure cyclicDependencies ∅ = ∅ := affectedClosure_empty cyclicDependencies

/-- Direct-only invalidation misses consumer 0 in this fixture. -/
theorem transitive_consumer_not_in_first_pass :
    (0 : Fin 5) ∉ dependencyStep cyclicDependencies {2} := by
  decide

/-- Exact saturation includes that consumer through the path 0 → 1 → 2. -/
theorem transitive_consumer_invalidated :
    (0 : Fin 5) ∈ affectedClosure cyclicDependencies {2} := by
  rw [cyclic_affected_exact]
  decide

/-- A changed consumer invalidates its consumers, without invalidating every
prerequisite it happens to use. This checks the direction of propagation. -/
theorem changed_consumer_does_not_invalidate_prerequisite :
    affectedClosure cyclicDependencies {0} = {0, 1, 3} := by
  have hfirst : dependencyStep cyclicDependencies {0} ≠ {0} := by decide
  have hfirst_eq : dependencyStep cyclicDependencies {0} = {0, 1} := by decide
  have hsecond : dependencyStep cyclicDependencies {0, 1} ≠ {0, 1} := by decide
  have hsecond_eq : dependencyStep cyclicDependencies {0, 1} = {0, 1, 3} := by decide
  rw [affectedClosure, dif_neg hfirst, hfirst_eq]
  rw [affectedClosure, dif_neg hsecond, hsecond_eq]
  apply affectedClosure_eq_of_closed
  exact (dependencyStep_eq_iff_closed cyclicDependencies {0, 1, 3}).mp (by decide)

end DependencyFixtures

end GRWTSK.ProofHorizon.CorkscrewChamberCap
