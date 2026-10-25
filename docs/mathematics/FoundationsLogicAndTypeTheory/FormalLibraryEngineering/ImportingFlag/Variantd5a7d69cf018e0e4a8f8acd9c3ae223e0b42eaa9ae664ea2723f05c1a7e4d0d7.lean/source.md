# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportingFlag.Variantd5a7d69cf018e0e4a8f8acd9c3ae223e0b42eaa9ae664ea2723f05c1a7e4d0d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0dc37d7d9d1ad6225d750d323270aaa55ed3450` · SHA-256 `31fe43c65012824b8781af3fd007d4fbb4eb83a76b64e158aa206d7e1d75d3d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnableInitializersExecution.Variant9316ad5b5a4c17d37aa6e17c6e3bec60a204c456887d998aa69ba72c3b7f7b4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9316ad5b5a4c17d37aa6e17c6e3bec60a204c456887d998aa69ba72c3b7f7b4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EnableInitializersExecution.Variant9316ad5b5a4c17d37aa6e17c6e3bec60a204c456887d998aa69ba72c3b7f7b4f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9316ad5b5a4c17d37aa6e17c6e3bec60a204c456887d998aa69ba72c3b7f7b4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/ImportingFlag.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.System.IO


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnableInitializersExecution.Variant9316ad5b5a4c17d37aa6e17c6e3bec60a204c456887d998aa69ba72c3b7f7b4f

public section
namespace Lean

private builtin_initialize importingRef : IO.Ref Bool ← IO.mkRef false

private builtin_initialize runInitializersRef : IO.Ref Bool ← IO.mkRef false

/--
By default the `initialize` code is not executed when importing .olean files.
When this flag is set to `true`, the initializers are executed.
This method is meant to be used by the Lean frontend only.
Remark: it is not safe to run `initialize` code when using multiple threads.
Remark: Any loaded native Lean code must match its imported version. In particular,
  no two versions of the same module may be loaded when this flag is set.
  No native code may be loaded after its module has been imported.
Remark: Compacted module regions must not be freed when using this flag as the
  cached initializer results may reference objects in them.
Remark: The Lean frontend executes this method at startup time.
-/
@[export lean_enable_initializer_execution]
unsafe def enableInitializersExecution : BaseIO Unit :=
  runInitializersRef.set true

def isInitializerExecutionEnabled : BaseIO Bool :=
  runInitializersRef.get

/--
We say Lean is "initializing" when it is executing `builtin_initialize` declarations or importing modules.
Recall that Lean executes `initialize` declarations while importing modules.
-/
def initializing : BaseIO Bool :=
  IO.initializing <||> importingRef.get

/--
Execute `x` with "importing" flag turned on.
When the "importing" flag is set to true, we allow user-extensions defined with
the `initialize` command to update global references.
IMPORTANT: There is no semaphore controlling the access to these global references.
We assume these global references are updated by a single execution thread.
This is true in the Lean frontend where we process the `import` commands at the beginning
of the execution only. Users must make sure that when `importModules` is used, there is only
one execution thread accessing the global references.
-/
def withImporting (x : IO α) : IO α :=
  try
    importingRef.set true
    x
  finally
    importingRef.set false
    runInitializersRef.set false

/--
Toggle the "importing" flag.

This is intended for C code that needs to emulate multiple `withImporting` calls.
As with `withImporting`, users must make sure there is only one execution thread accessing
the global references.
-/
@[export lean_set_initializing]
private def setInitializing (initializing : Bool) : BaseIO Unit :=
  importingRef.set initializing

end Lean
```
