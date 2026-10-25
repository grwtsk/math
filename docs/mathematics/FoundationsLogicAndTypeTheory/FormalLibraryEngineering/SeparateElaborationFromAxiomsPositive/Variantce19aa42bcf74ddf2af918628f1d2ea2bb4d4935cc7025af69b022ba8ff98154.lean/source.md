# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeparateElaborationFromAxiomsPositive.Variantce19aa42bcf74ddf2af918628f1d2ea2bb4d4935cc7025af69b022ba8ff98154

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce323610cd061cf665519a9d7b275ac802819a8d` · SHA-256 `ce19aa42bcf74ddf2af918628f1d2ea2bb4d4935cc7025af69b022ba8ff98154`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore
import Lean.Util.CollectAxioms
namespace GRWTSK.HostileAxiomPositive
theorem valid : True := True.intro
end GRWTSK.HostileAxiomPositive
open Lean Elab Command
run_cmd do
  for ax in (← collectAxioms ``GRWTSK.HostileAxiomPositive.valid) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
      throwError "CONTROL_UNAPPROVED_AXIOM: {ax}"
```
