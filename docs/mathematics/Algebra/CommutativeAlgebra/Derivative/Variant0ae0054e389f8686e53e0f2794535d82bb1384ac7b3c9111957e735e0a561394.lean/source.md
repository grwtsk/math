# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Derivative.Variant0ae0054e389f8686e53e0f2794535d82bb1384ac7b3c9111957e735e0a561394

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5bf3494c8b2b6ce93c1e435b982fa958a45be16` · SHA-256 `53525e3d9487eceecd5835a942de0b428c48c05b9424e9970fab94e9974b9e03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.Cubic.Variant52967e88ac2bf661470b1955d4df0cce536bb4500bb30ee6e162527847903074","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52967e88ac2bf661470b1955d4df0cce536bb4500bb30ee6e162527847903074","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.Cubic.Variant52967e88ac2bf661470b1955d4df0cce536bb4500bb30ee6e162527847903074","mathematical_subject":"Algebra.Polynomials","original_sha256":"52967e88ac2bf661470b1955d4df0cce536bb4500bb30ee6e162527847903074","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Polynomial/Derivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Polynomial.Cubic

/-!
# Cubic derivative

Algebraic differentiation remains inside the canonical polynomial ring.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.Cubic.Variant52967e88ac2bf661470b1955d4df0cce536bb4500bb30ee6e162527847903074

namespace Mathematics.Polynomial

open _root_.Polynomial

/-- Differentiating a cubic yields its coefficient-correct quadratic. -/
@[simp] theorem derivative_cubic (a b c d : ℝ) :
    derivative (cubic a b c d) = quadratic (3 * a) (2 * b) c := by
  simp only [
    cubic,
    quadratic,
    derivative_add,
    derivative_C_mul_X_pow,
    derivative_C_mul_X,
    derivative_C
  ]
  ring_nf

end Mathematics.Polynomial
```
