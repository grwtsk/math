# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalComplexAbelian.Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fd41d3e1f95015b12e2de4ba2f8b744149f4e78` · SHA-256 `1633ba74861177dc4cd31c922228e661e1638699faa6cb0b50fe4b996ff519b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ExactOfDegreewiseExact.Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.ExactOfDegreewiseExact.Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/HomologicalComplexAbelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.Additive
import Mathlib.Algebra.Homology.HomologicalComplexLimits
import Mathlib.Algebra.Homology.ShortComplex.ShortExact

/-! # THe category of homological complexes is abelian

If `C` is an abelian category, then `HomologicalComplex C c` is an abelian
category for any complex shape `c : ComplexShape ι`.

We also obtain that a short complex in `HomologicalComplex C c`
is exact (resp. short exact) iff degreewise it is so.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ExactOfDegreewiseExact.Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059

open CategoryTheory Category Limits

namespace HomologicalComplex

variable {C ι : Type*} {c : ComplexShape ι} [Category C] [Abelian C]

noncomputable instance : IsNormalEpiCategory (HomologicalComplex C c) := ⟨fun p _ =>
  ⟨NormalEpi.mk _ (kernel.ι p) (kernel.condition _)
    (isColimitOfEval _ _ (fun _ =>
      Abelian.isColimitMapCoconeOfCokernelCoforkOfπ _ _))⟩⟩

noncomputable instance : IsNormalMonoCategory (HomologicalComplex C c) := ⟨fun p _ =>
  ⟨NormalMono.mk _ (cokernel.π p) (cokernel.condition _)
    (isLimitOfEval _ _ (fun _ =>
      Abelian.isLimitMapConeOfKernelForkOfι _ _))⟩⟩

noncomputable instance : Abelian (HomologicalComplex C c) where

variable (S : ShortComplex (HomologicalComplex C c))

lemma exact_of_degreewise_exact (hS : ∀ (i : ι), (S.map (eval C c i)).Exact) :
    S.Exact := by
  simp only [ShortComplex.exact_iff_isZero_homology] at hS ⊢
  rw [IsZero.iff_id_eq_zero]
  ext i
  apply (IsZero.of_iso (hS i) (S.mapHomologyIso (eval C c i)).symm).eq_of_src

lemma shortExact_of_degreewise_shortExact
    (hS : ∀ (i : ι), (S.map (eval C c i)).ShortExact) :
    S.ShortExact where
  mono_f := mono_of_mono_f _ (fun i => (hS i).mono_f)
  epi_g := epi_of_epi_f _ (fun i => (hS i).epi_g)
  exact := exact_of_degreewise_exact S (fun i => (hS i).exact)

lemma exact_iff_degreewise_exact :
    S.Exact ↔ ∀ (i : ι), (S.map (eval C c i)).Exact := by
  constructor
  · intro hS i
    exact hS.map (eval C c i)
  · exact exact_of_degreewise_exact S

lemma shortExact_iff_degreewise_shortExact :
    S.ShortExact ↔ ∀ (i : ι), (S.map (eval C c i)).ShortExact := by
  constructor
  · intro hS i
    have := hS.mono_f
    have := hS.epi_g
    exact hS.map (eval C c i)
  · exact shortExact_of_degreewise_shortExact S

end HomologicalComplex
```
