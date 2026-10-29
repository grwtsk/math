-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EncodeNameForExport.Variantecc6ebe4c32eb3c90bb94d0f4ef9eb8d530d95469ba48c0b1995f7c2172c93d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecc6ebe4c32eb3c90bb94d0f4ef9eb8d530d95469ba48c0b1995f7c2172c93d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.EncodeNameForExport.Variantecc6ebe4c32eb3c90bb94d0f4ef9eb8d530d95469ba48c0b1995f7c2172c93d8","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ecc6ebe4c32eb3c90bb94d0f4ef9eb8d530d95469ba48c0b1995f7c2172c93d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Util/LibraryNote.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

public meta import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EncodeNameForExport.Variantecc6ebe4c32eb3c90bb94d0f4ef9eb8d530d95469ba48c0b1995f7c2172c93d8

public meta section

/-!
# Define the `library_note` command.
-/

namespace Batteries.Util

open Lean

/-- A library note is identified by the name of its declaration, and its content should be contained
in its doc-string. -/
@[expose] def LibraryNote := Unit
deriving Inhabited

namespace LibraryNote

/-- Entry for library notes in the environment extension.

We only store the name, and look up the constant's docstring to find its contents.
-/
@[expose] def LibraryNoteEntry := Name
deriving Inhabited

/-- Encode a name to be safe for the Lean export format.

The current export format (used by `lean4export` and consumed by external type checkers like
`nanoda_lib`) does not support whitespace in declaration names. Library notes often have
human-readable names with spaces like `«my library note»`, which would produce declarations
like `LibraryNote.«my library note»` that cannot be exported.

This function replaces spaces with underscores to produce export-safe names like
`LibraryNote.my_library_note`.
-/
def encodeNameForExport (n : Name) : Name :=
  n.componentsRev.foldl (init := .anonymous) fun acc c =>
    match c with
    | .str _ s => .str acc (s.replace " " "_")
    | .num _ k => .num acc k
    | .anonymous => acc

/-- Environment extension supporting `library_note`. -/
initialize libraryNoteExt : SimplePersistentEnvExtension LibraryNoteEntry (Array LibraryNoteEntry) ←
  registerSimplePersistentEnvExtension {
    addEntryFn := Array.push
    addImportedFn := Array.flatMap id
  }

open Elab Command in
/-- `library_note «my note» /-- documentation -/` creates a library note named `my note`
in the `LibraryNote` namespace, whose content is `/-- documentation -/`.
This can then be cross-referenced using
```
-- See note [some tag]
```
in doc-comments.
You can access the contents using, for example, `#print LibraryNote.my_note`.
(Note: spaces in the name are converted to underscores in the declaration name for
compatibility with the Lean export format.)
Use `#help note "some tag"` to display all notes with the tag `"some tag"` in the infoview.
This command can be imported from Batteries.Tactic.HelpCmd .
-/
elab "library_note " name:ident ppSpace dc:docComment : command => do
  let origName := name.getId
  -- Store original name (with spaces) for lookup via `#help note`
  modifyEnv (libraryNoteExt.addEntry · origName)
  -- Use encoded name (spaces → underscores) for declaration, for export format compatibility
  let safeName := encodeNameForExport origName
  let stx ← `(
    $dc:docComment
    meta def $(mkIdent (`_root_.LibraryNote ++ safeName)) : LibraryNote :=
      default)
  elabCommandTopLevel stx
