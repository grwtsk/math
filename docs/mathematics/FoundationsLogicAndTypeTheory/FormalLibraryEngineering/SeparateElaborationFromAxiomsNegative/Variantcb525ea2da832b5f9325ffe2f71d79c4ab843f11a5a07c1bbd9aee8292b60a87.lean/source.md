# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeparateElaborationFromAxiomsNegative.Variantcb525ea2da832b5f9325ffe2f71d79c4ab843f11a5a07c1bbd9aee8292b60a87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cb8dc9952d7aed971270fc41f135e5cb12320e4` · SHA-256 `cb525ea2da832b5f9325ffe2f71d79c4ab843f11a5a07c1bbd9aee8292b60a87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore
import Lean.Util.CollectAxioms
namespace GRWTSK.HostileAxiomNegative
axiom injected : False
theorem exploit : False := injected
end GRWTSK.HostileAxiomNegative
open Lean Elab Command
run_cmd do
  for ax in (← collectAxioms ``GRWTSK.HostileAxiomNegative.exploit) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
      throwError "CONTROL_UNAPPROVED_AXIOM: {ax}"
```
