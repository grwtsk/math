# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelAttribute.Variant9cc7b7d64eb018346ff3edf1d98a40d18f99757a6ab1e7c13a9095c25a065540

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4866934c3188fe3013c84f49d63ecddd2d7f4190` · SHA-256 `9508e1bf5376ab38fde4042590f636ac2307e5a47c2386b1e1e3c3b56e379ebb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelExtension.Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LabelExtension.Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/LabelAttribute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.DocString
public meta import Init.Data.String.Extra
public meta import Init.Data.ToString.Name


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelExtension.Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22

public section

/-!
# "Label" attributes

Allow creating attributes using `register_label_attr`,
and retrieving the array of `Name`s of declarations which have been tagged with such an attribute.

These differ slightly from the built-in "tag attributes" which can be initialized with the syntax:
```
initialize someName : TagAttribute ← registerTagAttribute `tagName "description"
```
in that a "tag attribute" can only be put on a declaration at the moment it is declared,
and can not be modified by scoping commands.

The "label attributes" constructed here support adding (or locally removing) the attribute
either at the moment of declaration, or later.

-/

namespace Lean

/-- An environment extension that just tracks an array of names. -/
abbrev LabelExtension := SimpleScopedEnvExtension Name (Array Name)

/-- The collection of all current `LabelExtension`s, indexed by name. -/
abbrev LabelExtensionMap := Std.HashMap Name LabelExtension

/-- Store the current `LabelExtension`s. -/
builtin_initialize labelExtensionMapRef : IO.Ref LabelExtensionMap ← IO.mkRef {}

/-- Helper function for `registerLabelAttr`. -/
def mkLabelExt (name : Name := by exact decl_name%) : IO LabelExtension :=
  registerSimpleScopedEnvExtension {
    name     := name
    initial  := #[]
    addEntry := fun d e => if d.contains e then d else d.push e
  }

/-- Helper function for `registerLabelAttr`. -/
def mkLabelAttr (attrName : Name) (attrDescr : String) (ext : LabelExtension)
  (ref : Name := by exact decl_name%) : IO Unit :=
registerBuiltinAttribute {
  ref   := ref
  name  := attrName
  descr := attrDescr
  applicationTime := AttributeApplicationTime.afterCompilation
  add   := fun declName _ kind =>
    ext.add declName kind
  erase := fun declName => do
    let s := ext.getState (← getEnv)
    modifyEnv fun env => ext.modifyState env fun _ => s.erase declName
}

/--
Construct a new "label attribute",
which does nothing except keep track of the names of the declarations with that attribute.

Users will generally use the `register_label_attr` macro defined below.
-/
def registerLabelAttr (attrName : Name) (attrDescr : String)
    (ref : Name := by exact decl_name%) : IO LabelExtension := do
  let ext ← mkLabelExt ref
  mkLabelAttr attrName attrDescr ext ref
  labelExtensionMapRef.modify fun map => map.insert attrName ext
  return ext

/--
Initialize a new "label" attribute.
Declarations tagged with the attribute can be retrieved using `Lean.labelled`.
-/
macro (name := _root_.Lean.Parser.Command.registerLabelAttr)
  doc:(docComment)? "register_label_attr " id:ident : command => do
  let str := id.getId.toString
  let idParser := mkIdentFrom id (`Parser.Attr ++ id.getId)
  let descr := quote ((doc.map (·.getDocString) |>.getD ("labelled declarations for " ++ id.getId.toString)).removeLeadingSpaces)
  `($[$doc:docComment]? initialize ext : Lean.LabelExtension ←
      registerLabelAttr $(quote id.getId) $descr $(quote id.getId)
    $[$doc:docComment]? syntax (name := $idParser:ident) $(quote str):str : attr)

/-- When `attrName` is an attribute created using `register_labelled_attr`,
return the names of all declarations labelled using that attribute. -/
def labelled (attrName : Name) : CoreM (Array Name) := do
  match (← labelExtensionMapRef.get)[attrName]? with
  | none => throwError "No extension named {attrName}"
  | some ext => pure <| ext.getState (← getEnv)

end Lean
````
