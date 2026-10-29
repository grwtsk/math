-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqCnstr.Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EqCnstr.Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/AC/Types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.AC
public import Std.Data.HashMap
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.AC.Seq

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqCnstr.Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de

public section
namespace Lean.Meta.Grind.AC
open Lean.Grind

deriving instance Hashable for AC.Expr, AC.Seq

mutual
structure EqCnstr where
  lhs : AC.Seq
  rhs : AC.Seq
  h   : EqCnstrProof
  id  : Nat

inductive EqCnstrProof where
  | core (a b : Expr) (ea eb : AC.Expr)
  | erase_dup (c : EqCnstr)
  | erase0 (c : EqCnstr)
  | swap (c : EqCnstr)
  | simp_exact (lhs : Bool) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | simp_ac (lhs : Bool) (s : AC.Seq) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | simp_suffix (lhs : Bool) (s : AC.Seq) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | simp_prefix (lhs : Bool) (s : AC.Seq) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | simp_middle (lhs : Bool) (s₁ s₂ : AC.Seq) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | superpose_ac (r₁ c r₂ : AC.Seq) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | superpose (p s c : AC.Seq) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | superpose_ac_idempotent (x : AC.Var) (c₁ : EqCnstr)
  | superpose_head_idempotent (x : AC.Var) (c₁ : EqCnstr)
  | superpose_tail_idempotent (x : AC.Var) (c₁ : EqCnstr)
  -- The following constructors are for equality propagation
  | refl (s : AC.Seq)
  | erase_dup_rhs (c : EqCnstr)
  | erase0_rhs (c : EqCnstr)
end

instance : Inhabited EqCnstrProof where
  default := .core default default default default

instance : Inhabited EqCnstr where
  default := { lhs := default, rhs := default, h := default, id := 0 }

protected def EqCnstr.compare (c₁ c₂ : EqCnstr) : Ordering :=
  (compare c₁.lhs.length c₂.lhs.length) |>.then
  (compare c₁.id c₂.id)

abbrev Queue : Type := Std.TreeSet EqCnstr EqCnstr.compare

mutual
structure DiseqCnstr where
  lhs : AC.Seq
  rhs : AC.Seq
  h   : DiseqCnstrProof

inductive DiseqCnstrProof where
  | core (a b : Expr) (ea eb : AC.Expr)
  | erase_dup (c : DiseqCnstr)
  | erase0 (c : DiseqCnstr)
  | simp_exact (lhs : Bool) (c₁ : EqCnstr) (c₂ : DiseqCnstr)
  | simp_ac (lhs : Bool) (s : AC.Seq) (c₁ : EqCnstr) (c₂ : DiseqCnstr)
  | simp_suffix (lhs : Bool) (s : AC.Seq) (c₁ : EqCnstr) (c₂ : DiseqCnstr)
  | simp_prefix (lhs : Bool) (s : AC.Seq) (c₁ : EqCnstr) (c₂ : DiseqCnstr)
  | simp_middle (lhs : Bool) (s₁ s₂ : AC.Seq) (c₁ : EqCnstr) (c₂ : DiseqCnstr)
end

structure Struct where
  id              : Nat
  type            : Expr
  /-- Cached `getLevel type` -/
  u               : Level
  op              : Expr
  neutral?        : Option Expr
  assocInst       : Expr
  idempotentInst? : Option Expr
  commInst?       : Option Expr
  neutralInst?    : Option Expr
  /-- Next unique id for `EqCnstr`s. -/
  nextId         : Nat := 0
  /--
  Mapping from variables to their denotations.
  Remark each variable can be in only one ring.
  -/
  vars             : PArray Expr := {}
  /-- Mapping from `Expr` to a variable representing it. -/
  varMap           : PHashMap ExprPtr AC.Var := {}
  /-- Mapping from Lean expressions to their representations as `AC.Expr` -/
  denote           : PHashMap ExprPtr AC.Expr := {}
  /-- `denoteEntries` is `denote` as a `PArray` for deterministic traversal. -/
  denoteEntries    : PArray (Expr × AC.Expr) := {}
  /-- Equations to process. -/
  queue            : Queue := {}
  /-- Processed equations. -/
  basis            : List EqCnstr := {}
  /-- Disequalities. -/
  diseqs           : PArray DiseqCnstr := {}
  /--
  If `recheck` is `true`, then new equalities have been added to the basis since we checked
  disequalities and implied equalities.
  -/
  recheck        : Bool := false
  deriving Inhabited

/-- State for all associative operators detected by `grind`. -/
structure State where
  /--
  Structures/operators detected.
  We expect to find a small number of associative operators in a given goal. Thus, using `Array` is fine here.
  -/
  structs : Array Struct := {}
  /--
  Mapping from operators to its "operator id". We cache failures using `none`.
  `opIdOf[op]` is `some id`, then `id < structs.size`. -/
  opIdOf : PHashMap ExprPtr (Option Nat) := {}
  /--
  Mapping from expressions/terms to their structure ids.
  Recall that term may be the argument of different operators. -/
  exprToOpIds : PHashMap ExprPtr (List Nat) := {}
  steps := 0
  deriving Inhabited

builtin_initialize acExt : SolverExtension State ← registerSolverExtension (return {})

end Lean.Meta.Grind.AC
