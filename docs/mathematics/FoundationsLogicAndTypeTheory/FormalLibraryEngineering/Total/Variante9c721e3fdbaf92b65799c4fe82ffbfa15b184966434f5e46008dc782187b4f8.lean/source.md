# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Total.Variante9c721e3fdbaf92b65799c4fe82ffbfa15b184966434f5e46008dc782187b4f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5a309c0379fcafa01b83b550e7b6495a79d7d4d` · SHA-256 `45443c084a6c9749a6e93de02bea445916702a30e7278f838511a494626724fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterTotal.Variantb45b89bc438e8ae412cfbda491bc2725f65e98e8049ceeffadca02b59af5ba75","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b45b89bc438e8ae412cfbda491bc2725f65e98e8049ceeffadca02b59af5ba75","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterTotal.Variantb45b89bc438e8ae412cfbda491bc2725f65e98e8049ceeffadca02b59af5ba75","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b45b89bc438e8ae412cfbda491bc2725f65e98e8049ceeffadca02b59af5ba75","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Consumers/Total.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterTotal.Variantb45b89bc438e8ae412cfbda491bc2725f65e98e8049ceeffadca02b59af5ba75

set_option doc.verso true
set_option linter.missingDocs true

public section

namespace Std

/--
A wrapper around an iterator that provides total consumers. See `Iter.ensureTermination`.
-/
structure Iter.Total {α : Type w} (β : Type w) where
  /--
  The wrapped iterator, which was wrapped by `Iter.ensureTermination`.
  -/
  it : Iter (α := α) β

/--
For an iterator {name}`it`, {lean}`it.ensureTermination` provides variants of consumers that always
terminate.
-/
@[always_inline, inline]
def Iter.ensureTermination {α : Type w} {β : Type w}
    (it : Iter (α := α) β) :
  Iter.Total (α := α) β :=
  ⟨it⟩

/--
A wrapper around an iterator that provides strictly terminating consumers. See
{name}`Iter.ensureTermination`.
-/
add_decl_doc Iter.Total

end Std
```
