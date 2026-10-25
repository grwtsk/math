# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RegisterCommand.Variant0745f554b069f16477df8cfd7b320ef7e449c5a307838bc6bffc9fa87ef4f233

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10e27d783d86989be96c2a9bac84de5a77a21fa9` · SHA-256 `335921f82f42e9d76c1c304bc728125c4bbeb8739805f687dc73c3501d310410`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Varianta50c0b39cedd4defd41dcd9eba5b7f09c2eb6e1804184167193b6319ffe6ad11","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a50c0b39cedd4defd41dcd9eba5b7f09c2eb6e1804184167193b6319ffe6ad11","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attr.Varianta50c0b39cedd4defd41dcd9eba5b7f09c2eb6e1804184167193b6319ffe6ad11","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a50c0b39cedd4defd41dcd9eba5b7f09c2eb6e1804184167193b6319ffe6ad11","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/RegisterCommand.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public meta import Lean.Meta.Tactic.Grind.Attr  -- shake: keep (macro output dependency)

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Varianta50c0b39cedd4defd41dcd9eba5b7f09c2eb6e1804184167193b6319ffe6ad11

public section
namespace Lean.Meta.Grind

macro (name := _root_.Lean.Parser.Command.registerGrindAttr) doc:(docComment)?
  "register_grind_attr" id:ident : command => do
  let str1 := id.getId.toString
  let idParser1 := mkIdentFrom id (`Lean.Parser.Attr ++ id.getId)
  let str2 := id.getId.toString ++ "!"
  let idParser2 := mkIdentFrom id (`Lean.Parser.Attr ++ (id.getId.appendAfter "!"))
  let str3 := id.getId.toString ++ "?"
  let idParser3 := mkIdentFrom id (`Lean.Parser.Attr ++ (id.getId.appendAfter "?"))
  let str4 := id.getId.toString ++ "!?"
  let idParser4 := mkIdentFrom id (`Lean.Parser.Attr ++ (id.getId.appendAfter "!?"))
  `($[$doc:docComment]? public meta initialize ext : Extension ← registerAttr $(quote id.getId)
    $[$doc:docComment]? syntax (name := $idParser1:ident) $(quote str1):str (ppSpace Lean.Parser.Attr.grindMod)? : attr
    $[$doc:docComment]? syntax (name := $idParser2:ident) $(quote str2):str (ppSpace Lean.Parser.Attr.grindMod)? : attr
    $[$doc:docComment]? syntax (name := $idParser3:ident) $(quote str3):str (ppSpace Lean.Parser.Attr.grindMod)? : attr
    $[$doc:docComment]? syntax (name := $idParser4:ident) $(quote str4):str (ppSpace Lean.Parser.Attr.grindMod)? : attr
    )

end Lean.Meta.Grind
```
