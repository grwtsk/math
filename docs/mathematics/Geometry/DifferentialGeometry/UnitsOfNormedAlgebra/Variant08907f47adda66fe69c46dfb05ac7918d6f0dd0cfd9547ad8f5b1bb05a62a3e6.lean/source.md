# Complete source: GRWTSK.Geometry.DifferentialGeometry.UnitsOfNormedAlgebra.Variant08907f47adda66fe69c46dfb05ac7918d6f0dd0cfd9547ad8f5b1bb05a62a3e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ac0fcb958be76947e953271a33d3ac32eb9937f` · SHA-256 `5a297ded1dab72c01e8f520b90d0fd2555af400de716e3aab95aa99a3ce71693`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.DifferentialGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.DifferentialGeometry.ChartAtApply.Variant68cbaeb393282ebadf8d00e8530f3d6e018550e546167baaf5e59b892fb98dbb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68cbaeb393282ebadf8d00e8530f3d6e018550e546167baaf5e59b892fb98dbb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.DifferentialGeometry.SourceCorpus.ChartAtApply.Variant68cbaeb393282ebadf8d00e8530f3d6e018550e546167baaf5e59b892fb98dbb","mathematical_subject":"Geometry.DifferentialGeometry","original_sha256":"68cbaeb393282ebadf8d00e8530f3d6e018550e546167baaf5e59b892fb98dbb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Geometry/Manifold/Instances/UnitsOfNormedAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Nicolò Cavalleri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolò Cavalleri, Heather Macbeth, Winston Yin
-/
import Mathlib.Geometry.Manifold.Algebra.LieGroup

/-!
# Units of a normed algebra

We construct the Lie group structure on the group of units of a complete normed `𝕜`-algebra `R`. The
group of units `Rˣ` has a natural `C^n` manifold structure modelled on `R` given by its embedding
into `R`. Together with the smoothness of the multiplication and inverse of its elements, `Rˣ` forms
a Lie group.

An important special case of this construction is the general linear group.  For a normed space `V`
over a field `𝕜`, the `𝕜`-linear endomorphisms of `V` are a normed `𝕜`-algebra (see
`ContinuousLinearMap.toNormedAlgebra`), so this construction provides a Lie group structure on
its group of units, the general linear group GL(`𝕜`, `V`), as demonstrated by:
```
example {V : Type*} [NormedAddCommGroup V] [NormedSpace 𝕜 V] [CompleteSpace V] :
    LieGroup 𝓘(𝕜, V →L[𝕜] V) (V →L[𝕜] V)ˣ := inferInstance
```
-/



namespace GRWTSK.Geometry.DifferentialGeometry.ChartAtApply.Variant68cbaeb393282ebadf8d00e8530f3d6e018550e546167baaf5e59b892fb98dbb

noncomputable section

open scoped Manifold ContDiff

namespace Units

variable {R : Type*} [NormedRing R] [CompleteSpace R] {n : WithTop ℕ∞}

instance : ChartedSpace R Rˣ :=
  isOpenEmbedding_val.singletonChartedSpace

theorem chartAt_apply {a : Rˣ} {b : Rˣ} : chartAt R a b = b :=
  rfl

theorem chartAt_source {a : Rˣ} : (chartAt R a).source = Set.univ :=
  rfl

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] [NormedAlgebra 𝕜 R]

instance : IsManifold 𝓘(𝕜, R) n Rˣ :=
  isOpenEmbedding_val.isManifold_singleton

/-- For a complete normed ring `R`, the embedding of the units `Rˣ` into `R` is a `C^n` map between
manifolds. -/
lemma contMDiff_val : ContMDiff 𝓘(𝕜, R) 𝓘(𝕜, R) n (val : Rˣ → R) :=
  contMDiff_isOpenEmbedding Units.isOpenEmbedding_val

/-- The units of a complete normed ring form a Lie group. -/
instance : LieGroup 𝓘(𝕜, R) n Rˣ where
  contMDiff_mul := by
    apply ContMDiff.of_comp_isOpenEmbedding Units.isOpenEmbedding_val
    have : (val : Rˣ → R) ∘ (fun x : Rˣ × Rˣ => x.1 * x.2) =
      (fun x : R × R => x.1 * x.2) ∘ (fun x : Rˣ × Rˣ => (x.1, x.2)) := by ext; simp
    rw [this]
    have : ContMDiff (𝓘(𝕜, R).prod 𝓘(𝕜, R)) 𝓘(𝕜, R × R) n
      (fun x : Rˣ × Rˣ => ((x.1 : R), (x.2 : R))) :=
      (contMDiff_val.comp contMDiff_fst).prodMk_space (contMDiff_val.comp contMDiff_snd)
    refine ContMDiff.comp ?_ this
    rw [contMDiff_iff_contDiff]
    exact contDiff_mul
  contMDiff_inv := by
    apply ContMDiff.of_comp_isOpenEmbedding Units.isOpenEmbedding_val
    have : (val : Rˣ → R) ∘ (fun x : Rˣ => x⁻¹) = Ring.inverse ∘ val := by ext; simp
    rw [this, ContMDiff]
    refine fun x => ContMDiffAt.comp x ?_ (contMDiff_val x)
    rw [contMDiffAt_iff_contDiffAt]
    exact contDiffAt_ringInverse _ _

end Units
````
