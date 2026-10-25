# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.BinaryEndpointLabels.Variant5bb06107b0f1813f.EndpointLabels

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c4e3ee72703f8455bb7f8c804307ba5e08ac304` · SHA-256 `ae78a227bc2d3f322176658b1287470e6f0473aefb2d3933a1656f39099b1c04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
EndpointLabels — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b
Organized SHA-256: a05c812325ee730c25f9b7a53febd731e3a6218e875b6db89856565b721f3f41
PMD: 510.0.070.020.050 inductive types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete four-constructor EndpointClass with exact deriving clauses and two-endpoint zero-test classifier on original Bit. This is finite label data; it supplies no spectral/physical zero classification, path quotient or theorem that arbitrary nonzero values equal one. -/

import Folder.Carrier.Bit

/-!
# Folder.Spectral.PathClass

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.path_class
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.BinaryEndpointLabels.Variant5bb06107b0f1813f

open Folder

open Carrier

inductive EndpointClass
  | zero_zero
  | zero_one
  | one_zero
  | one_one
deriving DecidableEq, Repr


namespace EndpointClass

def ofEndpoints (a b : Bit) : EndpointClass :=
  if a = 0 then
    if b = 0 then zero_zero else zero_one
  else
    if b = 0 then one_zero else one_one


end EndpointClass

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.BinaryEndpointLabels.Variant5bb06107b0f1813f
```
