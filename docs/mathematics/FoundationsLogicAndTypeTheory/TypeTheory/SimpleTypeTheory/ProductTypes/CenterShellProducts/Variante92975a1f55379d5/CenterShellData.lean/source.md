# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.ProductTypes.CenterShellProducts.Variante92975a1f55379d5.CenterShellData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0eb07c7350f6ce893ea9f2e8465cfec9a10c7cc` · SHA-256 `60c331c3e370b27e44e5c0e62a8910a28352e6e2832d15bb49a4c97a984929f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CenterShellData — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e92975a1f55379d5ca50e7c05e85d1552b8bd36a59de8ceb2aec0da835d53ac6
Organized SHA-256: 01994c29b6985309e6d7c7cb32a5fa67a4b3416ce0d34323e53066b3b9461152
PMD: 510.0.070.010.030 product types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The complete center/shell record and its actual two-field extensionality proof. Both fields retain original Folder.Spectral tensor/fiber types; this is a product of supplied finite function data, not a new geometric decomposition or newly bound267/268 type. -/

import Folder.Spectral.Fiber

/-!
# Folder.Spectral.Expansion

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.expansion
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.ProductTypes.CenterShellProducts.Variante92975a1f55379d5

open Folder
open Folder.Spectral

open Carrier

structure SpectralShellEncoded (s : GridShape) (k : Nat) where
  center : SpectralTensor s k
  shell : SpectralShellFiber s k


namespace SpectralShellEncoded

@[ext]
theorem ext {s : GridShape} {k : Nat}
    {E F : SpectralShellEncoded s k}
    (hcenter : E.center = F.center)
    (hshell : E.shell = F.shell) :
    E = F := by
  cases E
  cases F
  simp at hcenter hshell
  subst hcenter
  subst hshell
  rfl


end SpectralShellEncoded

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.ProductTypes.CenterShellProducts.Variante92975a1f55379d5
```
