# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BraidCoverage.Variant5f88adc4ee4c25db92c1ea5375219b7417e4382aef0dd1f1411544e3126e2fe8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72c1d54f7cac683b68635d05e0fe99e93f09ff9a` · SHA-256 `5f88adc4ee4c25db92c1ea5375219b7417e4382aef0dd1f1411544e3126e2fe8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Validation.PoleCoverage

set_option autoImplicit false

namespace Think.Validation

theorem centerSpineControlsAllPoles :
    ∀ q : Think.SourceTree.PhasePlacement, q.phase ∈ Think.centerSpine := by
  exact Think.SourceTree.center_spine_controls_all_poles

end Think.Validation
```
