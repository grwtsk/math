# Complete source: GRWTSK.Topology.GeneralTopology.UniformSpaces.CompleteCodomain.Variant458c285f5b272ba23ecb28d01ce651a89ed84f45fcd673800db23cdd1512fdca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e96bc8260409a1f64324b02df9e67e12ae8ab93` · SHA-256 `146a351b5819d96006e5b9167595190f1ef6de97c0bff876e093f6efc825d96f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology.UniformSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UniformSpaces.CompleteSpaceOfCompleteSpaceContinuousLinearMap.Variant5dc8ee309154ae770dabbc827df2a25c7b78c9b77814804c5f733981db73c22a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5dc8ee309154ae770dabbc827df2a25c7b78c9b77814804c5f733981db73c22a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.UniformSpaces.SourceCorpus.CompleteSpaceOfCompleteSpaceContinuousLinearMap.Variant5dc8ee309154ae770dabbc827df2a25c7b78c9b77814804c5f733981db73c22a","mathematical_subject":"Topology.UniformSpaces","original_sha256":"5dc8ee309154ae770dabbc827df2a25c7b78c9b77814804c5f733981db73c22a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Operator/CompleteCodomain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
module

public import Mathlib.Algebra.Central.Defs
public import Mathlib.Analysis.LocallyConvex.SeparatingDual
public import Mathlib.Analysis.Normed.Module.Multilinear.Basic
public import Mathlib.LinearAlgebra.Dual.Lemmas
public import Mathlib.Analysis.Normed.Operator.NNNorm

/-! # Completeness of spaces of linear and multilinear maps

If `E` is a nontrivial normed space over a nontrivially normed field `𝕜`, and `E` has a
separating dual, then for any normed space `F`, the completeness of the space of continuous
linear maps from `E` to `F` is equivalent to the completeness of `F`.

A similar statement holds for spaces of continuous multilinear maps
-/


namespace GRWTSK.Topology.GeneralTopology.UniformSpaces.CompleteSpaceOfCompleteSpaceContinuousLinearMap.Variant5dc8ee309154ae770dabbc827df2a25c7b78c9b77814804c5f733981db73c22a

public section

open Filter
open scoped Topology

namespace SeparatingDual

variable (𝕜 E F : Type*) [NontriviallyNormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F] [SeparatingDual 𝕜 E] [Nontrivial E]

/-- If a space of linear maps from `E` to `F` is complete, and `E` is nontrivial, then `F` is
complete. -/
lemma completeSpace_of_completeSpace_continuousLinearMap [CompleteSpace (E →L[𝕜] F)] :
    CompleteSpace F := by
  refine Metric.complete_of_cauchySeq_tendsto fun f hf => ?_
  obtain ⟨v, hv⟩ : ∃ (v : E), v ≠ 0 := exists_ne 0
  obtain ⟨φ, hφ⟩ : ∃ φ : StrongDual 𝕜 E, φ v = 1 := exists_eq_one hv
  let g : ℕ → (E →L[𝕜] F) := fun n ↦ ContinuousLinearMap.smulRightL 𝕜 E F φ (f n)
  have : CauchySeq g := (ContinuousLinearMap.smulRightL 𝕜 E F φ).lipschitzWith.cauchySeq_comp hf
  obtain ⟨a, ha⟩ : ∃ a, Tendsto g atTop (𝓝 a) := cauchy_iff_exists_le_nhds.mp this
  refine ⟨a v, ?_⟩
  have : Tendsto (fun n ↦ g n v) atTop (𝓝 (a v)) := by
    have : Continuous (fun (i : E →L[𝕜] F) ↦ i v) := by fun_prop
    exact (this.tendsto _).comp ha
  simpa [g, ContinuousLinearMap.smulRightL, hφ]

lemma completeSpace_continuousLinearMap_iff :
    CompleteSpace (E →L[𝕜] F) ↔ CompleteSpace F :=
  ⟨fun _h ↦ completeSpace_of_completeSpace_continuousLinearMap 𝕜 E F, fun _h ↦ inferInstance⟩

open ContinuousMultilinearMap

variable {ι : Type*} [Finite ι] {M : ι → Type*} [∀ i, NormedAddCommGroup (M i)]
  [∀ i, NormedSpace 𝕜 (M i)] [∀ i, SeparatingDual 𝕜 (M i)]

/-- If a space of multilinear maps from `Π i, E i` to `F` is complete, and each `E i` has a nonzero
element, then `F` is complete. -/
lemma completeSpace_of_completeSpace_continuousMultilinearMap
    [CompleteSpace (ContinuousMultilinearMap 𝕜 M F)]
    {m : ∀ i, M i} (hm : ∀ i, m i ≠ 0) : CompleteSpace F := by
  refine Metric.complete_of_cauchySeq_tendsto fun f hf => ?_
  have : ∀ i, ∃ φ : StrongDual 𝕜 (M i), φ (m i) = 1 := fun i ↦ exists_eq_one (hm i)
  choose φ hφ using this
  cases nonempty_fintype ι
  let g : ℕ → (ContinuousMultilinearMap 𝕜 M F) := fun n ↦
    compContinuousLinearMapL φ
    (ContinuousMultilinearMap.smulRightL 𝕜 _ F ((ContinuousMultilinearMap.mkPiAlgebra 𝕜 ι 𝕜)) (f n))
  have : CauchySeq g := by
    refine (ContinuousLinearMap.lipschitzWith _).cauchySeq_comp ?_
    exact (ContinuousLinearMap.lipschitzWith _).cauchySeq_comp hf
  obtain ⟨a, ha⟩ : ∃ a, Tendsto g atTop (𝓝 a) := cauchy_iff_exists_le_nhds.mp this
  refine ⟨a m, ?_⟩
  have : Tendsto (fun n ↦ g n m) atTop (𝓝 (a m)) := ((continuous_eval_const _).tendsto _).comp ha
  simpa [g, hφ]

lemma completeSpace_continuousMultilinearMap_iff {m : ∀ i, M i} (hm : ∀ i, m i ≠ 0) :
    CompleteSpace (ContinuousMultilinearMap 𝕜 M F) ↔ CompleteSpace F :=
  ⟨fun _h ↦ completeSpace_of_completeSpace_continuousMultilinearMap 𝕜 F hm, fun _h ↦ inferInstance⟩

end SeparatingDual
```
