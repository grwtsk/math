# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LibraryNote.Variant25736d68a1b13dc312312df595476cdfeb8187847e4f1afcfecf4d4961ac55e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5871eafe2b3eb0c298b2a96ac828b00d65d41fcb` · SHA-256 `07063e03f5e669da5df7d68e08e12133116d296c80296426fa3c70495c0fdd74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LibraryNoteEntry.Variant2b425e5c7d5f1bf1905b897bff0c2c35626355fb44d8be859f40a2c77bc93e44","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b425e5c7d5f1bf1905b897bff0c2c35626355fb44d8be859f40a2c77bc93e44","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LibraryNoteEntry.Variant2b425e5c7d5f1bf1905b897bff0c2c35626355fb44d8be859f40a2c77bc93e44","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"2b425e5c7d5f1bf1905b897bff0c2c35626355fb44d8be859f40a2c77bc93e44","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Util/LibraryNote.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Elab.ElabRules

/-!
# Define the `library_note` command.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LibraryNoteEntry.Variant2b425e5c7d5f1bf1905b897bff0c2c35626355fb44d8be859f40a2c77bc93e44

namespace Std.Util.LibraryNote

open Lean

/-- A library note consists of a (short) tag and a (long) note. -/
def LibraryNoteEntry := String × String

/-- Environment extension supporting `library_note`. -/
initialize libraryNoteExt : SimplePersistentEnvExtension LibraryNoteEntry (Array LibraryNoteEntry) ←
  registerSimplePersistentEnvExtension {
    addEntryFn := Array.push
    addImportedFn := Array.concatMap id
  }

open Lean Parser Command in
/--
```
library_note "some tag" /--
... some explanation ...
-/
```
creates a new "library note", which can then be cross-referenced using
```
-- See note [some tag]
```
in doc-comments.
-/
elab "library_note " title:strLit ppSpace text:docComment : command => do
  modifyEnv (libraryNoteExt.addEntry · (title.getString, text.getDocString))
````
