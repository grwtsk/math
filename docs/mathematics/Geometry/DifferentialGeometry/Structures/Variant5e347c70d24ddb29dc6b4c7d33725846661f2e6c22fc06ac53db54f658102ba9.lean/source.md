# Complete source: GRWTSK.Geometry.DifferentialGeometry.Structures.Variant5e347c70d24ddb29dc6b4c7d33725846661f2e6c22fc06ac53db54f658102ba9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff44e18ffc8ab1fca92250e27d1163f636b96862` · SHA-256 `2562f3342dc0aa5447ae953bab881401f8eeb42708158c78b1f0da262f4b2e2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.DifferentialGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.DifferentialGeometry.ContMDiffRing.Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.DifferentialGeometry.SourceCorpus.ContMDiffRing.Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679","mathematical_subject":"Geometry.DifferentialGeometry","original_sha256":"9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Geometry/Manifold/Algebra/Structures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Nicolò Cavalleri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolò Cavalleri
-/
import Mathlib.Geometry.Manifold.Algebra.LieGroup

/-!
# `C^n` structures

In this file we define `C^n` structures that build on Lie groups. We prefer using the
term `ContMDiffRing` instead of Lie mainly because Lie ring has currently another use
in mathematics.
-/


namespace GRWTSK.Geometry.DifferentialGeometry.ContMDiffRing.Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679

open scoped Manifold ContDiff

section ContMDiffRing

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] {H : Type*} [TopologicalSpace H] {E : Type*}
  [NormedAddCommGroup E] [NormedSpace 𝕜 E] {n : WithTop ℕ∞}

-- See note [Design choices about smooth algebraic structures]
/-- A `C^n` (semi)ring is a (semi)ring `R` where addition and multiplication are `C^n`.
If `R` is a ring, then negation is automatically `C^n`, as it is multiplication with `-1`. -/
class ContMDiffRing (I : ModelWithCorners 𝕜 E H) (n : WithTop ℕ∞)
    (R : Type*) [Semiring R] [TopologicalSpace R] [ChartedSpace H R] : Prop
    extends ContMDiffAdd I n R where
  contMDiff_mul : ContMDiff (I.prod I) I n fun p : R × R => p.1 * p.2

@[deprecated (since := "2025-01-09")] alias SmoothRing := ContMDiffRing

-- see Note [lower instance priority]
instance (priority := 100) ContMDiffRing.toContMDiffMul (I : ModelWithCorners 𝕜 E H) (R : Type*)
    [Semiring R] [TopologicalSpace R] [ChartedSpace H R] [h : ContMDiffRing I n R] :
    ContMDiffMul I n R :=
  { h with }

-- see Note [lower instance priority]
instance (priority := 100) ContMDiffRing.toLieAddGroup (I : ModelWithCorners 𝕜 E H) (R : Type*)
    [Ring R] [TopologicalSpace R] [ChartedSpace H R] [ContMDiffRing I n R] : LieAddGroup I n R where
  compatible := StructureGroupoid.compatible (contDiffGroupoid n I)
  contMDiff_add := contMDiff_add I n
  contMDiff_neg := by simpa only [neg_one_mul] using contMDiff_mul_left (G := R) (a := -1)

end ContMDiffRing

-- see Note [lower instance priority]
instance (priority := 100) instFieldContMDiffRing
    {𝕜 : Type*} [NontriviallyNormedField 𝕜] {n : WithTop ℕ∞} :
    ContMDiffRing 𝓘(𝕜) n 𝕜 :=
  { instNormedSpaceLieAddGroup with
    contMDiff_mul := by
      rw [contMDiff_iff]
      refine ⟨continuous_mul, fun x y => ?_⟩
      simp only [mfld_simps]
      rw [contDiffOn_univ]
      exact contDiff_mul }

variable {𝕜 R E H : Type*} [TopologicalSpace R] [TopologicalSpace H] [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup E] [NormedSpace 𝕜 E] [ChartedSpace H R] (I : ModelWithCorners 𝕜 E H)
  (n : WithTop ℕ∞)

/-- A `C^n` (semi)ring is a topological (semi)ring. This is not an instance for technical reasons,
see note [Design choices about smooth algebraic structures]. -/
theorem topologicalSemiring_of_contMDiffRing [Semiring R] [ContMDiffRing I n R] :
    IsTopologicalSemiring R :=
  { continuousMul_of_contMDiffMul I n, continuousAdd_of_contMDiffAdd I n with }

@[deprecated (since := "2025-01-09")]
alias topologicalSemiring_of_smooth := topologicalSemiring_of_contMDiffRing
```
