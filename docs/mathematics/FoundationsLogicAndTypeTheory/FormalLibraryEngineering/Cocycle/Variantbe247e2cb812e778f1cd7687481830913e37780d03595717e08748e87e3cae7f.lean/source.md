# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cocycle.Variantbe247e2cb812e778f1cd7687481830913e37780d03595717e08748e87e3cae7f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94f6407ac944fe3d7e8e823a5c0f7827e8a299ce` · SHA-256 `be247e2cb812e778f1cd7687481830913e37780d03595717e08748e87e3cae7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.PhaseTransport

/-!
# C2-valued deflection cocycle
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

universe uChart uWall

structure DeflectionCocycle
    (Chart : Type uChart)
    (Wall : Type uWall) where
  overlaps : Chart → Chart → Prop
  transition : Chart → Chart → Phase3
  identity :
    ∀ chart,
      transition chart chart = .identity
  inverse :
    ∀ left right,
      overlaps left right →
      transition right left =
        transition left right
  cocycle :
    ∀ first second third,
      overlaps first second →
      overlaps second third →
      overlaps first third →
      Phase3.mul
          (transition first second)
          (transition second third) =
        transition first third
  isModuloThreeWall : Wall → Prop
  leftChart : Wall → Chart
  rightChart : Wall → Chart
  defectTransition :
    ∀ wall,
      isModuloThreeWall wall →
      transition
          (leftChart wall)
          (rightChart wall) =
        .reflect

end Mathematics.SemiLocalDefect.ResidueDeflection
```
