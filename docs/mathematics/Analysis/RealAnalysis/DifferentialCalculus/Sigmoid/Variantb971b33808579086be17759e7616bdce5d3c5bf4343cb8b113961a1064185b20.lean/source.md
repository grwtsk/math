# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sigmoid.Variantb971b33808579086be17759e7616bdce5d3c5bf4343cb8b113961a1064185b20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f591c546bf3c0c75165707ca91ab83e525e95ba` · SHA-256 `02737399b60b0129a01bdf2fb85c443a9f1d31a750d977e1a242d1612e7823d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sigmoid.Variant80d968d1c9b996fb77699896f417dfa9e7a58fe9b258c6f81f092dbd2f5bd38b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80d968d1c9b996fb77699896f417dfa9e7a58fe9b258c6f81f092dbd2f5bd38b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Sigmoid.Variant80d968d1c9b996fb77699896f417dfa9e7a58fe9b258c6f81f092dbd2f5bd38b","mathematical_subject":"Analysis.Calculus","original_sha256":"80d968d1c9b996fb77699896f417dfa9e7a58fe9b258c6f81f092dbd2f5bd38b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/SpecialFunctions/Sigmoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Gaëtan Serré. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gaëtan Serré, Rémy Degenne
-/
module

public import Mathlib.Analysis.Calculus.Deriv.Inv
public import Mathlib.Analysis.InnerProductSpace.Basic
public import Mathlib.Analysis.SpecialFunctions.ExpDeriv
public import Mathlib.Analysis.SpecialFunctions.Log.Basic
public import Mathlib.MeasureTheory.Constructions.Polish.EmbeddingReal
public import Mathlib.Topology.Algebra.Module.ModuleTopology

/-!
# Sigmoid function

In this file we define the sigmoid function `x : ℝ ↦ (1 + exp (-x))⁻¹` and prove some of
its analytic properties.

We then show that the sigmoid function can be seen as an order embedding from `ℝ` to `I = [0, 1]`
and that this embedding is both a topological embedding and a measurable embedding. We also prove
that the composition of this embedding with the measurable embedding from a standard Borel space
`α` to `ℝ` is a measurable embedding from `α` to `I`.

## Main definitions and results

### Sigmoid as a function from `ℝ` to `ℝ`
* `Real.sigmoid` : the sigmoid function from `ℝ` to `ℝ`.
* `Real.sigmoid_strictMono` : the sigmoid function is strictly monotone.
* `Real.continuous_sigmoid` : the sigmoid function is continuous.
* `Real.tendsto_sigmoid_atTop` : the sigmoid function tends to `1` at `+∞`.
* `Real.tendsto_sigmoid_atBot` : the sigmoid function tends to `0` at `-∞`.
* `Real.hasDerivAt_sigmoid` : the derivative of the sigmoid function.
* `Real.analyticAt_sigmoid` : the sigmoid function is analytic at every point.

### Sigmoid as a function from `ℝ` to `I`
* `unitInterval.sigmoid` : the sigmoid function from `ℝ` to `I`.
* `unitInterval.sigmoid_strictMono` : the sigmoid function is strictly monotone.
* `unitInterval.continuous_sigmoid` : the sigmoid function is continuous.
* `unitInterval.tendsto_sigmoid_atTop` : the sigmoid function tends to `1` at `+∞`.
* `unitInterval.tendsto_sigmoid_atBot` : the sigmoid function tends to `0` at `-∞`.

### Sigmoid as an `OrderEmbedding` from `ℝ` to `I`
* `OrderEmbedding.sigmoid` : the sigmoid function as an `OrderEmbedding` from `ℝ` to `I`.
* `Topology.isEmbedding_sigmoid` : the sigmoid function from `ℝ` to `I` is a topological
  embedding.
* `measurableEmbedding_sigmoid` : the sigmoid function from `ℝ` to `I` is a
  measurable embedding.
* `measurableEmbedding_sigmoid_comp_embeddingReal` : the composition of the
  sigmoid function from `ℝ` to `I` with the measurable embedding from a standard Borel
  space `α` to `ℝ` is a measurable embedding from `α` to `I`.

