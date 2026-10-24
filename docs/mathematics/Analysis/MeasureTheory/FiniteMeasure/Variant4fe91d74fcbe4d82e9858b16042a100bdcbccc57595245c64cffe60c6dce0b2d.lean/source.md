# Complete source: GRWTSK.Analysis.MeasureTheory.FiniteMeasure.Variant4fe91d74fcbe4d82e9858b16042a100bdcbccc57595245c64cffe60c6dce0b2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5405a22a971e968ce8d9812ee76cf9654c04e3c` · SHA-256 `2cfb37e30fca15a02473c9c993e82be2ebd9c5d400ab4162402926366f97ddfd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryFiniteMeasure.Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.RootMeasureTheoryFiniteMeasure.Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"bbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/MeasureTheory/Measure/FiniteMeasure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kalle Kytölä. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kalle Kytölä
-/
import Mathlib.Topology.ContinuousFunction.Bounded
import Mathlib.Topology.Algebra.Module.WeakDual
import Mathlib.MeasureTheory.Integral.Bochner


namespace GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryFiniteMeasure.Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892

#align_import measure_theory.measure.finite_measure from "leanprover-community/mathlib"@"f2ce6086713c78a7f880485f7917ea547a215982"

/-!
# Finite measures

This file defines the type of finite measures on a given measurable space. When the underlying
space has a topology and the measurable space structure (sigma algebra) is finer than the Borel
sigma algebra, then the type of finite measures is equipped with the topology of weak convergence
of measures. The topology of weak convergence is the coarsest topology w.r.t. which
for every bounded continuous `ℝ≥0`-valued function `f`, the integration of `f` against the
measure is continuous.

## Main definitions

The main definitions are
 * the type `MeasureTheory.FiniteMeasure Ω` with the topology of weak convergence;
 * `MeasureTheory.FiniteMeasure.toWeakDualBCNN : FiniteMeasure Ω → (WeakDual ℝ≥0 (Ω →ᵇ ℝ≥0))`
   allowing to interpret a finite measure as a continuous linear functional on the space of
   bounded continuous nonnegative functions on `Ω`. This is used for the definition of the
   topology of weak convergence.

## Main results

 * Finite measures `μ` on `Ω` give rise to continuous linear functionals on the space of
   bounded continuous nonnegative functions on `Ω` via integration:
   `MeasureTheory.FiniteMeasure.toWeakDualBCNN : FiniteMeasure Ω → (WeakDual ℝ≥0 (Ω →ᵇ ℝ≥0))`
 * `MeasureTheory.FiniteMeasure.tendsto_iff_forall_integral_tendsto`: Convergence of finite
   measures is characterized by the convergence of integrals of all bounded continuous functions.
   This shows that the chosen definition of topology coincides with the common textbook definition
   of weak convergence of measures. A similar characterization by the convergence of integrals (in
   the `MeasureTheory.lintegral` sense) of all bounded continuous nonnegative functions is
   `MeasureTheory.FiniteMeasure.tendsto_iff_forall_lintegral_tendsto`.

## Implementation notes

The topology of weak convergence of finite Borel measures is defined using a mapping from
`MeasureTheory.FiniteMeasure Ω` to `WeakDual ℝ≥0 (Ω →ᵇ ℝ≥0)`, inheriting the topology from the
latter.

The implementation of `MeasureTheory.FiniteMeasure Ω` and is directly as a subtype of
`MeasureTheory.Measure Ω`, and the coercion to a function is the composition `ENNReal.toNNReal`
and the coercion to function of `MeasureTheory.Measure Ω`. Another alternative would have been to
use a bijection with `MeasureTheory.VectorMeasure Ω ℝ≥0` as an intermediate step. Some
considerations:
 * Potential advantages of using the `NNReal`-valued vector measure alternative:
   * The coercion to function would avoid need to compose with `ENNReal.toNNReal`, the
     `NNReal`-valued API could be more directly available.
 * Potential drawbacks of the vector measure alternative:
   * The coercion to function would lose monotonicity, as non-measurable sets would be defined to
     have measure 0.
   * No integration theory directly. E.g., the topology definition requires
     `MeasureTheory.lintegral` w.r.t. a coercion to `MeasureTheory.Measure Ω` in any case.

## References

* [Billingsley, *Convergence of probability measures*][billingsley1999]

## Tags

weak convergence of measures, finite measure

-/


noncomputable section

open MeasureTheory

open Set

open Filter

open BoundedContinuousFunction

open scoped Topology ENNReal NNReal BoundedContinuousFunction

namespace MeasureTheory

namespace FiniteMeasure

section FiniteMeasure

/-! ### Finite measures

In this section we define the `Type` of `MeasureTheory.FiniteMeasure Ω`, when `Ω` is a measurable
space. Finite measures on `Ω` are a module over `ℝ≥0`.

If `Ω` is moreover a topological space and the sigma algebra on `Ω` is finer than the Borel sigma
algebra (i.e. `[OpensMeasurableSpace Ω]`), then `MeasureTheory.FiniteMeasure Ω` is equipped with
the topology of weak convergence of measures. This is implemented by defining a pairing of finite
measures `μ` on `Ω` with continuous bounded nonnegative functions `f : Ω →ᵇ ℝ≥0` via integration,
and using the associated weak topology (essentially the weak-star topology on the dual of
`Ω →ᵇ ℝ≥0`).
-/


variable {Ω : Type*} [MeasurableSpace Ω]

