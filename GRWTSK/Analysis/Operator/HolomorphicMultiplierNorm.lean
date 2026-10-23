import GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
import Mathlib.Topology.ContinuousMap.Bounded.Normed

/-!
# Supremum norm and operator-norm continuity for the existing symbol algebra

The carrier and algebra maps are unchanged. The norm is pulled back from the actual bounded
continuous function with the same values. The scoped uniformity and topology explicitly use
that norm; they are not identified with the previously inherited pointwise topology.
No symbol completeness, star closure, faithful isometry, or optimal operator norm is asserted.
-/

namespace GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm

open MeasureTheory
open scoped ENNReal Topology
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology (section_continuous)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.BoundedSymbol

universe u v
noncomputable section

/-- Only a bound witness is selected; the continuous function is the original symbol. -/
def boundedFunction (X : Domain) (f : BoundedSymbol X) : X.carrier →ᵇ ℂ :=
  BoundedContinuousFunction.ofNormedAddCommGroup f.value (section_continuous X f.1)
    (f.toMultiplier.bound : ℝ) f.toMultiplier.norm_le

@[simp] theorem boundedFunction_apply (X : Domain) (f : BoundedSymbol X) (x : X.carrier) :
    boundedFunction X f x = f.value x := rfl

/-- Algebra operations retain the exact pointwise functions, not their bound witnesses. -/
def boundedFunctionHom (X : Domain) : BoundedSymbol X →+* (X.carrier →ᵇ ℂ) where
  toFun := boundedFunction X
  map_zero' := by ext x; rfl
  map_one' := by ext x; rfl
  map_add' := by intro f g; ext x; rfl
  map_mul' := by intro f g; ext x; rfl

theorem boundedFunctionHom_injective (X : Domain) :
    Function.Injective (boundedFunctionHom X) := by
  intro f g h
  apply BoundedSymbol.ext
  intro x
  exact congrArg (fun a : X.carrier →ᵇ ℂ => a x) h

@[simp] theorem boundedFunction_smul (X : Domain) (c : ℂ) (f : BoundedSymbol X) :
    boundedFunctionHom X (c • f) = c • boundedFunctionHom X f := by
  ext x
  rfl

/-- The normed ring is induced by an injective map into the supremum-norm function ring. -/
scoped instance symbolNormedCommRing (X : Domain) : NormedCommRing (BoundedSymbol X) :=
  NormedCommRing.induced _ _ (boundedFunctionHom X) (boundedFunctionHom_injective X)

/-- Prefer the norm uniformity over the pre-existing nested-subtype uniformity in this scope. -/
scoped instance (priority := 1100) symbolUniformSpace (X : Domain) :
    UniformSpace (BoundedSymbol X) := (symbolNormedCommRing X).toUniformSpace

/-- This topology is the preceding norm topology, not an equality with pointwise convergence. -/
scoped instance (priority := 1100) symbolTopologicalSpace (X : Domain) :
    TopologicalSpace (BoundedSymbol X) := (symbolUniformSpace X).toTopologicalSpace

/-- The complex action still comes from the historical constant-section algebra map. -/
scoped instance symbolNormedAlgebra (X : Domain) : NormedAlgebra ℂ (BoundedSymbol X) where
  norm_smul_le c f := by
    change ‖boundedFunctionHom X (c • f)‖ ≤ ‖c‖ * ‖boundedFunctionHom X f‖
    rw [boundedFunction_smul]
    exact norm_smul_le c (boundedFunctionHom X f)

/-- A signature check for the explicitly selected norm topology. -/
theorem symbolTopology_coherent (X : Domain) :
    (inferInstance : TopologicalSpace (BoundedSymbol X)) =
      (symbolNormedCommRing X).toUniformSpace.toTopologicalSpace := rfl

@[simp] theorem norm_eq_boundedFunction (X : Domain) (f : BoundedSymbol X) :
    ‖f‖ = ‖boundedFunctionHom X f‖ := rfl

/-- The nonnegative-upper-bound formulation also handles the empty domain. -/
theorem norm_eq_infimum (X : Domain) (f : BoundedSymbol X) :
    ‖f‖ = sInf {K : ℝ | 0 ≤ K ∧ ∀ x : X.carrier, ‖f.value x‖ ≤ K} :=
  BoundedContinuousFunction.norm_eq (boundedFunctionHom X f)

