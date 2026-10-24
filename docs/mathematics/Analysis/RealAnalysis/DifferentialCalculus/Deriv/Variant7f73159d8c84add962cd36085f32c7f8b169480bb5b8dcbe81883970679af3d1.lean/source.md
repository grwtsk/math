# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant7f73159d8c84add962cd36085f32c7f8b169480bb5b8dcbe81883970679af3d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e5c15cba99986543cc01cfca03108313e46c9aa` · SHA-256 `4f272354c9ff2c70f45555b1a3a9ccaf56779f083afd0c0f549ac5474fcfa51d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
