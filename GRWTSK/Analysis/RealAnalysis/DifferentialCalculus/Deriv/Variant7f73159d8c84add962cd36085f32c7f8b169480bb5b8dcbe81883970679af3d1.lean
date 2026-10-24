-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtConstMulOfRealCpowNegSubOne.Variantfcd880322346a2fb4c8e37648817a8f0caf2f6892c4bc63ee9ff84260ba095c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fcd880322346a2fb4c8e37648817a8f0caf2f6892c4bc63ee9ff84260ba095c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HasDerivAtConstMulOfRealCpowNegSubOne.Variantfcd880322346a2fb4c8e37648817a8f0caf2f6892c4bc63ee9ff84260ba095c9","mathematical_subject":"Analysis.Calculus","original_sha256":"fcd880322346a2fb4c8e37648817a8f0caf2f6892c4bc63ee9ff84260ba095c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/Analysis/SpecialFunctions/Pow/Deriv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Matteo Cipollina. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Matteo Cipollina
-/
module

public import Mathlib.Analysis.SpecialFunctions.Pow.Deriv

/-!
# Derivatives of complex powers

Derivative identities for functions of the form `w ↦ a * (u : ℂ) ^ (-w - 1)`.
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtConstMulOfRealCpowNegSubOne.Variantfcd880322346a2fb4c8e37648817a8f0caf2f6892c4bc63ee9ff84260ba095c9

@[expose] public section

namespace Complex

theorem HasDerivAt.const_mul_ofReal_cpow_neg_sub_one (a : ℂ) {u : ℝ} (hu : 0 < u) (z : ℂ) :
    HasDerivAt (fun w => a * (u : ℂ) ^ (-w - 1))
      (-a * (Complex.log u) * (u : ℂ) ^ (-z - 1)) z := by
  set huC : (u : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hu.ne'
  have hf : HasDerivAt (fun w => -w - 1) (-1) z := by
    simpa [sub_eq_add_neg, add_comm, add_left_comm, add_assoc] using
      (hasDerivAt_id z).neg.sub_const (1 : ℂ)
  have hbase : HasDerivAt (fun w => (u : ℂ) ^ (-w - 1))
      ((u : ℂ) ^ (-z - 1) * Complex.log (u : ℂ) * (-1)) z :=
    HasDerivAt.const_cpow (c := (u : ℂ)) hf (Or.inl huC)
  have hbase' : HasDerivAt (fun w => (u : ℂ) ^ (-w - 1))
      (-(Complex.log (u : ℂ)) * (u : ℂ) ^ (-z - 1)) z := by
    simpa [mul_comm, mul_left_comm, mul_assoc] using hbase
  have hlog : (Real.log u : ℂ) = Complex.log (u : ℂ) := by
    simpa using (Complex.ofReal_log (x := u) (hx := le_of_lt hu))
  simpa [hlog, mul_comm, mul_left_comm, mul_assoc] using hbase'.const_mul a


end Complex
