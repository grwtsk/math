# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SmoothContinuation.Variantd8c805b7c94e86bd1c8a58ddc78fc1447b0a2f0f103efb702c28667e2c2ec65b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4c4b60adfe2c4ca9fa18ee4a84bb073a8bb033c` · SHA-256 `d8c805b7c94e86bd1c8a58ddc78fc1447b0a2f0f103efb702c28667e2c2ec65b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.NavierStokes.FlowComplex

/-!
# Folder.GrandChallenge.NavierStokes.SmoothContinuation

Radiation role: research-boundary
BinaryMatrix spine: This module records Navier-Stokes continuation contracts.
Ontology: navier_stokes_flow_complex
Pivot role: flow
Zero typology: blowup-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace NavierStokes

structure SmoothContinuation where
  flowComplex : FlowComplex
  continuationMapsExist : Prop
  continuationMapsExist_certified : continuationMapsExist
  preservesTrueNavierStokesNonlinearity : Prop
  preservesTrueNavierStokesNonlinearity_certified :
    preservesTrueNavierStokesNonlinearity
  compactnessOrRegularityControl : Prop
  compactnessOrRegularityControl_certified :
    compactnessOrRegularityControl
  sourceLabel : String

theorem ns_continuation_maps_exist_if_supplied
    (S : SmoothContinuation) :
    S.continuationMapsExist :=
  S.continuationMapsExist_certified

theorem ns_preserves_true_nonlinearity_if_supplied
    (S : SmoothContinuation) :
    S.preservesTrueNavierStokesNonlinearity :=
  S.preservesTrueNavierStokesNonlinearity_certified

end NavierStokes
end GrandChallenge
end Folder
```
