# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModularityBridge.Variant29d44be4e5370438799281af490bfef8e66bd90c8faa9f6c74782b45274902f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c29029bc2e73731a4d690bcc8bfac59d3354b91` · SHA-256 `29d44be4e5370438799281af490bfef8e66bd90c8faa9f6c74782b45274902f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Research.ArithmeticBoundary

/-!
# Folder.Research.ModularityBridge

Radiation role: research-boundary
BinaryMatrix spine: This module records an external modularity-to-Hasse-Weil bridge without proving modularity.
Ontology: research.rh.modularity_bridge
Pivot role: arithmetic
Zero typology: l-function
Contract boundary: contract
Composite stack role: research
-/

namespace Folder
namespace Research
namespace ModularityBridge

open Research.ArithmeticBoundary

structure ModularityToHasseWeilBridge where
  modularity : ModularityContract
  hasseWeil : HasseWeilContract
  analytic_from_modularity :
    modularity.associated → hasseWeil.hasAnalyticContinuation
  functional_from_modularity :
    modularity.associated → hasseWeil.hasFunctionalEquation

theorem hasse_weil_analytic_from_modularity
    (B : ModularityToHasseWeilBridge)
    (h : B.modularity.associated) :
    B.hasseWeil.hasAnalyticContinuation :=
  B.analytic_from_modularity h

theorem hasse_weil_functional_from_modularity
    (B : ModularityToHasseWeilBridge)
    (h : B.modularity.associated) :
    B.hasseWeil.hasFunctionalEquation :=
  B.functional_from_modularity h

end ModularityBridge
end Research
end Folder
```
