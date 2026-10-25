# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModularDecomposition.Varianta4d26c5bcf172a8242bc8ea62acc525325a5f538d73044999e5b4c42d1dbbf01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `759a9d4a92939608522762f628904a74616be029` · SHA-256 `a4d26c5bcf172a8242bc8ea62acc525325a5f538d73044999e5b4c42d1dbbf01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.Heat.FrameCommutation

namespace Surface

structure ModularDecompositionCertificate where
  structuredPart : Prop
  errorPart : Prop
  recomposes : Prop

theorem heatFlow_decomposition_sound
    (cert : ModularDecompositionCertificate) :
    cert.structuredPart ->
      cert.errorPart ->
        cert.recomposes ->
          cert.structuredPart ∧ cert.errorPart ∧ cert.recomposes := by
  intro hstruct herror hrecompose
  exact ⟨hstruct, herror, hrecompose⟩

end Surface
```
