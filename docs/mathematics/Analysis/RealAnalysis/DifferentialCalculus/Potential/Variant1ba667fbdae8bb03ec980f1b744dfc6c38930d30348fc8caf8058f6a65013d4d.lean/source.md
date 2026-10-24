# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Potential.Variant1ba667fbdae8bb03ec980f1b744dfc6c38930d30348fc8caf8058f6a65013d4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `000cb257b51a43d9abe9f87e46f624e8750486de` · SHA-256 `06e43177000e6bf2a833dbc79661d31796f3b12d023cceedf4964cbfae462acc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CubicPotential.Variant8e2ef62cce312e452837d4c9a504ed97e48f84a9456b0774996cbc3e18476a19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e2ef62cce312e452837d4c9a504ed97e48f84a9456b0774996cbc3e18476a19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.CubicPotential.Variant8e2ef62cce312e452837d4c9a504ed97e48f84a9456b0774996cbc3e18476a19","mathematical_subject":"Analysis.Calculus","original_sha256":"8e2ef62cce312e452837d4c9a504ed97e48f84a9456b0774996cbc3e18476a19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Polynomial/Potential.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Polynomial.Derivative
import Mathlib.Analysis.Calculus.Deriv.Polynomial

/-!
# Canonical cubic potential

The old corpus called the evaluated expression an “antiderivative.”  Here the
primitive is represented first as a polynomial, so both algebraic and analytic
differentiation can certify it.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CubicPotential.Variant8e2ef62cce312e452837d4c9a504ed97e48f84a9456b0774996cbc3e18476a19

namespace Mathematics.Polynomial

open _root_.Polynomial
open scoped Polynomial

/-- A polynomial potential whose derivative is `cubic a b c d`. -/
noncomputable def cubicPotential (a b c d : ℝ) : ℝ[X] :=
  C (a / 4) * X ^ 4 +
    C (b / 3) * X ^ 3 +
    C (c / 2) * X ^ 2 +
    C d * X

@[simp] theorem eval_cubicPotential (a b c d x : ℝ) :
    (cubicPotential a b c d).eval x =
      a / 4 * x ^ 4 +
        b / 3 * x ^ 3 +
        c / 2 * x ^ 2 +
        d * x := by
  simp [cubicPotential]

/-- The potential differentiates algebraically to the source cubic. -/
@[simp] theorem derivative_cubicPotential (a b c d : ℝ) :
    derivative (cubicPotential a b c d) = cubic a b c d := by
  simp only [
    cubicPotential,
    cubic,
    derivative_add,
    derivative_C_mul_X_pow,
    derivative_C_mul_X
  ]
  ring_nf

/-- The same derivative identity in the analytic `HasDerivAt` interface. -/
theorem hasDerivAt_cubicPotential (a b c d x : ℝ) :
    HasDerivAt
      (fun y => (cubicPotential a b c d).eval y)
      ((cubic a b c d).eval x)
      x := by
  simpa using (cubicPotential a b c d).hasDerivAt x

end Mathematics.Polynomial
```
