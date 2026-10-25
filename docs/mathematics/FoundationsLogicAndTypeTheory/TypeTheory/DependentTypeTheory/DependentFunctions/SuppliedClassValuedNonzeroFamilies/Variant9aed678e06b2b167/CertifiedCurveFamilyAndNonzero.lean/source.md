# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SuppliedClassValuedNonzeroFamilies.Variant9aed678e06b2b167.CertifiedCurveFamilyAndNonzero

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45f1a562ff3b757a6e5801c92638467f489002ff` · SHA-256 `8cdeafcbfd42c3a4f03abf73ef9354bc930386e05e7b2a5e59cbc019d253b330`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CertifiedCurveFamilyAndNonzero — individual source review
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

/- Complete Curve-indexed supplied family and relevance-dependent nonzero assumption with its exact projection proof. Curve is an arbitrary Type and relevantForGRHBoundary is a supplied predicate; this does not construct elliptic curves, BSD/modularity data or a GRH result. All fields/sourceLabel and original provider/namespace identity remain. Nonzero retains the actual original class-value inequality semantics, without group laws or provider replay. -/

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
A named elliptic-family specialization of the same global nonzero target.

The fields are still supplied data; no BSD, modularity, or central L-value
nonvanishing theorem is proved here.
-/
structure CertifiedEllipticCurveFamily
    (M : DerivedSheaf.MellKTheory) where
  Curve : Type _
  relevantForGRHBoundary : Curve → Prop
  kIndex : Curve → DerivedSheaf.KTheoryIndex M
  uniformIndexNonzero :
    ∀ E : Curve, relevantForGRHBoundary E →
      (kIndex E).indexClass.Nonzero
  sourceLabel : String

theorem elliptic_family_global_index_nonzero
    {M : DerivedSheaf.MellKTheory}
    (E : CertifiedEllipticCurveFamily M)
    {x : E.Curve}
    (h : E.relevantForGRHBoundary x) :
    (E.kIndex x).indexClass.Nonzero :=
  E.uniformIndexNonzero x h

end CanonicalPath
end Folder
```
