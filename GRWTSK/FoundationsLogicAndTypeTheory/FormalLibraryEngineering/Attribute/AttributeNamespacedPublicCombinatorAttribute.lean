-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CombinatorAttribute.Variantdd8fe905c66fe3cb3981618bb45c00923ef6e6a434a113b4bf8e255be1547c86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd8fe905c66fe3cb3981618bb45c00923ef6e6a434a113b4bf8e255be1547c86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CombinatorAttribute.Variantdd8fe905c66fe3cb3981618bb45c00923ef6e6a434a113b4bf8e255be1547c86","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dd8fe905c66fe3cb3981618bb45c00923ef6e6a434a113b4bf8e255be1547c86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/ParserCompiler/Attribute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Compiler.InitAttr
import Lean.ExtraModUses


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CombinatorAttribute.Variantdd8fe905c66fe3cb3981618bb45c00923ef6e6a434a113b4bf8e255be1547c86

public section

namespace Lean
namespace ParserCompiler

structure CombinatorAttribute where
  impl : AttributeImpl
  ext  : SimplePersistentEnvExtension (Name × Name) (NameMap Name)
  deriving Inhabited
-- TODO(Sebastian): We'll probably want priority support here at some point

def registerCombinatorAttribute (name : Name) (descr : String) (ref : Name := by exact decl_name%)
    : IO CombinatorAttribute := do
  let ext : SimplePersistentEnvExtension (Name × Name) (NameMap Name) ← registerSimplePersistentEnvExtension {
    name            := ref,
    addImportedFn   := mkStateFromImportedEntries (fun s p => s.insert p.1 p.2) {},
    addEntryFn      := fun (s : NameMap Name) (p : Name × Name) => s.insert p.1 p.2,
  }
  let attrImpl : AttributeImpl := {
    ref   := ref,
    name  := name,
    descr := descr,
    add   := fun decl stx _ => do
      let env ← getEnv
      let parserDeclName ← Elab.realizeGlobalConstNoOverloadWithInfo (← Attribute.Builtin.getIdent stx)
      recordExtraModUseFromDecl (isMeta := false) parserDeclName
      setEnv <| ext.addEntry env (parserDeclName, decl)
  }
  registerBuiltinAttribute attrImpl
  pure { impl := attrImpl, ext := ext }

namespace CombinatorAttribute

def getDeclFor? (attr : CombinatorAttribute) (env : Environment) (parserDecl : Name) : Option Name :=
  (attr.ext.getState env).find? parserDecl

def setDeclFor (attr : CombinatorAttribute) (env : Environment) (parserDecl : Name) (decl : Name) : Environment :=
  attr.ext.addEntry env (parserDecl, decl)

unsafe def runDeclFor {α} (attr : CombinatorAttribute) (parserDecl : Name) : CoreM α := do
  match attr.getDeclFor? (← getEnv) parserDecl with
  | some d => evalConst α d
  | _      => throwError "no declaration of attribute [{attr.impl.name}] found for `{parserDecl}`"

end CombinatorAttribute

end ParserCompiler
end Lean