## Tags
sigmoid, embedding, measurable embedding, topological embedding
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sigmoid.Variant80d968d1c9b996fb77699896f417dfa9e7a58fe9b258c6f81f092dbd2f5bd38b

@[expose] public section

namespace Real

/-- The sigmoid function from `ℝ` to `ℝ`. -/
noncomputable def sigmoid (x : ℝ) := (1 + exp (-x))⁻¹

lemma sigmoid_def (x : ℝ) : sigmoid x = (1 + exp (-x))⁻¹ := rfl

@[simp]
lemma sigmoid_zero : sigmoid 0 = 2⁻¹ := by norm_num [sigmoid]

@[bound]
lemma sigmoid_pos (x : ℝ) : 0 < sigmoid x := by
  change 0 < (1 + exp (-x))⁻¹
  positivity

@[bound]
lemma sigmoid_nonneg (x : ℝ) : 0 ≤ sigmoid x := (sigmoid_pos x).le

@[bound]
lemma sigmoid_lt_one (x : ℝ) : sigmoid x < 1 :=
  inv_lt_one_of_one_lt₀ <| (lt_add_iff_pos_right 1).mpr <| exp_pos _

@[bound]
lemma sigmoid_le_one (x : ℝ) : sigmoid x ≤ 1 := (sigmoid_lt_one x).le

@[gcongr, mono]
lemma sigmoid_strictMono : StrictMono sigmoid := fun a b hab ↦ by
  simp only [sigmoid]
  gcongr

lemma sigmoid_le_iff {a b : ℝ} : sigmoid a ≤ sigmoid b ↔ a ≤ b := sigmoid_strictMono.le_iff_le

@[gcongr]
lemma sigmoid_le {a b : ℝ} : a ≤ b → sigmoid a ≤ sigmoid b := sigmoid_le_iff.mpr

lemma sigmoid_lt_iff {a b : ℝ} : sigmoid a < sigmoid b ↔ a < b := sigmoid_strictMono.lt_iff_lt

@[gcongr]
lemma sigmoid_lt {a b : ℝ} : a < b → sigmoid a < sigmoid b := sigmoid_lt_iff.mpr

@[mono]
lemma sigmoid_monotone : Monotone sigmoid := sigmoid_strictMono.monotone

lemma sigmoid_injective : Function.Injective sigmoid := sigmoid_strictMono.injective

@[simp]
lemma sigmoid_inj {a b : ℝ} : sigmoid a = sigmoid b ↔ a = b := sigmoid_injective.eq_iff

lemma sigmoid_neg (x : ℝ) : sigmoid (-x) = 1 - sigmoid x := by
  simp only [sigmoid_def]
  field_simp
  simp [add_mul, ← Real.exp_add, add_comm (1 : ℝ)]

lemma sigmoid_mul_rexp_neg (x : ℝ) : sigmoid x * exp (-x) = sigmoid (-x) := by
  rw [sigmoid_neg, sigmoid_def]
  field

open Set in
lemma range_sigmoid : range Real.sigmoid = Ioo 0 1 := by
  refine subset_antisymm ?_ fun x hx ↦ ?_
  · rintro - ⟨x, rfl⟩
    push _ ∈ _
    bound
  · replace hx : 0 < x⁻¹ - 1 := by rwa [sub_pos, one_lt_inv_iff₀]
    exact ⟨-(log (x⁻¹ - 1)), by simp [sigmoid_def, exp_log hx]⟩

open Filter

open scoped Topology

lemma tendsto_sigmoid_atTop : Tendsto sigmoid atTop (𝓝 1) := by
  simpa using! Real.tendsto_exp_comp_nhds_zero.mpr tendsto_neg_atTop_atBot |>.const_add 1 |>.inv₀ <|
    by norm_num

lemma tendsto_sigmoid_atBot : Tendsto sigmoid atBot (𝓝 0) :=
  tendsto_const_nhds.add_atTop (tendsto_exp_comp_atTop.mpr tendsto_neg_atBot_atTop)
    |>.inv_tendsto_atTop

