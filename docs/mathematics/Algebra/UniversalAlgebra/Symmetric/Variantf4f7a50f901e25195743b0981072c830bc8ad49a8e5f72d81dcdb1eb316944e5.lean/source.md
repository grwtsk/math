# Complete source: GRWTSK.Algebra.UniversalAlgebra.Symmetric.Variantf4f7a50f901e25195743b0981072c830bc8ad49a8e5f72d81dcdb1eb316944e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55b61077b62fb9dc7eddd46a5786fd3a3576ae49` · SHA-256 `09aa748828c862611a88dcc0aae489d6d6839dadccf67539adfa99355d5cea5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Monoidal.Variantcf7f0f1074f0c9c559d0f5466ae895143f17f799146d3fd82e9fbe64c5b7864d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf7f0f1074f0c9c559d0f5466ae895143f17f799146d3fd82e9fbe64c5b7864d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Monoidal.Variantcf7f0f1074f0c9c559d0f5466ae895143f17f799146d3fd82e9fbe64c5b7864d","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"cf7f0f1074f0c9c559d0f5466ae895143f17f799146d3fd82e9fbe64c5b7864d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/AlgCat/Symmetric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Category.AlgCat.Monoidal
import Mathlib.Algebra.Category.ModuleCat.Monoidal.Symmetric

/-!
# The monoidal structure on `AlgCat` is symmetric.

In this file we show:

* `AlgCat.instSymmetricCategory : SymmetricCategory (AlgCat.{u} R)`
-/

namespace GRWTSK.Algebra.UniversalAlgebra.Monoidal.Variantcf7f0f1074f0c9c559d0f5466ae895143f17f799146d3fd82e9fbe64c5b7864d

open CategoryTheory


noncomputable section

universe v u

variable {R : Type u} [CommRing R]

namespace AlgCat

instance : BraidedCategory (AlgCat.{u} R) :=
  braidedCategoryOfFaithful (forget₂ (AlgCat R) (ModuleCat R))
    (fun X Y => (Algebra.TensorProduct.comm R X Y).toAlgebraIso)
    (by aesop_cat)

instance : (forget₂ (AlgCat R) (ModuleCat R)).Braided where

instance instSymmetricCategory : SymmetricCategory (AlgCat.{u} R) :=
  symmetricCategoryOfFaithful (forget₂ (AlgCat R) (ModuleCat R))

end AlgCat
```
