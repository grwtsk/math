# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Atlas.Variantc14f9c8dca259940005c2570a66fc8513d6001ef595407cfa2e684656ca16f20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a0b020ec0b8a335822e603a4efe3a308e88d55a` · SHA-256 `c14f9c8dca259940005c2570a66fc8513d6001ef595407cfa2e684656ca16f20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Recoverability

/-!
# Dependency adapter for the existing recoverability calculus

This is the sole dependency on the original owning research namespace. These
exports reference the original declarations; they neither copy definitions nor
change their statements. Promotion can later replace this import without
requiring the atlas to duplicate a semantic core.
-/

namespace FormalResearch.MathematicalTooling.Semantics.Atlas

export FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
  (RecoverableFrom RecoveryObstruction not_recoverableFrom_of_collision
    recoverableFrom_quotient_iff)

end FormalResearch.MathematicalTooling.Semantics.Atlas
```
