# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Elab.Variante4721d1a33bbd6462308c5b6b7d73cc8648a31ae31d16a7e98202ac7ead523b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ba5162a083c7564c1f2be7b6bda8beb434df2ad` · SHA-256 `e2eb8b83ec13d948b6c018760755e7b56cc6ec91b3e9b508fc8f66db6fb96af9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Import.Variantd1be3b25402b7c8687fd02a7fa14581b31e7815f2f47f3092a3b58901da4c202","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1be3b25402b7c8687fd02a7fa14581b31e7815f2f47f3092a3b58901da4c202","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Import.Variantd1be3b25402b7c8687fd02a7fa14581b31e7815f2f47f3092a3b58901da4c202","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d1be3b25402b7c8687fd02a7fa14581b31e7815f2f47f3092a3b58901da4c202","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Import
public import Lean.Elab.Exception
public import Lean.Elab.Config
public import Lean.Elab.Command
public import Lean.Elab.Term
public import Lean.Elab.App
public import Lean.Elab.Binders
public import Lean.Elab.BinderPredicates
public import Lean.Elab.LetRec
public import Lean.Elab.Frontend
public import Lean.Elab.BuiltinNotation
public import Lean.Elab.Declaration
public import Lean.Elab.Tactic
public import Lean.Elab.Match
-- HACK: must come after `Match` because builtin elaborators (for `match` in this case) do not take priorities
public import Lean.Elab.Quotation
public import Lean.Elab.Syntax
public import Lean.Elab.Do
public import Lean.Elab.StructInst
public import Lean.Elab.StructInstHint
public import Lean.Elab.MutualInductive
public import Lean.Elab.Inductive
public import Lean.Elab.Structure
public import Lean.Elab.Print
public import Lean.Elab.MutualDef
public import Lean.Elab.AuxDef
public import Lean.Elab.PreDefinition
public import Lean.Elab.Deriving
public import Lean.Elab.DeclarationRange
public import Lean.Elab.Extra
public import Lean.Elab.GenInjective
public import Lean.Elab.BuiltinTerm
public import Lean.Elab.Arg
public import Lean.Elab.DeprecatedArg
public import Lean.Elab.PatternVar
public import Lean.Elab.ElabRules
public import Lean.Elab.Macro
public import Lean.Elab.Notation
public import Lean.Elab.Mixfix
public import Lean.Elab.MacroRules
public import Lean.Elab.BuiltinCommand
public import Lean.Elab.AssertExists
public import Lean.Elab.Command.WithWeakNamespace
public import Lean.Elab.BuiltinEvalCommand
public import Lean.Elab.RecAppSyntax
public import Lean.Elab.Eval
public import Lean.Elab.Calc
public import Lean.Elab.InheritDoc
public import Lean.Elab.ParseImportsFast
public import Lean.Elab.GuardMsgs
public import Lean.Elab.CheckTactic
public import Lean.Elab.MatchExpr
public import Lean.Elab.Tactic.Doc
public import Lean.Elab.Time
public import Lean.Elab.RecommendedSpelling
public import Lean.Elab.InfoTrees
public import Lean.Elab.ErrorExplanation
public import Lean.Elab.DocString
public import Lean.Elab.DocString.Builtin
public import Lean.Elab.Parallel
public import Lean.Elab.BuiltinDo
public import Lean.Elab.Idbg
public import Lean.Elab.ConfigEval
public import Lean.Elab.ConfigEval.Builtins
public import Lean.Elab.Tactic.Config

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Import.Variantd1be3b25402b7c8687fd02a7fa14581b31e7815f2f47f3092a3b58901da4c202

```
