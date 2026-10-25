# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN15EffectiveTargetClosure.Variant4076708c00480248ccfec5136c42e3e71de775b519a226e50487164cc42efa1c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee81b290c2c6fa98a3bc6464a2a17f50ab1e7147` · SHA-256 `4076708c00480248ccfec5136c42e3e71de775b519a226e50487164cc42efa1c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
The effective Henselian target is closed under the declared exact, additive,
tensor, and retract operations; ambient extension closure is intentionally
not included.
-/
theorem hen15_effectiveTargetClosure
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN15Claim S :=
  registry.hen15

end FCRS.Algebraization.Theorems
```
