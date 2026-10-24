# Complete source: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.InnerProductSpace.Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66230d46bd9b33503d173121651457cd59c87137` · SHA-256 `67e18a6b55cd6d20fe73e5b2546065ba635c22404f241b62d83b253d951b2780`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: DifferentialEquationsAndDynamicalSystems.DynamicalSystems
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.ToMeasurableEquiv.Variant9c3704d31949a38dacbf1f18fbd4e1412c421c7f2af94b263122a0413de3f310","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9c3704d31949a38dacbf1f18fbd4e1412c421c7f2af94b263122a0413de3f310","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.DynamicalSystems.SourceCorpus.ToMeasurableEquiv.Variant9c3704d31949a38dacbf1f18fbd4e1412c421c7f2af94b263122a0413de3f310","mathematical_subject":"Analysis.DynamicalSystems","original_sha256":"9c3704d31949a38dacbf1f18fbd4e1412c421c7f2af94b263122a0413de3f310","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Measure/Haar/InnerProductSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Analysis.InnerProductSpace.Orientation
import Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar

/-!
# Volume forms and measures on inner product spaces

A volume form induces a Lebesgue measure on general finite-dimensional real vector spaces. In this
file, we discuss the specific situation of inner product spaces, where an orientation gives
rise to a canonical volume form. We show that the measure coming from this volume form gives
measure `1` to the parallelepiped spanned by any orthonormal basis, and that it coincides with
the canonical `volume` from the `MeasureSpace` instance.
-/


namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.ToMeasurableEquiv.Variant9c3704d31949a38dacbf1f18fbd4e1412c421c7f2af94b263122a0413de3f310

open Module MeasureTheory MeasureTheory.Measure Set

variable {ι E F : Type*}

