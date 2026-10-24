# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.PartialDecodingAndImageFormats.Variant3cabdda54a9b7fe2.LosslessCodec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8940de78a09700547e46167e5daebf79d6a8604` · SHA-256 `2cfa8809e5e5598374885bb5de6ddba1d3ce710410532abe980f683273ce66c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
LosslessCodec
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3cabdda54a9b7fe2b0a5e6c27c564afff9f94b480bb976b1344df613dab6cb1d
Organized SHA-256: 4b5d1df012bd6991e21b144199c1fb9a4207d6a1d55f953cb3abc7fa0e43275a
PMD: 510.7.090 coding theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: physical GRWTSK subject placement only. Exact original namespace blocks, imported provider names, fields, hypotheses, equations and proofs are preserved. Historical provider lookup is unreplayed; the archive path is not an activated import alias. Distinct historical candidate versions are isolated and are not claimed compatible for coimport. No extra algebraic, analytic or computational acceptance claim is added.
-/

import BooleanMatrix.Format

/-!
# BooleanMatrix codecs

A codec gives a lossless representation of values in the common matrix
carrier.
-/

namespace BooleanMatrix

universe u

/--
A lossless representation of values inside BooleanMatrix.

Decoding is partial because not every matrix must be a valid encoding.
-/
structure Codec (α : Type u) where
  encode : α → Matrix
  decode : Matrix → Option α
  decode_encode :
    ∀ value,
      decode (encode value) = some value

end BooleanMatrix
```
