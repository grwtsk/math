# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedPivotAndSpectralInterfaces.Variantc004ecb0ee73b96e.WholePivotAtlasDataAndConditionalProjections

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eae0f8a0af1eef685216f5b36d9ec5ea7c1e2ad9` · SHA-256 `9365e71f91fb4cd5eae058baa01a7f41f38cc916afbc550958eb9304e45edd65`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholePivotAtlasDataAndConditionalProjections — whole supplied typed interface
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: c004ecb0ee73b96e34251365f703ddc2a5e863416699e8abf0d3413eefe73b42
Organized SHA-256: 471c96df8eeb3868fb0a552ee6542700d69b51176251531822f7f52cd8f61ae8
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Complete typed atlas interface and all five exact theorem bodies. The actual Pivot:Type, toPivot map, indexed overlap and transition function and nonzero-witness implication remain whole. coversCanonicalPath/cocycleCompatible/barrierClosed are independently selected Props; their theorems retain explicit h premises and prove h. The imported local nonzero witness is True-valued. No coverage, cocycle, topology, atlas existence or analytic path law follows from these labels. The complete original file follows unchanged, including original namespace blocks and imports. The physical GRWTSK subject path adds no namespace, alias or replacement provider. Distinct historical representations remain isolated uncompiled variants, with no joint-import compatibility assertion.
-/

import Folder.CanonicalPath.Pivot

/-!
# Folder.CanonicalPath.PivotAtlas

Radiation role: research-boundary
BinaryMatrix spine: This module defines a canonical pivot atlas, not BinaryMatrix data.
Ontology: canonical_pivot_atlas
Pivot role: canonical
Zero typology: barrier-contract
Contract boundary: proposed-definition
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/-- A declared overlap between two canonical pivots. -/
structure PivotOverlap (P Q : CanonicalPivot) where
  label : String

/--
Transition data across a pivot overlap. The transition can propagate a supplied
local nonzero K-index witness from one pivot to the next.
-/
structure PivotTransition (P Q : CanonicalPivot) where
  overlap : PivotOverlap P Q
  transport : LocalQuasiIsomorphism
  preservesIndex :
    LocalKIndexNonzero P.kIndexClass →
      LocalKIndexNonzero Q.kIndexClass

theorem PivotTransition.preserves_index
    {P Q : CanonicalPivot}
    (T : PivotTransition P Q)
    (h : LocalKIndexNonzero P.kIndexClass) :
    LocalKIndexNonzero Q.kIndexClass :=
  T.preservesIndex h

/--
A directed atlas of local analytic pivots. The coverage, cocycle, and barrier
conditions are explicit contract fields; this structure does not assert such an
atlas exists for the de Bruijn-Newman path.
-/
structure CanonicalPivotAtlas where
  Pivot : Type
  toPivot : Pivot → CanonicalPivot
  coversCanonicalPath : Prop
  overlap : Pivot → Pivot → Type
  transition :
    ∀ i j, overlap i j →
      PivotTransition (toPivot i) (toPivot j)
  cocycleCompatible : Prop
  barrierClosed : Prop

theorem CanonicalPivotAtlas.covers_canonical_path
    (A : CanonicalPivotAtlas)
    (h : A.coversCanonicalPath) :
    A.coversCanonicalPath :=
  h

theorem CanonicalPivotAtlas.cocycle_compatible
    (A : CanonicalPivotAtlas)
    (h : A.cocycleCompatible) :
    A.cocycleCompatible :=
  h

theorem CanonicalPivotAtlas.barrier_closed
    (A : CanonicalPivotAtlas)
    (h : A.barrierClosed) :
    A.barrierClosed :=
  h

theorem CanonicalPivotAtlas.transition_preserves_index
    (A : CanonicalPivotAtlas)
    {i j : A.Pivot}
    (o : A.overlap i j)
    (h : LocalKIndexNonzero (A.toPivot i).kIndexClass) :
    LocalKIndexNonzero (A.toPivot j).kIndexClass :=
  (A.transition i j o).preserves_index h

end CanonicalPath
end Folder
```
