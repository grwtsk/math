# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SourceComponents.Variant471c52b83305ee16.MatrixWordShapeAndWeightData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ea286cc5a60c428f0f390edf6f784829134bfae` · SHA-256 `1d30802a63243d7bc0d21d3d98d5772cd3b1a481fd24a0392b6757b82b4a1065`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
MatrixWordShapeAndWeightData — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86
Organized SHA-256: 1a5e1838d7e63111d0c54c4c25fd90269f20bdf63ff13b8bacfa93338ec5bfaa
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole source budget/uniform-length-and-shape and weight/estimate records retain every field and actual dependent equality. These are supplied sequence data, not a complexity bound or semantic proof resource guarantee. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Folder.Carrier.BinaryMatrix
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.SourceComponents.Variant471c52b83305ee16.FiniteMatrixWords

/-!
# Folder.Carrier.BinaryMatrixStream

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: carrier.binary_matrix_stream
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace Carrier
namespace BinaryMatrixStream
/-- A fixed logical-time budget for a theorem proof stream. -/
structure MatrixProofBudget where
  logicalSteps : Nat
  frameRows : Nat
  frameCols : Nat

/--
A proof stream has uniform theorem size if every frame has the same spatial
shape and the stream has the prescribed logical length.
-/
structure UniformMatrixProofStream where
  budget : MatrixProofBudget
  stream : BinaryMatrixStream
  length_eq_budget : stream.k = budget.logicalSteps
  uniform_shape :
    ∀ t : Fin stream.k,
      (stream.layer t).m = budget.frameRows ∧
      (stream.layer t).n = budget.frameCols

/--
Weighted proof flow: instead of forcing equal logical step count, assign a
cost/weight to each frame.
-/
structure WeightedMatrixProofStream where
  stream : BinaryMatrixStream
  weight : Fin stream.k → Nat
  conjectureSizeEstimate : BinaryMatrix → Nat

end BinaryMatrixStream
end Carrier
end Folder
```
