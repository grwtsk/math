# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Carrier.Variant2011df9a8fecaf79f2181203705ca7c465a482b37beef875210a6e37e6547655

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3691d24d10cc12b3382b6ae6bb972fa3ba4a60e9` · SHA-256 `2011df9a8fecaf79f2181203705ca7c465a482b37beef875210a6e37e6547655`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GammaBridge.All

/-! # Trajectory carriers -/

namespace Mathematics.Trajectory

universe u

structure Carrier (State : Type u) where
  id : TrajectoryId
  progression : Progression.CarrierIdentity
  profile : GammaBridge.ParameterProfile
  path : ℝ → State

end Mathematics.Trajectory
```
