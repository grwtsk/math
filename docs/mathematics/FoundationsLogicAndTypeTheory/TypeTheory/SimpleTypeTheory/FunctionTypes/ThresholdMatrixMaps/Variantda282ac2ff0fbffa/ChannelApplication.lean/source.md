# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ThresholdMatrixMaps.Variantda282ac2ff0fbffa.ChannelApplication

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10f01ecdaaa9b5d6e64456ba117a57f079deff56` · SHA-256 `645c7a57d596c09b1e3c87f7fe7900ebb8d1f3312f0e21192cc3184cc2fab330`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ChannelApplication — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: da282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893
Organized SHA-256: 7a97762b922ac9456ac1ca33bf866f8576fba44814cd7905908f408dec8806de
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact application of a supplied quantizer to one original tensor channel, constructing the full original BinaryMatrix with unchanged s.rows/s.cols and entries. -/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ThresholdMatrixMaps.Variantda282ac2ff0fbffa.CompleteThresholdSpecification

import Folder.Carrier.BinaryMatrix
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Quantization

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.quantization
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ThresholdMatrixMaps.Variantda282ac2ff0fbffa

open Folder
open Folder.Spectral

open Carrier

def quantizeChannel {s : GridShape} {k : Nat}
    (Q : TensorQuantizer)
    (q : Fin k)
    (X : SpectralTensor s k) :
    BinaryMatrix :=
  BinaryMatrix.ofFunction s.rows s.cols
    (fun i j => Q.bitOf (X.value (i, j) q))

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ThresholdMatrixMaps.Variantda282ac2ff0fbffa
```
