# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Script.Variant6613f9f5aa6e0480212af5c828ab953483aab9625b13b3f8bc0fbbbacf6dbb7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `644d6b3201d1fb59adb522592980d63c86975fdb` · SHA-256 `ffd5eb9915484a84c232c9ae261f0205cbccbb0252693cba0e56b4bab7d8960c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExpandScriptDecl.Variant211855336ed1ab772802e3320de122bc060cc1ed5755d6807d4a3d7e8189022d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"211855336ed1ab772802e3320de122bc060cc1ed5755d6807d4a3d7e8189022d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ExpandScriptDecl.Variant211855336ed1ab772802e3320de122bc060cc1ed5755d6807d4a3d7e8189022d","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"211855336ed1ab772802e3320de122bc060cc1ed5755d6807d4a3d7e8189022d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/DSL/Script.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Prelude
import Lake.Config.Package  -- shake: keep (builtin macro output dependency)
import Lake.DSL.Attributes  -- shake: keep (builtin macro output dependency)
import Lake.DSL.Syntax

/-! # Script Declarations
DSL definitions to define a Lake script for a package.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExpandScriptDecl.Variant211855336ed1ab772802e3320de122bc060cc1ed5755d6807d4a3d7e8189022d

namespace Lake.DSL
open Lean Parser Command

@[builtin_macro scriptDecl]
def expandScriptDecl : Macro
| `($[$doc?]? $[$attrs?]? script%$kw $name $[$args?]? do $seq $[$wds?:whereDecls]?) => do
  `($[$doc?]? $[$attrs?]? script%$kw $name $[$args?]? := do $seq $[$wds?:whereDecls]?)
| `($[$doc?]? $[$attrs?]? script%$kw $name $[$args?]? := $defn $[$wds?:whereDecls]?) => withRef kw do
  let id := expandIdentOrStrAsIdent name
  let args ← expandOptSimpleBinder args?
  let attrs := #[← `(Term.attrInstance| «script»)] ++ expandAttrs attrs?
  `($[$doc?]? @[$attrs,*] def $id : ScriptFn := fun $args => $defn $[$wds?:whereDecls]?)
| stx => Macro.throwErrorAt stx "ill-formed script declaration"
```
