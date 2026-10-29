/-
RelevantFamilyAndUniformNonzero — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9aed678e06b2b167a9c411c806f9468f537d6d675aec8fbeb16400f2e6066cf1
Organized SHA-256: 87b4c8b52996c258178dfe67cd7f312e102711df141655ae3286cb6a2ae3f55a
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete Object-indexed family, relevance predicate and supplied index-valued function, extended by its full relevance-dependent nonzero assumption and exact projection proof. Nonzero is the original provider negation of value=K.zero; no group laws or index construction is assumed beyond the unchanged historical import. All fields/sourceLabel and original namespaces remain; no independent arithmetic or global nonvanishing theorem is asserted. -/

import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.CanonicalPath.GlobalIndexNonzero

Radiation role: research-boundary
BinaryMatrix spine: This module names the global K-index nonvanishing target, not BinaryMatrix data.
Ontology: canonical_path.global_index_nonzero
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
Arithmetic objects relevant to the canonical path, together with their
contract-level K-theory indices.
-/
structure RelevantArithmeticFamily
    (M : DerivedSheaf.MellKTheory) where
  Object : Type _
  relevant : Object → Prop
  kIndexAt : Object → DerivedSheaf.KTheoryIndex M
  sourceLabel : String

/--
Uniform nonvanishing of the K-index over the relevant arithmetic family.

This is currently a contract surface: it records the theorem target as a field.
-/
structure GlobalKIndexNonzero
    (M : DerivedSheaf.MellKTheory)
    extends RelevantArithmeticFamily M where
  globalNonzero :
    ∀ x : Object, relevant x → (kIndexAt x).indexClass.Nonzero

theorem global_k_index_nonzero
    {M : DerivedSheaf.MellKTheory}
    (G : GlobalKIndexNonzero M)
    {x : G.Object}
    (h : G.relevant x) :
    (G.kIndexAt x).indexClass.Nonzero :=
  G.globalNonzero x h

end CanonicalPath
end Folder
