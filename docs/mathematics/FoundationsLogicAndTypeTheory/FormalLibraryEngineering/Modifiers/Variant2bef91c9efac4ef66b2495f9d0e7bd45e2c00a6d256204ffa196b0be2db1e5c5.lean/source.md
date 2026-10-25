# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Modifiers.Variant2bef91c9efac4ef66b2495f9d0e7bd45e2c00a6d256204ffa196b0be2db1e5c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e392ca9d7f4d7fe0495f65d7842e5951fb40fe24` · SHA-256 `bf9bbaf3e556dd56777a524fe3125aedb0741418ac9f44f03d1d37c0881efeff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddProtected.Variantdee35dbc823a48b9ac79f11db4b2741f89702dd1ac0a7df83050e7f61d2154fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dee35dbc823a48b9ac79f11db4b2741f89702dd1ac0a7df83050e7f61d2154fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AddProtected.Variantdee35dbc823a48b9ac79f11db4b2741f89702dd1ac0a7df83050e7f61d2154fd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dee35dbc823a48b9ac79f11db4b2741f89702dd1ac0a7df83050e7f61d2154fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Modifiers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.EnvExtension


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddProtected.Variantdee35dbc823a48b9ac79f11db4b2741f89702dd1ac0a7df83050e7f61d2154fd

public section

namespace Lean

builtin_initialize protectedExt : TagDeclarationExtension ← mkTagDeclarationExtension

def addProtected (env : Environment) (n : Name) : Environment :=
  protectedExt.tag env n

def isProtected (env : Environment) (n : Name) : Bool :=
  protectedExt.isTagged env n

def mkPrivateName (env : Environment) (n : Name) : Name :=
  -- If name is already private, remove previous suffix first. We need to ensure the resulting name
  -- is private to *this* module.
  mkPrivateNameCore env.mainModule <| privateToUserName n

end Lean
```
