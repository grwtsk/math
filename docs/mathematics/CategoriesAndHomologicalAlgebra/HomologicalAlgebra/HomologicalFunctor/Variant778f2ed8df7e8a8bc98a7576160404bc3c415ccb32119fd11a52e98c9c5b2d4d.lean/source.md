# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalFunctor.Variant778f2ed8df7e8a8bc98a7576160404bc3c415ccb32119fd11a52e98c9c5b2d4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96017aef454f92c4310cec5aefa779ba6dad60dd` · SHA-256 `546a1de2c977d938d9ccc889602990018e0e0dd99e97df9a11f322bc42752ffe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalComplexAbelian.Variant0b98a94be016377bd950a530a42808d9e2f181b888e4804204831335682db9d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b98a94be016377bd950a530a42808d9e2f181b888e4804204831335682db9d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.HomologicalComplexAbelian.Variant0b98a94be016377bd950a530a42808d9e2f181b888e4804204831335682db9d4","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"0b98a94be016377bd950a530a42808d9e2f181b888e4804204831335682db9d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/HomotopyCategory/HomologicalFunctor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.HomologicalComplexAbelian
import Mathlib.Algebra.Homology.HomotopyCategory.DegreewiseSplit
import Mathlib.Algebra.Homology.HomologySequence
import Mathlib.CategoryTheory.Triangulated.HomologicalFunctor

/-! The homological functor

In this file, it is shown that if `C` is an abelian category,
then `homologyFunctor C (ComplexShape.up ℤ) n` is a homological functor
`HomotopyCategory C (ComplexShape.up ℤ) ⥤ C`. As distinguished triangles
in the homotopy category can be characterized in terms of degreewise split
short exact sequences of cochain complexes, this follows from the homology
sequence of a short exact sequences of homological complexes.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalComplexAbelian.Variant0b98a94be016377bd950a530a42808d9e2f181b888e4804204831335682db9d4

assert_not_exists TwoSidedIdeal

open CategoryTheory

variable {C : Type*} [Category C] [Abelian C]

namespace HomotopyCategory

instance (n : ℤ) : (homologyFunctor C (ComplexShape.up ℤ) n).IsHomological :=
  Functor.IsHomological.mk' _ (fun T hT => by
    rw [distinguished_iff_iso_trianglehOfDegreewiseSplit] at hT
    obtain ⟨S, σ, ⟨e⟩⟩ := hT
    have hS := HomologicalComplex.shortExact_of_degreewise_shortExact S
      (fun n => (σ n).shortExact)
    exact ⟨_, e, (ShortComplex.exact_iff_of_iso
      (S.mapNatIso (homologyFunctorFactors C (ComplexShape.up ℤ) n))).2 (hS.homology_exact₂ n)⟩)

end HomotopyCategory
```
