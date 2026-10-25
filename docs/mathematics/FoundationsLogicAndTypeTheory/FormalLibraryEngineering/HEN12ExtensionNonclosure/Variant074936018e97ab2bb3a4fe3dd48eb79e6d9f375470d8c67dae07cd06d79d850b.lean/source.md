# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN12ExtensionNonclosure.Variant074936018e97ab2bb3a4fe3dd48eb79e6d9f375470d8c67dae07cd06d79d850b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9573aacf876ccf229ca904938f08e866c51c293` · SHA-256 `074936018e97ab2bb3a4fe3dd48eb79e6d9f375470d8c67dae07cd06d79d850b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
The known nonalgebraizable extension prevents the effective Henselian target
from being an ambient extension-closed (Serre) subcategory in the obstructed
characteristic scopes.
-/
theorem hen12_extensionNonclosure
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN12Claim S :=
  registry.hen12

end FCRS.Algebraization.Theorems
```
