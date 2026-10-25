# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unreachable.Variant075ad5a1dd29ff254a90a3b2aefe7f34589aa96f10eb1fc920b2a4ff66abc4de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5b8a26aa41367e3ca3e535d941ff9e9c85c8dbd` · SHA-256 `3246248cea17bd5be7cb56539b480b1cca97caac1862d7b5585f85726d1026e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabRules.Variant5f130b72a971acfc287ebd903e8973a61d83211fb006fb818a7b3823998a1b62","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f130b72a971acfc287ebd903e8973a61d83211fb006fb818a7b3823998a1b62","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ElabRules.Variant5f130b72a971acfc287ebd903e8973a61d83211fb006fb818a7b3823998a1b62","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5f130b72a971acfc287ebd903e8973a61d83211fb006fb818a7b3823998a1b62","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/Unreachable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Elab.ElabRules


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabRules.Variant5f130b72a971acfc287ebd903e8973a61d83211fb006fb818a7b3823998a1b62

namespace Std.Tactic

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
