-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CleanupSMul.Variant1d147fcccdd6893777d3bc529aecc11fc482ea8b91c4666660b741e90e8cec8e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d147fcccdd6893777d3bc529aecc11fc482ea8b91c4666660b741e90e8cec8e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CleanupSMul.Variant1d147fcccdd6893777d3bc529aecc11fc482ea8b91c4666660b741e90e8cec8e","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"1d147fcccdd6893777d3bc529aecc11fc482ea8b91c4666660b741e90e8cec8e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Algebra/AlgebraNF.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Arend Mellendijk. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arend Mellendijk
-/
module

public import Mathlib.Tactic.Algebra.Basic
public meta import Mathlib.Tactic.Algebra.Basic

/-! # The `algebra_nf` tactic

This file contains helper functions for the (currently unimplemented) `algebra_nf` tactic.

The definitions in this file are currently only used by `polynomial_nf`.
-/


namespace GRWTSK.Algebra.CleanupSMul.Variant1d147fcccdd6893777d3bc529aecc11fc482ea8b91c4666660b741e90e8cec8e

public meta section

open Lean Meta Qq Mathlib.Tactic.Ring

namespace Mathlib.Tactic.Algebra

/-- Clean up the normal form into a more human-friendly format. This does everything
  `RingNF.cleanup` does and also pulls the scalar multiplication from the end of of each term to
  the start. i.e. x * y * (r • 1) → r • (x * y)
  Used by `cleanup`. -/
def cleanupSMul (cfg : RingNF.Config) (r : Simp.Result) : MetaM Simp.Result := do
  let thms : SimpTheorems := {}
  let thms ← [``add_zero, ``add_assoc_rev, ``_root_.mul_one, ``mul_assoc_rev, ``_root_.pow_one,
    ``mul_neg, ``add_neg, ``one_smul, ``mul_smul_comm, ``Algebra.algebraMap_eq_smul_one
    ].foldlM (·.addConst ·) thms
  let thms ← [``nat_rawCast_0, ``nat_rawCast_1, ``nat_rawCast_2, ``int_rawCast_neg,
      ``nnrat_rawCast, ``rat_rawCast_neg].foldlM (·.addConst · (post := false)) thms
  let ctx ← Simp.mkContext { zetaDelta := cfg.zetaDelta }
    (simpTheorems := #[thms])
    (congrTheorems := ← getSimpCongrTheorems)
  pure <| ←
    r.mkEqTrans (← Simp.main r.expr ctx (methods := Lean.Meta.Simp.mkDefaultMethodsCore {})).1

/-- Turn scalar multiplication by an explicit constant in `R` into multiplication in `A`.

e.g. `(4 : ℚ) • x` becomes `4 * x` but `↑n • x` stays `↑n • x`.
-/
def cleanupConsts (cfg : RingNF.Config) (r : Simp.Result) : MetaM Simp.Result := do
  let thms : SimpTheorems := {}
  let thms ← [``add_zero, ``_root_.one_mul, ``_root_.mul_one,
    ``neg_mul, ``add_neg].foldlM (·.addConst ·) thms
  let thms ← [``ofNat_smul, ``neg_ofNat_smul, ``neg_1_smul, ``nnRat_ofNat_smul_1,
    ``nnRat_ofNat_smul_2, ``rat_ofNat_smul_1, ``rat_ofNat_smul_2
    ].foldlM (·.addConst · (post := false)) thms
  let ctx ← Simp.mkContext { zetaDelta := cfg.zetaDelta }
    (simpTheorems := #[thms])
    (congrTheorems := ← getSimpCongrTheorems)
  pure <| ←
    r.mkEqTrans (← Simp.main r.expr ctx (methods := Lean.Meta.Simp.mkDefaultMethodsCore {})).1

/-- The core of `algebra_nf with R` - normalize the expression `e` over the base ring `R`
Also used internally in `polynomial_nf`. -/
meta def evalExpr {u : Lean.Level} (R : Q(Type u)) (e : Expr) : AtomM Simp.Result := do
  let e ← withReducible <| whnf e
  guard e.isApp -- all interesting ring expressions are applications
  let ⟨v, A, e⟩ ← inferTypeQ' e
  let sA ← synthInstanceQ q(CommSemiring $A)
  let sR ← synthInstanceQ q(CommSemiring $R)
  let sAlg ← synthInstanceQ q(Algebra $R $A)
  let cr ← Algebra.mkCache sR
  let ca ← Algebra.mkCache sA
  assumeInstancesCommute
  let ⟨a, _, pa⟩ ← match
    ← Common.isAtomOrDerivable (Algebra.ringCompute q($sAlg) cr ca) ca.toCache q($e) with
    -- `none` indicates that `eval` will find something algebraic.
  | none => Common.eval rcℕ (Algebra.ringCompute sAlg cr ca) ca.toCache e
  | some none => failure -- No point rewriting atoms
  | some (some r) => pure r -- Nothing algebraic for `eval` to use, but `norm_num` simplifies.
  pure { expr := a, proof? := pa }

end Mathlib.Tactic.Algebra
