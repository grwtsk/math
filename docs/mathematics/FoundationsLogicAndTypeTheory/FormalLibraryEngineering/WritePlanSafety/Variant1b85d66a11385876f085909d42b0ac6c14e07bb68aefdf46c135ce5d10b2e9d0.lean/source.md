# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WritePlanSafety.Variant1b85d66a11385876f085909d42b0ac6c14e07bb68aefdf46c135ce5d10b2e9d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b51784d9d6c9460e4d0cae7db53432561c7ef22e` · SHA-256 `1b85d66a11385876f085909d42b0ac6c14e07bb68aefdf46c135ce5d10b2e9d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Morphism.Effect.WritePlan

/-!
# Folder.Theorem.Effect.WritePlanSafety

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.effect.write_plan_safety
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Effect

theorem no_conflicting_duplicates
    (P : Folder.Morphism.Effect.WritePlan)
    {a b : Folder.Morphism.Effect.WriteTarget}
    (ha : a ∈ P.targets)
    (hb : b ∈ P.targets)
    (hpath : a.path = b.path) :
    a.payload = b.payload :=
  Folder.Morphism.Effect.no_conflicting_duplicates P ha hb hpath

end Effect
end Theorem
end Folder
```
