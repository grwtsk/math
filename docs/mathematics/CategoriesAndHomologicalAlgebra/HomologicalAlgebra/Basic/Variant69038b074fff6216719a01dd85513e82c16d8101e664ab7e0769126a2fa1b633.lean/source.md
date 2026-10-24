# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Basic.Variant69038b074fff6216719a01dd85513e82c16d8101e664ab7e0769126a2fa1b633

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f49261ae8d8221c565ed2caa16268133d0177d39` · SHA-256 `6802357b544c13bfca9ff036adf3fd45d39eeb3b922fd556fb8ab1689558cf82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.DegreewiseEpiWithInjectiveKernel.Variantc03d7fdacc6598dfa80f6ae89c6f1bafb177680270bcbd521110012c7e245c26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c03d7fdacc6598dfa80f6ae89c6f1bafb177680270bcbd521110012c7e245c26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.DegreewiseEpiWithInjectiveKernel.Variantc03d7fdacc6598dfa80f6ae89c6f1bafb177680270bcbd521110012c7e245c26","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"c03d7fdacc6598dfa80f6ae89c6f1bafb177680270bcbd521110012c7e245c26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/Factorizations/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.HomologicalComplex
import Mathlib.CategoryTheory.Abelian.EpiWithInjectiveKernel

/-!
# Basic definitions for factorizations lemmas

We define the class of morphisms
`degreewiseEpiWithInjectiveKernel : MorphismProperty (CochainComplex C ℤ)`
in the category of cochain complexes in an abelian category `C`.

When restricted to the full subcategory of bounded below cochain complexes in an
abelian category `C` that has enough injectives, this is the class of
fibrations for a model category structure on the bounded below
category of cochain complexes in `C`. In this folder, we intend to prove two factorization
lemmas in the category of bounded below cochain complexes (TODO):
* CM5a: any morphism `K ⟶ L` can be factored as `K ⟶ K' ⟶ L` where `i : K ⟶ K'` is a
  trivial cofibration (a mono that is also a quasi-isomorphisms) and `p : K' ⟶ L` is a fibration.
* CM5b: any morphism `K ⟶ L` can be factored as `K ⟶ L' ⟶ L` where `i : K ⟶ L'` is a
  cofibration (i.e. a mono) and `p : L' ⟶ L` is a trivial fibration (i.e. a quasi-isomorphism
  which is also a fibration)

The difficult part is CM5a (whose proof uses CM5b). These lemmas shall be essential
ingredients in the proof that the bounded below derived category of an abelian
category `C` with enough injectives identifies to the bounded below homotopy category
of complexes of injective objects in `C`. This will be used in the construction
of total derived functors (and a refactor of the sequence of derived functors).

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.DegreewiseEpiWithInjectiveKernel.Variantc03d7fdacc6598dfa80f6ae89c6f1bafb177680270bcbd521110012c7e245c26

open CategoryTheory Abelian

variable {C : Type*} [Category C] [Abelian C]

namespace CochainComplex

/-- A morphism of cochain complexes `φ` in an abelian category satisfies
`degreewiseEpiWithInjectiveKernel φ` if for any `i : ℤ`, the morphism
`φ.f i` is an epimorphism with an injective kernel. -/
def degreewiseEpiWithInjectiveKernel : MorphismProperty (CochainComplex C ℤ) :=
  fun _ _ φ => ∀ (i : ℤ), epiWithInjectiveKernel (φ.f i)

instance : (degreewiseEpiWithInjectiveKernel (C := C)).IsMultiplicative where
  id_mem _ _ := MorphismProperty.id_mem _ _
  comp_mem _ _ hf hg n := MorphismProperty.comp_mem _ _ _ (hf n) (hg n)

end CochainComplex
```
