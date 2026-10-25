# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FlowComplex.Variantf904d6fdad86a75d849421cb40a289728604e202ff7b502b6e5180cd6516715b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3751531139e66099b8a81a05cf6eab6cf6414ae` · SHA-256 `f904d6fdad86a75d849421cb40a289728604e202ff7b502b6e5180cd6516715b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.GrandChallenge.NavierStokes.FlowComplex

Radiation role: research-boundary
BinaryMatrix spine: This module records Navier-Stokes flow-complex scaffolding.
Ontology: navier_stokes_flow_complex
Pivot role: flow
Zero typology: blowup-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace NavierStokes

structure InitialData where
  label : String

structure FlowComplex where
  initialData : InitialData
  localSolutionData : Type
  energyEstimateLabel : String
  nonlinearStructureLabel : String

end NavierStokes
end GrandChallenge
end Folder

```
