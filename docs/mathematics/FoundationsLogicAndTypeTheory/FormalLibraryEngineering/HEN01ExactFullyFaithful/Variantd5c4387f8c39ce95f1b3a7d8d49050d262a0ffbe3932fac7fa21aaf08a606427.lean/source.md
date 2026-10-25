# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN01ExactFullyFaithful.Variantd5c4387f8c39ce95f1b3a7d8d49050d262a0ffbe3932fac7fa21aaf08a606427

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afd47696fd42975255ab27884acceaf924a3565c` · SHA-256 `d5c4387f8c39ce95f1b3a7d8d49050d262a0ffbe3932fac7fa21aaf08a606427`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- HEN-1: exact fully faithful Henselian pullback with epi preservation. -/
theorem hen01_exactFullyFaithful
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN01Claim S :=
  registry.hen01

end FCRS.Algebraization.Theorems
```
