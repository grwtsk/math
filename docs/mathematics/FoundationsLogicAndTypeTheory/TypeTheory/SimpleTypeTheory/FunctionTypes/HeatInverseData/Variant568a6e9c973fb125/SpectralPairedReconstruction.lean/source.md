# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.HeatInverseData.Variant568a6e9c973fb125.SpectralPairedReconstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a47e574cae198fa7962ccd12a22f8e24af3eabc5` · SHA-256 `12c4d2c8671979f3729a0138acad26588ccca1ba9b9d3ddda5d067786aa06658`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact historical spectral paired-reconstruction specialization
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96
Organized SHA-256: 97d53f27b51fdaac9f2124f16cdaa79fa97cdf1af07a86f362d6008844f81d0e
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete s/k/H/t construction uses supplied GraphHeat, heatResidual and qualified heat_add_residual proof, with reconstruct y r = y+r unchanged. Zero sizes/channels allowed. Exact Spectral.Residual provider is unresolved; root Quantization.ResidualEncoding is not substituted. -/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.HeatInverseData.Variant568a6e9c973fb125.PairedReconstruction

import Folder.Spectral.Heat
import Folder.Spectral.Residual
import Folder.Theorem.Spectral.HeatResidual

/-!
# Folder.Research.HeatInvertibility

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.heat_invertibility
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


open Folder

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.HeatInverseData.Variant568a6e9c973fb125

def spectralLiftedHeatInverse
    {s : Carrier.GridShape}
    {k : Nat}
    (H : Spectral.GraphHeat s k)
    (t : NNReal) :
    LiftedHeatInverse
      (Spectral.SpectralTensor s k)
      (H.heat t)
      (Spectral.heatResidual H t) where
  reconstruct := fun y r => y + r
  reconstruct_heat_residual := by
    intro X
    exact Spectral.heat_add_residual H t X

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.HeatInverseData.Variant568a6e9c973fb125
```
