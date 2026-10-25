# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Common.Variantb1977f41927b382e1b3957f83405cea04788c3d6978d51ab42a9f36c503acd7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07b32cfea4ccc0bd8c7331cec2201c087396a30a` · SHA-256 `86218a9fce7c96b6bd5f34e9aa6a314f718c2ad8afe2f62e6277ab28a23f7fa7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant78d5ff54dd061767b329f041e615bceba418ee0a38ad0c957715ff4ad191913f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78d5ff54dd061767b329f041e615bceba418ee0a38ad0c957715ff4ad191913f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant78d5ff54dd061767b329f041e615bceba418ee0a38ad0c957715ff4ad191913f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"78d5ff54dd061767b329f041e615bceba418ee0a38ad0c957715ff4ad191913f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/Common.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/

/-
This file imports all tactics which do not have significant theory imports,
and hence can be imported very low in the theory import hierarchy,
thereby making tactics widely available without needing specific imports.

We include some commented out imports here, with an explanation of their theory requirements,
to save some time for anyone wondering why they are not here.
-/

-- First import Aesop and Qq
import Aesop
import Qq

-- Now import all tactics defined in Mathlib that do not require theory files.
import Mathlib.Mathport.Rename
import Mathlib.Tactic.ApplyCongr
-- ApplyFun imports `Mathlib.Order.Monotone.Basic`
-- import Mathlib.Tactic.ApplyFun
import Mathlib.Tactic.ApplyWith
import Mathlib.Tactic.Basic
import Mathlib.Tactic.ByContra
import Mathlib.Tactic.Cases
import Mathlib.Tactic.CasesM
import Mathlib.Tactic.Choose
import Mathlib.Tactic.Classical
import Mathlib.Tactic.Clear!
import Mathlib.Tactic.ClearExcept
import Mathlib.Tactic.Clear_
import Mathlib.Tactic.Coe
import Mathlib.Tactic.Congr!
import Mathlib.Tactic.Congrm
import Mathlib.Tactic.Constructor
import Mathlib.Tactic.Contrapose
import Mathlib.Tactic.Conv
import Mathlib.Tactic.Convert
import Mathlib.Tactic.DefEqTransformations
import Mathlib.Tactic.DeriveToExpr
import Mathlib.Tactic.Eqns
import Mathlib.Tactic.Existsi
import Mathlib.Tactic.ExtractGoal
import Mathlib.Tactic.ExtractLets
import Mathlib.Tactic.FailIfNoProgress
import Mathlib.Tactic.Find
import Mathlib.Tactic.GeneralizeProofs
import Mathlib.Tactic.GuardGoalNums
import Mathlib.Tactic.GuardHypNums
import Mathlib.Tactic.Have
import Mathlib.Tactic.HelpCmd
import Mathlib.Tactic.HigherOrder
import Mathlib.Tactic.InferParam
import Mathlib.Tactic.Inhabit
import Mathlib.Tactic.IrreducibleDef
import Mathlib.Tactic.LabelAttr
import Mathlib.Tactic.LeftRight
import Mathlib.Tactic.LibrarySearch
import Mathlib.Tactic.Lift
import Mathlib.Tactic.Lint
import Mathlib.Tactic.MkIffOfInductiveProp
-- NormCast imports `Mathlib.Algebra.Group.Defs`
-- import Mathlib.Tactic.NormCast
-- NormNum imports `Mathlib.Algebra.GroupPower.Lemmas` and `Mathlib.Algebra.Order.Invertible`
-- import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NthRewrite
import Mathlib.Tactic.Observe
import Mathlib.Tactic.PermuteGoals
import Mathlib.Tactic.PrintPrefix
import Mathlib.Tactic.ProjectionNotation
import Mathlib.Tactic.Propose
import Mathlib.Tactic.PushNeg
import Mathlib.Tactic.RSuffices
import Mathlib.Tactic.Recover
import Mathlib.Tactic.Relation.Rfl
import Mathlib.Tactic.Relation.Symm
import Mathlib.Tactic.Relation.Trans
import Mathlib.Tactic.Rename
import Mathlib.Tactic.RenameBVar
import Mathlib.Tactic.Replace
import Mathlib.Tactic.Rewrites
import Mathlib.Tactic.RunCmd
import Mathlib.Tactic.Says
import Mathlib.Tactic.ScopedNS
import Mathlib.Tactic.Set
import Mathlib.Tactic.SimpIntro
import Mathlib.Tactic.SimpRw
import Mathlib.Tactic.Simps.Basic
-- SlimCheck has unnecessarily complicated imports, and could be streamlined.
-- `Gen` / `Testable` / `Sampleable` instances for types should be out in the library,
-- rather than the theory for those types being imported into `SlimCheck`.
-- import Mathlib.Tactic.SlimCheck
import Mathlib.Tactic.SolveByElim
import Mathlib.Tactic.SplitIfs
import Mathlib.Tactic.Spread
import Mathlib.Tactic.Substs
import Mathlib.Tactic.SuccessIfFailWithMsg
import Mathlib.Tactic.SudoSetOption
import Mathlib.Tactic.SwapVar
import Mathlib.Tactic.Tauto
import Mathlib.Tactic.TermCongr
-- TFAE imports `Mathlib.Data.List.TFAE` and thence `Mathlib.Data.List.Basic`.
-- import Mathlib.Tactic.TFAE
import Mathlib.Tactic.ToExpr
import Mathlib.Tactic.ToLevel
import Mathlib.Tactic.Trace
import Mathlib.Tactic.TryThis
import Mathlib.Tactic.TypeCheck
import Mathlib.Tactic.UnsetOption
import Mathlib.Tactic.Use
import Mathlib.Tactic.Variable
import Mathlib.Tactic.WLOG
import Mathlib.Util.CountHeartbeats
import Mathlib.Util.Imports
import Mathlib.Util.WhatsNew

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant78d5ff54dd061767b329f041e615bceba418ee0a38ad0c957715ff4ad191913f

```
