# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoncomputableAttr.Varianta38bf4e6bd5cd628ddf12bd7f68af90b887023a21e0e686e6735426db0cdfaa4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f5ac8cce995b501da00eaa66ae4ae29561495e7` · SHA-256 `61af4b67c90da1583a2554c6c7fe1ef7288cb83560f5c9fc95cb3f174ac3181e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddNoncomputable.Variant8d1ba44757e2a2b4d1916ee97b8c0dd54171ff1890db8a1452f0346119d65859","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d1ba44757e2a2b4d1916ee97b8c0dd54171ff1890db8a1452f0346119d65859","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AddNoncomputable.Variant8d1ba44757e2a2b4d1916ee97b8c0dd54171ff1890db8a1452f0346119d65859","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8d1ba44757e2a2b4d1916ee97b8c0dd54171ff1890db8a1452f0346119d65859","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/NoncomputableAttr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.EnvExtension


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddNoncomputable.Variant8d1ba44757e2a2b4d1916ee97b8c0dd54171ff1890db8a1452f0346119d65859

public section

namespace Lean

-- `sync` as it's written to from both main branch and codegen branch
builtin_initialize noncomputableExt : TagDeclarationExtension ← mkTagDeclarationExtension (asyncMode := .sync)

/-- Mark in the environment extension that the given declaration has been declared by the user as `noncomputable`. -/
def addNoncomputable (env : Environment) (declName : Name) : Environment :=
  noncomputableExt.tag env declName

/--
Returns `true` when the given declaration is tagged `noncomputable`.
-/
def isNoncomputable (env : Environment) (declName : Name) (asyncMode := noncomputableExt.toEnvExtension.asyncMode) : Bool :=
  noncomputableExt.isTagged (asyncMode := asyncMode) env declName

end Lean
```
