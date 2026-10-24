-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.DifferentialGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.DifferentialGeometry.SmoothRing.Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.DifferentialGeometry.SourceCorpus.SmoothRing.Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec","mathematical_subject":"Geometry.DifferentialGeometry","original_sha256":"00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Geometry/Manifold/Algebra/Structures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright © 2020 Nicolò Cavalleri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolò Cavalleri
-/
import Mathlib.Geometry.Manifold.Algebra.LieGroup


namespace GRWTSK.Geometry.DifferentialGeometry.SmoothRing.Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec

#align_import geometry.manifold.algebra.structures from "leanprover-community/mathlib"@"d1bd9c5df2867c1cb463bc6364446d57bdd9f7f1"

/-!
# Smooth structures

In this file we define smooth structures that build on Lie groups. We prefer using the term smooth
instead of Lie mainly because Lie ring has currently another use in mathematics.
-/

open scoped Manifold

section SmoothRing

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] {H : Type*} [TopologicalSpace H] {E : Type*}
  [NormedAddCommGroup E] [NormedSpace 𝕜 E]

-- See note [Design choices about smooth algebraic structures]
/-- A smooth (semi)ring is a (semi)ring `R` where addition and multiplication are smooth.
If `R` is a ring, then negation is automatically smooth, as it is multiplication with `-1`. -/
class SmoothRing (I : ModelWithCorners 𝕜 E H) (R : Type*) [Semiring R] [TopologicalSpace R]
    [ChartedSpace H R] extends SmoothAdd I R : Prop where
  smooth_mul : Smooth (I.prod I) I fun p : R × R => p.1 * p.2
#align smooth_ring SmoothRing

-- see Note [lower instance priority]
instance (priority := 100) SmoothRing.toSmoothMul (I : ModelWithCorners 𝕜 E H) (R : Type*)
    [Semiring R] [TopologicalSpace R] [ChartedSpace H R] [h : SmoothRing I R] :
    SmoothMul I R :=
  { h with }
#align smooth_ring.to_has_smooth_mul SmoothRing.toSmoothMul

-- see Note [lower instance priority]
instance (priority := 100) SmoothRing.toLieAddGroup (I : ModelWithCorners 𝕜 E H) (R : Type*)
    [Ring R] [TopologicalSpace R] [ChartedSpace H R] [SmoothRing I R] : LieAddGroup I R where
  compatible := StructureGroupoid.compatible (contDiffGroupoid ⊤ I)
  smooth_add := smooth_add I
  smooth_neg := by simpa only [neg_one_mul] using @smooth_mul_left 𝕜 _ H _ E _ _ I R _ _ _ _ (-1)
#align smooth_ring.to_lie_add_group SmoothRing.toLieAddGroup

end SmoothRing

-- see Note [lower instance priority]
instance (priority := 100) fieldSmoothRing {𝕜 : Type*} [NontriviallyNormedField 𝕜] :
    SmoothRing 𝓘(𝕜) 𝕜 :=
  { normedSpaceLieAddGroup with
    smooth_mul := by
      rw [smooth_iff]
      refine' ⟨continuous_mul, fun x y => _⟩
      simp only [Prod.mk.eta, mfld_simps]
      rw [contDiffOn_univ]
      exact contDiff_mul }
#align field_smooth_ring fieldSmoothRing

variable {𝕜 R E H : Type*} [TopologicalSpace R] [TopologicalSpace H] [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup E] [NormedSpace 𝕜 E] [ChartedSpace H R] (I : ModelWithCorners 𝕜 E H)

/-- A smooth (semi)ring is a topological (semi)ring. This is not an instance for technical reasons,
see note [Design choices about smooth algebraic structures]. -/
theorem topologicalSemiring_of_smooth [Semiring R] [SmoothRing I R] : TopologicalSemiring R :=
  { continuousMul_of_smooth I, continuousAdd_of_smooth I with }
#align topological_semiring_of_smooth topologicalSemiring_of_smooth