theorem norm_value_le (X : Domain) (f : BoundedSymbol X) (x : X.carrier) :
    ‖f.value x‖ ≤ ‖f‖ := (boundedFunctionHom X f).norm_coe_le_norm x

theorem norm_le_iff (X : Domain) (f : BoundedSymbol X) (K : ℝ) (hK : 0 ≤ K) :
    ‖f‖ ≤ K ↔ ∀ x : X.carrier, ‖f.value x‖ ≤ K :=
  BoundedContinuousFunction.norm_le (f := boundedFunctionHom X f) hK

/-- The chosen bound in an earlier certificate is not used in this characterization. -/
theorem norm_sub_le_iff (X : Domain) (f g : BoundedSymbol X) (K : ℝ) (hK : 0 ≤ K) :
    ‖f - g‖ ≤ K ↔ ∀ x : X.carrier, ‖f.value x - g.value x‖ ≤ K :=
  norm_le_iff X (f - g) K hK

/-- Same carrier, same constant section; nonemptiness is essential for this equality. -/
theorem norm_constants (X : Domain) [Nonempty X.carrier] (c : ℂ) :
    ‖BoundedSymbol.constants X c‖ = ‖c‖ := by
  apply le_antisymm
  · exact (norm_le_iff X _ ‖c‖ (norm_nonneg c)).mpr (fun _ => le_rfl)
  · obtain ⟨x⟩ := ‹Nonempty X.carrier›
    exact norm_value_le X (BoundedSymbol.constants X c) x

