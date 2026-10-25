# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Term.Varianta668f225bf01f03e2d347915e77cea197104d24e9417df632e77bf51340ce992

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86698a89d27b80f263833df502f9603a32304650` · SHA-256 `d7846c0b8e89965b213077a4ab0989a81e2a584b1f70d39a2987fdc5da40f748`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TermExpandDeclId.Variant0d3047f9e1e3160a52eba27400b12eeab0ca9a08092e5bcd530f8ea2b87fa8fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d3047f9e1e3160a52eba27400b12eeab0ca9a08092e5bcd530f8ea2b87fa8fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TermExpandDeclId.Variant0d3047f9e1e3160a52eba27400b12eeab0ca9a08092e5bcd530f8ea2b87fa8fc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0d3047f9e1e3160a52eba27400b12eeab0ca9a08092e5bcd530f8ea2b87fa8fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Term.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Elab.DeclModifiers
public import Lean.Elab.Term.TermElabM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TermExpandDeclId.Variant0d3047f9e1e3160a52eba27400b12eeab0ca9a08092e5bcd530f8ea2b87fa8fc

public section

namespace Lean.Elab

open Meta

def Term.expandDeclId (currNamespace : Name) (currLevelNames : List Name) (declId : Syntax) (modifiers : Modifiers) : TermElabM ExpandDeclIdResult := do
  let r ← Elab.expandDeclId currNamespace currLevelNames declId modifiers
  if (← read).sectionVars.contains r.shortName then
    throwError "invalid declaration name `{r.shortName}`, there is a section variable with the same name"
  return r

builtin_initialize
  registerTraceClass `Elab.postpone
  registerTraceClass `Elab.coe
  registerTraceClass `Elab.debug
  registerTraceClass `Elab.reuse

/--
Marks an elaborator (tactic or command, currently) as supporting incremental elaboration.

For unmarked elaborators, the corresponding snapshot bundle field in the elaboration context is
unset so as to prevent accidental, incorrect reuse.
-/
@[builtin_doc]
builtin_initialize incrementalAttr : TagAttribute ←
  registerTagAttribute `incremental "Marks an elaborator (tactic or command, currently) as \
supporting incremental elaboration. For unmarked elaborators, the corresponding snapshot bundle \
field in the elaboration context is unset so as to prevent accidental, incorrect reuse."

builtin_initialize builtinIncrementalElabs : IO.Ref NameSet ← IO.mkRef {}

def addBuiltinIncrementalElab (decl : Name) : IO Unit := do
  builtinIncrementalElabs.modify fun s => s.insert decl

@[inherit_doc incrementalAttr, builtin_doc]
builtin_initialize
  registerBuiltinAttribute {
    name            := `builtin_incremental
    descr           := s!"(builtin) {incrementalAttr.attr.descr}"
    applicationTime := .afterCompilation
    add             := fun decl stx kind => do
      Attribute.Builtin.ensureNoArgs stx
      unless kind == AttributeKind.global do throwAttrMustBeGlobal `builtin_incremental kind
      declareBuiltin decl <| mkApp (mkConst ``addBuiltinIncrementalElab) (toExpr decl)
  }

/-- Checks whether a declaration is annotated with `[builtin_incremental]` or `[incremental]`. -/
def isIncrementalElab [Monad m] [MonadEnv m] [MonadLiftT IO m] (decl : Name) : m Bool :=
  (return (← builtinIncrementalElabs.get (m := IO)).contains decl) <||>
  (return incrementalAttr.hasTag (← getEnv) decl)

export Term (TermElabM)

builtin_initialize
  registerTraceClass `Elab.implicitForall

end Lean.Elab
```
