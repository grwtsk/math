# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variantbd934da4e08c329aeb7c4cdef4c064c8c65a771e2b9043e585e823d7ec4dc07c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d963abd86e4fac12fe4b9c5f315b440e7d900187` · SHA-256 `739971911ace0481bb0d5ff6c9ef77da7dc42a49789371f66a244c985a8aa4ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalTerm.Variant1f7d2b8810bd9310e01ceaaea4a1466b15169646780451733858186bba1ae65f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f7d2b8810bd9310e01ceaaea4a1466b15169646780451733858186bba1ae65f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalTerm.Variant1f7d2b8810bd9310e01ceaaea4a1466b15169646780451733858186bba1ae65f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1f7d2b8810bd9310e01ceaaea4a1466b15169646780451733858186bba1ae65f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/ConfigEval/Types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Elab.Term.TermElabM
public import Lean.Parser.Term

/-!
# Types for configuration elaboration
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalTerm.Variant1f7d2b8810bd9310e01ceaaea4a1466b15169646780451733858186bba1ae65f

public section

namespace Lean.Elab.ConfigEval

open Term

/--
Class for evaluation of `Term` syntax directly to a runtime value.
-/
class EvalTerm (α : Type) where
  /--
  Direct evaluation of `Term` syntax, avoiding term elaboration.
  Instances should use `throwUnsupportedSyntax` to signal that the syntax is not recognized.
  Instances shouldn't generally throw other exceptions.

  Evaluation is allowed to imagine that certain coercions are implicitly inserted.
  For example, the `Option Int` instance is allowed to recognize `1` as an `Option Int`
  even though term elaboration would fail here. This allowance should be used lightly,
  since generally `EvalTerm` is used as the fast path, and when using the `EvalExpr`
  backup, such expressions will no longer be recognized.

  Implementations should add `TermInfo` when the info is enabled.
  The `Expr` return value is to support constructing such expressions in combinators.
  -/
  evalTerm : Term → TermElabM (α × Expr)
  /--
  A type that can be used when constructing expression for the `TermInfo`.
  -/
  typeExpr : Expr

export EvalTerm (evalTerm)

builtin_initialize unsupportedExprExceptionId : InternalExceptionId ← registerInternalExceptionId `ConfigEval.unsupportedExpr

def throwUnsupportedExpr {m α} [MonadExceptOf Exception m] : m α :=
  throw <| Exception.internal unsupportedExprExceptionId

/--
Class for evaluation of an expression to a runtime value.
-/
class EvalExpr (α : Type) where
  /--
  Evaluation of an elaborated expression.
  If the expression is not recognizable, then the instance may throw an exception.
  They can throw `ConfigEval.throwUnsupportedExpr` to signal that a generic error should be reported.

  The provided expression does not contain expression metavariables or `sorry`, but
  level metavariables may be present. We assume these do not affect evaluation.
  If `expectedType?` is provided, then the expression is coerced as necessary to have this type.
  -/
  evalExpr : Expr → MetaM α
  /--
  The expected type to use when elaborating a term for use with this `EvalExpr` instance.
  If present, the expression will be coerced to this type.
  -/
  expectedType? : Option Expr

export EvalExpr (evalExpr)

/--
A view of a `Lean.Parser.Term.configItem`.
-/
structure ConfigItem where
  /-- Ref for the entire configuration item -/
  ref : Syntax
  /-- Ref for the option name itself. -/
  option : Ident
  /-- The configuration value. Usually this is a `Term`, but user-defined configuration items
  can use arbitrary syntax. For `+`/`-` booleans, this syntax is synthetic. -/
  value : Syntax
  /-- Whether this was using `+`/`-`, to be able to give a better error message on type mismatch.
  It also caches the value so we can skip evaluation for `Bool`, which is a very common case. -/
  bool? : Option Bool := none
  /-- The original option name (without macro scopes), even after shifting. -/
  origOptionName : Name := option.getId.eraseMacroScopes
  /-- The `option` identifier split into components, without macro scopes.
  This allows us to pull off components one at a time if we have hierarchical configuration options. -/
  optionComps : List Syntax := Lean.Syntax.identComponents option
  /-- Previous root components of `option` in reverse order, collecting results from `ConfigItem.shift`. -/
  prevOptionComps : List Syntax := []

/--
An evaluator for updating a configuration object using configuration items.

This is not a class. In practice, it might be composed out of evaluators or otherwise parameterized in a number of ways.
-/
structure EvalConfigItem (α : Type) where
  /--
  Evaluates setting the configuration item described by `item` in `config`.
  -/
  set (config : α) (item : ConfigItem) : TermElabM α

-- TODO
private structure ReflectConfigItems (α : Type) where
  /--
  Given a configuration, produces an array of configuration items representing it.
  -/
  reflect (config : α) : TermElabM (TSyntaxArray ``Parser.Term.configItem)

end Lean.Elab.ConfigEval
```
