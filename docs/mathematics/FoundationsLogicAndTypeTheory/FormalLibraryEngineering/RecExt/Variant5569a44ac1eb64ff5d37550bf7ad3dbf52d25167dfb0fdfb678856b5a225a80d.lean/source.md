# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecExt.Variant5569a44ac1eb64ff5d37550bf7ad3dbf52d25167dfb0fdfb678856b5a225a80d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9556c0188609e22eb495b21ec790b2339f10567a` · SHA-256 `e0df0a9df414fbf2f4550fe345440056fd655fbbdf87c6a8dacc734ba018c8b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MarkAsRecursive.Variant3e63561c3a0f22745fb8dbf9f462e494824a18642b5aa65080e8c72d56e8d691","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e63561c3a0f22745fb8dbf9f462e494824a18642b5aa65080e8c72d56e8d691","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MarkAsRecursive.Variant3e63561c3a0f22745fb8dbf9f462e494824a18642b5aa65080e8c72d56e8d691","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3e63561c3a0f22745fb8dbf9f462e494824a18642b5aa65080e8c72d56e8d691","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/RecExt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Attributes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MarkAsRecursive.Variant3e63561c3a0f22745fb8dbf9f462e494824a18642b5aa65080e8c72d56e8d691

public section

namespace Lean.Meta

/--
Environment extension for storing which declarations are recursive.
This information is populated by the `PreDefinition` module, but the simplifier
uses when unfolding declarations.
-/
builtin_initialize recExt : TagDeclarationExtension ←
  mkTagDeclarationExtension `recExt (asyncMode := .async .asyncEnv)

/--
Marks the given declaration as recursive.
-/
def markAsRecursive (declName : Name) : CoreM Unit :=
  modifyEnv (recExt.tag · declName)

/--
Returns `true` if `declName` was defined using well-founded recursion, or structural recursion.
-/
def isRecursiveDefinition (declName : Name) : CoreM Bool :=
  return recExt.isTagged (← getEnv) declName
```
