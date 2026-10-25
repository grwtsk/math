# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Guard.Variantc2b05c4ce51b80095b21984b449d25a831a82bcca604bb6331d8acd8e18d4aab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `176a10fed9de0a9203cdb2a62275e4f9d9f0b192` · SHA-256 `f918765fe5c98e5eb40e35d2c68326ae74ea9488abb5375aae8b1fde9459daf7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variant5d7c66cad55e7de51b2a13a8aa6704ee3aa4eaa79ef1dbb6491a43da61d324fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d7c66cad55e7de51b2a13a8aa6704ee3aa4eaa79ef1dbb6491a43da61d324fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Conv.Variant5d7c66cad55e7de51b2a13a8aa6704ee3aa4eaa79ef1dbb6491a43da61d324fd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5d7c66cad55e7de51b2a13a8aa6704ee3aa4eaa79ef1dbb6491a43da61d324fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Guard.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

prelude
public import Init.Conv


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variant5d7c66cad55e7de51b2a13a8aa6704ee3aa4eaa79ef1dbb6491a43da61d324fd

public section

namespace Lean.Parser

/-- Reducible defeq matching for `guard_hyp` types -/
syntax colonR := " : "
/-- Default-reducibility defeq matching for `guard_hyp` types -/
syntax colonD := " :~ "
/-- Syntactic matching for `guard_hyp` types -/
syntax colonS := " :ₛ "
/-- Alpha-eq matching for `guard_hyp` types -/
syntax colonA := " :ₐ "
/-- The `guard_hyp` type specifier, one of `:`, `:~`, `:ₛ`, `:ₐ` -/
syntax colon := colonR <|> colonD <|> colonS <|> colonA

/-- Reducible defeq matching for `guard_hyp` values -/
syntax colonEqR := " := "
/-- Default-reducibility defeq matching for `guard_hyp` values -/
syntax colonEqD := " :=~ "
/-- Syntactic matching for `guard_hyp` values -/
syntax colonEqS := " :=ₛ "
/-- Alpha-eq matching for `guard_hyp` values -/
syntax colonEqA := " :=ₐ "
/-- The `guard_hyp` value specifier, one of `:=`, `:=~`, `:=ₛ`, `:=ₐ` -/
syntax colonEq := colonEqR <|> colonEqD <|> colonEqS <|> colonEqA

/-- Reducible defeq matching for `guard_expr` -/
syntax equalR := " = "
/-- Default-reducibility defeq matching for `guard_expr` -/
syntax equalD := " =~ "
/-- Syntactic matching for `guard_expr` -/
syntax equalS := " =ₛ "
/-- Alpha-eq matching for `guard_expr` -/
syntax equalA := " =ₐ "
/-- The `guard_expr` matching specifier, one of `=`, `=~`, `=ₛ`, `=ₐ` -/
syntax equal := equalR <|> equalD <|> equalS <|> equalA

namespace Tactic

/--
Tactic to check equality of two expressions.
* `guard_expr e = e'` checks that `e` and `e'` are defeq at reducible transparency.
* `guard_expr e =~ e'` checks that `e` and `e'` are defeq at default transparency.
* `guard_expr e =ₛ e'` checks that `e` and `e'` are syntactically equal.
* `guard_expr e =ₐ e'` checks that `e` and `e'` are alpha-equivalent.

Both `e` and `e'` are elaborated then have their metavariables instantiated before the equality
check. Their types are unified (using `isDefEqGuarded`) before synthetic metavariables are
processed, which helps with default instance handling.
-/
syntax (name := guardExpr) "guard_expr " term:51 equal term : tactic
@[inherit_doc guardExpr]
syntax (name := guardExprConv) "guard_expr " term:51 equal term : conv

/--
Tactic to check that the target agrees with a given expression.
* `guard_target = e` checks that the target is defeq at reducible transparency to `e`.
* `guard_target =~ e` checks that the target is defeq at default transparency to `e`.
* `guard_target =ₛ e` checks that the target is syntactically equal to `e`.
* `guard_target =ₐ e` checks that the target is alpha-equivalent to `e`.

The term `e` is elaborated with the type of the goal as the expected type, which is mostly
useful within `conv` mode.
-/
syntax (name := guardTarget) "guard_target " equal term : tactic
@[inherit_doc guardTarget]
syntax (name := guardTargetConv) "guard_target " equal term : conv

/--
Tactic to check that a named hypothesis has a given type and/or value.

* `guard_hyp h : t` checks the type up to reducible defeq,
* `guard_hyp h :~ t` checks the type up to default defeq,
* `guard_hyp h :ₛ t` checks the type up to syntactic equality,
* `guard_hyp h :ₐ t` checks the type up to alpha equality.
* `guard_hyp h := v` checks value up to reducible defeq,
* `guard_hyp h :=~ v` checks value up to default defeq,
* `guard_hyp h :=ₛ v` checks value up to syntactic equality,
* `guard_hyp h :=ₐ v` checks the value up to alpha equality.

The value `v` is elaborated using the type of `h` as the expected type.
-/
syntax (name := guardHyp)
  "guard_hyp " term:max (colon term)? (colonEq term)? : tactic
@[inherit_doc guardHyp] syntax (name := guardHypConv)
  "guard_hyp " term:max (colon term)? (colonEq term)? : conv

end Tactic

namespace Command

/--
Command to check equality of two expressions.
* `#guard_expr e = e'` checks that `e` and `e'` are defeq at reducible transparency.
* `#guard_expr e =~ e'` checks that `e` and `e'` are defeq at default transparency.
* `#guard_expr e =ₛ e'` checks that `e` and `e'` are syntactically equal.
* `#guard_expr e =ₐ e'` checks that `e` and `e'` are alpha-equivalent.

This is a command version of the `guard_expr` tactic. -/
syntax (name := guardExprCmd) "#guard_expr " term:51 equal term : command

/--
Command to check that an expression evaluates to `true`.

`#guard e` elaborates `e` ensuring its type is `Bool` then evaluates `e` and checks that
the result is `true`. The term is elaborated *without* variables declared using `variable`, since
these cannot be evaluated.

Since this makes use of coercions, so long as a proposition `p` is decidable, one can write
`#guard p` rather than `#guard decide p`. A consequence to this is that if there is decidable
equality one can write `#guard a = b`. Note that this is not exactly the same as checking
if `a` and `b` evaluate to the same thing since it uses the `DecidableEq` instance to do
the evaluation.

Note: this uses the untrusted evaluator, so `#guard` passing is *not* a proof that the
expression equals `true`. -/
syntax (name := guardCmd) "#guard " term : command

end Command

end Lean.Parser
```
