# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT03ProfileRefinement.Variant8de54d483bb2743ebcbf6e9d624b550f411081b1731f8e625ec3d988aea7629a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a1b8d8ac8d7361378367f8d2f47149c17bb47e6` · SHA-256 `8de54d483bb2743ebcbf6e9d624b550f411081b1731f8e625ec3d988aea7629a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Theorem

universe uInput uWitness

namespace FCRS.Transport.Theorems

/-- Transfer a claim only through the exact proved refinement adapter. -/
theorem tt03_claimOfRefinement
    {Input : Type uInput} {Witness : Type uWitness}
    {refined broader : IntervalProfile Input Witness}
    (adapter : ProfileRefines refined broader)
    (claim : IntervalClaim refined) :
    IntervalClaim broader :=
  adapter.transportClaim claim

end FCRS.Transport.Theorems
```
