# Complete source: GRWTSK.Algebra.UniversalAlgebra.Symmetric.Variant2eb7453bf4fab6caedc496a7c47a340b2bc6b90199e3b09d675540fe0ba7b9a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `974e90d9ecd5b878dd36d81124cec11f6ac94c40` · SHA-256 `9a5ffb05e416b66a66ae5537883fe79452692f5914295a58782e4af282ac6613`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Monoidal.Variant8521c209c148e6e6f5400e737b3f82affed30a175b090cc57774018970f7e08d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8521c209c148e6e6f5400e737b3f82affed30a175b090cc57774018970f7e08d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Monoidal.Variant8521c209c148e6e6f5400e737b3f82affed30a175b090cc57774018970f7e08d","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"8521c209c148e6e6f5400e737b3f82affed30a175b090cc57774018970f7e08d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/QuadraticForm/QuadraticModuleCat/Symmetric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.LinearAlgebra.QuadraticForm.QuadraticModuleCat.Monoidal
import Mathlib.Algebra.Category.ModuleCat.Monoidal.Symmetric

/-!
# The monoidal structure on `QuadraticModuleCat` is symmetric.

In this file we show:

* `QuadraticModuleCat.instSymmetricCategory : SymmetricCategory (QuadraticModuleCat.{u} R)`

## Implementation notes

This file essentially mirrors `Mathlib/Algebra/Category/AlgCat/Symmetric.lean`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Monoidal.Variant8521c209c148e6e6f5400e737b3f82affed30a175b090cc57774018970f7e08d

suppress_compilation

open CategoryTheory

universe v u

variable {R : Type u} [CommRing R] [Invertible (2 : R)]

namespace QuadraticModuleCat

open QuadraticForm

instance : BraidedCategory (QuadraticModuleCat.{u} R) :=
  braidedCategoryOfFaithful (forget₂ (QuadraticModuleCat R) (ModuleCat R))
    (fun X Y => ofIso <| tensorComm X.form Y.form)
    (by aesop_cat)

/-- `forget₂ (QuadraticModuleCat R) (ModuleCat R)` is a braided functor. -/
instance : (forget₂ (QuadraticModuleCat R) (ModuleCat R)).Braided where

instance instSymmetricCategory : SymmetricCategory (QuadraticModuleCat.{u} R) :=
  symmetricCategoryOfFaithful (forget₂ (QuadraticModuleCat R) (ModuleCat R))

end QuadraticModuleCat
```
