# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TotalSpace.Variant007e3a9a340c568885b45fd86106fb9323d2bf515fda2c277ad0c72de16d65ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `337b4f299a5b7835253c475f9f1dbab26dd8baba` · SHA-256 `007e3a9a340c568885b45fd86106fb9323d2bf515fda2c277ad0c72de16d65ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Fiber.Bundle

/-!
# Folder.Fiber.TotalSpace

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: fiber.total_space
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Fiber

universe u v

def TotalSpace {Base : Type u} (B : Bundle.{u, v} Base) :
    Type (max u v) :=
  Σ b : Base, B.Fiber b

def projection {Base : Type u} (B : Bundle.{u, v} Base) :
    TotalSpace B → Base :=
  Sigma.fst

@[simp]
theorem projection_mk {Base : Type u}
    (B : Bundle.{u, v} Base)
    (b : Base)
    (x : B.Fiber b) :
    projection B ⟨b, x⟩ = b :=
  rfl

end Fiber
end Folder
```
