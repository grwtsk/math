/-
ControlledShiftAndReconstructionBoundary — exact original finite mathematical examples
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 859e3c53b02f07923fa45dc9fdded6de1258ca27b31d6ca600ba4bf418ee6b52
Organized SHA-256: 8cd283783330c49c72311378d343ed1c392e9ee5e50eb642a694d2e64b3ee9c7
PMD: 510.4.070 combinatorial topology (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- All five whole exact-carrier, reconstruction-support, canonical-link, wrong-policy and changed-state examples retain the exact supplied shift witness and its hypotheses. Reconstructing the cut does not acquire the actual-change support certificate. Original decide/native_decide proof text is retained without execution or proof acceptance. -/

import BitMatrix.Surgery.CanonicalRaster

/-!
# Canonical raster-surgery mutation boundaries

These compile-time tests pin the incidence, complementary adjacency, graph
Betti, exact-carrier, link, and nonbranching conditions used by the production
`controlledShift`.  A semantic mutation to any one of those definitions must
invalidate at least one witness below.
-/

namespace GRWTSK.Topology.CombinatorialTopology.CanonicalRasterCounterexamples.Variant859e3c53b02f0792

namespace BitMatrix.Tests.CanonicalRasterSurgery

open BitMatrix.Runtime.Semantics
open BitMatrix.Topology.Raster
open BitMatrix.Surgery.Digital
open BitMatrix.Surgery.CanonicalRaster

example : canonicalExactCarrierCompatible .edge .vertex shiftCut shiftRepair :=
  ⟨⟨rfl, rfl⟩, shift_changeSupport⟩

example :
    ¬ canonicalExactCarrierCompatible .edge .vertex shiftCut
      (Repair.reconstruct shiftCut) := by
  intro compatible
  have changed :
      leftCell ∈ (Repair.reconstruct shiftCut).changeSupport := by
    rw [compatible.2]
    decide
  have reconstructed := Repair.reconstruct_apply shiftCut
  simp [Repair.changeSupport, reconstructed] at changed

example : canonicalLinkCondition .edge .vertex shiftCut shiftRepair :=
  controlledShift.linkConditionEvidence

example : ¬ canonicalLinkCondition .vertex .edge shiftCut shiftRepair := by
  intro link
  exact (by decide : ¬ CanonicalAdjacencyPair .vertex .edge) link.1

example : shiftAfter ≠ shiftBefore := shiftRepair_changes_state

end BitMatrix.Tests.CanonicalRasterSurgery

end GRWTSK.Topology.CombinatorialTopology.CanonicalRasterCounterexamples.Variant859e3c53b02f0792
