# Complete source: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.MDifferentiable.Variantb62c6d306d5917361c93b6d82e14c30a1183300e0625a7c1114b57d1298a3f03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77c42853ea140f85adc91f9cd587ccf2d81d8dc6` · SHA-256 `7cb0e563da90a878e7123e6d86921de864a71fc24ba95625de34f059cee945fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AutomorphicForms.ModularForms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AutomorphicForms.ModularForms.E2Mdifferentiable.Variant1eba1f83b7a90fc7e83d3dde76cc85856fbbe8aada4b7c769298aea95adff89f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1eba1f83b7a90fc7e83d3dde76cc85856fbbe8aada4b7c769298aea95adff89f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ModularForms.SourceCorpus.E2Mdifferentiable.Variant1eba1f83b7a90fc7e83d3dde76cc85856fbbe8aada4b7c769298aea95adff89f","mathematical_subject":"NumberTheory.ModularForms","original_sha256":"1eba1f83b7a90fc7e83d3dde76cc85856fbbe8aada4b7c769298aea95adff89f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/ModularForms/EisensteinSeries/E2/MDifferentiable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/

module

public import Mathlib.NumberTheory.ModularForms.DedekindEta

/-!
# MDifferentiability of the weight 2 Eisenstein series

We show that the weight 2 Eisenstein series `E2` is MDifferentiable (i.e. holomorphic as a
function `ℍ → ℂ`). The proof uses the relation between `E2` and the logarithmic derivative of
the Dedekind eta function.
-/


namespace GRWTSK.NumberTheory.AutomorphicForms.ModularForms.E2Mdifferentiable.Variant1eba1f83b7a90fc7e83d3dde76cc85856fbbe8aada4b7c769298aea95adff89f

public section

open UpperHalfPlane hiding I
open Real Complex EisensteinSeries ModularForm

open scoped Manifold


--This proof was provided by Gauss to the sphere packing project.
/-- The weight 2 Eisenstein series `E2` is MDifferentiable -/
lemma E2_mdifferentiable : MDiff E2 := by
  rw [UpperHalfPlane.mdifferentiable_iff]
  have hη : DifferentiableOn ℂ η _ := fun z hz ↦
    (differentiableAt_eta_of_mem_upperHalfPlaneSet hz).differentiableWithinAt
  have hlog : DifferentiableOn ℂ (logDeriv η) _ :=
    (hη.deriv isOpen_upperHalfPlaneSet).div hη (fun _ hz ↦ eta_ne_zero hz)
  refine (hlog.const_mul (π * I / 12)⁻¹).congr (fun z hz ↦ ?_)
  simp [ofComplex_apply_of_im_pos hz, logDeriv_eta_eq_E2 ⟨z, hz⟩]
  field_simp

end
```
