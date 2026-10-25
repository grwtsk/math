# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuxDef.Variante10b6266fe2c726d913397777fb22004b92cc63cffdf58b192fb58b77c33c0a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bccc118a0cd9b00b1d9f386d25919e413f4500b` · SHA-256 `81e79415aeb0972ca4e2d8689ac26e50a8abe212f18f66c370272282b6d73527`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabAuxDef.Variant56801f966e199fab594e14868283f8d76e7e8724c8a48fe6b68c90757cb9c50b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"56801f966e199fab594e14868283f8d76e7e8724c8a48fe6b68c90757cb9c50b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabAuxDef.Variant56801f966e199fab594e14868283f8d76e7e8724c8a48fe6b68c90757cb9c50b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"56801f966e199fab594e14868283f8d76e7e8724c8a48fe6b68c90757cb9c50b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/AuxDef.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

prelude
public import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabAuxDef.Variant56801f966e199fab594e14868283f8d76e7e8724c8a48fe6b68c90757cb9c50b

public section

namespace Lean.Elab.Command
open Lean.Parser.Command
open Lean.Parser.Term

/--
Declares an auxiliary definition with an automatically generated name.
For example, `aux_def foo : Nat := 42` creates a definition
with an internal, unused name based on the suggestion `foo`.
-/
scoped syntax (name := aux_def) docComment ? attributes ? visibility "aux_def" ident+ ":" term ":=" term : command

@[builtin_command_elab «aux_def»]
def elabAuxDef : CommandElab
  | `($[$doc?:docComment]? $[$attrs?:attributes]? $vis:visibility aux_def $suggestion* : $ty := $body) => do
    let id := suggestion.map (·.getId.eraseMacroScopes) |>.foldl (· ++ ·) Name.anonymous
    let id := `_aux ++ (← getMainModule) ++ `_ ++ id
    let id := String.intercalate "_" <| id.components.map (·.toString (escape := false))
    let ns ← getCurrNamespace
    -- We use a new generator here because we want more control over the name; the default would
    -- create a private name that then breaks the macro below. We assume that `aux_def` is not used
    -- with the same arguments in parallel contexts.
    let env := (← getEnv).setExporting true
    let (id, _) := DeclNameGenerator.ofPrefix ns |>.mkUniqueName env («infix» := Name.mkSimple id)
    let id := id.replacePrefix ns Name.anonymous -- TODO: replace with def _root_.id
    elabCommand <|
      ← `($[$doc?:docComment]? $[$attrs?:attributes]? $vis:visibility
          meta def $(mkIdentFrom (mkNullNode suggestion) id (canonical := true)):ident : $ty := $body)
  | _ => throwUnsupportedSyntax
```
