/-
FiniteGridAdjacency — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a
Organized SHA-256: 33b2ac7b707ff7bfaecd63aeef8406783ed6bb9b184fc939261d6b78d788eba6
PMD: 510.7.030.010.020 adjacency (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete dimensions/Cell/adjacency definitions and both exact proofs; no implicit graph construction or extra relation law. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Folder.Basic

/-!
# Folder.Carrier.Grid

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: carrier.grid
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace Carrier
structure GridShape where
  rows : Nat
  cols : Nat
deriving DecidableEq

abbrev Cell (s : GridShape) := Fin s.rows × Fin s.cols

def EdgeAdjacent {s : GridShape} (a b : Cell s) : Prop :=
  (a.1 = b.1 ∧
    ((a.2.val + 1 = b.2.val) ∨ (b.2.val + 1 = a.2.val))) ∨
  (a.2 = b.2 ∧
    ((a.1.val + 1 = b.1.val) ∨ (b.1.val + 1 = a.1.val)))

theorem edgeAdjacent_symm {s : GridShape} {a b : Cell s} :
    EdgeAdjacent a b → EdgeAdjacent b a := by
  intro h
  rcases h with ⟨hr, hc⟩ | ⟨hc, hr⟩
  · left
    refine ⟨hr.symm, ?_⟩
    exact hc.symm
  · right
    refine ⟨hc.symm, ?_⟩
    exact hr.symm

theorem edgeAdjacent_irrefl {s : GridShape} (a : Cell s) :
    ¬ EdgeAdjacent a a := by
  intro h
  rcases h with ⟨_, hcol⟩ | ⟨_, hrow⟩
  · rcases hcol with h | h <;> omega
  · rcases hrow with h | h <;> omega

end Carrier
end Folder
