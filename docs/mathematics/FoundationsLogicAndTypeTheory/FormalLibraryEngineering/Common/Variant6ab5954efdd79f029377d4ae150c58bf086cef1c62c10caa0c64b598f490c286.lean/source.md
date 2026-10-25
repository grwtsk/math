# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Common.Variant6ab5954efdd79f029377d4ae150c58bf086cef1c62c10caa0c64b598f490c286

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8605725e2b9118bcd0456a48017d7c666420ebe` · SHA-256 `8588bda97059596ad02476c078603685e02b1e9abe5dfa16051fc7a9e9d6a90f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant57645902ef8ce633378303ef7f2f0e6017fe1ba973a1c2ec58eeed1771cb4e5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57645902ef8ce633378303ef7f2f0e6017fe1ba973a1c2ec58eeed1771cb4e5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant57645902ef8ce633378303ef7f2f0e6017fe1ba973a1c2ec58eeed1771cb4e5e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"57645902ef8ce633378303ef7f2f0e6017fe1ba973a1c2ec58eeed1771cb4e5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Common.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/

-- First import Aesop, Qq, and Plausible
import Aesop
import Qq
import Plausible

-- Tools for analysing imports, like `#find_home`, `#minimize_imports`, ...
import ImportGraph.Imports

-- Import common Batteries tactics and commands
import Batteries.Tactic.Basic
import Batteries.Tactic.HelpCmd

-- Import syntax for leansearch
import LeanSearchClient

-- Import Mathlib-specific linters.
import Mathlib.Tactic.Linter.Lint

-- Now import all tactics defined in Mathlib that do not require theory files.
import Mathlib.Tactic.ApplyCongr
-- ApplyFun imports `Mathlib/Order/Monotone/Basic.lean`
-- import Mathlib.Tactic.ApplyFun
import Mathlib.Tactic.ApplyAt
import Mathlib.Tactic.ApplyWith
import Mathlib.Tactic.Basic
import Mathlib.Tactic.ByContra
import Mathlib.Tactic.Cases
import Mathlib.Tactic.CasesM
import Mathlib.Tactic.Check
import Mathlib.Tactic.Choose
import Mathlib.Tactic.ClearExclamation
import Mathlib.Tactic.ClearExcept
import Mathlib.Tactic.Clear_
import Mathlib.Tactic.Coe
import Mathlib.Tactic.CongrExclamation
import Mathlib.Tactic.CongrM
import Mathlib.Tactic.Constructor
import Mathlib.Tactic.Contrapose
import Mathlib.Tactic.Conv
import Mathlib.Tactic.Convert
import Mathlib.Tactic.DefEqTransformations
import Mathlib.Tactic.DeprecateTo
import Mathlib.Tactic.ErwQuestion
import Mathlib.Tactic.Eqns
import Mathlib.Tactic.ExistsI
import Mathlib.Tactic.ExtractGoal
import Mathlib.Tactic.FailIfNoProgress
import Mathlib.Tactic.Find
-- `gcongr` currently imports `Algebra.Order.Field.Power` and thence `Algebra.CharZero.Lemmas`
-- Hopefully this can be rearranged.
-- import Mathlib.Tactic.GCongr
import Mathlib.Tactic.GeneralizeProofs
import Mathlib.Tactic.GuardGoalNums
import Mathlib.Tactic.GuardHypNums
import Mathlib.Tactic.HigherOrder
import Mathlib.Tactic.Hint
import Mathlib.Tactic.InferParam
import Mathlib.Tactic.Inhabit
import Mathlib.Tactic.IrreducibleDef
import Mathlib.Tactic.Lift
import Mathlib.Tactic.Linter
import Mathlib.Tactic.MkIffOfInductiveProp
-- NormNum imports `Algebra.Order.Invertible`, `Data.Int.Basic`, `Data.Nat.Cast.Commute`
-- import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NthRewrite
import Mathlib.Tactic.Observe
import Mathlib.Tactic.OfNat
-- `positivity` imports `Data.Nat.Factorial.Basic`, but hopefully this can be rearranged.
-- import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Propose
import Mathlib.Tactic.Push
import Mathlib.Tactic.RSuffices
import Mathlib.Tactic.Recover
import Mathlib.Tactic.Relation.Rfl
import Mathlib.Tactic.Rename
import Mathlib.Tactic.RenameBVar
import Mathlib.Tactic.Says
import Mathlib.Tactic.ScopedNS
import Mathlib.Tactic.Set
import Mathlib.Tactic.SimpIntro
import Mathlib.Tactic.SimpRw
import Mathlib.Tactic.Simps.Basic
import Mathlib.Tactic.SplitIfs
import Mathlib.Tactic.Spread
import Mathlib.Tactic.Subsingleton
import Mathlib.Tactic.Substs
import Mathlib.Tactic.SuccessIfFailWithMsg
import Mathlib.Tactic.SudoSetOption
import Mathlib.Tactic.SwapVar
import Mathlib.Tactic.Tauto
import Mathlib.Tactic.TermCongr
-- TFAE imports `Mathlib/Data/List/TFAE.lean` and thence `Mathlib/Data/List/Basic.lean`.
-- import Mathlib.Tactic.TFAE
import Mathlib.Tactic.ToExpr
import Mathlib.Tactic.ToLevel
import Mathlib.Tactic.Trace
import Mathlib.Tactic.TypeCheck
import Mathlib.Tactic.UnsetOption
import Mathlib.Tactic.Use
import Mathlib.Tactic.Variable
import Mathlib.Tactic.Widget.Calc
import Mathlib.Tactic.Widget.CongrM
import Mathlib.Tactic.Widget.Conv
import Mathlib.Tactic.WLOG
import Mathlib.Util.AssertExists
import Mathlib.Util.CountHeartbeats
import Mathlib.Util.TransImports
import Mathlib.Util.WhatsNew

/-!
This file imports all tactics which do not have significant theory imports,
and hence can be imported very low in the theory import hierarchy,
thereby making tactics widely available without needing specific imports.

We include some commented out imports here, with an explanation of their theory requirements,
to save some time for anyone wondering why they are not here.

We also import theory-free linters, commands, and utilities which are useful to have low in the
import hierarchy.
-/

/-!
# Register tactics with `hint`. Tactics are tried in reverse registration order.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant57645902ef8ce633378303ef7f2f0e6017fe1ba973a1c2ec58eeed1771cb4e5e

section Hint

register_hint trivial
register_hint tauto
register_hint split
register_hint intro
register_hint aesop
register_hint simp_all?
register_hint exact?
register_hint decide
register_hint omega

end Hint
```
