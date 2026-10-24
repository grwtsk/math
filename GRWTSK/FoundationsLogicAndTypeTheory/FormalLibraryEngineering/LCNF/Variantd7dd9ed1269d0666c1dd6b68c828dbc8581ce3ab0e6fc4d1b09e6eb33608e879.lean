-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AlphaEqv.Variant76aeeee44b9bd8e0d8e1f5069a83ecbd36a955a33256dda368439cb272c561d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76aeeee44b9bd8e0d8e1f5069a83ecbd36a955a33256dda368439cb272c561d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AlphaEqv.Variant76aeeee44b9bd8e0d8e1f5069a83ecbd36a955a33256dda368439cb272c561d3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"76aeeee44b9bd8e0d8e1f5069a83ecbd36a955a33256dda368439cb272c561d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.AlphaEqv
public import Lean.Compiler.LCNF.Basic
public import Lean.Compiler.LCNF.Bind
public import Lean.Compiler.LCNF.Check
public import Lean.Compiler.LCNF.CompilerM
public import Lean.Compiler.LCNF.CSE
public import Lean.Compiler.LCNF.DependsOn
public import Lean.Compiler.LCNF.ElimDead
public import Lean.Compiler.LCNF.FixedParams
public import Lean.Compiler.LCNF.InferType
public import Lean.Compiler.LCNF.JoinPoints
public import Lean.Compiler.LCNF.LCtx
public import Lean.Compiler.LCNF.Level
public import Lean.Compiler.LCNF.Main
public import Lean.Compiler.LCNF.Passes
public import Lean.Compiler.LCNF.PassManager
public import Lean.Compiler.LCNF.PhaseExt
public import Lean.Compiler.LCNF.PrettyPrinter
public import Lean.Compiler.LCNF.PullFunDecls
public import Lean.Compiler.LCNF.PullLetDecls
public import Lean.Compiler.LCNF.ReduceJpArity
public import Lean.Compiler.LCNF.Simp
public import Lean.Compiler.LCNF.Specialize
public import Lean.Compiler.LCNF.SpecInfo
public import Lean.Compiler.LCNF.ToDecl
public import Lean.Compiler.LCNF.ToExpr
public import Lean.Compiler.LCNF.ToLCNF
public import Lean.Compiler.LCNF.Types
public import Lean.Compiler.LCNF.Util
public import Lean.Compiler.LCNF.ConfigOptions
public import Lean.Compiler.LCNF.MonoTypes
public import Lean.Compiler.LCNF.ToMono
public import Lean.Compiler.LCNF.MonadScope
public import Lean.Compiler.LCNF.Closure
public import Lean.Compiler.LCNF.LambdaLifting
public import Lean.Compiler.LCNF.ReduceArity
public import Lean.Compiler.LCNF.Probing
public import Lean.Compiler.LCNF.Irrelevant
public import Lean.Compiler.LCNF.SplitSCC

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AlphaEqv.Variant76aeeee44b9bd8e0d8e1f5069a83ecbd36a955a33256dda368439cb272c561d3

