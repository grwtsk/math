# Complete source: GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteSquaredDifferences.Variant095db63c5a49f882.EdgeChannelSum

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30298f920044218d4150234a7720a1fa7d65d2bf` · SHA-256 `ab245b68e5316edb7e18321efa18e2f898297dd62fbe0fa8ee7000cb56035d70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
EdgeChannelSum — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 095db63c5a49f882cca19c6aee4c9fa287e3a6450b7313eef2b024b0817fffb9
Organized SHA-256: cf6798c6c78ddd3b1436623b014c51bc892f72b717a5cdc08b184286fb1a0f73
PMD: 510.5.010.010 real functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact finite sum of real squared differences and its original nonnegativity proof; k may be zero. No norm or metric law is introduced. -/

import Folder.Spectral.Graph
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Energy

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.energy
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteSquaredDifferences.Variant095db63c5a49f882

open Folder
open Folder.Spectral

open Carrier

noncomputable def edgeChannelEnergy {s : GridShape} {k : Nat}
    (X : SpectralTensor s k)
    (c d : Cell s) :
    ℝ :=
  ∑ q : Fin k, (X.value c q - X.value d q) ^ 2

theorem edgeChannelEnergy_nonneg {s : GridShape} {k : Nat}
    (X : SpectralTensor s k)
    (c d : Cell s) :
    0 ≤ edgeChannelEnergy X c d := by
  classical
  unfold edgeChannelEnergy
  exact Finset.sum_nonneg fun q _ => sq_nonneg _

end GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteSquaredDifferences.Variant095db63c5a49f882
```
