# Complete source: GRWTSK.Algebra.LinearAlgebra.LinearAlgebra.Variant0ac00366890efb8f3aa693a0ddafbd5758ba9209a92bbecd835677f45934a3db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c88aea20d244183b73dc4f670102ae3988e10cf3` · SHA-256 `5627f004f07044d98108823cd863c8a0eea07affe98c20d1cd974d80a3b361ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.NontrivialOfIsPushoutOfIsField.Variant6ac04280574f14e3468c72d905bbea4afe755c45a88cd64c8bafc86110a92fd1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ac04280574f14e3468c72d905bbea4afe755c45a88cd64c8bafc86110a92fd1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.NontrivialOfIsPushoutOfIsField.Variant6ac04280574f14e3468c72d905bbea4afe755c45a88cd64c8bafc86110a92fd1","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"6ac04280574f14e3468c72d905bbea4afe755c45a88cd64c8bafc86110a92fd1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Ring/LinearAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.Algebra.Category.Ring.Constructions
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq
import Mathlib.LinearAlgebra.Basis.VectorSpace
import Mathlib.RingTheory.Flat.FaithfullyFlat.Basic

/-!
# Results on the category of rings requiring linear algebra

## Results

- `CommRingCat.nontrivial_of_isPushout_of_isField`: the pushout of non-trivial rings over a field
  is non-trivial.

-/


namespace GRWTSK.Algebra.LinearAlgebra.NontrivialOfIsPushoutOfIsField.Variant6ac04280574f14e3468c72d905bbea4afe755c45a88cd64c8bafc86110a92fd1

universe u

open CategoryTheory Limits TensorProduct

namespace CommRingCat

lemma nontrivial_of_isPushout_of_isField {A B C D : CommRingCat.{u}}
    (hA : IsField A) {f : A ⟶ B} {g : A ⟶ C} {inl : B ⟶ D} {inr : C ⟶ D}
    [Nontrivial B] [Nontrivial C]
    (h : IsPushout f g inl inr) : Nontrivial D := by
  letI : Field A := hA.toField
  algebraize [f.hom, g.hom]
  let e : D ≅ .of (B ⊗[A] C) :=
    IsColimit.coconePointUniqueUpToIso h.isColimit (CommRingCat.pushoutCoconeIsColimit A B C)
  let e' : D ≃ B ⊗[A] C := e.commRingCatIsoToRingEquiv.toEquiv
  exact e'.nontrivial

end CommRingCat
```
