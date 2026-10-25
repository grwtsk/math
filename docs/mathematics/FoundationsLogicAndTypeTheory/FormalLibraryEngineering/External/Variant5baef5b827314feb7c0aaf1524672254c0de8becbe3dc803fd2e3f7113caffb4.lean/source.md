# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.External.Variant5baef5b827314feb7c0aaf1524672254c0de8becbe3dc803fd2e3f7113caffb4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86ec1347c6627a8fba0d9b01c51acd10d1088da2` · SHA-256 `5baef5b827314feb7c0aaf1524672254c0de8becbe3dc803fd2e3f7113caffb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.External.PrimeNumberTheoremAnd
import Formal.External.LeanCert

/-!
External dependency surface marker.

This root surfaces external dependency boundary metadata only.
-/

namespace Formal.Surface.External

def importsExternalCorpus : Bool := false

theorem external_corpus_not_imported : importsExternalCorpus = false := by
  rfl

end Formal.Surface.External
```
