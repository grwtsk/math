# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonBlowupObstruction.Variant2a9504c49c13d0546e0fda4b131d99abf77d7eb10be36e07d7b4b32b863d488b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c8b01102be2c2ef2d52d834a756f13e903cb8a7` · SHA-256 `2a9504c49c13d0546e0fda4b131d99abf77d7eb10be36e07d7b4b32b863d488b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.NavierStokes.FlowComplex

/-!
# Folder.GrandChallenge.NavierStokes.NonBlowupObstruction

Radiation role: research-boundary
BinaryMatrix spine: This module records Navier-Stokes non-blowup obstruction contracts.
Ontology: navier_stokes_flow_complex
Pivot role: flow
Zero typology: blowup-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace NavierStokes

structure BlowupScenario where
  flowComplex : FlowComplex
  label : String

structure NonBlowupObstruction where
  scenario : BlowupScenario
  obstructionNonzeroIfBlowup : Prop
  obstructionNonzeroIfBlowup_certified : obstructionNonzeroIfBlowup
  sourceLabel : String

theorem ns_blowup_obstruction_if_supplied
    (O : NonBlowupObstruction) :
    O.obstructionNonzeroIfBlowup :=
  O.obstructionNonzeroIfBlowup_certified

end NavierStokes
end GrandChallenge
end Folder
```
