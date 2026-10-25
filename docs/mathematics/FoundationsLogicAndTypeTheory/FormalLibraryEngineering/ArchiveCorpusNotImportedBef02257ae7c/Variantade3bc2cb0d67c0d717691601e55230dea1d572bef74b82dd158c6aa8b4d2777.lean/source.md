# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArchiveCorpusNotImportedBef02257ae7c.Variantade3bc2cb0d67c0d717691601e55230dea1d572bef74b82dd158c6aa8b4d2777

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad252b08f52469664ac92e0b532167f45f828b0a` · SHA-256 `ade3bc2cb0d67c0d717691601e55230dea1d572bef74b82dd158c6aa8b4d2777`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Ast.Surface.proof_authority.archive_not_imported_by_kernel_56391c38229b

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
