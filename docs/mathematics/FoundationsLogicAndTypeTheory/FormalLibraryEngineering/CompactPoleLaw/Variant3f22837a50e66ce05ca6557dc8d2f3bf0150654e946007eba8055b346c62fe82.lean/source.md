# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactPoleLaw.Variant3f22837a50e66ce05ca6557dc8d2f3bf0150654e946007eba8055b346c62fe82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6372350cbc19178063eb93acb7031eb214169de1` · SHA-256 `3f22837a50e66ce05ca6557dc8d2f3bf0150654e946007eba8055b346c62fe82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit false

namespace Think.Compact

inductive CompactPole where
  | request
  | carrier
  | lowering
  | trace
  | compact
  | classifier
  | scheduler
  | cluster
  | boundary
deriving DecidableEq, Repr

def CompactPole.centerControlled :
    CompactPole → Bool
  | _ => true

theorem everyCompactPole_centerControlled
    (p : CompactPole) :
    p.centerControlled = true := by
  cases p <;> rfl

end Think.Compact
```
