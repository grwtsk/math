/-
NeighborCardinality — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331
Organized SHA-256: 490241ae13922fa34ab13011cf085a1507591a492fc17fcb23d9a67f7fe2f095
PMD: 510.7.030.080 spectral graph theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact degree as the cardinality of the whole supplied adjacency subtype, with its original chosen finite-neighbor instance. No regularity or positive degree hypothesis added. -/

import Folder.Spectral.Graph
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Laplacian

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.laplacian
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpectralGraphTheory.FiniteGraphLaplacians.Variant8b3518dfe87808ab

open Folder
open Folder.Spectral

open Carrier

namespace CellGraph

noncomputable def degree {s : GridShape}
    (G : CellGraph s)
    (c : Cell s) :
    Nat := by
  classical
  letI := G.finite_neighbors c
  exact Fintype.card {d : Cell s // G.Adj c d}

end CellGraph

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpectralGraphTheory.FiniteGraphLaplacians.Variant8b3518dfe87808ab
