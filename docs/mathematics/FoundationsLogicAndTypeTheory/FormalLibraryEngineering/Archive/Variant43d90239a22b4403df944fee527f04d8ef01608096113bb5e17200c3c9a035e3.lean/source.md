# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Archive.Variant43d90239a22b4403df944fee527f04d8ef01608096113bb5e17200c3c9a035e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c12d65013ea3d174aa9d8fb5591d819d438e78f5` · SHA-256 `43d90239a22b4403df944fee527f04d8ef01608096113bb5e17200c3c9a035e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Archive

/-!
Archive surface marker.

This root surfaces archive metadata only. Archive files are never imported into
the checked kernel.
-/

namespace Formal.Surface.Archive

def importsArchiveCorpus : Bool := false

theorem archive_corpus_not_imported : importsArchiveCorpus = false := by
  rfl

end Formal.Surface.Archive
```
