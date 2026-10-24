# Complete source: GRWTSK.Algebra.RingTheory.Integral.Variante6494c6b96c5537ac54f0117bf831b07c556ca76b2dbad80b7cf4d6c7f322936

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9139f2ed4b9f9858fd717af4c6c53334d18acc3` · SHA-256 `242a440312efdc7beca4b0bbb5a59526b091d97fc402cd1ba905c575ca20c45b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.RingTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingTheory.IsIntegralStableUnderComposition.Variant4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.IsIntegralStableUnderComposition.Variant4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/RingTheory/RingHom/Integral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.RingHomProperties
import Mathlib.RingTheory.IntegralClosure


namespace GRWTSK.Algebra.RingTheory.IsIntegralStableUnderComposition.Variant4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2

#align_import ring_theory.ring_hom.integral from "leanprover-community/mathlib"@"a7c017d750512a352b623b1824d75da5998457d0"

/-!

# The meta properties of integral ring homomorphisms.

-/


namespace RingHom

open scoped TensorProduct

open TensorProduct Algebra.TensorProduct

theorem isIntegral_stableUnderComposition : StableUnderComposition fun f => f.IsIntegral := by
  introv R hf hg; exact RingHom.isIntegral_trans _ _ hf hg
#align ring_hom.is_integral_stable_under_composition RingHom.isIntegral_stableUnderComposition

theorem isIntegral_respectsIso : RespectsIso fun f => f.IsIntegral := by
  apply isIntegral_stableUnderComposition.respectsIso
  introv x
  rw [← e.apply_symm_apply x]
  apply RingHom.is_integral_map
#align ring_hom.is_integral_respects_iso RingHom.isIntegral_respectsIso

theorem isIntegral_stableUnderBaseChange : StableUnderBaseChange fun f => f.IsIntegral := by
  refine' StableUnderBaseChange.mk _ isIntegral_respectsIso _
  introv h x
  refine' TensorProduct.induction_on x _ _ _
  · apply isIntegral_zero
  · intro x y; exact IsIntegral.tmul x (h y)
  · intro x y hx hy; exact isIntegral_add hx hy
#align ring_hom.is_integral_stable_under_base_change RingHom.isIntegral_stableUnderBaseChange

end RingHom
```
