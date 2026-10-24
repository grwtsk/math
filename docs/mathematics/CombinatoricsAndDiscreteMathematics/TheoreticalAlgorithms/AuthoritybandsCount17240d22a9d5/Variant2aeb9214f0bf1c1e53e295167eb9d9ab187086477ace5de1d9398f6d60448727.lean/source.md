# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthoritybandsCount17240d22a9d5.Variant2aeb9214f0bf1c1e53e295167eb9d9ab187086477ace5de1d9398f6d60448727

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0254bb94e18f4a50b313627d42d8f26ec309de0e` · SHA-256 `2aeb9214f0bf1c1e53e295167eb9d9ab187086477ace5de1d9398f6d60448727`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Ast.Surface.finite_bit_boundary.checkedmodules_count_f3acdd737477
import Formal.Ast.Surface.proof_authority.blueprint_corpus_not_imported_6c15bc3e7ae3
import Formal.Ast.Surface.projection_operators.patch_corpus_not_imported_34e896a79790
import Formal.Ast.Surface.proof_authority.external_corpus_not_imported_f1f1e326a177
import Formal.Ast.Surface.proof_authority.archive_corpus_not_imported_bef02257ae7c
import Formal.Ast.Surface.finite_bit_boundary.optimalbands_count_30ba01676d3a
import Formal.Ast.Conceptual.finite_bit_boundary.allbands_count_25afe01d49fd

/-!
Unified Formal program surface.

This module exposes the authority-band entry points without importing the
large blueprint, patch, external, or archive corpora. It also imports the
conceptual map for navigation. The checked kernel imports only
`Formal.Surface.Checked`.
-/

namespace Formal.Surface

def authorityBands : List String :=
  [ "checked"
  , "blueprint"
  , "patches"
  , "external"
  , "archive"
  ]

theorem authorityBands_count : authorityBands.length = 5 := by
  rfl

def conceptualMapModule : String := "Formal.Conceptual"

def bandVocabularyModule : String := "Formal.Band"

def layoutAlgorithmModule : String := "Formal.Algorithm"

end Formal.Surface
```
