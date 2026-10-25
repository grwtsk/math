# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DummyLibraryNote.Variant0413470aed04455a709dd8d6d873c35ca580356de4c05de251e2c777d4c56c04

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f0901a0779a86c8678eebb41bed2936aef0a628` · SHA-256 `0413470aed04455a709dd8d6d873c35ca580356de4c05de251e2c777d4c56c04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Util.LibraryNote

library_note «test1» /--
1: This is a testnote for testing the library note feature of batteries.
The `#help note` command should be able to find this note when imported.
-/

library_note «test2» /--
2: This is a second testnote for testing the library note feature of batteries.
-/

library_note «temporary note» /--
1: This is a testnote whose label also starts with "te", but gets sorted before "test"
-/
```
