# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant2577303a9b5108f7c5a6a7b7f16ed520818045465a9b3137571af4d832f19dba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f6dceffc58dbdfb9b41114e7d56c9bd65778738` · SHA-256 `6fa627339bc9dc5480bf8702a2df83839d267cb2da26170761e128f9b44be863`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddSymSimpTheorem.Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AddSymSimpTheorem.Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Simp/Attr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.Theorems
import Lean.Meta.Tactic.Simp.SimpTheorems -- for ignoreEquations
import Lean.Meta.Eqns -- for getEqnsFor?

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddSymSimpTheorem.Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e

public section
namespace Lean.Meta.Sym.Simp

/--
Adds a `Sym.Simp` theorem (an equality) to the given extension.
-/
def addSymSimpTheorem (ext : SymSimpExtension) (declName : Name) (attrKind : AttributeKind) : MetaM Unit := do
  let thm ← mkTheoremFromDecl declName
  ext.add thm attrKind

/--
Creates a `Sym.Simp` attribute for a named theorem set.
When a proposition is tagged, it is added as a rewrite theorem.
When a definition is tagged, its equation theorems are added.
-/
def mkSymSimpAttr (attrName : Name) (attrDescr : String) (ext : SymSimpExtension)
    (ref : Name := by exact decl_name%) : IO Unit :=
  registerBuiltinAttribute {
    ref   := ref
    name  := attrName
    descr := attrDescr
    applicationTime := AttributeApplicationTime.afterCompilation
    add   := fun declName _ attrKind => do
      let go : MetaM Unit := do
        let info ← getAsyncConstInfo declName
        if (← isProp info.sig.get.type) then
          addSymSimpTheorem ext declName attrKind
        else if info.kind matches .defn then
          if (← Simp.ignoreEquations declName) then
            throwError "Cannot add `{attrName}` attribute to `{.ofConstName declName}`: \
              It is a reducible definition or projection. `Sym.simp` does not support unfolding."
          else if let some eqns ← getEqnsFor? declName then
            for eqn in eqns do
              addSymSimpTheorem ext eqn attrKind
          else
            throwError "Cannot add `{attrName}` attribute to `{.ofConstName declName}`: \
              No equation theorems found."
        else
          throwError "Cannot add `{attrName}` attribute to `{.ofConstName declName}`: \
            It is not a proposition nor a definition with equation theorems."
      discard <| go.run {} {}
    erase := fun _declName => do
      throwError "Erasing `Sym.simp` attributes is not supported yet."
  }

/--
Registers a named `Sym.Simp` theorem set. Each set gets its own attribute
and its own `SymSimpExtension` (persistent environment extension).

Must be called during initialization.
-/
def registerSymSimpAttr (attrName : Name) (attrDescr : String)
    (ref : Name := by exact decl_name%) : IO SymSimpExtension := do
  let ext ← mkSymSimpExt ref
  mkSymSimpAttr attrName attrDescr ext ref
  symSimpExtensionMapRef.modify fun map => map.insert attrName ext
  return ext

builtin_initialize symSimpExtension : SymSimpExtension ← registerSymSimpAttr `sym_simp "Sym.simp theorem"

def getSymSimpTheorems : CoreM Theorems :=
  symSimpExtension.getTheorems

end Lean.Meta.Sym.Simp
```
