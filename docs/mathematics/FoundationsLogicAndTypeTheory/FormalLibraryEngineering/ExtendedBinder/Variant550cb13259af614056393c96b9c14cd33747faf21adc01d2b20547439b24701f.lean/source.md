# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtendedBinder.Variant550cb13259af614056393c96b9c14cd33747faf21adc01d2b20547439b24701f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f9f761901f9691805ec9b93186d84c435d3e31b` · SHA-256 `3c2f2e0814ee62d51926c7dd5b78e65e2ea41817df8de9ac24690d0f0982ee60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckBinderPredicate.Variant1e9ec8426084103628e1cbc01fd60a8217297653219686c91890646cdac1567b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e9ec8426084103628e1cbc01fd60a8217297653219686c91890646cdac1567b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CheckBinderPredicate.Variant1e9ec8426084103628e1cbc01fd60a8217297653219686c91890646cdac1567b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1e9ec8426084103628e1cbc01fd60a8217297653219686c91890646cdac1567b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Util/ExtendedBinder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Elab.MacroArgUtil
import Lean.Linter.MissingDocs

/-!
Defines an extended binder syntax supporting `∀ ε > 0, ...` etc.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckBinderPredicate.Variant1e9ec8426084103628e1cbc01fd60a8217297653219686c91890646cdac1567b

namespace Std.ExtendedBinder
open Lean

/--
The syntax category of binder predicates contains predicates like `> 0`, `∈ s`, etc.
(`: t` should not be a binder predicate because it would clash with the built-in syntax for ∀/∃.)
-/
declare_syntax_cat binderPred

/--
`satisfies_binder_pred% t pred` expands to a proposition expressing that `t` satisfies `pred`.
-/
syntax "satisfies_binder_pred% " term:max binderPred : term

-- Extend ∀ and ∃ to binder predicates.

/--
The notation `∃ x < 2, p x` is shorthand for `∃ x, x < 2 ∧ p x`,
and similarly for other binary operators.
-/
syntax "∃ " binderIdent binderPred ", " term : term
/--
The notation `∀ x < 2, p x` is shorthand for `∀ x, x < 2 → p x`,
and similarly for other binary operators.
-/
syntax "∀ " binderIdent binderPred ", " term : term

macro_rules
  | `(∃ $x:ident $pred:binderPred, $p) =>
    `(∃ $x:ident, satisfies_binder_pred% $x $pred ∧ $p)
  | `(∃ _ $pred:binderPred, $p) =>
    `(∃ x, satisfies_binder_pred% x $pred ∧ $p)

macro_rules
  | `(∀ $x:ident $pred:binderPred, $p) =>
    `(∀ $x:ident, satisfies_binder_pred% $x $pred → $p)
  | `(∀ _ $pred:binderPred, $p) =>
    `(∀ x, satisfies_binder_pred% x $pred → $p)

-- We also provide special versions of ∀/∃ that take a list of extended binders.
-- The built-in binders are not reused because that results in overloaded syntax.

/--
An extended binder has the form `x`, `x : ty`, or `x pred`
where `pred` is a `binderPred` like `< 2`.
-/
syntax extBinder := binderIdent ((" : " term) <|> binderPred)?
/-- A extended binder in parentheses -/
syntax extBinderParenthesized := " (" extBinder ")" -- TODO: inlining this definition breaks
/-- A list of parenthesized binders -/
syntax extBinderCollection := extBinderParenthesized*
/-- A single (unparenthesized) binder, or a list of parenthesized binders -/
syntax extBinders := (ppSpace extBinder) <|> extBinderCollection

