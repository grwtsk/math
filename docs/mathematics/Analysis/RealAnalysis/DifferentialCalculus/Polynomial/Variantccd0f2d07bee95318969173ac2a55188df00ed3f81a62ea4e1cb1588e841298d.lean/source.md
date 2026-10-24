# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Polynomial.Variantccd0f2d07bee95318969173ac2a55188df00ed3f81a62ea4e1cb1588e841298d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8d6cec2ddb770a2c28c9d1d34c7f57e6d00029a` · SHA-256 `0e014e452fcf0d32731ac837db6d6dda9061ab793d506c0821396c2736127c53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogDerivExpEval.Variant4915e74b05c86f982552379719d2b0ae77896a8fafda21cd75460124ee521300","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4915e74b05c86f982552379719d2b0ae77896a8fafda21cd75460124ee521300","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.LogDerivExpEval.Variant4915e74b05c86f982552379719d2b0ae77896a8fafda21cd75460124ee521300","mathematical_subject":"Analysis.Calculus","original_sha256":"4915e74b05c86f982552379719d2b0ae77896a8fafda21cd75460124ee521300","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/Analysis/Calculus/Deriv/Polynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Mathlib.Analysis.Calculus.Deriv.Polynomial
public import Mathlib.Analysis.Calculus.LogDeriv
public import Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv

/-!
# Polynomial derivatives and logarithmic derivatives

Auxiliary derivative identities for exponential polynomials, used in the polynomial factor
appearing in Hadamard products.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogDerivExpEval.Variant4915e74b05c86f982552379719d2b0ae77896a8fafda21cd75460124ee521300

@[expose] public section

namespace Polynomial

/-- The logarithmic derivative of the exponential of a complex polynomial is the polynomial
derivative. -/
theorem logDeriv_exp_eval (P : ℂ[X]) (z : ℂ) :
    logDeriv (fun w : ℂ => Complex.exp (Polynomial.eval w P)) z =
      Polynomial.eval z P.derivative := by
  have hderiv :
      deriv (fun w : ℂ => Complex.exp (Polynomial.eval w P)) z =
        Complex.exp (Polynomial.eval z P) * Polynomial.eval z P.derivative := by
    simpa [Function.comp_def, mul_comm] using
      ((Complex.hasDerivAt_exp (Polynomial.eval z P)).comp z (P.hasDerivAt z)).deriv
  rw [logDeriv_apply, hderiv]
  field_simp [Complex.exp_ne_zero (Polynomial.eval z P)]

end Polynomial
```
