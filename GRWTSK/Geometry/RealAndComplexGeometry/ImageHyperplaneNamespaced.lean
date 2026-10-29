-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.InversionMemPerpBisectorInversionIff.Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.InversionMemPerpBisectorInversionIff.Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Geometry/Euclidean/Inversion/ImageHyperplane.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Geometry.Euclidean.Inversion.Basic
import Mathlib.Geometry.Euclidean.PerpBisector

/-!
# Image of a hyperplane under inversion

In this file we prove that the inversion with center `c` and radius `R ≠ 0` maps a sphere passing
through the center to a hyperplane, and vice versa. More precisely, it maps a sphere with center
`y ≠ c` and radius `dist y c` to the hyperplane
`AffineSubspace.perpBisector c (EuclideanGeometry.inversion c R y)`.

The exact statements are a little more complicated because `EuclideanGeometry.inversion c R` sends
the center to itself, not to a point at infinity.

We also prove that the inversion sends an affine subspace passing through the center to itself.

## Keywords

inversion
-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.InversionMemPerpBisectorInversionIff.Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1

open Metric Function AffineMap Set AffineSubspace
open scoped Topology

variable {V P : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace P]
  [NormedAddTorsor V P] {c x y : P} {R : ℝ}

namespace EuclideanGeometry

/-- The inversion with center `c` and radius `R` maps a sphere passing through the center to a
hyperplane. -/
theorem inversion_mem_perpBisector_inversion_iff (hR : R ≠ 0) (hx : x ≠ c) (hy : y ≠ c) :
    inversion c R x ∈ perpBisector c (inversion c R y) ↔ dist x y = dist y c := by
  rw [mem_perpBisector_iff_dist_eq, dist_inversion_inversion hx hy, dist_inversion_center]
  have hx' := dist_ne_zero.2 hx
  have hy' := dist_ne_zero.2 hy
  -- takes 300ms, but the "equivalent" simp call fails -> hard to speed up
  field_simp [mul_assoc, mul_comm, hx, hx.symm, eq_comm]

/-- The inversion with center `c` and radius `R` maps a sphere passing through the center to a
hyperplane. -/
theorem inversion_mem_perpBisector_inversion_iff' (hR : R ≠ 0) (hy : y ≠ c) :
    inversion c R x ∈ perpBisector c (inversion c R y) ↔ dist x y = dist y c ∧ x ≠ c := by
  rcases eq_or_ne x c with rfl | hx
  · simp [*]
  · simp [inversion_mem_perpBisector_inversion_iff hR hx hy, hx]

theorem preimage_inversion_perpBisector_inversion (hR : R ≠ 0) (hy : y ≠ c) :
    inversion c R ⁻¹' perpBisector c (inversion c R y) = sphere y (dist y c) \ {c} :=
  Set.ext fun _ ↦ inversion_mem_perpBisector_inversion_iff' hR hy

theorem preimage_inversion_perpBisector (hR : R ≠ 0) (hy : y ≠ c) :
    inversion c R ⁻¹' perpBisector c y = sphere (inversion c R y) (R ^ 2 / dist y c) \ {c} := by
  rw [← dist_inversion_center, ← preimage_inversion_perpBisector_inversion hR,
    inversion_inversion] <;> simp [*]

theorem image_inversion_perpBisector (hR : R ≠ 0) (hy : y ≠ c) :
    inversion c R '' perpBisector c y = sphere (inversion c R y) (R ^ 2 / dist y c) \ {c} := by
  rw [image_eq_preimage_of_inverse (inversion_involutive _ hR) (inversion_involutive _ hR),
    preimage_inversion_perpBisector hR hy]

theorem preimage_inversion_sphere_dist_center (hR : R ≠ 0) (hy : y ≠ c) :
    inversion c R ⁻¹' sphere y (dist y c) =
      insert c (perpBisector c (inversion c R y) : Set P) := by
  ext x
  rcases eq_or_ne x c with rfl | hx; · simp [dist_comm]
  rw [mem_preimage, mem_sphere, ← inversion_mem_perpBisector_inversion_iff hR] <;> simp [*]

theorem image_inversion_sphere_dist_center (hR : R ≠ 0) (hy : y ≠ c) :
    inversion c R '' sphere y (dist y c) = insert c (perpBisector c (inversion c R y) : Set P) := by
  rw [image_eq_preimage_of_inverse (inversion_involutive _ hR) (inversion_involutive _ hR),
    preimage_inversion_sphere_dist_center hR hy]

/-- Inversion sends an affine subspace passing through the center to itself. -/
theorem mapsTo_inversion_affineSubspace_of_mem {p : AffineSubspace ℝ P} (hp : c ∈ p) :
    MapsTo (inversion c R) p p := fun _ ↦ AffineMap.lineMap_mem _ hp

/-- Inversion sends an affine subspace passing through the center to itself. -/
theorem image_inversion_affineSubspace_of_mem {p : AffineSubspace ℝ P} (hR : R ≠ 0) (hp : c ∈ p) :
    inversion c R '' p = p :=
  (mapsTo_inversion_affineSubspace_of_mem hp).image_subset.antisymm fun x hx ↦
    ⟨inversion c R x, mapsTo_inversion_affineSubspace_of_mem hp hx, inversion_inversion _ hR _⟩

end EuclideanGeometry
