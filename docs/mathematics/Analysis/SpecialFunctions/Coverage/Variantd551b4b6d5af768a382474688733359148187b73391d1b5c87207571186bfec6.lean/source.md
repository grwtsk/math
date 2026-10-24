# Complete source: GRWTSK.Analysis.SpecialFunctions.Coverage.Variantd551b4b6d5af768a382474688733359148187b73391d1b5c87207571186bfec6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3056ec97298139adfa78c501f14c88cfa12c752f` · SHA-256 `d551b4b6d5af768a382474688733359148187b73391d1b5c87207571186bfec6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Ricci.Stability
import Surface.Legacy.BinaryLogicMatrix.Coverage

namespace Surface
namespace Legacy

theorem ricciCoverage_requires_foundation
    (Γ : Gamma) :
    LogicalFoundation.ricciFlow ≤ Γ.logicalFoundation ->
      ∀ f : RicciFlowRepresentableObject,
        CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.ricciFlow f) := by
  intro h f
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Γ trivial (DeclaredSurfaceObject.ricciFlow f) h

end Legacy
end Surface
```
