-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AlgebraLeftMulMatrixComplex.Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"faf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AlgebraLeftMulMatrixComplex.Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"faf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Complex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Data.Complex.Module
import Mathlib.RingTheory.Norm.Defs
import Mathlib.RingTheory.Trace.Defs

/-! # Lemmas about `Algebra.trace` and `Algebra.norm` on `ℂ` -/



namespace GRWTSK.Algebra.AlgebraLeftMulMatrixComplex.Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6

open Complex

theorem Algebra.leftMulMatrix_complex (z : ℂ) :
    Algebra.leftMulMatrix Complex.basisOneI z = !![z.re, -z.im; z.im, z.re] := by
  ext i j
  rw [Algebra.leftMulMatrix_eq_repr_mul, Complex.coe_basisOneI_repr, Complex.coe_basisOneI, mul_re,
    mul_im, Matrix.of_apply]
  fin_cases j <;> dsimp only [Fin.zero_eta, Fin.mk_one, Matrix.cons_val]
  · simp only [Fin.zero_eta, id_eq, Matrix.cons_val_zero, one_re, mul_one, one_im, mul_zero,
      sub_zero, zero_add, Matrix.cons_val_fin_one]
    fin_cases i <;> rfl
  · simp only [Fin.mk_one, id_eq, Matrix.cons_val_one, Matrix.head_cons, I_re, mul_zero, I_im,
      mul_one, zero_sub, add_zero, Matrix.cons_val_fin_one]
    fin_cases i <;> rfl

theorem Algebra.trace_complex_apply (z : ℂ) : Algebra.trace ℝ ℂ z = 2 * z.re := by
  rw [Algebra.trace_eq_matrix_trace Complex.basisOneI, Algebra.leftMulMatrix_complex,
    Matrix.trace_fin_two]
  exact (two_mul _).symm

theorem Algebra.norm_complex_apply (z : ℂ) : Algebra.norm ℝ z = Complex.normSq z := by
  rw [Algebra.norm_eq_matrix_det Complex.basisOneI, Algebra.leftMulMatrix_complex,
    Matrix.det_fin_two, normSq_apply]
  simp

theorem Algebra.norm_complex_eq : Algebra.norm ℝ = normSq.toMonoidHom :=
  MonoidHom.ext Algebra.norm_complex_apply
