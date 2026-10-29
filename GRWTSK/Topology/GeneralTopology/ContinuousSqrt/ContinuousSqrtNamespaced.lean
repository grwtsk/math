-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Complex.Variant2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Complex.Variant2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397","mathematical_subject":"Topology.GeneralTopology","original_sha256":"2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/ContinuousMap/ContinuousSqrt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Data.Real.StarOrdered
import Mathlib.Topology.ContinuousMap.StarOrdered

/-! # Instances of `ContinuousSqrt`

This provides the instances of `ContinuousSqrt` for `ℝ`, `ℝ≥0`, and `ℂ`, thereby yielding instances
of `StarOrderedRing C(α, R)` and `StarOrderedRing C(α, R)₀` for any topological space `α` and `R`
among `ℝ≥0`, `ℝ`, and `ℂ`. -/


namespace GRWTSK.Topology.GeneralTopology.Complex.Variant2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397

open scoped NNReal

open scoped ComplexOrder in
open RCLike in
noncomputable
instance (priority := 100) instContinuousSqrtRCLike {𝕜 : Type*} [RCLike 𝕜] :
    ContinuousSqrt 𝕜 where
  sqrt := ((↑) ∘ (√·) ∘ re ∘ (fun z ↦ z.2 - z.1))
  continuousOn_sqrt := by fun_prop
  sqrt_nonneg _ _ := by simp
  sqrt_mul_sqrt x hx := by
    simp only [Function.comp_apply,star_def]
    rw [← sub_nonneg] at hx
    obtain hx' := nonneg_iff.mp hx |>.right
    rw [← conj_eq_iff_im, conj_eq_iff_re] at hx'
    rw [← ofReal_mul, Real.mul_self_sqrt, hx', add_sub_cancel]
    simpa using nonneg_iff.mp hx |>.left

noncomputable instance : ContinuousSqrt ℝ := instContinuousSqrtRCLike (𝕜 := ℝ)

open ComplexOrder in
noncomputable instance : ContinuousSqrt ℂ := instContinuousSqrtRCLike (𝕜 := ℂ)

noncomputable instance : ContinuousSqrt ℝ≥0 where
  sqrt := NNReal.sqrt ∘ (fun x ↦ x.2 - x.1)
  continuousOn_sqrt := by fun_prop
  sqrt_nonneg := by simp
  sqrt_mul_sqrt := by simpa using fun _ _ h ↦ Eq.symm <| add_tsub_cancel_of_le h
