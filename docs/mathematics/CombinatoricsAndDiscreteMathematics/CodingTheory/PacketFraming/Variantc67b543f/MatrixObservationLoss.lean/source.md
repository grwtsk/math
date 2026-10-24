# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.PacketFraming.Variantc67b543f.MatrixObservationLoss

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2e27b1ec149175c78eb89f4934e753a33ba08ab` · SHA-256 `b9921608edd3fb7bb5a2fe28aba8cebfe374da9befbb948f3c2bc1eb16f5c8ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Matrix-only observation loses valid-packet information
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: c67b543f1780223fa05287ab2b5542786cd167d4765224bbd5846f2abed50f56
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
The source witness has fixed row width r=2 and uses the imported variableMatrix_forgets_payload_length result unchanged.
-/
import FilesystemCodec.Codec
import DAF.Fabric.Core

import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.PacketFraming.Variantc67b543f.CanonicalPacketCodec

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.PacketFraming.Variantc67b543f

open FilesystemCodec

/--
Two valid full-packet states can be distinct even when their matrix-only face
observations agree.  The distinction is exactly their retained payload length.
-/
theorem fullPacket_distinguishes_matrixOnly :
    ∃ p q : (allPacketCodec (r := 2) (by decide)).ValidPacketType,
      p ≠ q ∧
      p.1.toVariableMatrix = q.1.toVariableMatrix := by
  rcases variableMatrix_forgets_payload_length with ⟨p, q, hpq, hmatrix⟩
  let p' : (allPacketCodec (r := 2) (by decide)).ValidPacketType :=
    ⟨p, allPacketCodec_valid (by decide) p⟩
  let q' : (allPacketCodec (r := 2) (by decide)).ValidPacketType :=
    ⟨q, allPacketCodec_valid (by decide) q⟩
  refine ⟨p', q', ?_, hmatrix⟩
  intro hpq'
  exact hpq (congrArg Subtype.val hpq')


end GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.PacketFraming.Variantc67b543f
```
