-- corpus-organization-transform:v1
-- Mathematical subject: DifferentialEquationsAndDynamicalSystems.DynamicalSystems
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.ErgodicAddLeft.Variant7cc04ca4869cf7e25ac0e5a0c5d1ead51ca8b6a056e577aca54b03d125b7f959","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7cc04ca4869cf7e25ac0e5a0c5d1ead51ca8b6a056e577aca54b03d125b7f959","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.DynamicalSystems.SourceCorpus.ErgodicAddLeft.Variant7cc04ca4869cf7e25ac0e5a0c5d1ead51ca8b6a056e577aca54b03d125b7f959","mathematical_subject":"Analysis.DynamicalSystems","original_sha256":"7cc04ca4869cf7e25ac0e5a0c5d1ead51ca8b6a056e577aca54b03d125b7f959","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Dynamics/Ergodic/AddCircleAdd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Dynamics.Ergodic.Action.OfMinimal
public import Mathlib.Topology.Instances.AddCircle.DenseSubgroup
public import Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic

/-!
# Ergodicity of an irrational rotation

In this file we prove that rotation of `AddCircle p` by `a` is ergodic
if and only if `a` has infinite order (in other words, if `a / p` is irrational).
-/


namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.ErgodicAddLeft.Variant7cc04ca4869cf7e25ac0e5a0c5d1ead51ca8b6a056e577aca54b03d125b7f959

public section

open MeasureTheory AddSubgroup
open scoped Pointwise

namespace AddCircle

variable {p : ℝ} [Fact (0 < p)]

theorem ergodic_add_left {a : AddCircle p} : Ergodic (a + ·) ↔ addOrderOf a = 0 := by
  rw [← denseRange_zsmul_iff, ergodic_add_left_iff_denseRange_zsmul]

theorem ergodic_add_right {a : AddCircle p} : Ergodic (· + a) ↔ addOrderOf a = 0 := by
  simp only [add_comm, ← ergodic_add_left]

end AddCircle
