# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternalCorpusNotImportedF1f1e326a177.Varianta69773b4e6d4a14d487207e32ffdf0d757d1678ea0c97cd67cc85cb63baddef9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb48ea3976336aeddf01a6ada152eef7721ff493` · SHA-256 `a69773b4e6d4a14d487207e32ffdf0d757d1678ea0c97cd67cc85cb63baddef9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Ast.Surface.proof_authority.not_declared_dependency_86c76017d0e8
import Formal.Ast.Surface.proof_authority.not_imported_into_kernel_abffe1466148

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
