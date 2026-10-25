# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ByteListMatrixRetraction.Variantabdb2d233d461098.ListMatrixFunctions

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26c6513973010a4e0fec0ee65171cd7614592e2b` · SHA-256 `ed7e9f9c4200440ada31054feea88fc8f2c97db4dfe84c3588084587dc2be627`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ListMatrixFunctions — individually reviewed exact source
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

/- Exact original old-provider ByteCodec/Byte/BinaryMatrix types retained. Encoder has bs.length rows/eight columns; decoder always returns some and takes the first eight columns with zero-fill when missing. It does not reject shapes or preserve extra columns, and no actual byte codec is constructed. -/

import Folder.Archive.Byte
import Folder.Carrier.BinaryMatrix

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

def bytesToMatrixWith
    (C : Byte.ByteCodec)
    (bs : List Byte) :
    Carrier.BinaryMatrix :=
  Carrier.BinaryMatrix.ofFunction bs.length 8
    (fun i j => C.toBits (bs.get i) j)


def matrixToBytesWith
    (C : Byte.ByteCodec)
    (M : Carrier.BinaryMatrix) :
    Option (List Byte) :=
  some (List.ofFn
    (fun i : Fin M.m =>
      C.ofBits (fun j : Fin 8 =>
        if h : j.val < M.n then
          M.get i ⟨j.val, h⟩
        else
          0)))


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ByteListMatrixRetraction.Variantabdb2d233d461098
```
