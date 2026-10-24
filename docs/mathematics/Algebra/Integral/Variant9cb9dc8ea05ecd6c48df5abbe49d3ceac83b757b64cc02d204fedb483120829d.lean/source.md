# Complete source: GRWTSK.Algebra.Integral.Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24ca1b6eb3926c566fe749cd58cc094dbd5e2733` · SHA-256 `fe465832567e818bce3d6986e4611bb2e31e2081b4dee87d0c82af01272440d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsIntegralStableUnderComposition.Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsIntegralStableUnderComposition.Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"a96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/RingHom/Integral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.LocalProperties.Basic
import Mathlib.RingTheory.Localization.Integral

/-!

# The meta properties of integral ring homomorphisms.

-/



namespace GRWTSK.Algebra.IsIntegralStableUnderComposition.Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90

namespace RingHom

open scoped TensorProduct

open TensorProduct Algebra.TensorProduct

theorem isIntegral_stableUnderComposition : StableUnderComposition fun f => f.IsIntegral := by
  introv R hf hg; exact hf.trans _ _ hg

theorem isIntegral_respectsIso : RespectsIso fun f => f.IsIntegral := by
  apply isIntegral_stableUnderComposition.respectsIso
  introv x
  rw [← e.apply_symm_apply x]
  apply RingHom.isIntegralElem_map

theorem isIntegral_isStableUnderBaseChange : IsStableUnderBaseChange fun f => f.IsIntegral := by
  refine IsStableUnderBaseChange.mk isIntegral_respectsIso ?_
  introv h x
  refine TensorProduct.induction_on x ?_ ?_ ?_
  · apply isIntegral_zero
  · intro x y; exact IsIntegral.tmul x (h y)
  · intro x y hx hy; exact IsIntegral.add hx hy

open Polynomial in
/-- `S` is an integral `R`-algebra if there exists a set `{ r }` that
  spans `R` such that each `Sᵣ` is an integral `Rᵣ`-algebra. -/
theorem isIntegral_ofLocalizationSpan :
    OfLocalizationSpan (RingHom.IsIntegral ·) := by
  introv R hs H r
  letI := f.toAlgebra
  show r ∈ (integralClosure R S).toSubmodule
  apply Submodule.mem_of_span_eq_top_of_smul_pow_mem _ s hs
  rintro ⟨t, ht⟩
  letI := (Localization.awayMap f t).toAlgebra
  haveI : IsScalarTower R (Localization.Away t) (Localization.Away (f t)) := .of_algebraMap_eq'
    (IsLocalization.lift_comp _).symm
  have : _root_.IsIntegral (Localization.Away t) (algebraMap S (Localization.Away (f t)) r) :=
    H ⟨t, ht⟩ (algebraMap _ _ r)
  obtain ⟨⟨_, n, rfl⟩, p, hp, hp'⟩ := this.exists_multiple_integral_of_isLocalization (.powers t)
  rw [IsScalarTower.algebraMap_eq R S, Submonoid.smul_def, Algebra.smul_def,
    IsScalarTower.algebraMap_apply R S, ← map_mul, ← hom_eval₂,
    IsLocalization.map_eq_zero_iff (.powers (f t))] at hp'
  obtain ⟨⟨x, m, (rfl : algebraMap R S t ^ m = x)⟩, e⟩ := hp'
  by_cases hp' : 1 ≤ p.natDegree; swap
  · obtain rfl : p = 1 := eq_one_of_monic_natDegree_zero hp (by omega)
    exact ⟨m, by simp [Algebra.smul_def, show algebraMap R S t ^ m = 0 by simpa using e]⟩
  refine ⟨m + n, p.scaleRoots (t ^ m), (monic_scaleRoots_iff _).mpr hp, ?_⟩
  have := p.scaleRoots_eval₂_mul (algebraMap R S) (t ^ n • r) (t ^ m)
  simp only [pow_add, ← Algebra.smul_def, mul_smul, ← map_pow] at e this ⊢
  rw [this, ← tsub_add_cancel_of_le hp', pow_succ, mul_smul, e, smul_zero]

end RingHom
```
