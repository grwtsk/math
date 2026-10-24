# Complete source: GRWTSK.Topology.MetricTopology.Dilation.Variant147cf69bbfbd04501fc923bf6f1f81103ea55d656568528d61355b1ce09e979d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfde595bb9290423791e36a74a0d12af7a9a2881` · SHA-256 `3a95d8de6a3224388c5499ae4a032908723a1f3daf9a75291e7ad5c9a25d1642`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.Dilation.Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.Dilation.Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09","mathematical_subject":"Topology.MetricSpaces","original_sha256":"80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/MetricSpace/Dilation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Hanting Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Dilations of emetric and metric spaces
Authors: Hanting Zhang
-/
import Mathlib.Topology.MetricSpace.Antilipschitz
import Mathlib.Data.FunLike.Basic


namespace GRWTSK.Topology.MetricTopology.Dilation.Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09

#align_import topology.metric_space.dilation from "leanprover-community/mathlib"@"93f880918cb51905fd51b76add8273cbc27718ab"

/-!
# Dilations

We define dilations, i.e., maps between emetric spaces that satisfy
`edist (f x) (f y) = r * edist x y` for some `r ∉ {0, ∞}`.

The value `r = 0` is not allowed because we want dilations of (e)metric spaces to be automatically
injective. The value `r = ∞` is not allowed because this way we can define `Dilation.ratio f : ℝ≥0`,
not `Dilation.ratio f : ℝ≥0∞`. Also, we do not often need maps sending distinct points to points at
infinite distance.

## Main defintions

* `Dilation.ratio f : ℝ≥0`: the value of `r` in the relation above, defaulting to 1 in the case
  where it is not well-defined.

## Notation

- `α →ᵈ β`: notation for `Dilation α β`.

## Implementation notes

The type of dilations defined in this file are also referred to as "similarities" or "similitudes"
by other authors. The name `Dilation` was choosen to match the Wikipedia name.

Since a lot of elementary properties don't require `eq_of_dist_eq_zero` we start setting up the
theory for `PseudoEMetricSpace` and we specialize to `PseudoMetricSpace` and `MetricSpace` when
needed.

## TODO

- Introduce dilation equivs.
- Refactor the `Isometry` API to match the `*HomClass` API below.

## References

- https://en.wikipedia.org/wiki/Dilation_(metric_space)
- [Marcel Berger, *Geometry*][berger1987]
-/


noncomputable section

open Function Set

open scoped Topology ENNReal NNReal Classical

section Defs

variable (α : Type*) (β : Type*) [PseudoEMetricSpace α] [PseudoEMetricSpace β]

/-- A dilation is a map that uniformly scales the edistance between any two points. -/
structure Dilation where
  toFun : α → β
  edist_eq' : ∃ r : ℝ≥0, r ≠ 0 ∧ ∀ x y : α, edist (toFun x) (toFun y) = r * edist x y
#align dilation Dilation

infixl:25 " →ᵈ " => Dilation

/-- `DilationClass F α β r` states that `F` is a type of `r`-dilations.
You should extend this typeclass when you extend `Dilation`. -/
class DilationClass (F : Type*) (α β : outParam <| Type*) [PseudoEMetricSpace α]
    [PseudoEMetricSpace β] extends FunLike F α fun _ => β where
  edist_eq' : ∀ f : F, ∃ r : ℝ≥0, r ≠ 0 ∧ ∀ x y : α, edist (f x) (f y) = r * edist x y
#align dilation_class DilationClass

end Defs

namespace Dilation

variable {α : Type*} {β : Type*} {γ : Type*} {F : Type*} {G : Type*}

section Setup

variable [PseudoEMetricSpace α] [PseudoEMetricSpace β]

instance toDilationClass : DilationClass (α →ᵈ β) α β where
  coe := toFun
  coe_injective' f g h := by cases f; cases g; congr
  edist_eq' f := edist_eq' f
#align dilation.to_dilation_class Dilation.toDilationClass

instance : CoeFun (α →ᵈ β) fun _ => α → β :=
  FunLike.hasCoeToFun

@[simp]
theorem toFun_eq_coe {f : α →ᵈ β} : f.toFun = (f : α → β) :=
  rfl
