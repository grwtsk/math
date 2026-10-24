# Complete source: GRWTSK.Topology.GeneralTopology.FunctionsBoundedAtInfty.Variantd1b4f14d98b715c19c2c073933645772803a7461c82bebe9ff46fcbabd509a70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `429a763b420240ffd7b3e2f810195a356d4aa33f` · SHA-256 `acd064e3c3580f194cf0c2e0d3a6f0c8771e8cdb59b15f96e805c7173d08dfd4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.AtImInfty.Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.AtImInfty.Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Complex/UpperHalfPlane/FunctionsBoundedAtInfty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck, David Loeffler
-/
import Mathlib.Algebra.Module.Submodule.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Topology
import Mathlib.Order.Filter.ZeroAndBoundedAtFilter

/-!
# Bounded at infinity

For complex valued functions on the upper half plane, this file defines the filter
`UpperHalfPlane.atImInfty` required for defining when functions are bounded at infinity and zero at
infinity. Both of which are relevant for defining modular forms.
-/


namespace GRWTSK.Topology.GeneralTopology.AtImInfty.Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709

open Complex Filter

open scoped Topology UpperHalfPlane

noncomputable section

namespace UpperHalfPlane

/-- Filter for approaching `i∞`. -/
def atImInfty :=
  Filter.atTop.comap UpperHalfPlane.im

theorem atImInfty_basis : atImInfty.HasBasis (fun _ => True) fun i : ℝ => im ⁻¹' Set.Ici i :=
  Filter.HasBasis.comap UpperHalfPlane.im Filter.atTop_basis

theorem atImInfty_mem (S : Set ℍ) : S ∈ atImInfty ↔ ∃ A : ℝ, ∀ z : ℍ, A ≤ im z → z ∈ S := by
  simp only [atImInfty_basis.mem_iff, true_and]; rfl

/-- A function `f : ℍ → α` is bounded at infinity if it is bounded along `atImInfty`. -/
def IsBoundedAtImInfty {α : Type*} [Norm α] (f : ℍ → α) : Prop :=
  BoundedAtFilter atImInfty f

/-- A function `f : ℍ → α` is zero at infinity it is zero along `atImInfty`. -/
def IsZeroAtImInfty {α : Type*} [Zero α] [TopologicalSpace α] (f : ℍ → α) : Prop :=
  ZeroAtFilter atImInfty f

theorem zero_form_isBoundedAtImInfty {α : Type*} [NormedField α] :
    IsBoundedAtImInfty (0 : ℍ → α) :=
  const_boundedAtFilter atImInfty (0 : α)

/-- Module of functions that are zero at infinity. -/
def zeroAtImInftySubmodule (α : Type*) [NormedField α] : Submodule α (ℍ → α) :=
  zeroAtFilterSubmodule _ atImInfty

/-- Subalgebra of functions that are bounded at infinity. -/
def boundedAtImInftySubalgebra (α : Type*) [NormedField α] : Subalgebra α (ℍ → α) :=
  boundedFilterSubalgebra _ atImInfty

theorem isBoundedAtImInfty_iff {α : Type*} [Norm α] {f : ℍ → α} :
    IsBoundedAtImInfty f ↔ ∃ M A : ℝ, ∀ z : ℍ, A ≤ im z → ‖f z‖ ≤ M := by
  simp [IsBoundedAtImInfty, BoundedAtFilter, Asymptotics.isBigO_iff, Filter.Eventually,
    atImInfty_mem]

theorem isZeroAtImInfty_iff {α : Type*} [SeminormedAddGroup α] {f : ℍ → α} :
    IsZeroAtImInfty f ↔ ∀ ε : ℝ, 0 < ε → ∃ A : ℝ, ∀ z : ℍ, A ≤ im z → ‖f z‖ ≤ ε :=
  (atImInfty_basis.tendsto_iff Metric.nhds_basis_closedBall).trans <| by simp

theorem IsZeroAtImInfty.isBoundedAtImInfty {α : Type*} [SeminormedAddGroup α] {f : ℍ → α}
    (hf : IsZeroAtImInfty f) : IsBoundedAtImInfty f :=
  hf.boundedAtFilter

lemma tendsto_comap_im_ofComplex :
    Tendsto ofComplex (comap Complex.im atTop) atImInfty := by
  simp only [atImInfty, tendsto_comap_iff, Function.comp_def]
  refine tendsto_comap.congr' ?_
  filter_upwards [preimage_mem_comap (Ioi_mem_atTop 0)] with z hz
  simp only [ofComplex_apply_of_im_pos hz, ← UpperHalfPlane.coe_im, coe_mk_subtype]

lemma tendsto_coe_atImInfty :
    Tendsto UpperHalfPlane.coe atImInfty (comap Complex.im atTop) := by
  simpa only [atImInfty, tendsto_comap_iff, Function.comp_def,
    funext UpperHalfPlane.coe_im] using tendsto_comap


end UpperHalfPlane
```
