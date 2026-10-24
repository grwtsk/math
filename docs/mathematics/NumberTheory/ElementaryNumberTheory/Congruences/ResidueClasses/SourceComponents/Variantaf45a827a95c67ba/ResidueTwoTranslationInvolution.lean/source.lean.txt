/-
ResidueTwoTranslationInvolution — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: af45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7
Organized SHA-256: f35c7bc5347435254fe7d58aec31dbd06ae95538928fa66b2e28972a3f81181a
PMD: 510.2.010.020.010 residue classes (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete original ZMod2 carrier/constants/map and both exact proofs; no renamed provider. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Folder.Basic

/-!
# Folder.Carrier.Bit

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: carrier.bit
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace Carrier
abbrev Bit := ZMod 2

namespace Bit
def zero : Bit := 0
def one : Bit := 1
def flip (b : Bit) : Bit := b + 1

@[simp]
theorem flip_ne_self (b : Bit) : flip b ≠ b := by
  intro h
  have h1 : (1 : Bit) = 0 := by
    have hc := congrArg (fun x : Bit => x - b) h
    simp [flip] at hc
  norm_num at h1

@[simp]
theorem flip_flip (b : Bit) : flip (flip b) = b := by
  unfold flip
  have htwo : (1 : Bit) + 1 = 0 := by
    change ((2 : Nat) : Bit) = 0
    exact ZMod.natCast_self 2
  rw [add_assoc, htwo, add_zero]

end Bit
end Carrier
end Folder