#align dilation.to_fun_eq_coe Dilation.toFun_eq_coe

@[simp]
theorem coe_mk (f : α → β) (h) : ⇑(⟨f, h⟩ : α →ᵈ β) = f :=
  rfl
#align dilation.coe_mk Dilation.coe_mk

theorem congr_fun {f g : α →ᵈ β} (h : f = g) (x : α) : f x = g x :=
  FunLike.congr_fun h x
#align dilation.congr_fun Dilation.congr_fun

theorem congr_arg (f : α →ᵈ β) {x y : α} (h : x = y) : f x = f y :=
  FunLike.congr_arg f h
#align dilation.congr_arg Dilation.congr_arg

@[ext]
theorem ext {f g : α →ᵈ β} (h : ∀ x, f x = g x) : f = g :=
  FunLike.ext f g h
#align dilation.ext Dilation.ext

theorem ext_iff {f g : α →ᵈ β} : f = g ↔ ∀ x, f x = g x :=
  FunLike.ext_iff
#align dilation.ext_iff Dilation.ext_iff

@[simp]
theorem mk_coe (f : α →ᵈ β) (h) : Dilation.mk f h = f :=
  ext fun _ => rfl
#align dilation.mk_coe Dilation.mk_coe

/-- Copy of a `Dilation` with a new `toFun` equal to the old one. Useful to fix definitional
equalities. -/
@[simps (config := { fullyApplied := false })]
protected def copy (f : α →ᵈ β) (f' : α → β) (h : f' = ⇑f) : α →ᵈ β where
  toFun := f'
  edist_eq' := h.symm ▸ f.edist_eq'
#align dilation.copy Dilation.copy

theorem copy_eq_self (f : α →ᵈ β) {f' : α → β} (h : f' = f) : f.copy f' h = f :=
  FunLike.ext' h
#align dilation.copy_eq_self Dilation.copy_eq_self

