/-
WholePropertyBundleAndConsequences — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ca17fd5ff1b15639878bca4199cf0f4b250f4f527723039cc9386be3a8411ef6
Organized SHA-256: 83b37cfb23db6b09f3f405217e982d1157ea80d1e72986b85aad9cce7db5b720
PMD: 510.4.010 general topology (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- All six supplied Cantor topology fields remain complete, with only the copied compact-univ projection and preconnected-subset subsingleton consequence. No concrete topology or Cantor-space instance is manufactured. -/

import BitMatrix.Carrier.BooleanSpace
import Mathlib.Topology.Connected.TotallyDisconnected
import Mathlib.Topology.Bases
import Mathlib.Topology.Metrizable.Basic

/-!
# Topology capability for designated Cantor representations

No instance is manufactured from a set-theoretic equivalence.  Compactness,
metrizability, perfection, total disconnectedness, and a clopen basis must be
provided for the concrete topology before the project may claim Cantor-space
topology or a homeomorphic baseline interpreter.
-/

namespace BitMatrix.Topology

/-- Explicit topological obligations of a Cantor-space presentation. -/
structure CantorTopologyCapability
    (Space : Type)
    [TopologicalSpace Space] where
  nonempty : Nonempty Space
  compact : IsCompact (Set.univ : Set Space)
  metrizable : Nonempty (TopologicalSpace.MetrizableSpace Space)
  noIsolatedPoint : ∀ point : Space, ¬IsOpen ({point} : Set Space)
  totallyDisconnected : IsTotallyDisconnected (Set.univ : Set Space)
  clopenBasis : ∃ basis : Set (Set Space),
    TopologicalSpace.IsTopologicalBasis basis ∧
      ∀ member ∈ basis, IsClopen member

theorem compact_univ
    {Space : Type}
    [TopologicalSpace Space]
    (capability : CantorTopologyCapability Space) :
    IsCompact (Set.univ : Set Space) :=
  capability.compact

theorem connected_subsets_are_singletons
    {Space : Type}
    [TopologicalSpace Space]
    (capability : CantorTopologyCapability Space)
    {subset : Set Space}
    (connected : IsPreconnected subset) :
    subset.Subsingleton := by
  intro left leftMember right rightMember
  exact capability.totallyDisconnected subset
    (Set.subset_univ subset) connected leftMember rightMember

end BitMatrix.Topology
