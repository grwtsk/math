# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IO.Variant2da4544901342922cede36e101927d5f1b7f43c4975748b8ccd04d858fd292df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56b4ac0e54a5f71038d3058fd3eb0fb0d78ccc61` · SHA-256 `0380c31d58c7cdbc5f3df766992892ea4d0fe3b109a662d24e056b30fd411783`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AsyncRead.Variant71a78a383985067f9dcc6e78d67848d596480ce57505c42cf9120b29cd229ce0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71a78a383985067f9dcc6e78d67848d596480ce57505c42cf9120b29cd229ce0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AsyncRead.Variant71a78a383985067f9dcc6e78d67848d596480ce57505c42cf9120b29cd229ce0","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"71a78a383985067f9dcc6e78d67848d596480ce57505c42cf9120b29cd229ce0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Async/IO.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Async.Select


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AsyncRead.Variant71a78a383985067f9dcc6e78d67848d596480ce57505c42cf9120b29cd229ce0

public section

namespace Std
namespace Async
namespace IO

open Std.Async

/-!
This module provides buffered asynchronous I/O operations for efficient reading and writing.
-/

/--
Interface for asynchronous reading operations.
-/
class AsyncRead (α : Type) (β : Type) where
  read : α → Async β

/--
Interface for asynchronous writing operations.
-/
class AsyncWrite (α : Type) (β : Type) where
  write : α → β → Async Unit

  writeAll : α → Array β → Async Unit :=
    fun socket data => data.forM (write socket)

  flush : α → Async Unit :=
    fun _ => pure ()

/--
Interface for asynchronous streaming with selector-based iteration.
-/
class AsyncStream (α : Type) (β : outParam Type) where
  next : α → Selector β

  stop : α → IO Unit :=
    fun _ => pure ()

end IO
end Async
end Std
```
