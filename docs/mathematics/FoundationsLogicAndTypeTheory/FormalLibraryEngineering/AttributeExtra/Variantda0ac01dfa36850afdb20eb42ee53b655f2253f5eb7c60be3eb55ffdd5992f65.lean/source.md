# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AttributeExtra.Variantda0ac01dfa36850afdb20eb42ee53b655f2253f5eb7c60be3eb55ffdd5992f65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cfcf8007d59e4c32596b24a779000b65e3aab28` · SHA-256 `e3e96a2d7b35d02a12363ad2ecac79454a0eecca6b72deceb70d6174190b4822`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TagAttributeExtra.Variant2d87cb121f6d4a5d67fc0f2135d781a62e42157549544e8f3ee542b6627bedee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d87cb121f6d4a5d67fc0f2135d781a62e42157549544e8f3ee542b6627bedee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TagAttributeExtra.Variant2d87cb121f6d4a5d67fc0f2135d781a62e42157549544e8f3ee542b6627bedee","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2d87cb121f6d4a5d67fc0f2135d781a62e42157549544e8f3ee542b6627bedee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/AttributeExtra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Std.Lean.TagAttribute

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TagAttributeExtra.Variant2d87cb121f6d4a5d67fc0f2135d781a62e42157549544e8f3ee542b6627bedee

open Lean

namespace Lean

/--
`TagAttributeExtra` works around a limitation of `TagAttribute`, which is that definitions
must be tagged in the same file that declares the definition.
This works well for definitions in lean core, but for attributes declared outside the core
this is problematic because we may want to tag declarations created before the attribute
was defined.

To resolve this, we allow a one-time exception to the rule that attributes must be applied
in the same file as the declaration: During the declaration of the attribute itself,
we can tag arbitrary other definitions, but once the attribute is declared we must tag things
in the same file as normal.
-/
structure TagAttributeExtra where
  /-- The environment extension for the attribute. -/
  ext : PersistentEnvExtension Name Name NameSet
  /-- A list of "base" declarations which have been pre-tagged. -/
  base : NameHashSet
  deriving Inhabited

/--
Registers a new tag attribute. The `extra` field is a list of definitions from other modules
which will be "pre-tagged" and are not subject to the usual restriction on tagging in the same
file as the declaration.

Note: The `extra` fields bypass the `validate` function -
we assume the builtins are also pre-validated.
-/
def registerTagAttributeExtra (name : Name) (descr : String) (extra : List Name)
    (validate : Name → AttrM Unit := fun _ => pure ()) (ref : Name := by exact decl_name%) :
    IO TagAttributeExtra := do
  let { ext, .. } ← registerTagAttribute name descr validate ref
  pure { ext, base := extra.foldl (·.insert ·) {} }

namespace TagAttributeExtra

/-- Does declaration `decl` have the tag `attr`? -/
def hasTag (attr : TagAttributeExtra) (env : Environment) (decl : Name) : Bool :=
  match env.getModuleIdxFor? decl with
  | some modIdx => (attr.ext.getModuleEntries env modIdx).binSearchContains decl Name.quickLt
  | none        => (attr.ext.getState env).contains decl
  || attr.base.contains decl

/-- Get the list of declarations tagged with the tag attribute `attr`. -/
def getDecls (attr : TagAttributeExtra) (env : Environment) : Array Name := Id.run do
  let decls := TagAttribute.getDecls.core <| attr.ext.toEnvExtension.getState env
  attr.base.fold (·.push ·) decls

end TagAttributeExtra

/--
`ParametricAttributeExtra` works around a limitation of `ParametricAttribute`, which is that
definitions must be tagged in the same file that declares the definition.
This works well for definitions in lean core, but for attributes declared outside the core
this is problematic because we may want to tag declarations created before the attribute
was defined.

To resolve this, we allow a one-time exception to the rule that attributes must be applied
in the same file as the declaration: During the declaration of the attribute itself,
we can tag arbitrary other definitions, but once the attribute is declared we must tag things
in the same file as normal.
-/
structure ParametricAttributeExtra (α : Type) where
  /-- The underlying `ParametricAttribute`. -/
  attr : ParametricAttribute α
  /-- A list of pre-tagged declarations with their values. -/
  base : HashMap Name α
  deriving Inhabited

/--
Registers a new parametric attribute. The `extra` field is a list of definitions from other modules
which will be "pre-tagged" and are not subject to the usual restriction on tagging in the same
file as the declaration.
-/
def registerParametricAttributeExtra [Inhabited α] (impl : ParametricAttributeImpl α)
    (extra : List (Name × α)) : IO (ParametricAttributeExtra α) := do
  let attr ← registerParametricAttribute impl
  pure { attr, base := extra.foldl (fun s (a, b) => s.insert a b) {} }

namespace ParametricAttributeExtra

/--
Gets the parameter of attribute `attr` associated to declaration `decl`,
or `none` if `decl` is not tagged.
-/
def getParam? [Inhabited α] (attr : ParametricAttributeExtra α)
    (env : Environment) (decl : Name) : Option α :=
  attr.attr.getParam? env decl <|> attr.base.find? decl

/-- Applies attribute `attr` to declaration `decl`, given a value for the parameter. -/
def setParam (attr : ParametricAttributeExtra α)
    (env : Environment) (decl : Name) (param : α) : Except String Environment :=
  attr.attr.setParam env decl param

end ParametricAttributeExtra
```
