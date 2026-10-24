# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Basis.Variant2d1886c8b6b2bd04df9ac457cfaec3d459835b5b0d3119c955772c47e6dacc4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80dea3a60aa11fdb212adc1716573b66cdba4f55` · SHA-256 `bf7cbfc59bfd1cdd7f0f1d94cd708bb8e3b493d329621310b87ef84da993f7bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.BasisMonomials.Variantdb4a024287041652cb2576cc4ccf7d80397964b26b6ae6ed66e81ca6be76373b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db4a024287041652cb2576cc4ccf7d80397964b26b6ae6ed66e81ca6be76373b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.BasisMonomials.Variantdb4a024287041652cb2576cc4ccf7d80397964b26b6ae6ed66e81ca6be76373b","mathematical_subject":"Algebra.Polynomials","original_sha256":"db4a024287041652cb2576cc4ccf7d80397964b26b6ae6ed66e81ca6be76373b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Polynomial/Basis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.LinearAlgebra.Basis.Defs

/-!

# Basis of a polynomial ring

-/


namespace GRWTSK.Algebra.CommutativeAlgebra.BasisMonomials.Variantdb4a024287041652cb2576cc4ccf7d80397964b26b6ae6ed66e81ca6be76373b

universe u

variable (R : Type u) [Semiring R]

namespace Polynomial

/-- The monomials form a basis on `R[X]`. To get the rank of a polynomial ring,
use this and `Basis.mk_eq_rank`. -/
def basisMonomials : Basis ℕ R R[X] :=
  Basis.ofRepr (toFinsuppIsoLinear R)

@[simp]
theorem coe_basisMonomials : (basisMonomials R : ℕ → R[X]) = fun s => monomial s 1 :=
  funext fun _ => ofFinsupp_single _ _

end Polynomial
```
