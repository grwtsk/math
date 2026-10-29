-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant9f552fa3f469e00dd3c076423e4e272064213058359caebf3cbe78e0e1e6e286","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f552fa3f469e00dd3c076423e4e272064213058359caebf3cbe78e0e1e6e286","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variant9f552fa3f469e00dd3c076423e4e272064213058359caebf3cbe78e0e1e6e286","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9f552fa3f469e00dd3c076423e4e272064213058359caebf3cbe78e0e1e6e286","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Elab.Tactic.Basic
public import Lean.Elab.Tactic.ElabTerm
public import Lean.Elab.Tactic.Induction
public import Lean.Elab.Tactic.Generalize
public import Lean.Elab.Tactic.Injection
public import Lean.Elab.Tactic.Match
public import Lean.Elab.Tactic.Rewrite
public import Lean.Elab.Tactic.Location
public import Lean.Elab.Tactic.SimpTrace
public import Lean.Elab.Tactic.Simp
public import Lean.Elab.Tactic.Simproc
public import Lean.Elab.Tactic.CbvSimproc
public import Lean.Elab.Tactic.BuiltinTactic
public import Lean.Elab.Tactic.Split
public import Lean.Elab.Tactic.Conv
public import Lean.Elab.Tactic.Delta
public import Lean.Elab.Tactic.Meta
public import Lean.Elab.Tactic.Unfold
public import Lean.Elab.Tactic.Calc
public import Lean.Elab.Tactic.Congr
public import Lean.Elab.Tactic.Guard
public import Lean.Elab.Tactic.RCases
public import Lean.Elab.Tactic.Repeat
public import Lean.Elab.Tactic.Ext
public import Lean.Elab.Tactic.Change
public import Lean.Elab.Tactic.FalseOrByContra
public import Lean.Elab.Tactic.Omega
public import Lean.Elab.Tactic.Simpa
public import Lean.Elab.Tactic.NormCast
public import Lean.Elab.Tactic.Symm
public import Lean.Elab.Tactic.SolveByElim
public import Lean.Elab.Tactic.LibrarySearch
public import Lean.Elab.Tactic.ShowTerm
public import Lean.Elab.Tactic.Rfl
public import Lean.Elab.Tactic.Rewrites
public import Lean.Elab.Tactic.DiscrTreeKey
public import Lean.Elab.Tactic.BVDecide
public import Lean.Elab.Tactic.BoolToPropSimps
public import Lean.Elab.Tactic.Classical
public import Lean.Elab.Tactic.Impossible
public import Lean.Elab.Tactic.Grind
public import Lean.Elab.Tactic.Monotonicity
public import Lean.Elab.Tactic.Try
public import Lean.Elab.Tactic.AutoTry
public import Lean.Elab.Tactic.AsAuxLemma
public import Lean.Elab.Tactic.TreeTacAttr
public import Lean.Elab.Tactic.ExposeNames
public import Lean.Elab.Tactic.SimpArith
public import Lean.Elab.Tactic.Show
public import Lean.Elab.Tactic.Lets
public import Lean.Elab.Tactic.Do
public import Lean.Elab.Tactic.Decide
public import Lean.Elab.Tactic.Cbv

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant9f552fa3f469e00dd3c076423e4e272064213058359caebf3cbe78e0e1e6e286

