# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.CenterShellReconstruction.Variante92975a1f55379d5.EncodeDecodeRoundTrips

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdef2a1951558f1303a266eab8f011d4edeed86a` · SHA-256 `0545a160ac7ca6ae7db30bb21c4396efd06e8337bc1f06675734725ca393a3d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
EncodeDecodeRoundTrips — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e92975a1f55379d5ca50e7c05e85d1552b8bd36a59de8ceb2aec0da835d53ac6
Organized SHA-256: 01994c29b6985309e6d7c7cb32a5fa67a4b3416ce0d34323e53066b3b9461152
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact encode/decode functions, both evaluation laws and both complete inverse proofs for the original center/shell partition. The decode definition branches on IsCenterCell, using the source proof subtype in the shell branch. Original s/k and provider terms stay exact; no standalone heat inverse, discarded residual channel, norm law or operator construction follows. -/

import Folder.Spectral.Fiber

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.ProductTypes.CenterShellProducts.Variante92975a1f55379d5.CenterShellData

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


namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.CenterShellReconstruction.Variante92975a1f55379d5

open Folder
open Folder.Spectral
open GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.ProductTypes.CenterShellProducts.Variante92975a1f55379d5

open Carrier

noncomputable def encodeShell {s : GridShape} {k : Nat}
    (X : SpectralTensor (Expansion.expandedShape s) k) :
    SpectralShellEncoded s k :=
  { center :=
      { value := fun c q => X.value (Expansion.centerCell c) q }
    shell :=
      { value := fun c q => X.value c.1 q } }


noncomputable def decodeShell {s : GridShape} {k : Nat}
    (E : SpectralShellEncoded s k) :
    SpectralTensor (Expansion.expandedShape s) k := by
  classical
  exact
    { value := fun c q =>
        if h : Expansion.IsCenterCell c then
          E.center.value (Expansion.centerOf c h) q
        else
          E.shell.value ⟨c, h⟩ q }


@[simp]
theorem encodeShell_center_value {s : GridShape} {k : Nat}
    (X : SpectralTensor (Expansion.expandedShape s) k)
    (c : Cell s)
    (q : Fin k) :
    (encodeShell X).center.value c q =
      X.value (Expansion.centerCell c) q :=
  rfl


@[simp]
theorem encodeShell_shell_value {s : GridShape} {k : Nat}
    (X : SpectralTensor (Expansion.expandedShape s) k)
    (c : {c : Cell (Expansion.expandedShape s) // Expansion.IsShellCell c})
    (q : Fin k) :
    (encodeShell X).shell.value c q = X.value c.1 q :=
  rfl


theorem decode_encode_shell {s : GridShape} {k : Nat}
    (X : SpectralTensor (Expansion.expandedShape s) k) :
    decodeShell (encodeShell X) = X := by
  classical
  ext c q
  by_cases h : Expansion.IsCenterCell c
  · simp [decodeShell, Expansion.centerCell_centerOf]
  · simp [decodeShell, h]


theorem encode_decode_shell {s : GridShape} {k : Nat}
    (E : SpectralShellEncoded s k) :
    encodeShell (decodeShell E) = E := by
  classical
  apply SpectralShellEncoded.ext
  · ext c q
    simp [decodeShell, Expansion.centerCell_isCenter, Expansion.centerOf_centerCell]
  · ext c q
    have hs : ¬ Expansion.IsCenterCell c.1 := c.2
    simp [decodeShell, hs]


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.CenterShellReconstruction.Variante92975a1f55379d5
```
