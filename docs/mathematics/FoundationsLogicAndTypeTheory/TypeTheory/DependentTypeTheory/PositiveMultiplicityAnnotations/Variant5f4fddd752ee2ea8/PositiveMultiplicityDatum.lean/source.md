# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.PositiveMultiplicityAnnotations.Variant5f4fddd752ee2ea8.PositiveMultiplicityDatum

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d024fc66a95ade14e7e821a3cbc680c01c39bc91` · SHA-256 `307eb640b4cc8c2438d5dc282a90471131a44345269dda5faf7bdaae388f7d3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
PositiveMultiplicityDatum — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037
Organized SHA-256: d1205bd4dd2ac5ec02055e282c762cc20ab75ec02e4021cd11cf3954e705e8e7
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete source record: index:Nat, eigenvalue:Real, multiplicity:Nat, proof 0<multiplicity and label:String. These are numeric annotations with an actual positivity equation, not an eigenvector/operator/eigenvalue relation or a constructed Dirac spectrum; the original warning is retained exactly. -/

import Folder.Carrier.Grid

/-!
# Folder.Spectral.Tensor

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.spectral_tensor
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.PositiveMultiplicityAnnotations.Variant5f4fddd752ee2ea8

open Folder

open Carrier

/--
A single eigenvalue datum in a Dirac-type spectrum.

This is contract-level spectrum data. It does not assert construction of an
actual Dirac operator.
-/
structure DiracEigenDatum where
  index : Nat
  eigenvalue : ℝ
  multiplicity : Nat
  multiplicity_pos : 0 < multiplicity
  label : String


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.PositiveMultiplicityAnnotations.Variant5f4fddd752ee2ea8
```
