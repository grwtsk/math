# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant68138d6b9490041ef6b950022ae4a8aac1843cdca93ff10ed509dbba873cc937

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd236b29d2dbdffc27494b07d6a243b3dd24fef7` · SHA-256 `68138d6b9490041ef6b950022ae4a8aac1843cdca93ff10ed509dbba873cc937`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.ProofStatus
import Folder.Rebuild.ClassicalAnchor

/-!
# Folder.Rebuild.Basic

Umbrella basics for the classical rebuild branch.
-/

namespace Folder
namespace Rebuild

theorem rebuild_checked_status_allowed :
    RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.checkedByLean :=
  trivial

theorem rebuild_mathlib_status_allowed :
    RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.mathlibInternal :=
  trivial

end Rebuild
end Folder
```
