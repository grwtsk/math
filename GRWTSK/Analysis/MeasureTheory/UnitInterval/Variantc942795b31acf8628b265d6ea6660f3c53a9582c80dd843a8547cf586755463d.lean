-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.VolumeDef.Variant11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.VolumeDef.Variant11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Constructions/UnitInterval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Topology.UnitInterval
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic

/-!
# The canonical measure on the unit interval

This file provides a `MeasureTheory.MeasureSpace` instance on `unitInterval`,
and shows it is a probability measure.
-/

namespace GRWTSK.Analysis.MeasureTheory.VolumeDef.Variant11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f

open scoped unitInterval
open MeasureTheory

namespace unitInterval

noncomputable instance : MeasureSpace I := Measure.Subtype.measureSpace

theorem volume_def : (volume : Measure I) = volume.comap Subtype.val := rfl

instance : IsProbabilityMeasure (volume : Measure I) where
  measure_univ := by
    rw [Measure.Subtype.volume_univ nullMeasurableSet_Icc, Real.volume_Icc, sub_zero,
      ENNReal.ofReal_one]

@[measurability]
theorem measurable_symm : Measurable symm := continuous_symm.measurable

end unitInterval
