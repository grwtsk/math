# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stream.Variant0d676929c59aa0a6a0b5157754e376592bc6838a3bdb17915672e37ce80ebf4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `349d84417f9c5dce91aaba47919181789437d769` · SHA-256 `87a63d4371312019790e53bad87c62c947a5114dc036a0e9ff58ac8e8ea1efe9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterators.Variant5f8c7915dc1f36f3b7e1e1b6732048ed6e10b6b6c90de6f1bc4aa8ae2eae6778","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f8c7915dc1f36f3b7e1e1b6732048ed6e10b6b6c90de6f1bc4aa8ae2eae6778","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Iterators.Variant5f8c7915dc1f36f3b7e1e1b6732048ed6e10b6b6c90de6f1bc4aa8ae2eae6778","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5f8c7915dc1f36f3b7e1e1b6732048ed6e10b6b6c90de6f1bc4aa8ae2eae6778","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Range/Polymorphic/Stream.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Range.Polymorphic.Iterators
public import Init.Data.Stream


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterators.Variant5f8c7915dc1f36f3b7e1e1b6732048ed6e10b6b6c90de6f1bc4aa8ae2eae6778

public section

open Std.Iterators

namespace Std.PRange

instance {α} [UpwardEnumerable α] : ToStream (Rcc α) (Iter (α := Rxc.Iterator α) α) where
  toStream r := Rcc.Internal.iter r

instance {α} [UpwardEnumerable α] : ToStream (Rco α) (Iter (α := Rxo.Iterator α) α) where
  toStream r := Rco.Internal.iter r

instance {α} [UpwardEnumerable α] : ToStream (Rci α) (Iter (α := Rxi.Iterator α) α) where
  toStream r := Rci.Internal.iter r

instance {α} [UpwardEnumerable α] : ToStream (Roc α) (Iter (α := Rxc.Iterator α) α) where
  toStream r := Roc.Internal.iter r

instance {α} [UpwardEnumerable α] : ToStream (Roo α) (Iter (α := Rxo.Iterator α) α) where
  toStream r := Roo.Internal.iter r

instance {α} [UpwardEnumerable α] [Least? α] : ToStream (Roi α) (Iter (α := Rxi.Iterator α) α) where
  toStream r := Roi.Internal.iter r

instance {α} [UpwardEnumerable α] [Least? α] : ToStream (Ric α) (Iter (α := Rxc.Iterator α) α) where
  toStream r := Ric.Internal.iter r

instance {α} [UpwardEnumerable α] [Least? α] : ToStream (Rio α) (Iter (α := Rxo.Iterator α) α) where
  toStream r := Rio.Internal.iter r

instance {α} [UpwardEnumerable α] [Least? α] : ToStream (Rii α) (Iter (α := Rxi.Iterator α) α) where
  toStream r := Rii.Internal.iter r

end Std.PRange
```
