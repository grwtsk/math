# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Task.Variant8325c1e9069271ee23f9effb54b7322a9d915efe63b58173f896c95299c52cf1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `847f09088452985d412073969041232d4ea4b26e` · SHA-256 `3b74d8b0a9b1b1e4dfc7ffe8e6194429ccbb34dfa464dd75cb661f7c76e4d080`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ETask.Variant8cd7cf164a3e50fcdf6b7d9b3dbfe7a027943c646b9e1c5ab2f98681ba573fed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cd7cf164a3e50fcdf6b7d9b3dbfe7a027943c646b9e1c5ab2f98681ba573fed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ETask.Variant8cd7cf164a3e50fcdf6b7d9b3dbfe7a027943c646b9e1c5ab2f98681ba573fed","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"8cd7cf164a3e50fcdf6b7d9b3dbfe7a027943c646b9e1c5ab2f98681ba573fed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Task.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Control.Option
public import Init.Control.Except


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ETask.Variant8cd7cf164a3e50fcdf6b7d9b3dbfe7a027943c646b9e1c5ab2f98681ba573fed

namespace Lake

public instance : Monad Task where
  map := Task.map
  pure := Task.pure
  bind := Task.bind

public abbrev ETask ε := ExceptT ε Task
public abbrev OptionTask := OptionT Task

@[expose] public def BaseIOTask := Task
public instance : Monad BaseIOTask := inferInstanceAs (Monad Task)
public instance [Inhabited α] : Inhabited (BaseIOTask α) := inferInstance

public abbrev EIOTask ε := ExceptT ε BaseIOTask
public abbrev OptionIOTask := OptionT BaseIOTask

public instance : Inhabited (OptionIOTask α) := ⟨failure⟩
```
