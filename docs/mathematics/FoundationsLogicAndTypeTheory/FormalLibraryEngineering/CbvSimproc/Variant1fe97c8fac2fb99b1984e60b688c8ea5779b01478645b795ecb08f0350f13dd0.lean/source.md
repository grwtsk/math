# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CbvSimproc.Variant1fe97c8fac2fb99b1984e60b688c8ea5779b01478645b795ecb08f0350f13dd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d57422c2c90b8473304a1ad4e42ec5e08b867e15` · SHA-256 `38ebca16af24a906187093b5660ee54f5be42f21e1223cff8ee54b14c4334456`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Name.Variantc86d2da23d1bab4e8ac6adfe487de7191177aecb219fd2bfa136c8c5944ad4ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c86d2da23d1bab4e8ac6adfe487de7191177aecb219fd2bfa136c8c5944ad4ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Name.Variantc86d2da23d1bab4e8ac6adfe487de7191177aecb219fd2bfa136c8c5944ad4ea","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c86d2da23d1bab4e8ac6adfe487de7191177aecb219fd2bfa136c8c5944ad4ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/CbvSimproc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public meta import Init.Data.ToString.Name  -- shake: keep (transitive public meta dep, fix)
public import Init.Tactics
import Init.Meta.Defs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Name.Variantc86d2da23d1bab4e8ac6adfe487de7191177aecb219fd2bfa136c8c5944ad4ea

public section

namespace Lean.Parser

syntax cbvSimprocEval := "cbv_eval"

/--
A user-defined simplification procedure used by the `cbv` tactic.
The body must have type `Lean.Meta.Sym.Simp.Simproc` (`Expr → SimpM Result`).
Procedures are indexed by a discrimination tree pattern and fire at one of three phases:
`↓` (pre), `cbv_eval` (eval), or `↑` (post, default).
-/
syntax (docComment)? attrKind "cbv_simproc " (Tactic.simpPre <|> Tactic.simpPost <|> cbvSimprocEval)? ident " (" term ")" " := " term : command

/--
A `cbv_simproc` declaration without automatically adding it to the cbv simproc set.
To activate, use `attribute [cbv_simproc]`.
-/
syntax (docComment)? "cbv_simproc_decl " ident " (" term ")" " := " term : command

syntax (docComment)? attrKind "builtin_cbv_simproc " (Tactic.simpPre <|> Tactic.simpPost <|> cbvSimprocEval)? ident " (" term ")" " := " term : command

syntax (docComment)? "builtin_cbv_simproc_decl " ident " (" term ")" " := " term : command

syntax (name := cbvSimprocPattern) "cbv_simproc_pattern% " term " => " ident : command

syntax (name := cbvSimprocPatternBuiltin) "builtin_cbv_simproc_pattern% " term " => " ident : command

namespace Attr

syntax (name := cbvSimprocAttr) "cbv_simproc" (Tactic.simpPre <|> Tactic.simpPost <|> cbvSimprocEval)? : attr

syntax (name := cbvSimprocBuiltinAttr) "builtin_cbv_simproc" (Tactic.simpPre <|> Tactic.simpPost <|> cbvSimprocEval)? : attr

end Attr

macro_rules
  | `($[$doc?:docComment]? cbv_simproc_decl $n:ident ($pattern:term) := $body) => do
    let simprocType := `Lean.Meta.Sym.Simp.Simproc
    `($[$doc?:docComment]? meta def $n:ident : $(mkIdent simprocType) := $body
      cbv_simproc_pattern% $pattern => $n)

macro_rules
  | `($[$doc?:docComment]? builtin_cbv_simproc_decl $n:ident ($pattern:term) := $body) => do
    let simprocType := `Lean.Meta.Sym.Simp.Simproc
    `($[$doc?:docComment]? def $n:ident : $(mkIdent simprocType) := $body
      builtin_cbv_simproc_pattern% $pattern => $n)

macro_rules
  | `($[$doc?:docComment]? $kind:attrKind cbv_simproc $[$phase?]? $n:ident ($pattern:term) := $body) => do
    `($[$doc?:docComment]? cbv_simproc_decl $n ($pattern) := $body
      attribute [$kind cbv_simproc $[$phase?]?] $n)

macro_rules
  | `($[$doc?:docComment]? $kind:attrKind builtin_cbv_simproc $[$phase?]? $n:ident ($pattern:term) := $body) => do
    `($[$doc?:docComment]? builtin_cbv_simproc_decl $n ($pattern) := $body
      attribute [$kind builtin_cbv_simproc $[$phase?]?] $n)

end Lean.Parser
```
