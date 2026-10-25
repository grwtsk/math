# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OriginalConstKind.Variant1d6bdfda9deab30b568563751433eda8d2d566484c2af58a67643a620187586e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `add09c8e2a45cc9762c59f2ad14702e4897cdf39` · SHA-256 `de7b2c041cc82563c3dae2151f4e16279fdee29be454c4eb403a579662991910`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetOriginalConstKind.Variant68222f86a4a8587c5fc1eee11b5870678fe55384f35e460b3358696ed1455bcc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68222f86a4a8587c5fc1eee11b5870678fe55384f35e460b3358696ed1455bcc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetOriginalConstKind.Variant68222f86a4a8587c5fc1eee11b5870678fe55384f35e460b3358696ed1455bcc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"68222f86a4a8587c5fc1eee11b5870678fe55384f35e460b3358696ed1455bcc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/OriginalConstKind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Environment
import Lean.EnvExtension


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetOriginalConstKind.Variant68222f86a4a8587c5fc1eee11b5870678fe55384f35e460b3358696ed1455bcc

namespace Lean

-- No public mutating interface as this is an implementation detail of `addDecl` and separated only
-- to avoid an import cycle.
private builtin_initialize privateConstKindsExt : MapDeclarationExtension ConstantKind ←
  -- Use `sync` so we can add entries from anywhere without restrictions
  mkMapDeclarationExtension (asyncMode := .sync)

/--
Returns the kind of the declaration as originally declared instead of as exported. This information
is stored by `Lean.addDecl` and may be inaccurate if that function was circumvented. Returns `none`
if the declaration was not found.
-/
public def getOriginalConstKind? (env : Environment) (declName : Name) : Option ConstantKind := do
  -- Use `local` as for asynchronous decls from the current module, `findAsync?` below will yield
  -- the same result but potentially earlier (after `addConstAsync` instead of `addDecl`)
  privateConstKindsExt.find? (asyncMode := .local) env declName <|>
    (env.setExporting false |>.findAsync? declName).map (·.kind)

/--
Checks whether the declaration was originally declared as a definition; see also
`Lean.getOriginalConstKind?`. Returns `false` if the declaration was not found.
-/
public def wasOriginallyDefn (env : Environment) (declName : Name) : Bool :=
  getOriginalConstKind? env declName |>.map (· matches .defn) |>.getD false

/--
Checks whether the declaration was originally declared as a theorem; see also
`Lean.getOriginalConstKind?`. Returns `false` if the declaration was not found.
-/
public def wasOriginallyTheorem (env : Environment) (declName : Name) : Bool :=
  getOriginalConstKind? env declName |>.map (· matches .thm) |>.getD false
```
