# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologicalComplexKernels.Variant452d5d30b1b1a2dba372d183c00ba9b922ec1e505a89eca65bb4122fd874d89e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79d9e353378a463872cc46d3d3b6935b88ef9a56` · SHA-256 `08e33c6a9307ac9381e960b77483475c5c979dd1578bb087948b3851aff0925f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasKernelOfHasKernelF.Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasKernelOfHasKernelF.Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"cc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Homology/HomologicalComplexKernels.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.HomologicalComplexLimits

/-!
# Kernels and cokernels in categories of homological complexes

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasKernelOfHasKernelF.Variantcc2f3084dc7a1ddc4053f9c693e071a68ba47b15769e80c5e29b9b9e9db37d5e

public section

open CategoryTheory Limits

namespace HomologicalComplex

variable {ι C : Type*} [Category* C] [HasZeroMorphisms C] {c : ComplexShape ι}
  {K L : HomologicalComplex C c} (f : K ⟶ L)

lemma hasKernel_of_hasKernel_f [∀ i, HasKernel (f.f i)] : HasKernel f :=
  have (i : ι) : HasLimit (parallelPair f 0 ⋙ eval C c i) :=
    hasLimit_of_iso (F := (parallelPair (f.f i) 0))
      (parallelPair.ext (Iso.refl _) (Iso.refl _))
  ⟨_, isLimitConeOfHasLimitEval _⟩

lemma hasCokernel_of_hasCokernel_f [∀ i, HasCokernel (f.f i)] : HasCokernel f :=
  have (i : ι) : HasColimit (parallelPair f 0 ⋙ eval C c i) :=
    hasColimit_of_iso (F := (parallelPair (f.f i) 0))
      (parallelPair.ext (Iso.refl _) (Iso.refl _))
  ⟨_, isColimitCoconeOfHasColimitEval _⟩

lemma eval_preservesLimit_of_hasKernel_f [∀ i, HasKernel (f.f i)] (i : ι) :
    PreservesLimit (parallelPair f 0) (eval C c i) :=
  have (i : ι) : HasLimit (parallelPair f 0 ⋙ eval C c i) :=
    hasLimit_of_iso (F := (parallelPair (f.f i) 0))
      (parallelPair.ext (Iso.refl _) (Iso.refl _))
  preservesLimit_of_preserves_limit_cone
    (isLimitConeOfHasLimitEval _) (limit.isLimit _)

lemma eval_preservesColimit_of_hasCokernel_f [∀ i, HasCokernel (f.f i)] (i : ι) :
    PreservesColimit (parallelPair f 0) (eval C c i) :=
  have (i : ι) : HasColimit (parallelPair f 0 ⋙ eval C c i) :=
    hasColimit_of_iso (F := (parallelPair (f.f i) 0))
      (parallelPair.ext (Iso.refl _) (Iso.refl _))
  preservesColimit_of_preserves_colimit_cocone
    (isColimitCoconeOfHasColimitEval _) (colimit.isColimit _)

end HomologicalComplex
```
