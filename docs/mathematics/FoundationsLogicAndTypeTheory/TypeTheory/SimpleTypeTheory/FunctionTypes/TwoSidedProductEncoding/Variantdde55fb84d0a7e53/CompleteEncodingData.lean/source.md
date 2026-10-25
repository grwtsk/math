# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.TwoSidedProductEncoding.Variantdde55fb84d0a7e53.CompleteEncodingData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abad4c7b75993631bb2be7b901caaea954c5f391` · SHA-256 `fca640dd4457ece6216143fc8126a732d2a3b78d2d3616fce4a9a8b6ee2a107d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CompleteEncodingData — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: dde55fb84d0a7e537b3e12283919a909dd7a0b8dda738e5cea24a292bd450230
Organized SHA-256: f23a0fc76af632b2738c651d1e58eb621c6bd86d732a16d887f82e2062cb9f8e
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete same-universe alpha,beta,rho types, encode to beta-times-rho, decode and both original LeftInverse/RightInverse fields. No inverse after discarding a residual coordinate is asserted. -/

import Folder.Basic

/-!
# Folder.Quantization.Residual

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: quantization.residual
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: residual
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.TwoSidedProductEncoding.Variantdde55fb84d0a7e53

structure ResidualEncoding (α β ρ : Type _) where
  encode : α → β × ρ
  decode : β × ρ → α
  left_inverse : Function.LeftInverse decode encode
  right_inverse : Function.RightInverse decode encode

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.TwoSidedProductEncoding.Variantdde55fb84d0a7e53
```
