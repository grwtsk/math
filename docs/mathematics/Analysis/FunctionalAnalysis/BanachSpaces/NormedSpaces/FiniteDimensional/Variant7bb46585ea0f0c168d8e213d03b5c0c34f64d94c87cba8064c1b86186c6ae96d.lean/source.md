# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.FiniteDimensional.Variant7bb46585ea0f0c168d8e213d03b5c0c34f64d94c87cba8064c1b86186c6ae96d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c254ec3645a08cac06682e394eae98415207239` · SHA-256 `9d3f4ec6fde4620edff233496a1bfea879aa4dc983a1a392c732da5b20c4627a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.ExistsHomeomorphExtension.Variant8519dcd4a76e496123c5e4dae8b99e3fc0b91bb5d8fd07acedb229bc27dc394b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8519dcd4a76e496123c5e4dae8b99e3fc0b91bb5d8fd07acedb229bc27dc394b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.ExistsHomeomorphExtension.Variant8519dcd4a76e496123c5e4dae8b99e3fc0b91bb5d8fd07acedb229bc27dc394b","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"8519dcd4a76e496123c5e4dae8b99e3fc0b91bb5d8fd07acedb229bc27dc394b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/InverseFunctionTheorem/FiniteDimensional.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Analysis.Calculus.InverseFunctionTheorem.ApproximatesLinearOn
import Mathlib.Analysis.Normed.Module.FiniteDimension

/-!
# A lemma about `ApproximatesLinearOn` that needs `FiniteDimensional`

In this file we prove that in a real vector space,
a function `f` that approximates a linear equivalence on a subset `s`
can be extended to a homeomorphism of the whole space.

This used to be the only lemma in `Mathlib/Analysis/Calculus/Inverse`
depending on `FiniteDimensional`, so it was moved to a new file when the original file got split.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.ExistsHomeomorphExtension.Variant8519dcd4a76e496123c5e4dae8b99e3fc0b91bb5d8fd07acedb229bc27dc394b

open Set
open scoped NNReal

namespace ApproximatesLinearOn

/-- In a real vector space, a function `f` that approximates a linear equivalence on a subset `s`
can be extended to a homeomorphism of the whole space. -/
theorem exists_homeomorph_extension {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F] [FiniteDimensional ℝ F] {s : Set E}
    {f : E → F} {f' : E ≃L[ℝ] F} {c : ℝ≥0} (hf : ApproximatesLinearOn f (f' : E →L[ℝ] F) s c)
    (hc : Subsingleton E ∨ lipschitzExtensionConstant F * c < ‖(f'.symm : F →L[ℝ] E)‖₊⁻¹) :
    ∃ g : E ≃ₜ F, EqOn f g s := by
  -- the difference `f - f'` is Lipschitz on `s`. It can be extended to a Lipschitz function `u`
  -- on the whole space, with a slightly worse Lipschitz constant. Then `f' + u` will be the
  -- desired homeomorphism.
  obtain ⟨u, hu, uf⟩ :
    ∃ u : E → F, LipschitzWith (lipschitzExtensionConstant F * c) u ∧ EqOn (f - ⇑f') u s :=
    hf.lipschitzOnWith.extend_finite_dimension
  let g : E → F := fun x => f' x + u x
  have fg : EqOn f g s := fun x hx => by simp_rw [g, ← uf hx, Pi.sub_apply, add_sub_cancel]
  have hg : ApproximatesLinearOn g (f' : E →L[ℝ] F) univ (lipschitzExtensionConstant F * c) := by
    apply LipschitzOnWith.approximatesLinearOn
    rw [lipschitzOnWith_univ]
    convert hu
    ext x
    simp only [g, add_sub_cancel_left, ContinuousLinearEquiv.coe_coe, Pi.sub_apply]
  haveI : FiniteDimensional ℝ E := f'.symm.finiteDimensional
  exact ⟨hg.toHomeomorph g hc, fg⟩

end ApproximatesLinearOn
```