/-- The ratio of a dilation `f`. If the ratio is undefined (i.e., the distance between any two
points in `α` is either zero or infinity), then we choose one as the ratio. -/
def ratio [DilationClass F α β] (f : F) : ℝ≥0 :=
  if ∀ x y : α, edist x y = 0 ∨ edist x y = ⊤ then 1 else (DilationClass.edist_eq' f).choose
#align dilation.ratio Dilation.ratio

theorem ratio_of_trivial [DilationClass F α β] (f : F)
    (h : ∀ x y : α, edist x y = 0 ∨ edist x y = ∞) : ratio f = 1 :=
  if_pos h

@[nontriviality]
theorem ratio_of_subsingleton [Subsingleton α] [DilationClass F α β] (f : F) : ratio f = 1 :=
  if_pos <| fun x y ↦ by simp [Subsingleton.elim x y]

theorem ratio_ne_zero [DilationClass F α β] (f : F) : ratio f ≠ 0 := by
  rw [ratio]; split_ifs
  · exact one_ne_zero
  exact (DilationClass.edist_eq' f).choose_spec.1
#align dilation.ratio_ne_zero Dilation.ratio_ne_zero

theorem ratio_pos [DilationClass F α β] (f : F) : 0 < ratio f :=
  (ratio_ne_zero f).bot_lt
#align dilation.ratio_pos Dilation.ratio_pos

@[simp]
theorem edist_eq [DilationClass F α β] (f : F) (x y : α) :
    edist (f x) (f y) = ratio f * edist x y := by
  rw [ratio]; split_ifs with key
  · rcases DilationClass.edist_eq' f with ⟨r, hne, hr⟩
    replace hr := hr x y
    cases' key x y with h h
    · simp only [hr, h, mul_zero]
    · simp [hr, h, hne]
  exact (DilationClass.edist_eq' f).choose_spec.2 x y
#align dilation.edist_eq Dilation.edist_eq

@[simp]
theorem nndist_eq {α β F : Type*} [PseudoMetricSpace α] [PseudoMetricSpace β] [DilationClass F α β]
    (f : F) (x y : α) : nndist (f x) (f y) = ratio f * nndist x y := by
  simp only [← ENNReal.coe_eq_coe, ← edist_nndist, ENNReal.coe_mul, edist_eq]
#align dilation.nndist_eq Dilation.nndist_eq

@[simp]
theorem dist_eq {α β F : Type*} [PseudoMetricSpace α] [PseudoMetricSpace β] [DilationClass F α β]
    (f : F) (x y : α) : dist (f x) (f y) = ratio f * dist x y := by
  simp only [dist_nndist, nndist_eq, NNReal.coe_mul]
#align dilation.dist_eq Dilation.dist_eq

/-- The `ratio` is equal to the distance ratio for any two points with nonzero finite distance.
`dist` and `nndist` versions below -/
theorem ratio_unique [DilationClass F α β] {f : F} {x y : α} {r : ℝ≥0} (h₀ : edist x y ≠ 0)
    (htop : edist x y ≠ ⊤) (hr : edist (f x) (f y) = r * edist x y) : r = ratio f := by
  simpa only [hr, ENNReal.mul_eq_mul_right h₀ htop, ENNReal.coe_eq_coe] using edist_eq f x y
#align dilation.ratio_unique Dilation.ratio_unique

/-- The `ratio` is equal to the distance ratio for any two points
with nonzero finite distance; `nndist` version -/
theorem ratio_unique_of_nndist_ne_zero {α β F : Type*} [PseudoMetricSpace α] [PseudoMetricSpace β]
    [DilationClass F α β] {f : F} {x y : α} {r : ℝ≥0} (hxy : nndist x y ≠ 0)
    (hr : nndist (f x) (f y) = r * nndist x y) : r = ratio f :=
  ratio_unique (by rwa [edist_nndist, ENNReal.coe_ne_zero]) (edist_ne_top x y)
    (by rw [edist_nndist, edist_nndist, hr, ENNReal.coe_mul])
#align dilation.ratio_unique_of_nndist_ne_zero Dilation.ratio_unique_of_nndist_ne_zero

/-- The `ratio` is equal to the distance ratio for any two points
with nonzero finite distance; `dist` version -/
theorem ratio_unique_of_dist_ne_zero {α β} {F : Type*} [PseudoMetricSpace α] [PseudoMetricSpace β]
    [DilationClass F α β] {f : F} {x y : α} {r : ℝ≥0} (hxy : dist x y ≠ 0)
    (hr : dist (f x) (f y) = r * dist x y) : r = ratio f :=
  ratio_unique_of_nndist_ne_zero (NNReal.coe_ne_zero.1 hxy) <|
    NNReal.eq <| by rw [coe_nndist, hr, NNReal.coe_mul, coe_nndist]
#align dilation.ratio_unique_of_dist_ne_zero Dilation.ratio_unique_of_dist_ne_zero

/-- Alternative `Dilation` constructor when the distance hypothesis is over `nndist` -/
def mkOfNNDistEq {α β} [PseudoMetricSpace α] [PseudoMetricSpace β] (f : α → β)
    (h : ∃ r : ℝ≥0, r ≠ 0 ∧ ∀ x y : α, nndist (f x) (f y) = r * nndist x y) : α →ᵈ β where
  toFun := f
  edist_eq' := by
    rcases h with ⟨r, hne, h⟩
    refine' ⟨r, hne, fun x y => _⟩
    rw [edist_nndist, edist_nndist, ← ENNReal.coe_mul, h x y]
#align dilation.mk_of_nndist_eq Dilation.mkOfNNDistEq

@[simp]
theorem coe_mkOfNNDistEq {α β} [PseudoMetricSpace α] [PseudoMetricSpace β] (f : α → β) (h) :
    ⇑(mkOfNNDistEq f h : α →ᵈ β) = f :=
  rfl
#align dilation.coe_mk_of_nndist_eq Dilation.coe_mkOfNNDistEq

@[simp]
theorem mk_coe_of_nndist_eq {α β} [PseudoMetricSpace α] [PseudoMetricSpace β] (f : α →ᵈ β)
    (h) : Dilation.mkOfNNDistEq f h = f :=
  ext fun _ => rfl
#align dilation.mk_coe_of_nndist_eq Dilation.mk_coe_of_nndist_eq

/-- Alternative `Dilation` constructor when the distance hypothesis is over `dist` -/
def mkOfDistEq {α β} [PseudoMetricSpace α] [PseudoMetricSpace β] (f : α → β)
    (h : ∃ r : ℝ≥0, r ≠ 0 ∧ ∀ x y : α, dist (f x) (f y) = r * dist x y) : α →ᵈ β :=
  mkOfNNDistEq f <|
    h.imp fun r hr =>
      ⟨hr.1, fun x y => NNReal.eq <| by rw [coe_nndist, hr.2, NNReal.coe_mul, coe_nndist]⟩
#align dilation.mk_of_dist_eq Dilation.mkOfDistEq

@[simp]
theorem coe_mkOfDistEq {α β} [PseudoMetricSpace α] [PseudoMetricSpace β] (f : α → β) (h) :
    ⇑(mkOfDistEq f h : α →ᵈ β) = f :=
  rfl
#align dilation.coe_mk_of_dist_eq Dilation.coe_mkOfDistEq

@[simp]
theorem mk_coe_of_dist_eq {α β} [PseudoMetricSpace α] [PseudoMetricSpace β] (f : α →ᵈ β) (h) :
    Dilation.mkOfDistEq f h = f :=
  ext fun _ => rfl
#align dilation.mk_coe_of_dist_eq Dilation.mk_coe_of_dist_eq

end Setup

section PseudoEmetricDilation

variable [PseudoEMetricSpace α] [PseudoEMetricSpace β] [PseudoEMetricSpace γ]

variable [DilationClass F α β] [DilationClass G β γ]

variable (f : F) (g : G) {x y z : α} {s : Set α}

theorem lipschitz : LipschitzWith (ratio f) (f : α → β) := fun x y => (edist_eq f x y).le
#align dilation.lipschitz Dilation.lipschitz

theorem antilipschitz : AntilipschitzWith (ratio f)⁻¹ (f : α → β) := fun x y => by
  have hr : ratio f ≠ 0 := ratio_ne_zero f
  exact_mod_cast
    (ENNReal.mul_le_iff_le_inv (ENNReal.coe_ne_zero.2 hr) ENNReal.coe_ne_top).1 (edist_eq f x y).ge
#align dilation.antilipschitz Dilation.antilipschitz

/-- A dilation from an emetric space is injective -/
protected theorem injective {α : Type*} [EMetricSpace α] [DilationClass F α β] (f : F) :
    Injective f :=
  (antilipschitz f).injective
#align dilation.injective Dilation.injective

/-- The identity is a dilation -/
protected def id (α) [PseudoEMetricSpace α] : α →ᵈ α where
  toFun := id
  edist_eq' := ⟨1, one_ne_zero, fun x y => by simp only [id.def, ENNReal.coe_one, one_mul]⟩
#align dilation.id Dilation.id

instance : Inhabited (α →ᵈ α) :=
  ⟨Dilation.id α⟩

@[simp] -- Porting note: Removed `@[protected]`
theorem coe_id : ⇑(Dilation.id α) = id :=
  rfl
#align dilation.coe_id Dilation.coe_id

theorem ratio_id : ratio (Dilation.id α) = 1 := by
  by_cases h : ∀ x y : α, edist x y = 0 ∨ edist x y = ∞
  · rw [ratio, if_pos h]
  · push_neg at h
    rcases h with ⟨x, y, hne⟩
    refine' (ratio_unique hne.1 hne.2 _).symm
    simp
#align dilation.id_ratio Dilation.ratio_id

/-- The composition of dilations is a dilation -/
def comp (g : β →ᵈ γ) (f : α →ᵈ β) : α →ᵈ γ where
  toFun := g ∘ f
  edist_eq' := ⟨ratio g * ratio f, mul_ne_zero (ratio_ne_zero g) (ratio_ne_zero f),
    fun x y => by simp_rw [Function.comp, edist_eq, ENNReal.coe_mul, mul_assoc]⟩
#align dilation.comp Dilation.comp

theorem comp_assoc {δ : Type*} [PseudoEMetricSpace δ] (f : α →ᵈ β) (g : β →ᵈ γ)
    (h : γ →ᵈ δ) : (h.comp g).comp f = h.comp (g.comp f) :=
  rfl
#align dilation.comp_assoc Dilation.comp_assoc

@[simp]
theorem coe_comp (g : β →ᵈ γ) (f : α →ᵈ β) : (g.comp f : α → γ) = g ∘ f :=
  rfl
#align dilation.coe_comp Dilation.coe_comp

theorem comp_apply (g : β →ᵈ γ) (f : α →ᵈ β) (x : α) : (g.comp f : α → γ) x = g (f x) :=
  rfl
#align dilation.comp_apply Dilation.comp_apply

-- Porting note: removed `simp` because it's difficult to auto prove `hne`
/-- Ratio of the composition `g.comp f` of two dilations is the product of their ratios. We assume
that there exist two points in `α` at extended distance neither `0` nor `∞` because otherwise
`Dilation.ratio (g.comp f) = Dilation.ratio f = 1` while `Dilation.ratio g` can be any number. This
version works for most general spaces, see also `Dilation.ratio_comp` for a version assuming that
`α` is a nontrivial metric space. -/
theorem ratio_comp' {g : β →ᵈ γ} {f : α →ᵈ β}
    (hne : ∃ x y : α, edist x y ≠ 0 ∧ edist x y ≠ ⊤) : ratio (g.comp f) = ratio g * ratio f := by
  rcases hne with ⟨x, y, hα⟩
  have hgf := (edist_eq (g.comp f) x y).symm
  simp_rw [coe_comp, Function.comp, edist_eq, ← mul_assoc, ENNReal.mul_eq_mul_right hα.1 hα.2]
    at hgf
  rwa [← ENNReal.coe_eq_coe, ENNReal.coe_mul]
#align dilation.comp_ratio Dilation.ratio_comp'

@[simp]
theorem comp_id (f : α →ᵈ β) : f.comp (Dilation.id α) = f :=
  ext fun _ => rfl
#align dilation.comp_id Dilation.comp_id

@[simp]
theorem id_comp (f : α →ᵈ β) : (Dilation.id β).comp f = f :=
  ext fun _ => rfl
#align dilation.id_comp Dilation.id_comp

instance : Monoid (α →ᵈ α) where
  one := Dilation.id α
  mul := comp
  mul_one := comp_id
  one_mul := id_comp
  mul_assoc f g h := comp_assoc _ _ _

theorem one_def : (1 : α →ᵈ α) = Dilation.id α :=
  rfl
#align dilation.one_def Dilation.one_def

theorem mul_def (f g : α →ᵈ α) : f * g = f.comp g :=
  rfl
#align dilation.mul_def Dilation.mul_def

@[simp]
theorem coe_one : ⇑(1 : α →ᵈ α) = id :=
  rfl
#align dilation.coe_one Dilation.coe_one

@[simp]
theorem coe_mul (f g : α →ᵈ α) : ⇑(f * g) = f ∘ g :=
  rfl
#align dilation.coe_mul Dilation.coe_mul

@[simp] theorem ratio_one : ratio (1 : α →ᵈ α) = 1 := ratio_id

@[simp]
theorem ratio_mul (f g : α →ᵈ α) : ratio (f * g) = ratio f * ratio g := by
  by_cases h : ∀ x y : α, edist x y = 0 ∨ edist x y = ∞
  · simp [ratio_of_trivial, h]
  push_neg at h
  exact ratio_comp' h

/-- `Dilation.ratio` as a monoid homomorphism from `α →ᵈ α` to `ℝ≥0`. -/
@[simps]
def ratioHom : (α →ᵈ α) →* ℝ≥0 := ⟨⟨ratio, ratio_one⟩, ratio_mul⟩

@[simp]
theorem ratio_pow (f : α →ᵈ α) (n : ℕ) : ratio (f ^ n) = ratio f ^ n :=
  ratioHom.map_pow _ _

theorem cancel_right {g₁ g₂ : β →ᵈ γ} {f : α →ᵈ β} (hf : Surjective f) :
    g₁.comp f = g₂.comp f ↔ g₁ = g₂ :=
  ⟨fun h => Dilation.ext <| hf.forall.2 (ext_iff.1 h), fun h => h ▸ rfl⟩
#align dilation.cancel_right Dilation.cancel_right

theorem cancel_left {g : β →ᵈ γ} {f₁ f₂ : α →ᵈ β} (hg : Injective g) :
    g.comp f₁ = g.comp f₂ ↔ f₁ = f₂ :=
  ⟨fun h => Dilation.ext fun x => hg <| by rw [← comp_apply, h, comp_apply], fun h => h ▸ rfl⟩
#align dilation.cancel_left Dilation.cancel_left

/-- A dilation from a metric space is a uniform inducing map -/
protected theorem uniformInducing : UniformInducing (f : α → β) :=
  (antilipschitz f).uniformInducing (lipschitz f).uniformContinuous
#align dilation.uniform_inducing Dilation.uniformInducing

theorem tendsto_nhds_iff {ι : Type*} {g : ι → α} {a : Filter ι} {b : α} :
    Filter.Tendsto g a (𝓝 b) ↔ Filter.Tendsto ((f : α → β) ∘ g) a (𝓝 (f b)) :=
  (Dilation.uniformInducing f).inducing.tendsto_nhds_iff
#align dilation.tendsto_nhds_iff Dilation.tendsto_nhds_iff

/-- A dilation is continuous. -/
theorem toContinuous : Continuous (f : α → β) :=
  (lipschitz f).continuous
#align dilation.to_continuous Dilation.toContinuous

/-- Dilations scale the diameter by `ratio f` in pseudoemetric spaces. -/
theorem ediam_image (s : Set α) : EMetric.diam ((f : α → β) '' s) = ratio f * EMetric.diam s := by
  refine' ((lipschitz f).ediam_image_le s).antisymm _
  apply ENNReal.mul_le_of_le_div'
  rw [div_eq_mul_inv, mul_comm, ← ENNReal.coe_inv]
  exacts [(antilipschitz f).le_mul_ediam_image s, ratio_ne_zero f]
#align dilation.ediam_image Dilation.ediam_image

/-- A dilation scales the diameter of the range by `ratio f`. -/
theorem ediam_range : EMetric.diam (range (f : α → β)) = ratio f * EMetric.diam (univ : Set α) := by
  rw [← image_univ]; exact ediam_image f univ
#align dilation.ediam_range Dilation.ediam_range

/-- A dilation maps balls to balls and scales the radius by `ratio f`. -/
theorem mapsTo_emetric_ball (x : α) (r : ℝ≥0∞) :
    MapsTo (f : α → β) (EMetric.ball x r) (EMetric.ball (f x) (ratio f * r)) :=
  fun y hy => (edist_eq f y x).trans_lt <|
    (ENNReal.mul_lt_mul_left (ENNReal.coe_ne_zero.2 <| ratio_ne_zero f) ENNReal.coe_ne_top).2 hy
#align dilation.maps_to_emetric_ball Dilation.mapsTo_emetric_ball

/-- A dilation maps closed balls to closed balls and scales the radius by `ratio f`. -/
theorem mapsTo_emetric_closedBall (x : α) (r' : ℝ≥0∞) :
    MapsTo (f : α → β) (EMetric.closedBall x r') (EMetric.closedBall (f x) (ratio f * r')) :=
  -- Porting note: Added `by exact`
  fun y hy => (edist_eq f y x).trans_le <| mul_le_mul_left' (by exact hy) _
#align dilation.maps_to_emetric_closed_ball Dilation.mapsTo_emetric_closedBall

theorem comp_continuousOn_iff {γ} [TopologicalSpace γ] {g : γ → α} {s : Set γ} :
    ContinuousOn ((f : α → β) ∘ g) s ↔ ContinuousOn g s :=
  (Dilation.uniformInducing f).inducing.continuousOn_iff.symm
#align dilation.comp_continuous_on_iff Dilation.comp_continuousOn_iff

theorem comp_continuous_iff {γ} [TopologicalSpace γ] {g : γ → α} :
    Continuous ((f : α → β) ∘ g) ↔ Continuous g :=
  (Dilation.uniformInducing f).inducing.continuous_iff.symm
#align dilation.comp_continuous_iff Dilation.comp_continuous_iff

end PseudoEmetricDilation

section EmetricDilation

variable [EMetricSpace α]

/-- A dilation from a metric space is a uniform embedding -/
protected theorem uniformEmbedding [PseudoEMetricSpace β] [DilationClass F α β] (f : F) :
    UniformEmbedding f :=
  (antilipschitz f).uniformEmbedding (lipschitz f).uniformContinuous
#align dilation.uniform_embedding Dilation.uniformEmbedding

/-- A dilation from a metric space is an embedding -/
protected theorem embedding [PseudoEMetricSpace β] [DilationClass F α β] (f : F) :
    Embedding (f : α → β) :=
  (Dilation.uniformEmbedding f).embedding
#align dilation.embedding Dilation.embedding

/-- A dilation from a complete emetric space is a closed embedding -/
protected theorem closedEmbedding [CompleteSpace α] [EMetricSpace β] [DilationClass F α β] (f : F) :
    ClosedEmbedding f :=
  (antilipschitz f).closedEmbedding (lipschitz f).uniformContinuous
#align dilation.closed_embedding Dilation.closedEmbedding

end EmetricDilation

/-- Ratio of the composition `g.comp f` of two dilations is the product of their ratios. We assume
that the domain `α` of `f` is a nontrivial metric space, otherwise
`Dilation.ratio f = Dilation.ratio (g.comp f) = 1` but `Dilation.ratio g` may have any value.

See also `Dilation.ratio_comp'` for a version that works for more general spaces. -/
@[simp]
theorem ratio_comp [MetricSpace α] [Nontrivial α] [PseudoEMetricSpace β]
    [PseudoEMetricSpace γ] {g : β →ᵈ γ} {f : α →ᵈ β} : ratio (g.comp f) = ratio g * ratio f :=
  ratio_comp' <|
    let ⟨x, y, hne⟩ := exists_pair_ne α; ⟨x, y, mt edist_eq_zero.1 hne, edist_ne_top _ _⟩

section PseudoMetricDilation

variable [PseudoMetricSpace α] [PseudoMetricSpace β] [DilationClass F α β] (f : F)

/-- A dilation scales the diameter by `ratio f` in pseudometric spaces. -/
theorem diam_image (s : Set α) : Metric.diam ((f : α → β) '' s) = ratio f * Metric.diam s := by
  simp [Metric.diam, ediam_image, ENNReal.toReal_mul]
#align dilation.diam_image Dilation.diam_image

theorem diam_range : Metric.diam (range (f : α → β)) = ratio f * Metric.diam (univ : Set α) := by
  rw [← image_univ, diam_image]
#align dilation.diam_range Dilation.diam_range

/-- A dilation maps balls to balls and scales the radius by `ratio f`. -/
theorem mapsTo_ball (x : α) (r' : ℝ) :
    MapsTo (f : α → β) (Metric.ball x r') (Metric.ball (f x) (ratio f * r')) :=
  fun y hy => (dist_eq f y x).trans_lt <| (mul_lt_mul_left <| NNReal.coe_pos.2 <| ratio_pos f).2 hy
#align dilation.maps_to_ball Dilation.mapsTo_ball

/-- A dilation maps spheres to spheres and scales the radius by `ratio f`. -/
theorem mapsTo_sphere (x : α) (r' : ℝ) :
    MapsTo (f : α → β) (Metric.sphere x r') (Metric.sphere (f x) (ratio f * r')) :=
  fun y hy => Metric.mem_sphere.mp hy ▸ dist_eq f y x
#align dilation.maps_to_sphere Dilation.mapsTo_sphere

/-- A dilation maps closed balls to closed balls and scales the radius by `ratio f`. -/
theorem mapsTo_closedBall (x : α) (r' : ℝ) :
    MapsTo (f : α → β) (Metric.closedBall x r') (Metric.closedBall (f x) (ratio f * r')) :=
  fun y hy => (dist_eq f y x).trans_le <| mul_le_mul_of_nonneg_left hy (NNReal.coe_nonneg _)
#align dilation.maps_to_closed_ball Dilation.mapsTo_closedBall

end PseudoMetricDilation

end Dilation
```
