# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RegisterCommand.Variant804df7e7a98b34f09afe03c6882a88247a453b304d15cfc92aae1cf7b1d138f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `984ee37aea291211a3108c6f95bf115bc48a37c5` · SHA-256 `2a20c59e777dddddaa1943bee63dd0ff4d15a544a657e03b1aa3a9dc3e2d1ac9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant40f1691c5d5257d70661c30f566057972725a5f26b0fd96297137da71a739e0a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40f1691c5d5257d70661c30f566057972725a5f26b0fd96297137da71a739e0a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attr.Variant40f1691c5d5257d70661c30f566057972725a5f26b0fd96297137da71a739e0a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"40f1691c5d5257d70661c30f566057972725a5f26b0fd96297137da71a739e0a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Simp/RegisterCommand.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","external_root_references_preserved","implicit_eof_scopes","interpolated_literals","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Simp.Attr  -- shake: keep (macro output dependency)
public meta import Lean.Meta.Tactic.Simp.Simproc


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant40f1691c5d5257d70661c30f566057972725a5f26b0fd96297137da71a739e0a

public section

namespace Lean.Meta.Simp

macro (name := _root_.Lean.Parser.Command.registerSimpAttr) doc:(docComment)?
  "register_simp_attr" id:ident : command => do
  let str := id.getId.toString
  let idParser := mkIdentFrom id (`Parser.Attr ++ id.getId)
  let descr := quote ((doc.map (·.getDocString) |>.getD s!"simp set for {id.getId.toString}").removeLeadingSpaces)
  let procId := mkIdentFrom id (simpAttrNameToSimprocAttrName id.getId)
  let procStr := procId.getId.toString
  let procIdParser := mkIdentFrom procId (`Parser.Attr ++ procId.getId)
  let procDescr := quote s!"simproc set for {procId.getId.toString}"
  -- TODO: better docComment for simprocs
  `($[$doc:docComment]? public meta initialize ext : SimpExtension ← registerSimpAttr $(quote id.getId) $descr
    $[$doc:docComment]? syntax (name := $idParser:ident) $(quote str):str (Parser.Tactic.simpPre <|> Parser.Tactic.simpPost)? unicode("← ", "<- ")? (prio)? : attr
    /-- Simplification procedure -/
    public meta initialize extProc : SimprocExtension ← registerSimprocAttr $(quote procId.getId) $procDescr none
    /-- Simplification procedure -/
    syntax (name := $procIdParser:ident) $(quote procStr):str (Parser.Tactic.simpPre <|> Parser.Tactic.simpPost)? : attr)

end Lean.Meta.Simp
```
