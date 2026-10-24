# Complete source: GRWTSK.Algebra.LinearAlgebra.Token.Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7144c2fd126cabefac276ed4235eb3ebf40c6872` · SHA-256 `5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Core

namespace Surface.Legacy

structure TokenAlphabet where
  size : Nat
  symbol : Fin size → String

structure TokenSequence (A : TokenAlphabet) where
  length : Nat
  token : Fin length → Fin A.size

structure TokenBinaryMatrixEncoding
    (A : TokenAlphabet)
    (s : TokenSequence A) where
  rows : Nat
  cols : Nat
  matrix : BinaryLogicMatrix rows cols
  sound : Prop
  claimBoundary : String

theorem tokenBinaryMatrixEncoding_boundary
    {A : TokenAlphabet}
    {s : TokenSequence A}
    (E : TokenBinaryMatrixEncoding A s) :
    E.sound → E.sound := by
  intro h
  exact h

theorem tokenSequence_length_nonneg
    {A : TokenAlphabet}
    (s : TokenSequence A) :
    0 ≤ s.length := by
  exact Nat.zero_le s.length

end Surface.Legacy
```
