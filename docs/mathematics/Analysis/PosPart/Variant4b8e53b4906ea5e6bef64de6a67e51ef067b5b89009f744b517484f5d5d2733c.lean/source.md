# Complete source: GRWTSK.Analysis.PosPart.Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `229b9077e01de4f2b8915ccd9da8bf3c62ba3ec9` · SHA-256 `3f17fbc0b01d3c8ef066b7cfd17ce5f2f3c69dc9ee508b060e8e861b8cdb1f77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealToRCLikePosPartNegPart.Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.GeneralAnalysis.SourceCorpus.RealToRCLikePosPartNegPart.Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404","mathematical_subject":"Analysis.GeneralAnalysis","original_sha256":"b8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/CStarAlgebra/Commutative/PosPart.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/

module

public import Mathlib.Analysis.RCLike.ContinuousMap
public import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Basic
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Range
import Mathlib.Analysis.CStarAlgebra.Hom

/-! # monotonicity of `a ↦ a⁺` on commuting elements in a C⋆-algebra -/


namespace GRWTSK.Analysis.RealToRCLikePosPartNegPart.Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404

open scoped CStarAlgebra ComplexOrder

public section

namespace ContinuousMap

variable {X : Type*} [TopologicalSpace X] [CompactSpace X] (f : C(X, ℝ))

/-- This lemma is perhaps a bit deceptive because the `⁺`,`⁻` that appear on the right and on the
left come from entirely different instances. On the left-hand side, the `⁺`,`⁻` come from the
continuous functional calculus on the C⋆-algebra `C(X, ℂ)`. On the right-hand side, the `⁺`,`⁻`
come from the fact that `C(X, ℝ)` is lattice and an additive group. -/
private lemma realToRCLike_posPart_negPart :
    (f.realToRCLike ℂ)⁺ = f⁺.realToRCLike ℂ ∧ (f.realToRCLike ℂ)⁻ = f⁻.realToRCLike ℂ := by
  refine CFC.posPart_negPart_unique ?_ ?_ ?_ ?_ <;> simp_rw [← realToRCLikeStarAlgHom_apply]
  · simp only [← map_sub, posPart_sub_negPart]
  · rw [← map_mul, ← map_zero (realToRCLikeStarAlgHom X ℂ)]
    congr!
    ext x
    obtain hx | hx := le_total 0 (f x)
    · simpa [negPart_def] using Or.inr hx
    · simpa [posPart_def] using Or.inl hx
  · simpa [← realToRCLikeStarAlgHom_apply] using realToRCLike_monotone X ℂ (posPart_nonneg f)
  · simpa [← realToRCLikeStarAlgHom_apply] using realToRCLike_monotone X ℂ (negPart_nonneg f)

lemma realToRCLike_posPart : (f.realToRCLike ℂ)⁺ = f⁺.realToRCLike ℂ :=
  f.realToRCLike_posPart_negPart.1

lemma realToRCLike_negPart : (f.realToRCLike ℂ)⁻ = f⁻.realToRCLike ℂ :=
  f.realToRCLike_posPart_negPart.2

end ContinuousMap

namespace CStarAlgebra

section Comm

variable (A : Type*) [NonUnitalCommCStarAlgebra A] [PartialOrder A] [StarOrderedRing A]

open ContinuousMap WeakDual in
/-- In a commutative C⋆-algebra, the positive part map `fun a ↦ a⁺` is monotone. -/
protected lemma posPart_mono : Monotone (fun a : A ↦ a⁺) := by
  let φ : A →⋆ₙₐ[ℂ] C(characterSpace ℂ A⁺¹, ℂ) :=
    .comp (gelfandStarTransform A⁺¹).toNonUnitalStarAlgHom (Unitization.inrNonUnitalStarAlgHom ℂ A)
  have hφ : Isometry φ :=
    StarAlgEquiv.isometry (gelfandStarTransform (A⁺¹)) |>.comp <| Unitization.isometry_inr
  intro a b hab
  simp only
  by_cases ha : IsSelfAdjoint a
  · have hb := ha.of_ge hab
    have key₁ {a : A} (ha : IsSelfAdjoint a) : φ a⁺ = (φ a)⁺ :=
      φ.restrictScalars ℝ |>.map_cfcₙ _ a (hφ := hφ.continuous)
    rw [← NonUnitalStarAlgHom.map_le_map_iff φ hφ.injective, key₁ ha, key₁ hb]
    have := realToRCLike_monotone _ ℂ <| posPart_mono <| rclikeToReal_monotone _ _ <|
      OrderHomClass.mono φ hab
    simpa [← realToRCLike_posPart, IsSelfAdjoint.realToRCLike_rclikeToReal, ha.map φ, hb.map φ]
  · simp [CFC.posPart_def, cfcₙ_apply_of_not_predicate, ha, mt (IsSelfAdjoint.of_le hab) ha]

/-- In a commutative C⋆-algebra, the negative part map `fun a ↦ a⁻` is antitone. -/
protected lemma negPart_anti : Antitone (fun a : A ↦ a⁻) := by
  simpa [Function.comp_def] using
    CStarAlgebra.posPart_mono A |>.comp_antitone monotone_id.neg

end Comm

section NonComm

variable {A : Type*} [NonUnitalCStarAlgebra A] [PartialOrder A] [StarOrderedRing A]

open NonUnitalStarAlgebra in
open scoped IsMulCommutative in
/-- The positive part map `fun a ↦ a⁺` is monotone on commuting selfadjoint elements in
a C⋆-algebra -/
protected lemma Commute.posPart_mono {a b : A} (hab : Commute a b) (hle : a ≤ b)
    (ha : IsSelfAdjoint a := by cfc_tac) (hb : IsSelfAdjoint b := by cfc_tac) :
    a⁺ ≤ b⁺ := by
  let S := (adjoin ℂ {a, b}).topologicalClosure
  have : IsMulCommutative S := have := isMulCommutative_nonUnital_adjoin_pair hab; inferInstance
  have : IsClosed (S : Set A) := NonUnitalStarSubalgebra.isClosed_topologicalClosure _
  have h : a ∈ S ∧ b ∈ S := by constructor <;> exact subset_closure <| subset_adjoin _ _ <| by simp
  clear_value S
  lift a to S using h.1
  lift b to S using h.2
  have : (↑a⁺ : A) ≤ (↑b⁺ : A) := by simpa using CStarAlgebra.posPart_mono S hle
  simp only [← NonUnitalStarSubalgebraClass.subtype_apply, CFC.posPart_def] at this ⊢
  rwa [← NonUnitalStarAlgHomClass.map_cfcₙ .., ← NonUnitalStarAlgHomClass.map_cfcₙ ..]

/-- The negative part map `fun a ↦ a⁻` is antitone on commuting selfadjoint elements in
a C⋆-algebra -/
protected lemma Commute.negPart_anti {a b : A} (hab : Commute a b) (hle : a ≤ b)
    (ha : IsSelfAdjoint a := by cfc_tac) (hb : IsSelfAdjoint b := by cfc_tac) :
    b⁻ ≤ a⁻ := by
  rw [← CFC.posPart_neg, ← CFC.posPart_neg]
  exact CStarAlgebra.Commute.posPart_mono (by simpa using hab.symm) (by simpa)

end NonComm

end CStarAlgebra
```
