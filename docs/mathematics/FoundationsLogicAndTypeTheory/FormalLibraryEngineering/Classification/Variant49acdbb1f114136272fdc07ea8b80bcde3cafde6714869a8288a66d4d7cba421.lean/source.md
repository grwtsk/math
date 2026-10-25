# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Classification.Variant49acdbb1f114136272fdc07ea8b80bcde3cafde6714869a8288a66d4d7cba421

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ba16a581ffec0c47d6e1822e81a21f47ef35574` · SHA-256 `49acdbb1f114136272fdc07ea8b80bcde3cafde6714869a8288a66d4d7cba421`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

initialize surfaceInterfaceAttr : TagAttribute ←
  registerTagAttribute `surface_interface
    "typed staging boundary whose inhabitants supply explicitly named proof obligations"

end Surface.Core
```
