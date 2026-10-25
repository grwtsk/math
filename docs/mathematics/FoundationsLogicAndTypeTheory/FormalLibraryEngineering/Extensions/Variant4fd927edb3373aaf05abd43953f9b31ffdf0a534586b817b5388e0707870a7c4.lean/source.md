# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extensions.Variant4fd927edb3373aaf05abd43953f9b31ffdf0a534586b817b5388e0707870a7c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae8e83cb3aa21d3e4d3598fd435bff888e43ae32` · SHA-256 `0da013d526748fea7d128626df4c114aa0c8fc48e5f31bd3e2f62eddc57d63b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Environment.Variant5c3fd69790ebd0f403b8724daf53703452fda1cd3dee195168fc5b277ad45ec4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c3fd69790ebd0f403b8724daf53703452fda1cd3dee195168fc5b277ad45ec4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Environment.Variant5c3fd69790ebd0f403b8724daf53703452fda1cd3dee195168fc5b277ad45ec4","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"5c3fd69790ebd0f403b8724daf53703452fda1cd3dee195168fc5b277ad45ec4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/DSL/Extensions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.Environment


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Environment.Variant5c3fd69790ebd0f403b8724daf53703452fda1cd3dee195168fc5b277ad45ec4

open Lean

namespace Lake

public builtin_initialize nameExt : EnvExtension (Nat × Name) ←
  registerEnvExtension (pure ⟨0, .anonymous⟩)

public builtin_initialize dirExt : EnvExtension (Option System.FilePath) ←
  registerEnvExtension (pure none)

public builtin_initialize optsExt : EnvExtension (Option (NameMap String)) ←
  registerEnvExtension (pure none)
```
