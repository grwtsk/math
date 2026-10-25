# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FileWithTransitiveImports.Variantbd4a850c2b74a57e684c30ca0855fa2fb3c9fb3c08d4e2984e33178b4b34bd01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d235427167cd217db21dcc578dae498144b8dedb` · SHA-256 `bd4a850c2b74a57e684c30ca0855fa2fb3c9fb3c08d4e2984e33178b4b34bd01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ImportGraph.Tools.ImportDiff
import ImportGraphTest.Used

/--
info: The following are already imported (possibly transitively): ImportGraphTest.Used
---
info: Found 2 additional imports:
ImportGraphTest.Unused
ImportGraphTest.Used
-/
#guard_msgs in
#import_diff ImportGraphTest.Used
```