lemma hasDerivAt_sigmoid (x : ℝ) :
    HasDerivAt sigmoid (sigmoid x * (1 - sigmoid x)) x := by
  convert! (hasDerivAt_neg' x |>.exp.const_add 1 |>.inv <| by positivity) using 1
  rw [← sigmoid_neg, ← sigmoid_mul_rexp_neg x, sigmoid_def]
  field [sq]

lemma deriv_sigmoid : deriv sigmoid = fun x => sigmoid x * (1 - sigmoid x) :=
  funext fun x => (hasDerivAt_sigmoid x).deriv

end Real

open Set Real

variable {x : ℝ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {f : E → ℝ} {s : Set E}

@[fun_prop]
lemma analyticAt_sigmoid : AnalyticAt ℝ sigmoid x :=
  AnalyticAt.fun_inv (by fun_prop) (by positivity)

@[fun_prop]
lemma AnalyticAt.sigmoid {x : E} (fa : AnalyticAt ℝ f x) : AnalyticAt ℝ (sigmoid ∘ f) x :=
  analyticAt_sigmoid.comp fa

@[fun_prop]
lemma AnalyticAt.sigmoid' {x : E} (fa : AnalyticAt ℝ f x) :
    AnalyticAt ℝ (fun z ↦ Real.sigmoid (f z)) x := fa.sigmoid

lemma analyticOnNhd_sigmoid : AnalyticOnNhd ℝ sigmoid Set.univ :=
  fun _ _ ↦ analyticAt_sigmoid

lemma AnalyticOnNhd.sigmoid (fs : AnalyticOnNhd ℝ f s) : AnalyticOnNhd ℝ (sigmoid ∘ f) s :=
  fun z n ↦ analyticAt_sigmoid.comp (fs z n)

lemma analyticOn_sigmoid : AnalyticOn ℝ sigmoid Set.univ :=
  analyticOnNhd_sigmoid.analyticOn

lemma AnalyticOn.sigmoid (fs : AnalyticOn ℝ f s) : AnalyticOn ℝ (sigmoid ∘ f) s :=
  analyticOnNhd_sigmoid.comp_analyticOn fs (mapsTo_univ _ _)

lemma analyticWithinAt_sigmoid {s : Set ℝ} : AnalyticWithinAt ℝ sigmoid s x :=
  analyticAt_sigmoid.analyticWithinAt

lemma AnalyticWithinAt.sigmoid {x : E} (fa : AnalyticWithinAt ℝ f s x) :
  AnalyticWithinAt ℝ (sigmoid ∘ f) s x := analyticAt_sigmoid.comp_analyticWithinAt fa

open ContDiff in
@[fun_prop]
lemma contDiff_sigmoid : ContDiff ℝ ω sigmoid := analyticOn_sigmoid.contDiff

open ContDiff in
@[fun_prop]
lemma ContDiff.sigmoid (hf : ContDiff ℝ ω f) : ContDiff ℝ ω (sigmoid ∘ f) :=
  contDiff_sigmoid.comp hf

@[fun_prop]
lemma differentiable_sigmoid : Differentiable ℝ sigmoid :=
  contDiff_sigmoid.of_le le_top |>.differentiable_one

@[fun_prop]
lemma Differentiable.sigmoid (hf : Differentiable ℝ f) : Differentiable ℝ (sigmoid ∘ f) :=
  differentiable_sigmoid.comp hf

@[fun_prop]
lemma differentiableAt_sigmoid : DifferentiableAt ℝ sigmoid x :=
  differentiable_sigmoid x

@[fun_prop]
lemma DifferentiableAt.sigmoid {x : E} (hf : DifferentiableAt ℝ f x) :
    DifferentiableAt ℝ (sigmoid ∘ f) x := differentiableAt_sigmoid.comp x hf

@[fun_prop]
lemma continuous_sigmoid : Continuous sigmoid := by
  apply Differentiable.continuous (𝕜 := ℝ)  -- fun_prop can't choose `𝕜`
  fun_prop

omit [NormedSpace ℝ E] in
@[fun_prop]
lemma Continuous.sigmoid (hf : Continuous f) : Continuous (sigmoid ∘ f) :=
  continuous_sigmoid.comp hf

namespace unitInterval

/-- The sigmoid function from `ℝ` to `I`. -/
noncomputable def sigmoid : ℝ → I := Subtype.coind Real.sigmoid (fun _ ↦ ⟨by bound, by bound⟩)

@[bound]
lemma sigmoid_pos (x : ℝ) : 0 < sigmoid x := Real.sigmoid_pos x

@[bound]
lemma sigmoid_lt_one (x : ℝ) : sigmoid x < 1 := Real.sigmoid_lt_one x

@[gcongr, mono]
lemma sigmoid_strictMono : StrictMono sigmoid := Real.sigmoid_strictMono

lemma sigmoid_le_iff {a b : ℝ} : sigmoid a ≤ sigmoid b ↔ a ≤ b := Real.sigmoid_le_iff

@[gcongr]
lemma sigmoid_le {a b : ℝ} : a ≤ b → sigmoid a ≤ sigmoid b := sigmoid_le_iff.mpr

lemma sigmoid_lt_iff {a b : ℝ} : sigmoid a < sigmoid b ↔ a < b := Real.sigmoid_lt_iff

@[gcongr]
lemma sigmoid_lt {a b : ℝ} : a < b → sigmoid a < sigmoid b := sigmoid_lt_iff.mpr

@[mono]
lemma sigmoid_monotone : Monotone sigmoid := sigmoid_strictMono.monotone

lemma sigmoid_injective : Function.Injective sigmoid := sigmoid_strictMono.injective

@[simp]
lemma sigmoid_inj {a b : ℝ} : sigmoid a = sigmoid b ↔ a = b := sigmoid_injective.eq_iff

@[fun_prop]
lemma continuous_sigmoid : Continuous sigmoid := _root_.continuous_sigmoid.subtype_mk _

lemma sigmoid_neg (x : ℝ) : sigmoid (-x) = σ (sigmoid x) := by
  ext
  exact Real.sigmoid_neg x

set_option backward.isDefEq.respectTransparency false in
open Set in
lemma range_sigmoid : range unitInterval.sigmoid = Ioo 0 1 := by
  rw [sigmoid, Subtype.range_coind, Real.range_sigmoid]
  ext
  simp

open Filter

open scoped Topology

lemma tendsto_sigmoid_atTop : Tendsto sigmoid atTop (𝓝 1) :=
  tendsto_subtype_rng.mpr Real.tendsto_sigmoid_atTop

lemma tendsto_sigmoid_atBot : Tendsto sigmoid atBot (𝓝 0) :=
  tendsto_subtype_rng.mpr Real.tendsto_sigmoid_atBot

end unitInterval

section Embedding

open unitInterval Function Set

/-- The Sigmoid function as an `OrderEmbedding` from `ℝ` to `I`. -/
noncomputable def OrderEmbedding.sigmoid : ℝ ↪o I :=
  OrderEmbedding.ofStrictMono unitInterval.sigmoid unitInterval.sigmoid_strictMono

lemma Topology.isEmbedding_sigmoid : IsEmbedding unitInterval.sigmoid :=
  OrderEmbedding.sigmoid.isEmbedding_of_ordConnected (ordConnected_of_Ioo <|
    fun a _ b _ _ => unitInterval.range_sigmoid ▸ Ioo_subset_Ioo a.2.1 b.2.2)

lemma measurableEmbedding_sigmoid : MeasurableEmbedding unitInterval.sigmoid :=
  Topology.isEmbedding_sigmoid.measurableEmbedding <| unitInterval.range_sigmoid ▸ measurableSet_Ioo

variable (α : Type*) [MeasurableSpace α] [StandardBorelSpace α]

lemma measurableEmbedding_sigmoid_comp_embeddingReal :
    MeasurableEmbedding (unitInterval.sigmoid ∘ MeasureTheory.embeddingReal α) :=
  measurableEmbedding_sigmoid.comp (MeasureTheory.measurableEmbedding_embeddingReal α)

end Embedding
```
