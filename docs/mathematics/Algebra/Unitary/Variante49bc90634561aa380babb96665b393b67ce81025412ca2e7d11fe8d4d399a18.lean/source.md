# Complete source: GRWTSK.Algebra.Unitary.Variante49bc90634561aa380babb96665b393b67ce81025412ca2e7d11fe8d4d399a18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `666b673cbee326b8e867e0000911943e7f9a2de4` · SHA-256 `df0645b2aab2beb2c731ec9d2573a09dc8c8b72cb1714cf7ddf1c877fa43f356`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CfcUnitaryIff.Variant6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CfcUnitaryIff.Variant6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/CStarAlgebra/ContinuousFunctionalCalculus/Unitary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Tactic.Peel
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital
import Mathlib.Analysis.Complex.Basic

/-! # Conditions on unitary elements imposed by the continuous functional calculus

## Main theorems

* `unitary_iff_isStarNormal_and_spectrum_subset_unitary`: An element is unitary if and only if it is
  star-normal and its spectrum lies on the unit circle.

-/


namespace GRWTSK.Algebra.CfcUnitaryIff.Variant6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a

section Generic

variable {R A : Type*} {p : A → Prop} [CommRing R] [StarRing R] [MetricSpace R]
variable [IsTopologicalRing R] [ContinuousStar R] [TopologicalSpace A] [Ring A] [StarRing A]
variable [Algebra R A] [ContinuousFunctionalCalculus R A p]

lemma cfc_unitary_iff (f : R → R) (a : A) (ha : p a := by cfc_tac)
    (hf : ContinuousOn f (spectrum R a) := by cfc_cont_tac) :
    cfc f a ∈ unitary A ↔ ∀ x ∈ spectrum R a, star (f x) * f x = 1 := by
  simp only [unitary, Submonoid.mem_mk, Subsemigroup.mem_mk, Set.mem_setOf_eq]
  rw [← IsStarNormal.cfc_map (p := p) f a |>.star_comm_self |>.eq, and_self, ← cfc_one R a,
    ← cfc_star, ← cfc_mul .., cfc_eq_cfc_iff_eqOn]
  exact Iff.rfl

end Generic

section Complex

variable {A : Type*} [TopologicalSpace A] [Ring A] [StarRing A] [Algebra ℂ A]
  [ContinuousFunctionalCalculus ℂ A IsStarNormal]

lemma unitary_iff_isStarNormal_and_spectrum_subset_unitary {u : A} :
    u ∈ unitary A ↔ IsStarNormal u ∧ spectrum ℂ u ⊆ unitary ℂ := by
  rw [← and_iff_right_of_imp isStarNormal_of_mem_unitary]
  refine and_congr_right fun hu ↦ ?_
  nth_rw 1 [← cfc_id ℂ u]
  rw [cfc_unitary_iff id u, Set.subset_def]
  simp only [id_eq, RCLike.star_def, SetLike.mem_coe, unitary.mem_iff_star_mul_self]

lemma mem_unitary_of_spectrum_subset_unitary {u : A}
    [IsStarNormal u] (hu : spectrum ℂ u ⊆ unitary ℂ) : u ∈ unitary A :=
  unitary_iff_isStarNormal_and_spectrum_subset_unitary.mpr ⟨‹_›, hu⟩

lemma spectrum_subset_unitary_of_mem_unitary {u : A} (hu : u ∈ unitary A) :
    spectrum ℂ u ⊆ unitary ℂ :=
  unitary_iff_isStarNormal_and_spectrum_subset_unitary.mp hu |>.right

end Complex
```
