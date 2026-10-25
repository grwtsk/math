# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitState.Variant13aaa772c060397876a350d701d817024ee36753e796ed42642e0a693fe58d50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e6e56760aa3600eece61270965d4dde923b9325` · SHA-256 `13aaa772c060397876a350d701d817024ee36753e796ed42642e0a693fe58d50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Boundary.ProjectiveSystem

/-!
# Inverse-limit state as compatibility data
-/

namespace Mathematics.StratifiedBoundary

structure ProjectiveLimitPoint
    {State : Type u}
    (system : FinitePrefixProjectiveSystem State) where
  atStage : Nat → State
  compatible :
    ∀ {later earlier},
      earlier ≤ later →
      system.project later earlier (atStage later) =
        atStage earlier

def witnessedProjectiveLimitPoint
    {State : Type u}
    (system : FinitePrefixProjectiveSystem State) :
    ProjectiveLimitPoint system where
  atStage := system.compatibleWitness
  compatible := system.witnessCompatible

theorem projective_limit_inhabited
    {State : Type u}
    (system : FinitePrefixProjectiveSystem State) :
    Nonempty (ProjectiveLimitPoint system) :=
  ⟨witnessedProjectiveLimitPoint system⟩

end Mathematics.StratifiedBoundary
```
