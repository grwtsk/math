-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabSuppressCompilationDecl.Variant0b7386c660ee256ad45f295458dc02dbae226fb837d3189c6636971b1da290ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b7386c660ee256ad45f295458dc02dbae226fb837d3189c6636971b1da290ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabSuppressCompilationDecl.Variant0b7386c660ee256ad45f295458dc02dbae226fb837d3189c6636971b1da290ea","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0b7386c660ee256ad45f295458dc02dbae226fb837d3189c6636971b1da290ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/SuppressCompilation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best, Mac Malone
-/
import Mathlib.Init
import Lean.Elab.Declaration
import Lean.Elab.Notation

/-!
# Suppressing compilation to executable code in a file or in a section

Currently, the compiler may spend a lot of time trying to produce executable code for complicated
definitions. This is a waste of resources for definitions in area of mathematics that will never
lead to executable code. The command `suppress_compilation` is a hack to disable code generation
on all definitions (in a section or in a whole file). See the issue https://github.com/leanprover-community/mathlib4/issues/7103

To compile a definition even when `suppress_compilation` is active, use
`unsuppress_compilation in def foo : ...`. This is activated by default on notations to make
sure that they work properly.

Note that `suppress_compilation` does not work with `notation3`. You need to prefix such a notation
declaration with `unsuppress_compilation` if `suppress_compilation` is active.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabSuppressCompilationDecl.Variant0b7386c660ee256ad45f295458dc02dbae226fb837d3189c6636971b1da290ea

open Lean Parser Elab Command

/-- Replacing `def` and `instance` by `noncomputable def` and `noncomputable instance`, designed
to disable the compiler in a given file or a given section.
This is a hack to work around https://github.com/leanprover-community/mathlib4/issues/7103. -/
def elabSuppressCompilationDecl : CommandElab := fun
| `($[$doc?:docComment]? $(attrs?)? $(vis?)? $[noncomputable]? $(unsafe?)?
    $(recKind?)? def $id $sig:optDeclSig $val:declVal) => do
  elabDeclaration <| ← `($[$doc?:docComment]? $(attrs?)? $(vis?)? noncomputable $(unsafe?)?
    $(recKind?)? def $id $sig:optDeclSig $val:declVal)
| `($[$doc?:docComment]? $(attrs?)? $(vis?)? $[noncomputable]? $(unsafe?)?
    $(recKind?)? def $id $sig:optDeclSig $val:declVal deriving $derivs,*) => do
  elabDeclaration <| ← `($[$doc?:docComment]? $(attrs?)? $(vis?)? noncomputable $(unsafe?)?
    $(recKind?)? def $id $sig:optDeclSig $val:declVal deriving $derivs,*)
| `($[$doc?:docComment]? $(attrs?)? $(vis?)? $[noncomputable]? $(unsafe?)?
    $(recKind?)? $(attrKind?)? instance $(prio?)? $(id?)? $sig:declSig $val:declVal) => do
  elabDeclaration <| ← `($[$doc?:docComment]? $(attrs?)? $(vis?)? noncomputable $(unsafe?)?
    $(recKind?)? $(attrKind?)? instance $(prio?)? $(id?)? $sig:declSig $val:declVal)
| `($[$doc?:docComment]? $(attrs?)? $(vis?)? $[noncomputable]? $(unsafe?)?
    $(recKind?)? example $sig:optDeclSig $val:declVal) => do
  elabDeclaration <| ← `($[$doc?:docComment]? $(attrs?)? $(vis?)? noncomputable $(unsafe?)?
    $(recKind?)? example $sig:optDeclSig $val:declVal)
| `($[$doc?:docComment]? $(attrs?)? $(vis?)? $[noncomputable]? $(unsafe?)?
    $(recKind?)? abbrev $id $sig:optDeclSig $val:declVal) => do
  elabDeclaration <| ← `($[$doc?:docComment]? $(attrs?)? $(vis?)? noncomputable $(unsafe?)?
    $(recKind?)? abbrev $id $sig:optDeclSig $val:declVal)
| _ => throwUnsupportedSyntax

/-- The command `unsuppress_compilation in def foo : ...` makes sure that the definition is
compiled to executable code, even if `suppress_compilation` is active. -/
syntax "unsuppress_compilation" (" in " command)? : command

/-- Make sure that notations are compiled, even if `suppress_compilation` is active, by prepending
them with `unsuppress_compilation`. -/
def expandSuppressCompilationNotation : Macro := fun
| `($[$doc?:docComment]? $(attrs?)? $(attrKind)? notation
    $(prec?)? $(name?)? $(prio?)? $items* => $v) => do
  let defn ← expandNotation <| ← `($[$doc?:docComment]? $(attrs?)? $(attrKind)? notation
    $(prec?)? $(name?)? $(prio?)? $items* => $v)
  `(unsuppress_compilation in $(⟨defn⟩):command)
| _ => Macro.throwUnsupported

/-- Replacing `def` and `instance` by `noncomputable def` and `noncomputable instance`, designed
to disable the compiler in a given file or a given section.
This is a hack to work around https://github.com/leanprover-community/mathlib4/issues/7103.
Note that it does not work with `notation3`. You need to prefix such a notation declaration with
`unsuppress_compilation` if `suppress_compilation` is active. -/
macro "suppress_compilation" : command => do
  let declKind := mkIdent ``declaration
  let notaKind := mkIdent ``«notation»
  let declElab := mkCIdent ``elabSuppressCompilationDecl
  let notaMacro := mkCIdent ``expandSuppressCompilationNotation
  `(
  attribute [local command_elab $declKind] $declElab
  attribute [local macro $notaKind] $notaMacro
  )

/-- The command `unsuppress_compilation in def foo : ...` makes sure that the definition is
compiled to executable code, even if `suppress_compilation` is active. -/
macro_rules
| `(unsuppress_compilation $[in $cmd?]?) => do
  let declElab := mkCIdent ``elabSuppressCompilationDecl
  let notaMacro := mkCIdent ``expandSuppressCompilationNotation
  let attrCmds ← `(
    attribute [-command_elab] $declElab
    attribute [-macro] $notaMacro
  )
  if let some cmd := cmd? then
    `($attrCmds:command $cmd:command suppress_compilation)
  else
    return attrCmds
