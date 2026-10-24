# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SourceComponents.Variant6a8c4d7c421f9c98.BinaryMatrixTranspose

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d6364aa837f42e373ce1aa354938e79cbc850b6` · SHA-256 `980361234258bf55efbca5c9b6e724aeda24ba93d90a4e59812a3ce632971dfe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
BinaryMatrixTranspose — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77
Organized SHA-256: 02587afbb8384718f0448dbaf9e54afd048908e902439e33230a3c8aaffb1807
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact shape-swapping transpose and all three supplied accessor equalities. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Folder.Carrier.Bit
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SourceComponents.Variant6a8c4d7c421f9c98.FiniteBinaryMatrixCarrier

/-!
# Folder.Carrier.BinaryMatrix

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: bm.binary_matrix
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace Carrier
namespace BinaryMatrix
def transpose (M : BinaryMatrix) : BinaryMatrix :=
  ofFunction M.n M.m (fun i j => M.get j i)

@[simp]
theorem rows_transpose (M : BinaryMatrix) :
    rows (transpose M) = cols M :=
  rfl

@[simp]
theorem cols_transpose (M : BinaryMatrix) :
    cols (transpose M) = rows M :=
  rfl

@[simp]
theorem get_transpose (M : BinaryMatrix) (i : Fin M.n) (j : Fin M.m) :
    get (transpose M) i j = M.get j i :=
  rfl

end BinaryMatrix
end Carrier
end Folder
```
