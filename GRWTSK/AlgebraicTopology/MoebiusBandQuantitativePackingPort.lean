/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.AlgebraicTopology.MoebiusBandGaugePacking
import Mathlib.Topology.MetricSpace.CoveringNumbers
import Mathlib.Tactic

/-!
# The finite quantitative part of Moebius-band packing

A topological statement forbidding uncountably many pairwise disjoint
bands does not bound the number of bands in an arbitrary finite family.

The exact quantitative theorem below uses Mathlib's *existing*
metric separation and external covering numbers: any 2ε-separated
source family inside A has cardinality at most the ε-covering number
of A. Disjoint embedded bands are NOT automatically 2ε-separated
in a common uniform mapping metric. A uniform positive ε and a
controllable covering entropy are independent required hypotheses.

This is an actual finite-scale port, not an all-positive-rate signed
arithmetic estimate or the Melikhov deleted-product obstruction.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.MoebiusBandQuantitativePackingPort

/-- Source-specific separated-set packing budget in the exact pinned
Mathlib pseudo-extended metric setting. -/
theorem separated_source_card_le_cover_budget
    {X : Type*} [PseudoEMetricSpace X] (ε : ℝ≥0)
    {A C : Set X} (hsource : C ⊆ A)
    (hsep : Metric.IsSeparated (2 * ε) C) :
    C.encard ≤ Metric.externalCoveringNumber ε A :=
  (Metric.IsSeparated.encard_le_packingNumber hsource hsep).trans
    (Metric.packingNumber_two_mul_le_externalCoveringNumber ε A)

/-- Retain the previously formalized countable isolation criterion.
Disjointness does NOT imply this hypothesis without the wild-embedding
theorem and its accumulation/deleted-product argument. -/
theorem countable_of_isolatable_source_family
    {ι X : Type*} (observed : ι → X) (tests : ℕ → Set X)
    (isolate : ∀ i : ι, ∃ k : ℕ,
      observed i ∈ tests k ∧ ∀ j : ι, observed j ∈ tests k → j = i) :
    Countable ι :=
  MoebiusBandGaugePacking.countable_of_countable_isolating_tests observed tests isolate

/-- For every finite scale N the complete N-element family is
countable. Consequently qualitative countability does not provide a
uniform numerical packing bound as N varies. -/
theorem arbitrary_finite_scale_is_countable (N : ℕ) :
    Countable (Fin N) ∧ Fintype.card (Fin N) = N := by
  exact ⟨inferInstance, Fintype.card_fin N⟩

end GRWTSK.Topology.AlgebraicTopology.MoebiusBandQuantitativePackingPort
