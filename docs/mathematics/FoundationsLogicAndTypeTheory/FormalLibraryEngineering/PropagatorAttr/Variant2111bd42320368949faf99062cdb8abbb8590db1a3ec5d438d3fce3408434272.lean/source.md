# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagatorAttr.Variant2111bd42320368949faf99062cdb8abbb8590db1a3ec5d438d3fce3408434272

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dae6e8ffad2ccdf09ef183f409403258f5d1dcb3` · SHA-256 `d1481aa416b1c8ac1640349b7d8d190d45841fc3acd489684995e3ab59e7dc7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuiltinPropagators.Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BuiltinPropagators.Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/PropagatorAttr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Proof
import Init.Grind

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuiltinPropagators.Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb

public section
namespace Lean.Meta.Grind

abbrev PropagatorMap := Std.HashMap Name (List Propagator)

def PropagatorMap.insert (m : PropagatorMap) (declName : Name) (p : Propagator) : PropagatorMap :=
  let ps := m[declName]? |>.getD []
  Std.HashMap.insert m declName (p :: ps)

/-- Builtin propagators. -/
structure BuiltinPropagators where
  up   : PropagatorMap := {}
  down : PropagatorMap := {}
  deriving Inhabited

builtin_initialize builtinPropagatorsRef : IO.Ref BuiltinPropagators ← IO.mkRef {}

private def registerBuiltinPropagatorCore (declName : Name) (up : Bool) (proc : Propagator) : IO Unit := do
  unless (← initializing) do
    throw (IO.userError s!"invalid builtin `grind` propagator declaration, it can only be registered during initialization")
  if up then
    builtinPropagatorsRef.modify fun { up, down } => { up := up.insert declName proc, down }
  else
    builtinPropagatorsRef.modify fun { up, down } => { up, down := down.insert declName proc }

def registerBuiltinUpwardPropagator (declName : Name) (proc : Propagator) : IO Unit :=
  registerBuiltinPropagatorCore declName true proc

def registerBuiltinDownwardPropagator (declName : Name) (proc : Propagator) : IO Unit :=
  registerBuiltinPropagatorCore declName false proc

private def addBuiltin (propagatorName : Name) (stx : Syntax) : AttrM Unit := do
  let go : MetaM Unit := withoutExporting do  -- result will be private anyway
    let up := stx[1].getKind == ``Lean.Parser.Tactic.simpPost
    let addDeclName := if up then
      ``registerBuiltinUpwardPropagator
    else
      ``registerBuiltinDownwardPropagator
    let declName ← resolveGlobalConstNoOverload stx[2]
    let val := mkAppN (mkConst addDeclName) #[toExpr declName, mkConst propagatorName]
    let initDeclName ← mkFreshUserName (propagatorName ++ `declare)
    declareBuiltin initDeclName val
  go.run' {}

/-
**Note**: We currently use the same propagators for all `grind` attributes.
-/
builtin_initialize
  registerBuiltinAttribute {
    ref             := by exact decl_name%
    name            := `grindPropagatorBuiltinAttr
    descr           := "Builtin `grind` propagator procedure"
    applicationTime := AttributeApplicationTime.afterCompilation
    erase           := fun _ => throwError "Not implemented yet, [-builtin_simproc]"
    add             := fun declName stx _ => addBuiltin declName stx
  }

end Lean.Meta.Grind
```
