# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoherentSection.Variantcf5c6d89a75559cb497fb1ed2b5019ccdc002d1fa0e41ca7b55d21e734f2da52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c7b53617b28c6fb37f5cd60317835d090254a41` · SHA-256 `cf5c6d89a75559cb497fb1ed2b5019ccdc002d1fa0e41ca7b55d21e734f2da52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Fiber.Coherence

/-!
# Folder.Theorem.Fiber.CoherentSection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.fiber.coherent_section
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Fiber

theorem coherent_section_transportPath
    {Base : Type _}
    {B : Bundle Base}
    {Step : Base → Base → Prop}
    {T : TransportSystem B Step}
    (S : CoherentSection T)
    {a b : Base}
    (p : Monodromy.Path Step a b) :
    transportPath T p (S.sec.value a) =
      S.sec.value b :=
  coherent_transportPath S p

end Fiber
end Folder
```
