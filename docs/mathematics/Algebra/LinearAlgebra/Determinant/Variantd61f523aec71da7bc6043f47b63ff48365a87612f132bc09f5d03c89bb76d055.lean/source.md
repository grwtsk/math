# Complete source: GRWTSK.Algebra.LinearAlgebra.Determinant.Variantd61f523aec71da7bc6043f47b63ff48365a87612f132bc09f5d03c89bb76d055

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20f8208d787c15c9ed5e890f9320a7706c20c408` · SHA-256 `81681965ef97b192f95807ee2a11972d273e6ba55ccc57f338d51c45440fb58f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LinearMapDetZeroPrimePrime.Variant62b2065ab767beb3b6fdc13a59948ee578436e1ea54a5eb6a7bac31d8baf2c98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"62b2065ab767beb3b6fdc13a59948ee578436e1ea54a5eb6a7bac31d8baf2c98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LinearMapDetZeroPrimePrime.Variant62b2065ab767beb3b6fdc13a59948ee578436e1ea54a5eb6a7bac31d8baf2c98","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"62b2065ab767beb3b6fdc13a59948ee578436e1ea54a5eb6a7bac31d8baf2c98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/FreeModule/Determinant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen, Alex J. Best
-/
import Mathlib.LinearAlgebra.Determinant
import Mathlib.LinearAlgebra.FreeModule.Finite.Basic

/-!
# Determinants in free (finite) modules

Quite a lot of our results on determinants (that you might know in vector spaces) will work for all
free (finite) modules over any commutative ring.

## Main results

* `LinearMap.det_zero''`: The determinant of the constant zero map is zero, in a finite free
nontrivial module.
-/



namespace GRWTSK.Algebra.LinearAlgebra.LinearMapDetZeroPrimePrime.Variant62b2065ab767beb3b6fdc13a59948ee578436e1ea54a5eb6a7bac31d8baf2c98

@[simp high]
theorem LinearMap.det_zero'' {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    [Module.Free R M] [Module.Finite R M] [Nontrivial M] : LinearMap.det (0 : M →ₗ[R] M) = 0 := by
  letI : Nonempty (Module.Free.ChooseBasisIndex R M) := (Module.Free.chooseBasis R M).index_nonempty
  nontriviality R
  exact LinearMap.det_zero' (Module.Free.chooseBasis R M)
```
