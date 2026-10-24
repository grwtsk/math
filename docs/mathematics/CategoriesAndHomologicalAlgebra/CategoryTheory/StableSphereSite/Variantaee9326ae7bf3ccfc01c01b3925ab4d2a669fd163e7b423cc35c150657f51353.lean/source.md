# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StableSphereSite.Variantaee9326ae7bf3ccfc01c01b3925ab4d2a669fd163e7b423cc35c150657f51353

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18b6b5e3e76efea8e91754710c667c44994d330b` · SHA-256 `aee9326ae7bf3ccfc01c01b3925ab4d2a669fd163e7b423cc35c150657f51353`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.TMFFraming

/-!
# Folder.ResearchTopos.StableSphereSite

Radiation role: research-boundary
BinaryMatrix spine: This module names stable-sphere site objects as contract targets downstream of cellular boundary data.
Ontology: research_topos.stable_sphere_site
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: research-topos
-/

namespace Folder
namespace ResearchTopos

structure StableSphere where
  dimension? : Option Nat
  stableStem? : Option Nat
  label : String

structure StableSphereCollapse where
  tmfFraming : TMFTorsionFraming
  sourceCellularBoundary : Type _
  targetSphere : StableSphere
  collapseMap : Prop
  torsionKilled : tmfFraming.trivialized

theorem stable_sphere_collapse_has_target
    (C : StableSphereCollapse) :
    ∃ S : StableSphere, S = C.targetSphere :=
  ⟨C.targetSphere, rfl⟩

theorem stable_sphere_collapse_torsion_killed
    (C : StableSphereCollapse) :
    C.tmfFraming.trivialized :=
  C.torsionKilled

end ResearchTopos
end Folder
```
