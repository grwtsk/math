# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ThresholdMatrixMaps.Variantda282ac2ff0fbffa.CompleteThresholdSpecification

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a841f5dd496ee6caf7622c64dd2ca0846cd881f7` · SHA-256 `407203ea82963eb3d29f449e2fc9dd8536c4c7e700b798804598b866d2726f49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CompleteThresholdSpecification — individually reviewed exact source
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

/- Complete real threshold, real-to-original-Bit function and both universal below-zero/at-or-above-one equations. No arbitrary implementation or acceptance inferred. -/

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

structure TensorQuantizer where
  threshold : ℝ
  bitOf : ℝ → Carrier.Bit
  bitOf_spec_zero : ∀ x, x < threshold → bitOf x = 0
  bitOf_spec_one : ∀ x, threshold ≤ x → bitOf x = 1

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ThresholdMatrixMaps.Variantda282ac2ff0fbffa
```
