-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalNatExpr.Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalNatExpr.Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Tactic/Simprocs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Meta.Eval
import Lean.Parser.Command
import Mathlib.Data.Nat.Count
import Mathlib.Algebra.Group.Nat.Even

/-
This file defines the `count_ofNat` simproc, which simplifies `Nat.count` expressions where the range is a literal.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalNatExpr.Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36

open Lean Meta in
unsafe def evalNatExpr (e : Expr) : MetaM (Option Nat) := do
  let ty ← inferType e
  let .const ``Nat _ := ty | return none
  let val ← Lean.Meta.evalExpr Nat (mkConst ``Nat) e
  return some val

open Lean Meta in
simproc_decl count_ofNat (Nat.count _ _) := fun e => do
  let some val ← unsafe evalNatExpr e | return .continue
  let result := mkNatLit val
  let proof ← mkDecideProof (← mkEq e result)
  return .done { expr := result, proof? := some proof }

lemma count_201_true_eq_201 : Nat.count (fun _ ↦ True) 201 = 201 := by
  simp only [count_ofNat]

lemma count_even_201_eq_101 : Nat.count Even 201 = 101 := by
  simp only [count_ofNat]

lemma count_even_2010_eq_1010 : Nat.count Even 2010 = 1005 := by
  simp only [count_ofNat]

/-- info: 'count_even_201_eq_101' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms count_even_201_eq_101
