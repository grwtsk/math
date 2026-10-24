# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant77cbb4e1e6919c753cbacf34289c2aa127575f43705bee2c02ae8140502e52f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31416169e8cf391bdf2b26c35f7b668e51c59fed` · SHA-256 `3c4e5e2920d88d217aea50703a16568ed701abbe5008bc0458a3884363c3385a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variant785096abe526a87c870401bff03b35135dd9eb7b9ba78fd06d479b0741a379a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"785096abe526a87c870401bff03b35135dd9eb7b9ba78fd06d479b0741a379a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.MvPolynomial.Variant785096abe526a87c870401bff03b35135dd9eb7b9ba78fd06d479b0741a379a3","mathematical_subject":"Algebra.Polynomials","original_sha256":"785096abe526a87c870401bff03b35135dd9eb7b9ba78fd06d479b0741a379a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/RingTheory/KrullDimension/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Fangming Li. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Fangming Li
-/
module

public import Mathlib.Algebra.MvPolynomial.Basic
public import Mathlib.RingTheory.KrullDimension.Basic


namespace GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variant785096abe526a87c870401bff03b35135dd9eb7b9ba78fd06d479b0741a379a3

variable {R : Type*} [CommSemiring R]

proof_wanted MvPolynomial.fin_ringKrullDim_eq_add_of_isNoetherianRing
    [IsNoetherianRing R] (n : ℕ) :
    ringKrullDim (MvPolynomial (Fin n) R) = ringKrullDim R + n
```