/-- The norm is bound to this actual continuous-function embedding. -/
def functionLinearIsometry (X : Domain) : BoundedSymbol X →ₗᵢ[ℂ] (X.carrier →ᵇ ℂ) where
  toLinearMap :=
    { toFun := boundedFunctionHom X
      map_add' := (boundedFunctionHom X).map_add
      map_smul' := boundedFunction_smul X }
  norm_map' _ := rfl

@[simp] theorem functionLinearIsometry_apply (X : Domain) (f : BoundedSymbol X) :
    functionLinearIsometry X f = boundedFunctionHom X f := rfl

/-- Evaluation is bounded for the supremum norm, with exactly the old function value. -/
def evaluation (X : Domain) (x : X.carrier) : BoundedSymbol X →L[ℂ] ℂ :=
  ({ toFun := fun f => f.value x
     map_add' := by intros; rfl
     map_smul' := by intros; rfl } : BoundedSymbol X →ₗ[ℂ] ℂ).mkContinuous 1
    (fun f => by simpa only [one_mul] using norm_value_le X f x)

@[simp] theorem evaluation_apply (X : Domain) (x : X.carrier) (f : BoundedSymbol X) :
    evaluation X x f = f.value x := rfl

/-- Norm convergence implies pointwise convergence; no converse is asserted. -/
theorem valueMap_continuous (X : Domain) :
    Continuous (fun f : BoundedSymbol X => f.value) :=
  continuous_pi (fun x => (evaluation X x).continuous)

/-- The target retains its original function-subtype topology. -/
theorem forgetHolomorphic_continuous (X : Domain) :
    Continuous (fun f : BoundedSymbol X => (f.1 : HolomorphicSection X)) :=
  (valueMap_continuous X).subtype_mk _

variable {ι : Type u} {D : IndexedDomainCover ι} {C E : Cocycle D}

/-- The old representation consumes the canonical bound supplied by the actual symbol norm. -/
theorem completedRepresentation_norm_le (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) :
    ‖completedRepresentation M μ hOpen f‖ ≤ ‖f‖ :=
  completedRepresentation_bound M μ hOpen f ‖f‖₊ (norm_value_le D.X f)

theorem quotientRepresentation_norm_le (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) :
    ‖quotientRepresentation M μ hOpen f‖ ≤ ‖f‖ := by
  calc
    ‖quotientRepresentation M μ hOpen f‖ = ‖completedRepresentation M μ hOpen f‖ :=
      (completeMap_norm M M μ hOpen (quotientRepresentation M μ hOpen f)).symm
    _ ≤ ‖f‖ := completedRepresentation_norm_le M μ hOpen f

/-- The old algebra homomorphism with a derived continuity proof, not a replacement action. -/
def quotientRepresentationCLM (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :
    BoundedSymbol D.X →L[ℂ] (SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen) :=
  (quotientAlgHom M μ hOpen).toLinearMap.mkContinuous 1
    (fun f => by simpa only [one_mul] using quotientRepresentation_norm_le M μ hOpen f)

def completedRepresentationCLM (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :
    BoundedSymbol D.X →L[ℂ] (SectionCompletion M μ hOpen →L[ℂ] SectionCompletion M μ hOpen) :=
  (completedAlgHom M μ hOpen).toLinearMap.mkContinuous 1
    (fun f => by simpa only [one_mul] using completedRepresentation_norm_le M μ hOpen f)

@[simp] theorem quotientRepresentationCLM_apply (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) :
    quotientRepresentationCLM M μ hOpen f = quotientRepresentation M μ hOpen f := rfl

@[simp] theorem completedRepresentationCLM_apply (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) :
    completedRepresentationCLM M μ hOpen f = completedRepresentation M μ hOpen f := rfl

/-- The new continuous wrappers preserve the original linear maps definitionally. -/
@[simp] theorem quotientRepresentationCLM_toLinearMap (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    (quotientRepresentationCLM M μ hOpen).toLinearMap =
      (quotientAlgHom M μ hOpen).toLinearMap := rfl

@[simp] theorem completedRepresentationCLM_toLinearMap (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    (completedRepresentationCLM M μ hOpen).toLinearMap =
      (completedAlgHom M μ hOpen).toLinearMap := rfl

theorem quotientRepresentationCLM_norm_le (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    ‖quotientRepresentationCLM M μ hOpen‖ ≤ 1 :=
  (quotientRepresentationCLM M μ hOpen).opNorm_le_bound (by norm_num)
    (fun f => by simpa only [one_mul] using quotientRepresentation_norm_le M μ hOpen f)

theorem completedRepresentationCLM_norm_le (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    ‖completedRepresentationCLM M μ hOpen‖ ≤ 1 :=
  (completedRepresentationCLM M μ hOpen).opNorm_le_bound (by norm_num)
    (fun f => by simpa only [one_mul] using completedRepresentation_norm_le M μ hOpen f)

/-- The estimate is in the operator norm, not merely strong or pointwise convergence. -/
theorem completedRepresentation_sub_norm_le (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (f g : BoundedSymbol D.X) :
    ‖completedRepresentation M μ hOpen f - completedRepresentation M μ hOpen g‖ ≤ ‖f - g‖ := by
  rw [← map_sub (completedRepresentation M μ hOpen)]
  exact completedRepresentation_norm_le M μ hOpen (f - g)

theorem completedRepresentation_continuous (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    Continuous (completedRepresentation M μ hOpen) :=
  (completedRepresentationCLM M μ hOpen).continuous

theorem completedRepresentation_tendsto (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) {α : Type v} {l : Filter α} {f : α → BoundedSymbol D.X}
    {g : BoundedSymbol D.X} (hf : Filter.Tendsto f l (𝓝 g)) :
    Filter.Tendsto (fun a => completedRepresentation M μ hOpen (f a)) l
      (𝓝 (completedRepresentation M μ hOpen g)) :=
  ((completedRepresentation_continuous M μ hOpen).tendsto g).comp hf

/-- The continuous presentation retains the original measure, metric transport, and gauge. -/
theorem completedRepresentationCLM_gauge (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) :
    completedRepresentationCLM (transportMetric G M) μ hOpen f =
      gaugeConjugate G M μ hOpen (completedRepresentationCLM M μ hOpen f) :=
  completedRepresentation_gauge G M μ hOpen f

/-- Empty-domain symbols are equal as functions; no norm-one or nontriviality is smuggled in. -/
theorem empty_symbol_eq_zero (X : Domain) [IsEmpty X.carrier] (f : BoundedSymbol X) : f = 0 :=
  BoundedSymbol.ext (fun x => isEmptyElim x)

theorem empty_symbol_norm (X : Domain) [IsEmpty X.carrier] (f : BoundedSymbol X) : ‖f‖ = 0 := by
  rw [empty_symbol_eq_zero X f, norm_zero]

namespace Fixtures

open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures

/-- Contractivity is not an isometric or faithful representation theorem. -/
theorem strict_operator_norm_loss :
    ‖completedRepresentation (MetricWeights.identity diskCover) (Measure.dirac center)
      diskCover_isOpen diskSymbol‖ < ‖diskSymbol‖ := by
  rw [nonzero_symbol_in_kernel.2, norm_zero]
  exact norm_pos_iff.mpr nonzero_symbol_in_kernel.1

end Fixtures
end
end GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
