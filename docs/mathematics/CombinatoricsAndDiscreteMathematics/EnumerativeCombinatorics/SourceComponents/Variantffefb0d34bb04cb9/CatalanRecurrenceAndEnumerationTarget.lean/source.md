# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.SourceComponents.Variantffefb0d34bb04cb9.CatalanRecurrenceAndEnumerationTarget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cff46044d5746491c7f66a57f6a55d2b3063b30c` · SHA-256 `7e3d05b696a57bb7c21652a39e108c732d260738fa9ecf636cc65686776c1369`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CatalanRecurrenceAndEnumerationTarget — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84
Organized SHA-256: 50c0789dc5698ad7fefc9bac23bde376b3c617586c7c0924fd0c79549be15275
PMD: 510.7.010 enumerative combinatorics (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete original upstream recurrence adapters plus its own finite-tree enumeration-target proposition; no proof of that target is supplied. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Folder.Catalan.Tree
import Mathlib.Combinatorics.Enumerative.Catalan.Basic

/-!
# Folder.Catalan.Count

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: catalan.count
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan
abbrev catalan : Nat → Nat :=
  _root_.catalan

@[simp]
theorem catalan_zero :
    catalan 0 = 1 :=
  _root_.catalan_zero

theorem catalan_succ (n : Nat) :
    catalan (n + 1) =
      Finset.sum (Finset.range (n + 1))
        (fun i => catalan i * catalan (n - i)) :=
  by
    simpa [catalan, Finset.sum_range] using _root_.catalan_succ n

/--
The finite enumeration/cardinality theorem for Catalan trees is intentionally
left as a named target rather than asserted. The proved content in this module
is the recurrence that future enumeration proofs should match.
-/
def treesOfInternalCardinalityTarget : Prop :=
  ∃ treesOfInternal : Nat → Finset CTree,
    ∀ n,
      (∀ T : CTree, T ∈ treesOfInternal n ↔ T.internal = n) ∧
      (treesOfInternal n).card = catalan n

end Catalan
end Folder
```
