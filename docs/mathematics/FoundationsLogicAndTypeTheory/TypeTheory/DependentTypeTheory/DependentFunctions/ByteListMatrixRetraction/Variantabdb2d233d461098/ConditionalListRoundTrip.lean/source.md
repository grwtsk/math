# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ByteListMatrixRetraction.Variantabdb2d233d461098.ConditionalListRoundTrip

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `915daf3b51f596069e08afcdf9278193815125a9` · SHA-256 `b32adc96066f3111f8036a47ea23e43bdafd9c7cc9414de4acd390703166dbb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ConditionalListRoundTrip — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: abdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e
Organized SHA-256: a60c7de1184f0d1b12f7f44bfb87dce47c5b50f1808ac5810247a79b6e076d0c
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Full original arbitrary C/bs theorem and complete hfun/hbits/Fin.ext/by_cases/roundtrip/List.ofFn_get proof retained. This proves only decoder(encoder bs)=some bs under the supplied codec law, including empty lists; no arbitrary-matrix converse, shape validator, codec existence or bit-order law is claimed. -/

import Folder.Archive.Byte
import Folder.Carrier.BinaryMatrix

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ByteListMatrixRetraction.Variantabdb2d233d461098.ListMatrixFunctions

/-!
# Folder.Archive.ByteMatrix

Radiation role: archive-codec
BinaryMatrix spine: This module represents byte payloads as 8-column BinaryMatrix values.
Ontology: archive.byte_matrix
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ByteListMatrixRetraction.Variantabdb2d233d461098

open Folder
open Folder.Archive

theorem matrixToBytes?_bytesToMatrix_of_codec
    (C : Byte.ByteCodec)
    (bs : List Byte) :
    matrixToBytesWith C (bytesToMatrixWith C bs) = some bs := by
  change
    some (List.ofFn
      (fun i : Fin bs.length =>
        C.ofBits (fun j : Fin 8 =>
          if h : j.val < 8 then
            C.toBits (bs.get i) ⟨j.val, h⟩
          else
            0))) = some bs
  congr
  have hfun :
      (fun i : Fin bs.length =>
        C.ofBits (fun j : Fin 8 =>
          if h : j.val < 8 then
            C.toBits (bs.get i) ⟨j.val, h⟩
          else
            0)) =
        (fun i : Fin bs.length => bs.get i) := by
    funext i
    have hbits :
        (fun j : Fin 8 =>
          if h : j.val < 8 then
            C.toBits (bs.get i) ⟨j.val, h⟩
          else
            0) = C.toBits (bs.get i) := by
      funext j
      by_cases h : j.val < 8
      · have hj : (⟨j.val, h⟩ : Fin 8) = j := Fin.ext rfl
        simp [h, hj]
      · exact False.elim (h j.isLt)
    rw [hbits, C.roundtrip]
  rw [hfun]
  exact List.ofFn_get bs


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ByteListMatrixRetraction.Variantabdb2d233d461098
```