variable [NormedAddCommGroup F] [InnerProductSpace ℝ F]
  [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  [MeasurableSpace E] [BorelSpace E] [MeasurableSpace F] [BorelSpace F]

namespace LinearIsometryEquiv

variable (f : E ≃ₗᵢ[ℝ] F)

/-- Every linear isometry equivalence is a measurable equivalence. -/
def toMeasurableEquiv : E ≃ᵐ F where
  toEquiv := f
  measurable_toFun := f.continuous.measurable
  measurable_invFun := f.symm.continuous.measurable

@[deprecated (since := "2025-03-22")] alias toMeasureEquiv := toMeasurableEquiv

@[simp] theorem coe_toMeasurableEquiv : (f.toMeasurableEquiv : E → F) = f := rfl

@[deprecated (since := "2025-03-22")] alias coe_toMeasureEquiv := coe_toMeasurableEquiv

theorem toMeasurableEquiv_symm : f.toMeasurableEquiv.symm = f.symm.toMeasurableEquiv := rfl

@[deprecated (since := "2025-03-22")] alias toMeasureEquiv_symm := toMeasurableEquiv_symm

end LinearIsometryEquiv

variable [Fintype ι]
variable [FiniteDimensional ℝ E] [FiniteDimensional ℝ F]

section
variable {m n : ℕ} [_i : Fact (finrank ℝ F = n)]

/-- The volume form coming from an orientation in an inner product space gives measure `1` to the
parallelepiped associated to any orthonormal basis. This is a rephrasing of
`abs_volumeForm_apply_of_orthonormal` in terms of measures. -/
theorem Orientation.measure_orthonormalBasis (o : Orientation ℝ F (Fin n))
    (b : OrthonormalBasis ι ℝ F) : o.volumeForm.measure (parallelepiped b) = 1 := by
  have e : ι ≃ Fin n := by
    refine Fintype.equivFinOfCardEq ?_
    rw [← _i.out, finrank_eq_card_basis b.toBasis]
  have A : ⇑b = b.reindex e ∘ e := by
    ext x
    simp only [OrthonormalBasis.coe_reindex, Function.comp_apply, Equiv.symm_apply_apply]
  rw [A, parallelepiped_comp_equiv, AlternatingMap.measure_parallelepiped,
    o.abs_volumeForm_apply_of_orthonormal, ENNReal.ofReal_one]

/-- In an oriented inner product space, the measure coming from the canonical volume form
associated to an orientation coincides with the volume. -/
theorem Orientation.measure_eq_volume (o : Orientation ℝ F (Fin n)) :
    o.volumeForm.measure = volume := by
  have A : o.volumeForm.measure (stdOrthonormalBasis ℝ F).toBasis.parallelepiped = 1 :=
    Orientation.measure_orthonormalBasis o (stdOrthonormalBasis ℝ F)
  rw [addHaarMeasure_unique o.volumeForm.measure
    (stdOrthonormalBasis ℝ F).toBasis.parallelepiped, A, one_smul]
  simp only [volume, Basis.addHaar]

end

/-- The volume measure in a finite-dimensional inner product space gives measure `1` to the
parallelepiped spanned by any orthonormal basis. -/
theorem OrthonormalBasis.volume_parallelepiped (b : OrthonormalBasis ι ℝ F) :
    volume (parallelepiped b) = 1 := by
  haveI : Fact (finrank ℝ F = finrank ℝ F) := ⟨rfl⟩
  let o := (stdOrthonormalBasis ℝ F).toBasis.orientation
  rw [← o.measure_eq_volume]
  exact o.measure_orthonormalBasis b

/-- The Haar measure defined by any orthonormal basis of a finite-dimensional inner product space
is equal to its volume measure. -/
theorem OrthonormalBasis.addHaar_eq_volume {ι F : Type*} [Fintype ι] [NormedAddCommGroup F]
    [InnerProductSpace ℝ F] [FiniteDimensional ℝ F] [MeasurableSpace F] [BorelSpace F]
    (b : OrthonormalBasis ι ℝ F) :
    b.toBasis.addHaar = volume := by
  rw [Basis.addHaar_eq_iff]
  exact b.volume_parallelepiped

/-- An orthonormal basis of a finite-dimensional inner product space defines a measurable
equivalence between the space and the Euclidean space of the same dimension. -/
noncomputable def OrthonormalBasis.measurableEquiv (b : OrthonormalBasis ι ℝ F) :
    F ≃ᵐ EuclideanSpace ℝ ι := b.repr.toHomeomorph.toMeasurableEquiv

/-- The measurable equivalence defined by an orthonormal basis is volume preserving. -/
theorem OrthonormalBasis.measurePreserving_measurableEquiv (b : OrthonormalBasis ι ℝ F) :
    MeasurePreserving b.measurableEquiv volume volume := by
  convert (b.measurableEquiv.symm.measurable.measurePreserving _).symm
  rw [← (EuclideanSpace.basisFun ι ℝ).addHaar_eq_volume]
  erw [MeasurableEquiv.coe_toEquiv_symm, Basis.map_addHaar _ b.repr.symm.toContinuousLinearEquiv]
  exact b.addHaar_eq_volume.symm

theorem OrthonormalBasis.measurePreserving_repr (b : OrthonormalBasis ι ℝ F) :
    MeasurePreserving b.repr volume volume := b.measurePreserving_measurableEquiv

theorem OrthonormalBasis.measurePreserving_repr_symm (b : OrthonormalBasis ι ℝ F) :
    MeasurePreserving b.repr.symm volume volume := b.measurePreserving_measurableEquiv.symm

section PiLp

variable (ι : Type*) [Fintype ι]

/-- The measure equivalence between `EuclideanSpace ℝ ι` and `ι → ℝ` is volume preserving. -/
theorem EuclideanSpace.volume_preserving_measurableEquiv :
    MeasurePreserving (EuclideanSpace.measurableEquiv ι) := by
  suffices volume = map (EuclideanSpace.measurableEquiv ι).symm volume by
    convert ((EuclideanSpace.measurableEquiv ι).symm.measurable.measurePreserving _).symm
  rw [← addHaarMeasure_eq_volume_pi, ← Basis.parallelepiped_basisFun, ← Basis.addHaar_def,
    coe_measurableEquiv_symm, ← PiLp.continuousLinearEquiv_symm_apply 2 ℝ, Basis.map_addHaar]
  exact (EuclideanSpace.basisFun _ _).addHaar_eq_volume.symm

/-- A copy of `EuclideanSpace.volume_preserving_measurableEquiv` for the canonical spelling of the
equivalence. -/
theorem PiLp.volume_preserving_equiv : MeasurePreserving (WithLp.equiv 2 (ι → ℝ)) :=
  EuclideanSpace.volume_preserving_measurableEquiv ι

/-- The reverse direction of `PiLp.volume_preserving_measurableEquiv`, since
`MeasurePreserving.symm` only works for `MeasurableEquiv`s. -/
theorem PiLp.volume_preserving_equiv_symm : MeasurePreserving (WithLp.equiv 2 (ι → ℝ)).symm :=
  (EuclideanSpace.volume_preserving_measurableEquiv ι).symm

lemma volume_euclideanSpace_eq_dirac [IsEmpty ι] :
    (volume : Measure (EuclideanSpace ℝ ι)) = Measure.dirac 0 := by
  rw [← ((EuclideanSpace.volume_preserving_measurableEquiv ι).symm).map_eq,
    volume_pi_eq_dirac 0, map_dirac (MeasurableEquiv.measurable _),
    EuclideanSpace.coe_measurableEquiv_symm, WithLp.equiv_symm_zero]

end PiLp

namespace LinearIsometryEquiv

/-- Every linear isometry on a real finite dimensional Hilbert space is measure-preserving. -/
theorem measurePreserving (f : E ≃ₗᵢ[ℝ] F) :
    MeasurePreserving f := by
  refine ⟨f.continuous.measurable, ?_⟩
  rcases exists_orthonormalBasis ℝ E with ⟨w, b, _hw⟩
  erw [← OrthonormalBasis.addHaar_eq_volume b, ← OrthonormalBasis.addHaar_eq_volume (b.map f),
    Basis.map_addHaar _ f.toContinuousLinearEquiv]
  congr

end LinearIsometryEquiv
```