/-- The syntax `∃ᵉ (x < 2) (y < 3), p x y` is shorthand for `∃ x < 2, ∃ y < 3, p x y`. -/
syntax "∃ᵉ" extBinders ", " term : term
macro_rules
  | `(∃ᵉ, $b) => pure b
  | `(∃ᵉ ($p:extBinder) $[($ps:extBinder)]*, $b) =>
    `(∃ᵉ $p:extBinder, ∃ᵉ $[($ps:extBinder)]*, $b)
macro_rules -- TODO: merging the two macro_rules breaks expansion
  | `(∃ᵉ $x:binderIdent, $b) => `(∃ $x:binderIdent, $b)
  | `(∃ᵉ $x:binderIdent : $ty:term, $b) => `(∃ $x:binderIdent : $ty:term, $b)
  | `(∃ᵉ $x:binderIdent $p:binderPred, $b) => `(∃ $x:binderIdent $p:binderPred, $b)

/-- The syntax `∀ᵉ (x < 2) (y < 3), p x y` is shorthand for `∀ x < 2, ∀ y < 3, p x y`. -/
syntax "∀ᵉ" extBinders ", " term : term
macro_rules
  | `(∀ᵉ, $b) => pure b
  | `(∀ᵉ ($p:extBinder) $[($ps:extBinder)]*, $b) =>
    `(∀ᵉ $p:extBinder, ∀ᵉ $[($ps:extBinder)]*, $b)
macro_rules -- TODO: merging the two macro_rules breaks expansion
  | `(∀ᵉ _, $b) => `(∀ _, $b)
  | `(∀ᵉ $x:ident, $b) => `(∀ $x:ident, $b)
  | `(∀ᵉ _ : $ty:term, $b) => `(∀ _ : $ty:term, $b)
  | `(∀ᵉ $x:ident : $ty:term, $b) => `(∀ $x:ident : $ty:term, $b)
  | `(∀ᵉ $x:binderIdent $p:binderPred, $b) => `(∀ $x:binderIdent $p:binderPred, $b)

open Parser.Command in
/--
Declares a binder predicate.  For example:
```
binder_predicate x " > " y:term => `($x > $y)
```
-/
syntax (name := binderPredicate) (docComment)? (Parser.Term.attributes)? (attrKind)?
  "binder_predicate" optNamedName optNamedPrio ppSpace ident (ppSpace macroArg)* " => "
    term : command

-- adapted from the macro macro
open Elab Command in
elab_rules : command
  | `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind binder_predicate%$tk
      $[(name := $name?)]? $[(priority := $prio?)]? $x $args:macroArg* => $rhs) => do
    let prio ← liftMacroM do evalOptPrio prio?
    let (stxParts, patArgs) := (← args.mapM expandMacroArg).unzip
    let name ← match name? with
      | some name => pure name.getId
      | none => liftMacroM do mkNameFromParserSyntax `binderTerm (mkNullNode stxParts)
    let nameTk := name?.getD (mkIdentFrom tk name)
    /- The command `syntax [<kind>] ...` adds the current namespace to the syntax node kind.
    So, we must include current namespace when we create a pattern for the following
    `macro_rules` commands. -/
    let pat : TSyntax `binderPred := ⟨(mkNode ((← getCurrNamespace) ++ name) patArgs).1⟩
    elabCommand <|<-
    `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind syntax%$tk
        (name := $nameTk) (priority := $(quote prio)) $[$stxParts]* : binderPred
      $[$doc?:docComment]? macro_rules%$tk
        | `(satisfies_binder_pred% $$($x):term $pat:binderPred) => $rhs)

open Linter.MissingDocs Parser Term in
/-- Missing docs handler for `binder_predicate` -/
@[missing_docs_handler binderPredicate]
def checkBinderPredicate : SimpleHandler := fun stx => do
  if stx[0].isNone && stx[2][0][0].getKind != ``«local» then
    if stx[4].isNone then lint stx[3] "binder predicate"
    else lintNamed stx[4][0][3] "binder predicate"

/-- Declare `∃ x > y, ...` as syntax for `∃ x, x > y ∧ ...` -/
binder_predicate x " > " y:term => `($x > $y)
/-- Declare `∃ x ≥ y, ...` as syntax for `∃ x, x ≥ y ∧ ...` -/
binder_predicate x " ≥ " y:term => `($x ≥ $y)
/-- Declare `∃ x < y, ...` as syntax for `∃ x, x < y ∧ ...` -/
binder_predicate x " < " y:term => `($x < $y)
/-- Declare `∃ x ≤ y, ...` as syntax for `∃ x, x ≤ y ∧ ...` -/
binder_predicate x " ≤ " y:term => `($x ≤ $y)
/-- Declare `∃ x ≠ y, ...` as syntax for `∃ x, x ≠ y ∧ ...` -/
binder_predicate x " ≠ " y:term => `($x ≠ $y)
````
