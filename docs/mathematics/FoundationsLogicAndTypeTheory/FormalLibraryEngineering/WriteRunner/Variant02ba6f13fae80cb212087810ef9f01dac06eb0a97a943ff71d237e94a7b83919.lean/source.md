# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WriteRunner.Variant02ba6f13fae80cb212087810ef9f01dac06eb0a97a943ff71d237e94a7b83919

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b9a57e66d47f6acd48fe96be3267584e50e3bfd` · SHA-256 `02ba6f13fae80cb212087810ef9f01dac06eb0a97a943ff71d237e94a7b83919`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Morphism.Effect.WritePlan

/-!
# Folder.Morphism.Effect.WriteRunner

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: morphism.effect.write_runner
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Morphism
namespace Effect

structure WriteRunner where
  run : WritePlan → FileState
  run_eq_safeApply : ∀ P, run P = safeApply P

end Effect
end Morphism
end Folder
```
