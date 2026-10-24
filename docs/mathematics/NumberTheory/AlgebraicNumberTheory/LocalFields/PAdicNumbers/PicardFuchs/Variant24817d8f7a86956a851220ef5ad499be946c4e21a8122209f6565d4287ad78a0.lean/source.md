# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.PicardFuchs.Variant24817d8f7a86956a851220ef5ad499be946c4e21a8122209f6565d4287ad78a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2412b5cbf2f956a4adbbb5d377e396096fcac10` · SHA-256 `24817d8f7a86956a851220ef5ad499be946c4e21a8122209f6565d4287ad78a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Gauge.Reference

namespace Think.Kakeya.PAdic

def configuredPicardFuchsEquation : String :=
  "d²y/dj² + (1/j)dy/dj + ((31j−4)/(144j²(1−j)²))y = 0"

def picardFuchsGuardrail : String :=
  "Configured equation applies only to the configured elliptic family / j-parameter model."

def gaussManinReferenceTransportLabel : String :=
  "Picard–Fuchs / Gauss–Manin supplies reference transport, not binary output."

end Think.Kakeya.PAdic
```
