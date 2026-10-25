# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN07CharacteristicBoundary.Variant52ccbeafc29a4807d121794c949ed54895aa93a5949103e8247c270d0317337a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `feb3c294dccb6e83cddc7d16096ee452fe56b5d3` · SHA-256 `52ccbeafc29a4807d121794c949ed54895aa93a5949103e8247c270d0317337a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
A scoped nonalgebraizable object refutes unrestricted essential surjectivity
in characteristic zero or mixed characteristic.
-/
theorem hen07_characteristicBoundary
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hCharacteristic : S.P.characteristicZeroOrMixedProfile)
    (hCounterexample : S.P.knownRankTwoNonAlgebraizableObject) :
    ¬ EssentiallySurjective S.functors.HenPullback := by
  have hOutside :=
    registry.hen07 hCharacteristic hCounterexample
  exact counterexampleNotEssentiallySurjective
    S.functors.HenPullback
    hOutside

end FCRS.Algebraization.Theorems
```