/-- Finite measures are defined as the subtype of measures that have the property of being finite
measures (i.e., their total mass is finite). -/
def _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryFiniteMeasure.Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.MeasureTheory.FiniteMeasure (Ω : Type*) [MeasurableSpace Ω] : Type _ :=
  { μ : Measure Ω // IsFiniteMeasure μ }
#align measure_theory.finite_measure MeasureTheory.FiniteMeasure

-- porting note: as with other subtype synonyms (e.g., `ℝ≥0`, we need a new function for the
-- coercion instead of relying on `Subtype.val`.
/-- Coercion from `MeasureTheory.FiniteMeasure Ω` to `MeasureTheory.Measure Ω`. -/
@[coe]
def toMeasure : FiniteMeasure Ω → Measure Ω := Subtype.val

/-- A finite measure can be interpreted as a measure. -/
instance instCoe : Coe (FiniteMeasure Ω) (MeasureTheory.Measure Ω) where
  coe := toMeasure

instance isFiniteMeasure (μ : FiniteMeasure Ω) : IsFiniteMeasure (μ : Measure Ω) :=
  μ.prop
#align measure_theory.finite_measure.is_finite_measure MeasureTheory.FiniteMeasure.isFiniteMeasure

instance instCoeFun : CoeFun (FiniteMeasure Ω) fun _ => Set Ω → ℝ≥0 :=
  ⟨fun μ s => ((μ : Measure Ω) s).toNNReal⟩

-- porting note: now a syntactic tautology because of the way coercions work in Lean 4
#noalign measure_theory.finite_measure.coe_fn_eq_to_nnreal_coe_fn_to_measure

@[simp]
theorem ennreal_coeFn_eq_coeFn_toMeasure (ν : FiniteMeasure Ω) (s : Set Ω) :
    (ν s : ℝ≥0∞) = (ν : Measure Ω) s :=
  ENNReal.coe_toNNReal (measure_lt_top (↑ν) s).ne
#align measure_theory.finite_measure.ennreal_coe_fn_eq_coe_fn_to_measure MeasureTheory.FiniteMeasure.ennreal_coeFn_eq_coeFn_toMeasure

@[simp]
theorem val_eq_toMeasure (ν : FiniteMeasure Ω) : ν.val = (ν : Measure Ω) :=
  rfl
#align measure_theory.finite_measure.val_eq_to_measure MeasureTheory.FiniteMeasure.val_eq_toMeasure

theorem toMeasure_injective : Function.Injective ((↑) : FiniteMeasure Ω → Measure Ω) :=
  Subtype.coe_injective
#align measure_theory.finite_measure.coe_injective MeasureTheory.FiniteMeasure.toMeasure_injective

theorem apply_mono (μ : FiniteMeasure Ω) {s₁ s₂ : Set Ω} (h : s₁ ⊆ s₂) : μ s₁ ≤ μ s₂ := by
  change ((μ : Measure Ω) s₁).toNNReal ≤ ((μ : Measure Ω) s₂).toNNReal
  have key : (μ : Measure Ω) s₁ ≤ (μ : Measure Ω) s₂ := (μ : Measure Ω).mono h
  apply (ENNReal.toNNReal_le_toNNReal (measure_ne_top _ s₁) (measure_ne_top _ s₂)).mpr key
#align measure_theory.finite_measure.apply_mono MeasureTheory.FiniteMeasure.apply_mono

/-- The (total) mass of a finite measure `μ` is `μ univ`, i.e., the cast to `NNReal` of
`(μ : measure Ω) univ`. -/
def mass (μ : FiniteMeasure Ω) : ℝ≥0 :=
  μ univ
#align measure_theory.finite_measure.mass MeasureTheory.FiniteMeasure.mass

@[simp] theorem apply_le_mass (μ : FiniteMeasure Ω) (s : Set Ω) : μ s ≤ μ.mass := by
  simpa using apply_mono μ (subset_univ s)

@[simp]
theorem ennreal_mass {μ : FiniteMeasure Ω} : (μ.mass : ℝ≥0∞) = (μ : Measure Ω) univ :=
  ennreal_coeFn_eq_coeFn_toMeasure μ Set.univ
#align measure_theory.finite_measure.ennreal_mass MeasureTheory.FiniteMeasure.ennreal_mass

instance instZero : Zero (FiniteMeasure Ω) where zero := ⟨0, MeasureTheory.isFiniteMeasureZero⟩
#align measure_theory.finite_measure.has_zero MeasureTheory.FiniteMeasure.instZero

@[simp]
theorem zero_mass : (0 : FiniteMeasure Ω).mass = 0 :=
  rfl
#align measure_theory.finite_measure.zero.mass MeasureTheory.FiniteMeasure.zero_mass

@[simp]
theorem mass_zero_iff (μ : FiniteMeasure Ω) : μ.mass = 0 ↔ μ = 0 := by
  refine' ⟨fun μ_mass => _, fun hμ => by simp only [hμ, zero_mass]⟩
  apply toMeasure_injective
  apply Measure.measure_univ_eq_zero.mp
  rwa [← ennreal_mass, ENNReal.coe_eq_zero]
#align measure_theory.finite_measure.mass_zero_iff MeasureTheory.FiniteMeasure.mass_zero_iff

theorem mass_nonzero_iff (μ : FiniteMeasure Ω) : μ.mass ≠ 0 ↔ μ ≠ 0 := by
  rw [not_iff_not]
  exact FiniteMeasure.mass_zero_iff μ
#align measure_theory.finite_measure.mass_nonzero_iff MeasureTheory.FiniteMeasure.mass_nonzero_iff

@[ext]
theorem eq_of_forall_toMeasure_apply_eq (μ ν : FiniteMeasure Ω)
    (h : ∀ s : Set Ω, MeasurableSet s → (μ : Measure Ω) s = (ν : Measure Ω) s) : μ = ν := by
  apply Subtype.ext
  ext1 s s_mble
  exact h s s_mble
#align measure_theory.finite_measure.eq_of_forall_measure_apply_eq MeasureTheory.FiniteMeasure.eq_of_forall_toMeasure_apply_eq

theorem eq_of_forall_apply_eq (μ ν : FiniteMeasure Ω)
    (h : ∀ s : Set Ω, MeasurableSet s → μ s = ν s) : μ = ν := by
  ext1 s s_mble
  simpa [ennreal_coeFn_eq_coeFn_toMeasure] using congr_arg ((↑) : ℝ≥0 → ℝ≥0∞) (h s s_mble)
#align measure_theory.finite_measure.eq_of_forall_apply_eq MeasureTheory.FiniteMeasure.eq_of_forall_apply_eq

instance instInhabited : Inhabited (FiniteMeasure Ω) :=
  ⟨0⟩

instance instAdd : Add (FiniteMeasure Ω) where add μ ν := ⟨μ + ν, MeasureTheory.isFiniteMeasureAdd⟩

variable {R : Type*} [SMul R ℝ≥0] [SMul R ℝ≥0∞] [IsScalarTower R ℝ≥0 ℝ≥0∞]
  [IsScalarTower R ℝ≥0∞ ℝ≥0∞]

instance instSMul : SMul R (FiniteMeasure Ω)
    where smul (c : R) μ := ⟨c • (μ : Measure Ω), MeasureTheory.isFiniteMeasureSMulOfNNRealTower⟩

-- porting note: with `simp` here the `coeFn` lemmas below fall prey to `simpNF`: the LHS simplifies
@[norm_cast]
theorem toMeasure_zero : ((↑) : FiniteMeasure Ω → Measure Ω) 0 = 0 :=
  rfl
#align measure_theory.finite_measure.coe_zero MeasureTheory.FiniteMeasure.toMeasure_zero

-- porting note: with `simp` here the `coeFn` lemmas below fall prey to `simpNF`: the LHS simplifies
@[norm_cast]
theorem toMeasure_add (μ ν : FiniteMeasure Ω) : ↑(μ + ν) = (↑μ + ↑ν : Measure Ω) :=
  rfl
#align measure_theory.finite_measure.coe_add MeasureTheory.FiniteMeasure.toMeasure_add

-- porting note: with `simp` here the `coeFn` lemmas below fall prey to `simpNF`: the LHS simplifies
@[norm_cast]
theorem toMeasure_smul (c : R) (μ : FiniteMeasure Ω) : ↑(c • μ) = c • (μ : Measure Ω) :=
  rfl
#align measure_theory.finite_measure.coe_smul MeasureTheory.FiniteMeasure.toMeasure_smul

@[simp, norm_cast]
theorem coeFn_zero : (⇑(0 : FiniteMeasure Ω) : Set Ω → ℝ≥0) = (0 : Set Ω → ℝ≥0) := by
  funext; rfl
#align measure_theory.finite_measure.coe_fn_zero MeasureTheory.FiniteMeasure.coeFn_zero

@[simp, norm_cast]
theorem coeFn_add (μ ν : FiniteMeasure Ω) : (⇑(μ + ν) : Set Ω → ℝ≥0) = (⇑μ + ⇑ν : Set Ω → ℝ≥0) := by
  funext
  simp [← ENNReal.coe_eq_coe]
  norm_cast
#align measure_theory.finite_measure.coe_fn_add MeasureTheory.FiniteMeasure.coeFn_add

@[simp, norm_cast]
theorem coeFn_smul [IsScalarTower R ℝ≥0 ℝ≥0] (c : R) (μ : FiniteMeasure Ω) :
    (⇑(c • μ) : Set Ω → ℝ≥0) = c • (⇑μ : Set Ω → ℝ≥0) := by
  funext
  simp [← ENNReal.coe_eq_coe, ENNReal.coe_smul]
  norm_cast
#align measure_theory.finite_measure.coe_fn_smul MeasureTheory.FiniteMeasure.coeFn_smul

instance instAddCommMonoid : AddCommMonoid (FiniteMeasure Ω) :=
  toMeasure_injective.addCommMonoid (↑) toMeasure_zero toMeasure_add fun _ _ => toMeasure_smul _ _

/-- Coercion is an `AddMonoidHom`. -/
@[simps]
def toMeasureAddMonoidHom : FiniteMeasure Ω →+ Measure Ω where
  toFun := (↑)
  map_zero' := toMeasure_zero
  map_add' := toMeasure_add
#align measure_theory.finite_measure.coe_add_monoid_hom MeasureTheory.FiniteMeasure.toMeasureAddMonoidHom

instance {Ω : Type*} [MeasurableSpace Ω] : Module ℝ≥0 (FiniteMeasure Ω) :=
  Function.Injective.module _ toMeasureAddMonoidHom toMeasure_injective toMeasure_smul

-- porting note: `@[simp]` breaks the LHS of `coeFn_smul`
theorem coeFn_smul_apply [IsScalarTower R ℝ≥0 ℝ≥0] (c : R) (μ : FiniteMeasure Ω) (s : Set Ω) :
    (c • μ) s = c • μ s := by
  rw [coeFn_smul, Pi.smul_apply]
  -- porting note: why doesn't `simp only` work in place of `rw` here?
#align measure_theory.finite_measure.coe_fn_smul_apply MeasureTheory.FiniteMeasure.coeFn_smul_apply

/-- Restrict a finite measure μ to a set A. -/
def restrict (μ : FiniteMeasure Ω) (A : Set Ω) : FiniteMeasure Ω where
  val := (μ : Measure Ω).restrict A
  property := MeasureTheory.isFiniteMeasureRestrict (μ : Measure Ω) A
#align measure_theory.finite_measure.restrict MeasureTheory.FiniteMeasure.restrict

theorem restrict_measure_eq (μ : FiniteMeasure Ω) (A : Set Ω) :
    (μ.restrict A : Measure Ω) = (μ : Measure Ω).restrict A :=
  rfl
#align measure_theory.finite_measure.restrict_measure_eq MeasureTheory.FiniteMeasure.restrict_measure_eq

theorem restrict_apply_measure (μ : FiniteMeasure Ω) (A : Set Ω) {s : Set Ω}
    (s_mble : MeasurableSet s) : (μ.restrict A : Measure Ω) s = (μ : Measure Ω) (s ∩ A) :=
  Measure.restrict_apply s_mble
#align measure_theory.finite_measure.restrict_apply_measure MeasureTheory.FiniteMeasure.restrict_apply_measure

theorem restrict_apply (μ : FiniteMeasure Ω) (A : Set Ω) {s : Set Ω} (s_mble : MeasurableSet s) :
    (μ.restrict A) s = μ (s ∩ A) := by
  apply congr_arg ENNReal.toNNReal
  exact Measure.restrict_apply s_mble
#align measure_theory.finite_measure.restrict_apply MeasureTheory.FiniteMeasure.restrict_apply

theorem restrict_mass (μ : FiniteMeasure Ω) (A : Set Ω) : (μ.restrict A).mass = μ A := by
  simp only [mass, restrict_apply μ A MeasurableSet.univ, univ_inter]
#align measure_theory.finite_measure.restrict_mass MeasureTheory.FiniteMeasure.restrict_mass

theorem restrict_eq_zero_iff (μ : FiniteMeasure Ω) (A : Set Ω) : μ.restrict A = 0 ↔ μ A = 0 := by
  rw [← mass_zero_iff, restrict_mass]
#align measure_theory.finite_measure.restrict_eq_zero_iff MeasureTheory.FiniteMeasure.restrict_eq_zero_iff

theorem restrict_nonzero_iff (μ : FiniteMeasure Ω) (A : Set Ω) : μ.restrict A ≠ 0 ↔ μ A ≠ 0 := by
  rw [← mass_nonzero_iff, restrict_mass]
#align measure_theory.finite_measure.restrict_nonzero_iff MeasureTheory.FiniteMeasure.restrict_nonzero_iff

variable [TopologicalSpace Ω]

/-- The pairing of a finite (Borel) measure `μ` with a nonnegative bounded continuous
function is obtained by (Lebesgue) integrating the (test) function against the measure.
This is `MeasureTheory.FiniteMeasure.testAgainstNN`. -/
def testAgainstNN (μ : FiniteMeasure Ω) (f : Ω →ᵇ ℝ≥0) : ℝ≥0 :=
  (∫⁻ ω, f ω ∂(μ : Measure Ω)).toNNReal
#align measure_theory.finite_measure.test_against_nn MeasureTheory.FiniteMeasure.testAgainstNN

theorem _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryFiniteMeasure.Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.BoundedContinuousFunction.NNReal.coe_ennreal_comp_measurable {Ω : Type*}
    [TopologicalSpace Ω] [MeasurableSpace Ω] [OpensMeasurableSpace Ω] (f : Ω →ᵇ ℝ≥0) :
    Measurable fun ω => (f ω : ℝ≥0∞) :=
  measurable_coe_nnreal_ennreal.comp f.continuous.measurable
#align bounded_continuous_function.nnreal.to_ennreal_comp_measurable BoundedContinuousFunction.NNReal.coe_ennreal_comp_measurable

theorem _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryFiniteMeasure.Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.MeasureTheory.lintegral_lt_top_of_boundedContinuous_to_nnreal (μ : Measure Ω)
    [IsFiniteMeasure μ] (f : Ω →ᵇ ℝ≥0) : (∫⁻ ω, f ω ∂μ) < ∞ := by
  apply IsFiniteMeasure.lintegral_lt_top_of_bounded_to_eNNReal
  use nndist f 0
  intro x
  have key := BoundedContinuousFunction.Nnreal.upper_bound f x
  rw [ENNReal.coe_le_coe]
  have eq : nndist f 0 = ⟨dist f 0, dist_nonneg⟩ := by
    ext
    simp only [Real.coe_toNNReal', max_eq_left_iff, NNReal.coe_mk, coe_nndist]
  rwa [eq] at key
#align measure_theory.lintegral_lt_top_of_bounded_continuous_to_nnreal MeasureTheory.lintegral_lt_top_of_boundedContinuous_to_nnreal

@[simp]
theorem testAgainstNN_coe_eq {μ : FiniteMeasure Ω} {f : Ω →ᵇ ℝ≥0} :
    (μ.testAgainstNN f : ℝ≥0∞) = ∫⁻ ω, f ω ∂(μ : Measure Ω) :=
  ENNReal.coe_toNNReal (lintegral_lt_top_of_boundedContinuous_to_nnreal _ f).ne
#align measure_theory.finite_measure.test_against_nn_coe_eq MeasureTheory.FiniteMeasure.testAgainstNN_coe_eq

theorem testAgainstNN_const (μ : FiniteMeasure Ω) (c : ℝ≥0) :
    μ.testAgainstNN (BoundedContinuousFunction.const Ω c) = c * μ.mass := by
  simp [← ENNReal.coe_eq_coe]
#align measure_theory.finite_measure.test_against_nn_const MeasureTheory.FiniteMeasure.testAgainstNN_const

theorem testAgainstNN_mono (μ : FiniteMeasure Ω) {f g : Ω →ᵇ ℝ≥0} (f_le_g : (f : Ω → ℝ≥0) ≤ g) :
    μ.testAgainstNN f ≤ μ.testAgainstNN g := by
  simp only [← ENNReal.coe_le_coe, testAgainstNN_coe_eq]
  exact lintegral_mono fun ω => ENNReal.coe_mono (f_le_g ω)
#align measure_theory.finite_measure.test_against_nn_mono MeasureTheory.FiniteMeasure.testAgainstNN_mono

@[simp]
theorem testAgainstNN_zero (μ : FiniteMeasure Ω) : μ.testAgainstNN 0 = 0 := by
  simpa only [zero_mul] using μ.testAgainstNN_const 0
#align measure_theory.finite_measure.test_against_nn_zero MeasureTheory.FiniteMeasure.testAgainstNN_zero

@[simp]
theorem testAgainstNN_one (μ : FiniteMeasure Ω) : μ.testAgainstNN 1 = μ.mass := by
  simp only [testAgainstNN, coe_one, Pi.one_apply, ENNReal.coe_one, lintegral_one]
  rfl
#align measure_theory.finite_measure.test_against_nn_one MeasureTheory.FiniteMeasure.testAgainstNN_one

@[simp]
theorem zero_testAgainstNN_apply (f : Ω →ᵇ ℝ≥0) : (0 : FiniteMeasure Ω).testAgainstNN f = 0 := by
  simp only [testAgainstNN, toMeasure_zero, lintegral_zero_measure, ENNReal.zero_toNNReal]
#align measure_theory.finite_measure.zero.test_against_nn_apply MeasureTheory.FiniteMeasure.zero_testAgainstNN_apply

theorem zero_testAgainstNN : (0 : FiniteMeasure Ω).testAgainstNN = 0 := by
  funext;
  simp only [zero_testAgainstNN_apply, Pi.zero_apply]
#align measure_theory.finite_measure.zero.test_against_nn MeasureTheory.FiniteMeasure.zero_testAgainstNN

@[simp]
theorem smul_testAgainstNN_apply (c : ℝ≥0) (μ : FiniteMeasure Ω) (f : Ω →ᵇ ℝ≥0) :
    (c • μ).testAgainstNN f = c • μ.testAgainstNN f := by
  simp only [testAgainstNN, toMeasure_smul, smul_eq_mul, ← ENNReal.smul_toNNReal, ENNReal.smul_def,
    lintegral_smul_measure]
#align measure_theory.finite_measure.smul_test_against_nn_apply MeasureTheory.FiniteMeasure.smul_testAgainstNN_apply

variable [OpensMeasurableSpace Ω]

theorem testAgainstNN_add (μ : FiniteMeasure Ω) (f₁ f₂ : Ω →ᵇ ℝ≥0) :
    μ.testAgainstNN (f₁ + f₂) = μ.testAgainstNN f₁ + μ.testAgainstNN f₂ := by
  simp only [← ENNReal.coe_eq_coe, BoundedContinuousFunction.coe_add, ENNReal.coe_add, Pi.add_apply,
    testAgainstNN_coe_eq]
  exact lintegral_add_left (BoundedContinuousFunction.NNReal.coe_ennreal_comp_measurable _) _
#align measure_theory.finite_measure.test_against_nn_add MeasureTheory.FiniteMeasure.testAgainstNN_add

theorem testAgainstNN_smul [IsScalarTower R ℝ≥0 ℝ≥0] [PseudoMetricSpace R] [Zero R]
    [BoundedSMul R ℝ≥0] (μ : FiniteMeasure Ω) (c : R) (f : Ω →ᵇ ℝ≥0) :
    μ.testAgainstNN (c • f) = c • μ.testAgainstNN f := by
  simp only [← ENNReal.coe_eq_coe, BoundedContinuousFunction.coe_smul, testAgainstNN_coe_eq,
    ENNReal.coe_smul]
  simp_rw [← smul_one_smul ℝ≥0∞ c (f _ : ℝ≥0∞), ← smul_one_smul ℝ≥0∞ c (lintegral _ _ : ℝ≥0∞),
    smul_eq_mul]
  exact
    @lintegral_const_mul _ _ (μ : Measure Ω) (c • (1 : ℝ≥0∞)) _
      (BoundedContinuousFunction.NNReal.coe_ennreal_comp_measurable f)
#align measure_theory.finite_measure.test_against_nn_smul MeasureTheory.FiniteMeasure.testAgainstNN_smul

theorem testAgainstNN_lipschitz_estimate (μ : FiniteMeasure Ω) (f g : Ω →ᵇ ℝ≥0) :
    μ.testAgainstNN f ≤ μ.testAgainstNN g + nndist f g * μ.mass := by
  simp only [← μ.testAgainstNN_const (nndist f g), ← testAgainstNN_add, ← ENNReal.coe_le_coe,
    BoundedContinuousFunction.coe_add, const_apply, ENNReal.coe_add, Pi.add_apply,
    coe_nnreal_ennreal_nndist, testAgainstNN_coe_eq]
  apply lintegral_mono
  have le_dist : ∀ ω, dist (f ω) (g ω) ≤ nndist f g := BoundedContinuousFunction.dist_coe_le_dist
  intro ω
  have le' : f ω ≤ g ω + nndist f g := by
    apply (NNReal.le_add_nndist (f ω) (g ω)).trans
    rw [add_le_add_iff_left]
    exact dist_le_coe.mp (le_dist ω)
  have le : (f ω : ℝ≥0∞) ≤ (g ω : ℝ≥0∞) + nndist f g := by
    rw [← ENNReal.coe_add];
    exact ENNReal.coe_mono le'
  rwa [coe_nnreal_ennreal_nndist] at le
#align measure_theory.finite_measure.test_against_nn_lipschitz_estimate MeasureTheory.FiniteMeasure.testAgainstNN_lipschitz_estimate

theorem testAgainstNN_lipschitz (μ : FiniteMeasure Ω) :
    LipschitzWith μ.mass fun f : Ω →ᵇ ℝ≥0 => μ.testAgainstNN f := by
  rw [lipschitzWith_iff_dist_le_mul]
  intro f₁ f₂
  suffices abs (μ.testAgainstNN f₁ - μ.testAgainstNN f₂ : ℝ) ≤ μ.mass * dist f₁ f₂ by
    rwa [NNReal.dist_eq]
  apply abs_le.mpr
  constructor
  · have key' := μ.testAgainstNN_lipschitz_estimate f₂ f₁
    rw [mul_comm] at key'
    suffices ↑(μ.testAgainstNN f₂) ≤ ↑(μ.testAgainstNN f₁) + ↑μ.mass * dist f₁ f₂ by linarith
    have key := NNReal.coe_mono key'
    rwa [NNReal.coe_add, NNReal.coe_mul, nndist_comm] at key
  · have key' := μ.testAgainstNN_lipschitz_estimate f₁ f₂
    rw [mul_comm] at key'
    suffices ↑(μ.testAgainstNN f₁) ≤ ↑(μ.testAgainstNN f₂) + ↑μ.mass * dist f₁ f₂ by linarith
    have key := NNReal.coe_mono key'
    rwa [NNReal.coe_add, NNReal.coe_mul] at key
#align measure_theory.finite_measure.test_against_nn_lipschitz MeasureTheory.FiniteMeasure.testAgainstNN_lipschitz

/-- Finite measures yield elements of the `WeakDual` of bounded continuous nonnegative
functions via `MeasureTheory.FiniteMeasure.testAgainstNN`, i.e., integration. -/
def toWeakDualBCNN (μ : FiniteMeasure Ω) : WeakDual ℝ≥0 (Ω →ᵇ ℝ≥0) where
  toFun f := μ.testAgainstNN f
  map_add' := testAgainstNN_add μ
  map_smul' := testAgainstNN_smul μ
  cont := μ.testAgainstNN_lipschitz.continuous
#align measure_theory.finite_measure.to_weak_dual_bcnn MeasureTheory.FiniteMeasure.toWeakDualBCNN

@[simp]
theorem coe_toWeakDualBCNN (μ : FiniteMeasure Ω) : ⇑μ.toWeakDualBCNN = μ.testAgainstNN :=
  rfl
#align measure_theory.finite_measure.coe_to_weak_dual_bcnn MeasureTheory.FiniteMeasure.coe_toWeakDualBCNN

@[simp]
theorem toWeakDualBCNN_apply (μ : FiniteMeasure Ω) (f : Ω →ᵇ ℝ≥0) :
    μ.toWeakDualBCNN f = (∫⁻ x, f x ∂(μ : Measure Ω)).toNNReal :=
  rfl
#align measure_theory.finite_measure.to_weak_dual_bcnn_apply MeasureTheory.FiniteMeasure.toWeakDualBCNN_apply

/-- The topology of weak convergence on `MeasureTheory.FiniteMeasure Ω` is inherited (induced)
from the weak-* topology on `WeakDual ℝ≥0 (Ω →ᵇ ℝ≥0)` via the function
`MeasureTheory.FiniteMeasure.toWeakDualBCNN`. -/
instance instTopologicalSpace : TopologicalSpace (FiniteMeasure Ω) :=
  TopologicalSpace.induced toWeakDualBCNN inferInstance

theorem toWeakDualBCNN_continuous : Continuous (@toWeakDualBCNN Ω _ _ _) :=
  continuous_induced_dom
#align measure_theory.finite_measure.to_weak_dual_bcnn_continuous MeasureTheory.FiniteMeasure.toWeakDualBCNN_continuous

/- Integration of (nonnegative bounded continuous) test functions against finite Borel measures
depends continuously on the measure. -/
theorem continuous_testAgainstNN_eval (f : Ω →ᵇ ℝ≥0) :
    Continuous fun μ : FiniteMeasure Ω => μ.testAgainstNN f := by
  show Continuous ((fun φ : WeakDual ℝ≥0 (Ω →ᵇ ℝ≥0) => φ f) ∘ toWeakDualBCNN)
  refine Continuous.comp ?_ (toWeakDualBCNN_continuous (Ω := Ω))
  exact @WeakBilin.eval_continuous _ _ _ _ _ _ ContinuousLinearMap.module _ _ _ _
  /- porting note: without explicitly providing `ContinuousLinearMap.module`, TC synthesis times
  out trying to find `Module ℝ≥0 ((Ω →ᵇ ℝ≥0) →L[ℝ≥0] ℝ≥0)`, but it can find it with enough time:
  `set_option synthInstance.maxHeartbeats 47000` was sufficient. -/
#align measure_theory.finite_measure.continuous_test_against_nn_eval MeasureTheory.FiniteMeasure.continuous_testAgainstNN_eval

/-- The total mass of a finite measure depends continuously on the measure. -/
theorem continuous_mass : Continuous fun μ : FiniteMeasure Ω => μ.mass := by
  simp_rw [← testAgainstNN_one]; exact continuous_testAgainstNN_eval 1
#align measure_theory.finite_measure.continuous_mass MeasureTheory.FiniteMeasure.continuous_mass

/-- Convergence of finite measures implies the convergence of their total masses. -/
theorem _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryFiniteMeasure.Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.Filter.Tendsto.mass {γ : Type*} {F : Filter γ} {μs : γ → FiniteMeasure Ω}
    {μ : FiniteMeasure Ω} (h : Tendsto μs F (𝓝 μ)) : Tendsto (fun i => (μs i).mass) F (𝓝 μ.mass) :=
  (continuous_mass.tendsto μ).comp h
#align filter.tendsto.mass Filter.Tendsto.mass

theorem tendsto_iff_weak_star_tendsto {γ : Type*} {F : Filter γ} {μs : γ → FiniteMeasure Ω}
    {μ : FiniteMeasure Ω} :
    Tendsto μs F (𝓝 μ) ↔ Tendsto (fun i => (μs i).toWeakDualBCNN) F (𝓝 μ.toWeakDualBCNN) :=
  Inducing.tendsto_nhds_iff ⟨rfl⟩
#align measure_theory.finite_measure.tendsto_iff_weak_star_tendsto MeasureTheory.FiniteMeasure.tendsto_iff_weak_star_tendsto

theorem tendsto_iff_forall_toWeakDualBCNN_tendsto {γ : Type*} {F : Filter γ}
    {μs : γ → FiniteMeasure Ω} {μ : FiniteMeasure Ω} :
    Tendsto μs F (𝓝 μ) ↔
      ∀ f : Ω →ᵇ ℝ≥0, Tendsto (fun i => (μs i).toWeakDualBCNN f) F (𝓝 (μ.toWeakDualBCNN f)) :=
  by rw [tendsto_iff_weak_star_tendsto, tendsto_iff_forall_eval_tendsto_topDualPairing]; rfl
#align measure_theory.finite_measure.tendsto_iff_forall_to_weak_dual_bcnn_tendsto MeasureTheory.FiniteMeasure.tendsto_iff_forall_toWeakDualBCNN_tendsto

theorem tendsto_iff_forall_testAgainstNN_tendsto {γ : Type*} {F : Filter γ}
    {μs : γ → FiniteMeasure Ω} {μ : FiniteMeasure Ω} :
    Tendsto μs F (𝓝 μ) ↔
      ∀ f : Ω →ᵇ ℝ≥0, Tendsto (fun i => (μs i).testAgainstNN f) F (𝓝 (μ.testAgainstNN f)) :=
  by rw [FiniteMeasure.tendsto_iff_forall_toWeakDualBCNN_tendsto]; rfl
#align measure_theory.finite_measure.tendsto_iff_forall_test_against_nn_tendsto MeasureTheory.FiniteMeasure.tendsto_iff_forall_testAgainstNN_tendsto

/-- If the total masses of finite measures tend to zero, then the measures tend to
zero. This formulation concerns the associated functionals on bounded continuous
nonnegative test functions. See `MeasureTheory.FiniteMeasure.tendsto_zero_of_tendsto_zero_mass` for
a formulation stating the weak convergence of measures. -/
theorem tendsto_zero_testAgainstNN_of_tendsto_zero_mass {γ : Type*} {F : Filter γ}
    {μs : γ → FiniteMeasure Ω} (mass_lim : Tendsto (fun i => (μs i).mass) F (𝓝 0)) (f : Ω →ᵇ ℝ≥0) :
    Tendsto (fun i => (μs i).testAgainstNN f) F (𝓝 0) := by
  apply tendsto_iff_dist_tendsto_zero.mpr
  have obs := fun i => (μs i).testAgainstNN_lipschitz_estimate f 0
  simp_rw [testAgainstNN_zero, zero_add] at obs
  simp_rw [show ∀ i, dist ((μs i).testAgainstNN f) 0 = (μs i).testAgainstNN f by
      simp only [dist_nndist, NNReal.nndist_zero_eq_val', eq_self_iff_true, imp_true_iff]]
  refine' squeeze_zero (fun i => NNReal.coe_nonneg _) obs _
  have lim_pair : Tendsto (fun i => (⟨nndist f 0, (μs i).mass⟩ : ℝ × ℝ)) F (𝓝 ⟨nndist f 0, 0⟩) := by
    refine' (Prod.tendsto_iff _ _).mpr ⟨tendsto_const_nhds, _⟩
    exact (NNReal.continuous_coe.tendsto 0).comp mass_lim
  have key := tendsto_mul.comp lim_pair
  rwa [mul_zero] at key
#align measure_theory.finite_measure.tendsto_zero_test_against_nn_of_tendsto_zero_mass MeasureTheory.FiniteMeasure.tendsto_zero_testAgainstNN_of_tendsto_zero_mass

/-- If the total masses of finite measures tend to zero, then the measures tend to zero. -/
theorem tendsto_zero_of_tendsto_zero_mass {γ : Type*} {F : Filter γ} {μs : γ → FiniteMeasure Ω}
    (mass_lim : Tendsto (fun i => (μs i).mass) F (𝓝 0)) : Tendsto μs F (𝓝 0) := by
  rw [tendsto_iff_forall_testAgainstNN_tendsto]
  intro f
  convert tendsto_zero_testAgainstNN_of_tendsto_zero_mass mass_lim f
  rw [zero_testAgainstNN_apply]
#align measure_theory.finite_measure.tendsto_zero_of_tendsto_zero_mass MeasureTheory.FiniteMeasure.tendsto_zero_of_tendsto_zero_mass

/-- A characterization of weak convergence in terms of integrals of bounded continuous
nonnegative functions. -/
theorem tendsto_iff_forall_lintegral_tendsto {γ : Type*} {F : Filter γ} {μs : γ → FiniteMeasure Ω}
    {μ : FiniteMeasure Ω} :
    Tendsto μs F (𝓝 μ) ↔
      ∀ f : Ω →ᵇ ℝ≥0,
        Tendsto (fun i => ∫⁻ x, f x ∂(μs i : Measure Ω)) F (𝓝 (∫⁻ x, f x ∂(μ : Measure Ω))) := by
  rw [tendsto_iff_forall_toWeakDualBCNN_tendsto]
  simp_rw [toWeakDualBCNN_apply _ _, ← testAgainstNN_coe_eq, ENNReal.tendsto_coe,
    ENNReal.toNNReal_coe]
#align measure_theory.finite_measure.tendsto_iff_forall_lintegral_tendsto MeasureTheory.FiniteMeasure.tendsto_iff_forall_lintegral_tendsto

end FiniteMeasure

-- section
section FiniteMeasureBoundedConvergence

/-! ### Bounded convergence results for finite measures

This section is about bounded convergence theorems for finite measures.
-/


variable {Ω : Type*} [MeasurableSpace Ω] [TopologicalSpace Ω] [OpensMeasurableSpace Ω]

/-- A bounded convergence theorem for a finite measure:
If bounded continuous non-negative functions are uniformly bounded by a constant and tend to a
limit, then their integrals against the finite measure tend to the integral of the limit.
This formulation assumes:
 * the functions tend to a limit along a countably generated filter;
 * the limit is in the almost everywhere sense;
 * boundedness holds almost everywhere;
 * integration is `MeasureTheory.lintegral`, i.e., the functions and their integrals are
   `ℝ≥0∞`-valued.
-/
theorem tendsto_lintegral_nn_filter_of_le_const {ι : Type*} {L : Filter ι} [L.IsCountablyGenerated]
    (μ : Measure Ω) [IsFiniteMeasure μ] {fs : ι → Ω →ᵇ ℝ≥0} {c : ℝ≥0}
    (fs_le_const : ∀ᶠ i in L, ∀ᵐ ω : Ω ∂μ, fs i ω ≤ c) {f : Ω → ℝ≥0}
    (fs_lim : ∀ᵐ ω : Ω ∂μ, Tendsto (fun i => fs i ω) L (𝓝 (f ω))) :
    Tendsto (fun i => ∫⁻ ω, fs i ω ∂μ) L (𝓝 (∫⁻ ω, f ω ∂μ)) := by
  refine tendsto_lintegral_filter_of_dominated_convergence (fun _ => c)
    (eventually_of_forall fun i => (ENNReal.continuous_coe.comp (fs i).continuous).measurable) ?_
    (@lintegral_const_lt_top _ _ μ _ _ (@ENNReal.coe_ne_top c)).ne ?_
  · simpa only [Function.comp_apply, ENNReal.coe_le_coe] using fs_le_const
  · simpa only [Function.comp_apply, ENNReal.tendsto_coe] using fs_lim
#align measure_theory.finite_measure.tendsto_lintegral_nn_filter_of_le_const MeasureTheory.FiniteMeasure.tendsto_lintegral_nn_filter_of_le_const

/-- A bounded convergence theorem for a finite measure:
If a sequence of bounded continuous non-negative functions are uniformly bounded by a constant
and tend pointwise to a limit, then their integrals (`MeasureTheory.lintegral`) against the finite
measure tend to the integral of the limit.

A related result with more general assumptions is
`MeasureTheory.FiniteMeasure.tendsto_lintegral_nn_filter_of_le_const`.
-/
theorem tendsto_lintegral_nn_of_le_const (μ : FiniteMeasure Ω) {fs : ℕ → Ω →ᵇ ℝ≥0} {c : ℝ≥0}
    (fs_le_const : ∀ n ω, fs n ω ≤ c) {f : Ω → ℝ≥0}
    (fs_lim : ∀ ω, Tendsto (fun n => fs n ω) atTop (𝓝 (f ω))) :
    Tendsto (fun n => ∫⁻ ω, fs n ω ∂(μ : Measure Ω)) atTop (𝓝 (∫⁻ ω, f ω ∂(μ : Measure Ω))) :=
  tendsto_lintegral_nn_filter_of_le_const μ
    (eventually_of_forall fun n => eventually_of_forall (fs_le_const n))
    (eventually_of_forall fs_lim)
#align measure_theory.finite_measure.tendsto_lintegral_nn_of_le_const MeasureTheory.FiniteMeasure.tendsto_lintegral_nn_of_le_const

/-- A bounded convergence theorem for a finite measure:
If bounded continuous non-negative functions are uniformly bounded by a constant and tend to a
limit, then their integrals against the finite measure tend to the integral of the limit.
This formulation assumes:
 * the functions tend to a limit along a countably generated filter;
 * the limit is in the almost everywhere sense;
 * boundedness holds almost everywhere;
 * integration is the pairing against non-negative continuous test functions
   (`MeasureTheory.FiniteMeasure.testAgainstNN`).

A related result using `MeasureTheory.lintegral` for integration is
`MeasureTheory.FiniteMeasure.tendsto_lintegral_nn_filter_of_le_const`.
-/
theorem tendsto_testAgainstNN_filter_of_le_const {ι : Type*} {L : Filter ι}
    [L.IsCountablyGenerated] {μ : FiniteMeasure Ω} {fs : ι → Ω →ᵇ ℝ≥0} {c : ℝ≥0}
    (fs_le_const : ∀ᶠ i in L, ∀ᵐ ω : Ω ∂(μ : Measure Ω), fs i ω ≤ c) {f : Ω →ᵇ ℝ≥0}
    (fs_lim : ∀ᵐ ω : Ω ∂(μ : Measure Ω), Tendsto (fun i => fs i ω) L (𝓝 (f ω))) :
    Tendsto (fun i => μ.testAgainstNN (fs i)) L (𝓝 (μ.testAgainstNN f)) := by
  apply
    (ENNReal.tendsto_toNNReal
        (lintegral_lt_top_of_boundedContinuous_to_nnreal (μ : Measure Ω) f).ne).comp
  exact tendsto_lintegral_nn_filter_of_le_const μ fs_le_const fs_lim
#align measure_theory.finite_measure.tendsto_test_against_nn_filter_of_le_const MeasureTheory.FiniteMeasure.tendsto_testAgainstNN_filter_of_le_const

/-- A bounded convergence theorem for a finite measure:
If a sequence of bounded continuous non-negative functions are uniformly bounded by a constant and
tend pointwise to a limit, then their integrals (`MeasureTheory.FiniteMeasure.testAgainstNN`)
against the finite measure tend to the integral of the limit.

Related results:
 * `MeasureTheory.FiniteMeasure.tendsto_testAgainstNN_filter_of_le_const`:
   more general assumptions
 * `MeasureTheory.FiniteMeasure.tendsto_lintegral_nn_of_le_const`:
   using `MeasureTheory.lintegral` for integration.
-/
theorem tendsto_testAgainstNN_of_le_const {μ : FiniteMeasure Ω} {fs : ℕ → Ω →ᵇ ℝ≥0} {c : ℝ≥0}
    (fs_le_const : ∀ n ω, fs n ω ≤ c) {f : Ω →ᵇ ℝ≥0}
    (fs_lim : ∀ ω, Tendsto (fun n => fs n ω) atTop (𝓝 (f ω))) :
    Tendsto (fun n => μ.testAgainstNN (fs n)) atTop (𝓝 (μ.testAgainstNN f)) :=
  tendsto_testAgainstNN_filter_of_le_const
    (eventually_of_forall fun n => eventually_of_forall (fs_le_const n))
    (eventually_of_forall fs_lim)
#align measure_theory.finite_measure.tendsto_test_against_nn_of_le_const MeasureTheory.FiniteMeasure.tendsto_testAgainstNN_of_le_const

end FiniteMeasureBoundedConvergence

-- section
section FiniteMeasureConvergenceByBoundedContinuousFunctions

/-! ### Weak convergence of finite measures with bounded continuous real-valued functions

In this section we characterize the weak convergence of finite measures by the usual (defining)
condition that the integrals of all bounded continuous real-valued functions converge.
-/


variable {Ω : Type*} [MeasurableSpace Ω] [TopologicalSpace Ω] [OpensMeasurableSpace Ω]

theorem integrable_of_boundedContinuous_to_nnreal (μ : Measure Ω) [IsFiniteMeasure μ]
    (f : Ω →ᵇ ℝ≥0) : Integrable (((↑) : ℝ≥0 → ℝ) ∘ ⇑f) μ := by
  refine' ⟨(NNReal.continuous_coe.comp f.continuous).measurable.aestronglyMeasurable, _⟩
  simp only [HasFiniteIntegral, Function.comp_apply, NNReal.nnnorm_eq]
  exact lintegral_lt_top_of_boundedContinuous_to_nnreal _ f
#align measure_theory.finite_measure.integrable_of_bounded_continuous_to_nnreal MeasureTheory.FiniteMeasure.integrable_of_boundedContinuous_to_nnreal

theorem integrable_of_boundedContinuous_to_real (μ : Measure Ω) [IsFiniteMeasure μ] (f : Ω →ᵇ ℝ) :
    Integrable (⇑f) μ := by
  refine' ⟨f.continuous.measurable.aestronglyMeasurable, _⟩
  have aux : ((↑) : ℝ≥0 → ℝ) ∘ ⇑f.nnnorm = fun x => ‖f x‖ := by
    ext ω
    simp only [Function.comp_apply, BoundedContinuousFunction.nnnorm_coeFn_eq, coe_nnnorm]
  apply (hasFiniteIntegral_iff_norm f).mpr
  rw [← ofReal_integral_eq_lintegral_ofReal]
  · exact ENNReal.ofReal_lt_top
  · exact aux ▸ integrable_of_boundedContinuous_to_nnreal μ f.nnnorm
  · exact eventually_of_forall fun ω => norm_nonneg (f ω)
#align measure_theory.finite_measure.integrable_of_bounded_continuous_to_real MeasureTheory.FiniteMeasure.integrable_of_boundedContinuous_to_real

theorem _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryFiniteMeasure.Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.BoundedContinuousFunction.integral_eq_integral_nnrealPart_sub (μ : Measure Ω)
    [IsFiniteMeasure μ] (f : Ω →ᵇ ℝ) :
    ∫ ω, f ω ∂μ = (∫ ω, (f.nnrealPart ω : ℝ) ∂μ) - ∫ ω, ((-f).nnrealPart ω : ℝ) ∂μ := by
  simp only [f.self_eq_nnrealPart_sub_nnrealPart_neg, Pi.sub_apply, integral_sub,
    integrable_of_boundedContinuous_to_nnreal]
  rfl
#align bounded_continuous_function.integral_eq_integral_nnreal_part_sub BoundedContinuousFunction.integral_eq_integral_nnrealPart_sub

theorem lintegral_lt_top_of_boundedContinuous_to_real {Ω : Type*} [MeasurableSpace Ω]
    [TopologicalSpace Ω] (μ : Measure Ω) [IsFiniteMeasure μ] (f : Ω →ᵇ ℝ) :
    (∫⁻ ω, ENNReal.ofReal (f ω) ∂μ) < ∞ :=
  lintegral_lt_top_of_boundedContinuous_to_nnreal _ f.nnrealPart
#align measure_theory.finite_measure.lintegral_lt_top_of_bounded_continuous_to_real MeasureTheory.FiniteMeasure.lintegral_lt_top_of_boundedContinuous_to_real

theorem tendsto_of_forall_integral_tendsto {γ : Type*} {F : Filter γ} {μs : γ → FiniteMeasure Ω}
    {μ : FiniteMeasure Ω}
    (h :
      ∀ f : Ω →ᵇ ℝ,
        Tendsto (fun i => ∫ x, f x ∂(μs i : Measure Ω)) F (𝓝 (∫ x, f x ∂(μ : Measure Ω)))) :
    Tendsto μs F (𝓝 μ) := by
  apply (@tendsto_iff_forall_lintegral_tendsto Ω _ _ _ γ F μs μ).mpr
  intro f
  have key :=
    @ENNReal.tendsto_toReal_iff _ F _
      (fun i => (lintegral_lt_top_of_boundedContinuous_to_nnreal (μs i : Measure Ω) f).ne) _
      (lintegral_lt_top_of_boundedContinuous_to_nnreal (μ : Measure Ω) f).ne
  simp only [ENNReal.ofReal_coe_nnreal] at key
  apply key.mp
  have lip : LipschitzWith 1 ((↑) : ℝ≥0 → ℝ) := isometry_subtype_coe.lipschitz
  set f₀ := BoundedContinuousFunction.comp _ lip f with _def_f₀
  have f₀_eq : ⇑f₀ = ((↑) : ℝ≥0 → ℝ) ∘ ⇑f := by rfl
  have f₀_nn : 0 ≤ ⇑f₀ := fun _ => by
    simp only [f₀_eq, Pi.zero_apply, Function.comp_apply, NNReal.zero_le_coe]
  have f₀_ae_nn : 0 ≤ᵐ[(μ : Measure Ω)] ⇑f₀ := eventually_of_forall f₀_nn
  have f₀_ae_nns : ∀ i, 0 ≤ᵐ[(μs i : Measure Ω)] ⇑f₀ := fun i => eventually_of_forall f₀_nn
  have aux :=
    integral_eq_lintegral_of_nonneg_ae f₀_ae_nn f₀.continuous.measurable.aestronglyMeasurable
  have auxs := fun i =>
    integral_eq_lintegral_of_nonneg_ae (f₀_ae_nns i) f₀.continuous.measurable.aestronglyMeasurable
  simp_rw [f₀_eq, Function.comp_apply, ENNReal.ofReal_coe_nnreal] at aux auxs
  simpa only [← aux, ← auxs] using h f₀
#align measure_theory.finite_measure.tendsto_of_forall_integral_tendsto MeasureTheory.FiniteMeasure.tendsto_of_forall_integral_tendsto

theorem _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryFiniteMeasure.Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.BoundedContinuousFunction.NNReal.toReal_lintegral_eq_integral (f : Ω →ᵇ ℝ≥0)
    (μ : Measure Ω) : (∫⁻ x, (f x : ℝ≥0∞) ∂μ).toReal = ∫ x, (f x : ℝ) ∂μ := by
  rw [integral_eq_lintegral_of_nonneg_ae _ (by simpa [Function.comp_apply] using
        (NNReal.continuous_coe.comp f.continuous).measurable.aestronglyMeasurable)]
  · simp only [ENNReal.ofReal_coe_nnreal]
  · apply eventually_of_forall
    simp only [Pi.zero_apply, NNReal.zero_le_coe, imp_true_iff]
#align bounded_continuous_function.nnreal.to_real_lintegral_eq_integral BoundedContinuousFunction.NNReal.toReal_lintegral_eq_integral

/-- A characterization of weak convergence in terms of integrals of bounded continuous
real-valued functions. -/
theorem tendsto_iff_forall_integral_tendsto {γ : Type*} {F : Filter γ} {μs : γ → FiniteMeasure Ω}
    {μ : FiniteMeasure Ω} :
    Tendsto μs F (𝓝 μ) ↔
      ∀ f : Ω →ᵇ ℝ,
        Tendsto (fun i => ∫ x, f x ∂(μs i : Measure Ω)) F (𝓝 (∫ x, f x ∂(μ : Measure Ω))) := by
  refine' ⟨_, tendsto_of_forall_integral_tendsto⟩
  rw [tendsto_iff_forall_lintegral_tendsto]
  intro h f
  simp_rw [BoundedContinuousFunction.integral_eq_integral_nnrealPart_sub]
  set f_pos := f.nnrealPart with _def_f_pos
  set f_neg := (-f).nnrealPart with _def_f_neg
  have tends_pos :=
    (ENNReal.tendsto_toReal
          (lintegral_lt_top_of_boundedContinuous_to_nnreal (μ : Measure Ω) f_pos).ne).comp
      (h f_pos)
  have tends_neg :=
    (ENNReal.tendsto_toReal
          (lintegral_lt_top_of_boundedContinuous_to_nnreal (μ : Measure Ω) f_neg).ne).comp
      (h f_neg)
  have aux :
    ∀ g : Ω →ᵇ ℝ≥0,
      (ENNReal.toReal ∘ fun i : γ => ∫⁻ x : Ω, ↑(g x) ∂(μs i : Measure Ω)) = fun i : γ =>
        (∫⁻ x : Ω, ↑(g x) ∂(μs i : Measure Ω)).toReal :=
    fun _ => rfl
  simp_rw [aux, BoundedContinuousFunction.NNReal.toReal_lintegral_eq_integral]
    at tends_pos tends_neg
  exact Tendsto.sub tends_pos tends_neg
#align measure_theory.finite_measure.tendsto_iff_forall_integral_tendsto MeasureTheory.FiniteMeasure.tendsto_iff_forall_integral_tendsto

end FiniteMeasureConvergenceByBoundedContinuousFunctions

-- section
end FiniteMeasure

-- namespace
end MeasureTheory

-- namespace
```
