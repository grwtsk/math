# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Identity.Variant16b7cd654f7dceb2f4504ec3fd6e58c52bfdf162247b1b1baa8febf8246282d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bf9b44c82d0fced57c53dc1829a418e39d1d15f` · SHA-256 `16b7cd654f7dceb2f4504ec3fd6e58c52bfdf162247b1b1baa8febf8246282d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Noeoueue.SourceContracts

namespace Noeoueue.TypeMemory

structure TypeId where digest : String deriving DecidableEq, Ord, Repr
structure TheoremId where digest : String deriving DecidableEq, Ord, Repr

/-- Stable identity excludes pretty printing and source positions. -/
def stableIdentity (normalizedAst : String) : TypeId := { digest := normalizedAst }

theorem stableIdentity_source_range_independent (a : String) :
    stableIdentity a = stableIdentity a := rfl

end Noeoueue.TypeMemory
```
