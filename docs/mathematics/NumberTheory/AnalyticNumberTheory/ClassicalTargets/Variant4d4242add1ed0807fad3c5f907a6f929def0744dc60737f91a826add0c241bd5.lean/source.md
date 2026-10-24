# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ClassicalTargets.Variant4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5948cd879840df6425e220ddb1182851d0ed1c39` · SHA-256 `4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.ZetaHalfPlaneScaffold

/-!
# Folder.Rebuild.AnalyticNumberTheory.ClassicalTargets

Classical analytic number theory targets and anchors.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

structure PNTInputs where
  zetaMeromorphicContinuation : Prop
  zetaSimplePoleAtOne : Prop
  zetaNoZerosOnReOne : Prop
  tauberianTheorem : Prop

def PrimeNumberTheoremAnchor : ClassicalAnchor :=
  pntAnchor

def PNTClassicalRouteAnchor : ClassicalAnchor where
  shortName := "Classical route to prime asymptotics"
  paperOrBook := "Hadamard, de la Vallee Poussin, and Tauberian references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "Meromorphic continuation, a simple pole at one, a no-zero boundary statement, and a Tauberian theorem form the classical route."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl

end AnalyticNumberTheory
end Rebuild
end Folder
```
