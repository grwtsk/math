# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Classification.Variant67b70840949255ec0d0cdafacc990a5b5834ee1c0e9c7ea8e0e6e6df0c4a160b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f389f33f9e0a0450f3323d117f12058292acdfa` · SHA-256 `67b70840949255ec0d0cdafacc990a5b5834ee1c0e9c7ea8e0e6e6df0c4a160b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Lean

/-!
# Canonical declaration classification

Every future exported mathematical declaration must be classified as a thin
Mathlib adapter or genuinely novel work.  Disposable generated declarations use
the candidate tag and remain outside the canonical root.
-/

public section

open Lean

namespace Surface.Core

initialize surfaceAdapterAttr : TagAttribute ←
  registerTagAttribute `surface_adapter
    "thin transport around an existing Mathlib declaration"

initialize surfaceNovelAttr : TagAttribute ←
  registerTagAttribute `surface_novel
    "project-local mathematics or proof-process invariants not supplied by Mathlib"

initialize surfaceCandidateAttr : TagAttribute ←
  registerTagAttribute `surface_candidate
    "disposable untrusted search product; forbidden from canonical publication"

initialize surfacePublishedAttr : TagAttribute ←
  registerTagAttribute `surface_published
    "explicit public declaration governed by publication classification audits"

initialize surfaceCertificateAttr : TagAttribute ←
  registerTagAttribute `surface_certificate
    "finite evidence or receipt declaration with an executable verification boundary"

end Surface.Core
```
