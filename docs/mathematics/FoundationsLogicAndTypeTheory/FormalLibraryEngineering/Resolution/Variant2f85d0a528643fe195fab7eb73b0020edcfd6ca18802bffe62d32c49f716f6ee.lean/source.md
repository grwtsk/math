# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Resolution.Variant2f85d0a528643fe195fab7eb73b0020edcfd6ca18802bffe62d32c49f716f6ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41af89cba888f9727ad9004af17acf82ccaacf23` · SHA-256 `2f85d0a528643fe195fab7eb73b0020edcfd6ca18802bffe62d32c49f716f6ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Neutral positive quantization resolutions

`ResolutionBits` is the shared lower-level representation of a finite,
strictly positive bit resolution. It contains no matrix semantics, assurance
status, evidence authority, or compiler policy. Domain and assurance modules
may depend on this carrier without depending on one another.
-/

namespace Surface.Quantization

/-- A finite, strictly positive number of quantization bits. -/
structure ResolutionBits where
  value : Nat
  positive : 0 < value
  deriving Repr

instance : DecidableEq ResolutionBits :=
  fun left right =>
    if h : left.value = right.value then
      isTrue (by cases left; cases right; simp_all)
    else
      isFalse (fun equality => h (congrArg ResolutionBits.value equality))

/-- The positivity proof carried by every resolution. -/
theorem ResolutionBits.value_pos
    (resolution : ResolutionBits) :
    0 < resolution.value :=
  resolution.positive

end Surface.Quantization
```
