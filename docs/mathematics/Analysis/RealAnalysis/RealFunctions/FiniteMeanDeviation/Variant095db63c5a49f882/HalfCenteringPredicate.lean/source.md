# Complete source: GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteMeanDeviation.Variant095db63c5a49f882.HalfCenteringPredicate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdc5d2638f743f971961f739b0935e59b3ae1303` · SHA-256 `9a727cb2814dd1ff54e282780f524a34987a318a34349a9e8e92fdf83968d99e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
HalfCenteringPredicate — individually reviewed exact source
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

/- Exact absolute deviation from the original provider mean to one-half bounded by supplied epsilon. This is a predicate, not a supplied bound or mean construction. The original mean permits zero dimensions and channels. -/

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


namespace GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteMeanDeviation.Variant095db63c5a49f882

open Folder
open Folder.Spectral

open Carrier

def CenteredAroundHalf {s : GridShape} {k : Nat}
    (ε : ℝ)
    (X : SpectralTensor s k) :
    Prop :=
  |SpectralTensor.mean X - (1 / 2 : ℝ)| ≤ ε

end GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteMeanDeviation.Variant095db63c5a49f882
```
