# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Quadratic.Variantad4bfb8d795bfc900c597c0e3a9567166dc84abc5b69697ec0b64e31b10ae9ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `989387abc92d1556a86fbea7c6147e6cacdd2af7` · SHA-256 `21f17671d0f7bb2d45186d5f3a6f362588e4d4c01ce92ab8cfebbc37606e0a96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.Quadratic.Variant8ba02d078c29b035123707de1552e085e5931825d9effbc753f44586804be645","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ba02d078c29b035123707de1552e085e5931825d9effbc753f44586804be645","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.Quadratic.Variant8ba02d078c29b035123707de1552e085e5931825d9effbc753f44586804be645","mathematical_subject":"Algebra.Polynomials","original_sha256":"8ba02d078c29b035123707de1552e085e5931825d9effbc753f44586804be645","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Polynomial/Quadratic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Polynomial.Derivative
import Mathlib.Data.Real.Basic

/-!
# Real quadratic polynomials

The carrier is Mathlib's polynomial type.  Coefficients are parameters, not a
second project-local polynomial structure.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.Quadratic.Variant8ba02d078c29b035123707de1552e085e5931825d9effbc753f44586804be645

namespace Mathematics.Polynomial

open _root_.Polynomial
open scoped Polynomial

/-- The real polynomial `aX² + bX + c`. -/
noncomputable def quadratic (a b c : ℝ) : ℝ[X] :=
  C a * X ^ 2 + C b * X + C c

@[simp] theorem eval_quadratic (a b c x : ℝ) :
    (quadratic a b c).eval x = a * x ^ 2 + b * x + c := by
  simp [quadratic]

end Mathematics.Polynomial
```
