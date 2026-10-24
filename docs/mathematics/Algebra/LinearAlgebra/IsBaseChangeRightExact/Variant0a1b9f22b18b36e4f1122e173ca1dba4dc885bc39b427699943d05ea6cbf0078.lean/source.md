# Complete source: GRWTSK.Algebra.LinearAlgebra.IsBaseChangeRightExact.Variant0a1b9f22b18b36e4f1122e173ca1dba4dc885bc39b427699943d05ea6cbf0078

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e703c281c6cb2cb2a29679ebfe2be6c02da30b3` · SHA-256 `85cd5054288039a0f22a9d7c1bc0ff931d5bfda3d98eed4b285385c0e77b98db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsBaseChangeOfRightExact.Variantff853fe8f4cc2378a4b78beb62f002c462c2fed4879e51c9a99f8f8185f31da7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff853fe8f4cc2378a4b78beb62f002c462c2fed4879e51c9a99f8f8185f31da7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsBaseChangeOfRightExact.Variantff853fe8f4cc2378a4b78beb62f002c462c2fed4879e51c9a99f8f8185f31da7","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"ff853fe8f4cc2378a4b78beb62f002c462c2fed4879e51c9a99f8f8185f31da7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/TensorProduct/IsBaseChangeRightExact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jingting Wang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jingting Wang, Nailin Guan
-/
module

public import Mathlib.Algebra.FiveLemma
public import Mathlib.LinearAlgebra.TensorProduct.RightExactness
public import Mathlib.RingTheory.IsTensorProduct

/-!

# Lemmas about `IsBaseChange` under exact sequences

In this file, we show that for an `R`-algebra `S` taking cokernels commutes with base change
of modules from `R` to `S`.
If `S` is a flat `R`-algebra, the same holds for kernels,
see `Mathlib.RingTheory.Flat.IsBaseChange`.

# Main Results

For `S` an `R`-algebra, consider the following commutative diagram with exact rows,
`M₁` `M₂` `M₃` `R`-modules, `N₁` `N₂` `N₃` `S`-modules,
`R`-linear maps `f₁` `f₂` `i₁` `i₂` `i₃` and `S`-linear maps `g₁` `g₂`.

M₁ --f₁--> M₂ --f₂--> M₃
|          |          |
i₁         i₂         i₃
|          |          |
v          v          v
N₁ --g₁--> N₂ --g₂--> N₃

* `IsBaseChange.of_right_exact` : If `f₂` and `g₂` are surjective,
  `i₁` and `i₂` is base change by `S`, then `i₃` is base change by `S`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.IsBaseChangeOfRightExact.Variantff853fe8f4cc2378a4b78beb62f002c462c2fed4879e51c9a99f8f8185f31da7

public section

variable {R : Type*} [CommRing R] (S : Type*) [CommRing S] [Algebra R S]

variable {M₁ M₂ M₃ N₁ N₂ N₃ : Type*} [AddCommGroup M₁] [AddCommGroup M₂] [AddCommGroup M₃]
  [AddCommGroup N₁] [AddCommGroup N₂] [AddCommGroup N₃] [Module R M₁] [Module R M₂] [Module R M₃]
  [Module R N₁] [Module R N₂] [Module R N₃] [Module S N₁] [Module S N₂] [Module S N₃]
  [IsScalarTower R S N₁] [IsScalarTower R S N₂] [IsScalarTower R S N₃]
  (h₁ : M₁ →ₗ[R] N₁) (h₂ : M₂ →ₗ[R] N₂) (h₃ : M₃ →ₗ[R] N₃)
  {f : M₁ →ₗ[R] M₂} {g : M₂ →ₗ[R] M₃} {f' : N₁ →ₗ[S] N₂} {g' : N₂ →ₗ[S] N₃}

lemma IsBaseChange.of_right_exact (comm₁ : h₂.comp f = (f'.restrictScalars R).comp h₁)
    (comm₂ : h₃.comp g = (g'.restrictScalars R).comp h₂) (isb₁ : IsBaseChange S h₁)
    (isb₂ : IsBaseChange S h₂) (exact₁ : Function.Exact f g) (surj₁ : Function.Surjective g)
    (exact₂ : Function.Exact f' g') (surj₂ : Function.Surjective g') : IsBaseChange S h₃ := by
  simp only [IsBaseChange, IsTensorProduct] at isb₁ isb₂ ⊢
  refine LinearMap.bijective_of_surjective_of_bijective_of_right_exact
    ((f.baseChange S).restrictScalars R) ((g.baseChange S).restrictScalars R)
    (f'.restrictScalars R) (g'.restrictScalars R) _ _ _ ?_ ?_ ?_ exact₂ isb₁.2 isb₂ ?_ surj₂
  · ext s m
    simpa using congr(s • ($comm₁ m)).symm
  · ext s m
    simpa using congr(s • ($comm₂ m)).symm
  · exact lTensor_exact S exact₁ surj₁
  · exact LinearMap.lTensor_surjective S surj₁
```
