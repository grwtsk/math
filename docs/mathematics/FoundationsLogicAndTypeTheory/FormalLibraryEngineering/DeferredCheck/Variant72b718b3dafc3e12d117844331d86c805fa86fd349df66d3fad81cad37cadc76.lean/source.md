# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeferredCheck.Variant72b718b3dafc3e12d117844331d86c805fa86fd349df66d3fad81cad37cadc76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccf5ca135f7d39a99c6b89ea6cf655641738a5f8` · SHA-256 `082defa4ab45976127b4b4e8e0f4f46accebe20b6d1da87c7e606fdf5442772b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeferredCheckSite.Variantb540c1e687ad51a8c6338f0d221fcded2aa41872927e3b023dcfdc648fddb170","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b540c1e687ad51a8c6338f0d221fcded2aa41872927e3b023dcfdc648fddb170","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeferredCheckSite.Variantb540c1e687ad51a8c6338f0d221fcded2aa41872927e3b023dcfdc648fddb170","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b540c1e687ad51a8c6338f0d221fcded2aa41872927e3b023dcfdc648fddb170","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/DocString/DeferredCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Thrane Christiansen
-/
module

prelude
public import Init.Dynamic
public import Lean.Environment
public import Lean.Data.OpenDecl
public import Lean.Data.Options


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeferredCheckSite.Variantb540c1e687ad51a8c6338f0d221fcded2aa41872927e3b023dcfdc648fddb170

public section

namespace Lean.Doc

/--
The docstring that a deferred check was recorded in. Identifies the docstring without a source
position, so that editing unrelated text doesn't change the public information of the module.
-/
inductive DeferredCheckSite where
  /-- The check was deferred in docstring of a declaration. -/
  | decl (name : Name)
  /-- The check was deferred from the `n`th module docstring of the module (0-indexed). -/
  | moduleDoc (n : Nat)
deriving Inhabited, Repr, BEq

/--
A recording of the fact that some kind of check could not be carried out when a docstring was
elaborated, due to some missing information that is expected to be available in the future. This is
used for forward references.

The type of the value in `check` selects the handler that carries out the check.

Source positions are not stored because they would shift with edits. Because deferred checks are
part of the public information of a module, this would lead to needless rebuilds. The docstring is
identified by `site`, the reference within it by `index`, and `sourceString` (the reference's source
text) gives readable error messages even without an accurate location.
-/
structure DeferredCheck where
  /-- The docstring or moduledoc in which the reference appears. -/
  site : DeferredCheckSite
  /-- The index of this reference into the deferred checks of its docstring, in source order. -/
  index : Nat
  /-- The reference's source text, to quote in error messages. -/
  sourceString : String
  /-- Modules that should be imported for the check to be meaningful (the reference's `scope`). -/
  imports : Array Name
  /-- The current namespace at the reference site. -/
  currNamespace : Name
  /-- The open declarations in scope at the reference site. -/
  openDecls : List OpenDecl
  /-- The options in effect at the reference site. -/
  options : Options
  /--
  The check-specific data. The name of the type in the `Dynamic` determines which checks are to be
  performed.
   -/
  check : Dynamic

/--
A collection of deferred docstring checks.

While docstrings are part of the server olean for a module, deferred checks are part of the public
information so they can be found by the linter.
-/
builtin_initialize deferredCheckExt :
    PersistentEnvExtension DeferredCheck DeferredCheck (Array DeferredCheck) ←
  registerPersistentEnvExtension {
    mkInitial := pure #[]
    addImportedFn := fun _ => pure #[]
    addEntryFn := Array.push
    exportEntriesFn := id
    asyncMode := .sync
  }

end Lean.Doc
```
