# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unreachable.Variant3b43da0a5c271d2e514f7a9ea68c03abf82f0ac94412adfefdbf09c30d1721e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89fcb574ab558665c808f8cdc81a88e00d09654b` · SHA-256 `a72a07e7f81ee8f8339be426b6d490ae5a8c6ed8b5429d62fbe9d007f4d5d1a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantb0a97e9b68e71bf9d2f006a241ba7d52b1165f8af921da8d31d05de108b115ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0a97e9b68e71bf9d2f006a241ba7d52b1165f8af921da8d31d05de108b115ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Tactic.Variantb0a97e9b68e71bf9d2f006a241ba7d52b1165f8af921da8d31d05de108b115ff","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b0a97e9b68e71bf9d2f006a241ba7d52b1165f8af921da8d31d05de108b115ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Tactic/Unreachable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Lean.Elab.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantb0a97e9b68e71bf9d2f006a241ba7d52b1165f8af921da8d31d05de108b115ff

public meta section

namespace Batteries.Tactic

/--
This tactic causes a panic when run (at compile time).
(This is distinct from `exact unreachable!`, which inserts code which will panic at run time.)

It is intended for tests to assert that a tactic will never be executed, which is otherwise an
unusual thing to do (and the `unreachableTactic` linter will give a warning if you do).

The `unreachableTactic` linter has a special exception for uses of `unreachable!`.
```
example : True := by trivial <;> unreachable!
```
-/
elab (name := unreachable) "unreachable!" : tactic => do
  panic! "unreachable tactic has been reached"
  -- Note that `panic!` does not actually halt execution or early exit,
  -- so we still have to throw an error after panicking.
  throwError "unreachable tactic has been reached"

@[inherit_doc unreachable] macro (name := unreachableConv) "unreachable!" : conv =>
  `(conv| tactic' => unreachable!)
````
