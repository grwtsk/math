# Complete source: GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57cbc2ce4d0b99c779dabd5168c5f715095dba39` · SHA-256 `ceed8bef6bc11bc30bf73f9c92bc57f3379ddc0867a99ee2a77fc218cec1f5e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Topology.Sequences
import Mathlib.Topology.UniformSpace.UniformEmbedding

/-!
# Uniform-limit closedness of bounded holomorphic symbols

The open-domain premise is explicit. Limits are taken in the supremum norm of the old
symbol algebra and the exact bounded-function embedding. Completeness is derived from
closedness of that image; it is not imposed on arbitrary domains, section quotients, or
operator images. Local derivative convergence is not a global derivative norm bound.
-/

namespace GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete

open Filter Topology MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.BoundedSymbol
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm

universe u v
noncomputable section

/-- A holomorphic bounded function returns to the existing symbol carrier, not a new one. -/
def ofBoundedFunction (X : Domain) (g : X.carrier →ᵇ ℂ)
    (hg : ExtendsHolomorphically X (g : Section X)) : BoundedSymbol X :=
  ⟨⟨(g : Section X), hg⟩, ‖g‖₊, fun x => g.norm_coe_le_norm x⟩

@[simp] theorem ofBoundedFunction_value (X : Domain) (g : X.carrier →ᵇ ℂ)
    (hg : ExtendsHolomorphically X (g : Section X)) (x : X.carrier) :
    (ofBoundedFunction X g hg).value x = g x := rfl

@[simp] theorem boundedFunction_ofBoundedFunction (X : Domain) (g : X.carrier →ᵇ ℂ)
    (hg : ExtendsHolomorphically X (g : Section X)) :
    boundedFunctionHom X (ofBoundedFunction X g hg) = g := by
  ext x
  rfl

/-- Membership in the exact old image is precisely holomorphy of that function. -/
theorem boundedFunction_range_iff (X : Domain) (g : X.carrier →ᵇ ℂ) :
    g ∈ Set.range (boundedFunctionHom X) ↔ ExtendsHolomorphically X (g : Section X) := by
  constructor
  · rintro ⟨f, rfl⟩
    exact f.1.property
  · intro hg
    exact ⟨ofBoundedFunction X g hg, boundedFunction_ofBoundedFunction X g hg⟩

/-- Norm convergence on the domain gives uniform convergence of the same representatives there. -/
theorem ambient_uniformLimit (X : Domain) {α : Type v} {l : Filter α}
    {F : α → X.carrier →ᵇ ℂ} {g : X.carrier →ᵇ ℂ} (h : Tendsto F l (𝓝 g)) :
    TendstoUniformlyOn (fun a => ambientRepresentative X (F a : Section X))
      (ambientRepresentative X (g : Section X)) l X.carrier := by
  have hu := BoundedContinuousFunction.tendsto_iff_tendstoUniformly.mp h
  apply Metric.tendstoUniformlyOn_iff.mpr
  intro ε hε
  filter_upwards [Metric.tendstoUniformly_iff.mp hu ε hε] with a ha z hz
  rw [ambientRepresentative_apply X (g : Section X) z hz,
    ambientRepresentative_apply X (F a : Section X) z hz]
  exact ha ⟨z, hz⟩

/-- Weierstrass locality supplies the missing analytic fact, with openness and a nontrivial filter. -/
theorem holomorphic_of_tendsto (X : Domain) (hX : IsOpen X.carrier)
    {α : Type v} {l : Filter α} [l.NeBot]
    {F : α → X.carrier →ᵇ ℂ} {g : X.carrier →ᵇ ℂ} (h : Tendsto F l (𝓝 g))
    (hF : ∀ᶠ a in l, ExtendsHolomorphically X (F a : Section X)) :
    ExtendsHolomorphically X (g : Section X) := by
  have hd : ∀ᶠ a in l,
      DifferentiableOn ℂ (ambientRepresentative X (F a : Section X)) X.carrier :=
    hF.mono (fun a ha => ambientRepresentative_differentiableOn X
      (⟨(F a : Section X), ha⟩ : HolomorphicSection X))
  refine ⟨ambientRepresentative X (g : Section X),
    (ambient_uniformLimit X h).tendstoLocallyUniformlyOn.differentiableOn hd hX, ?_⟩
  intro z
  exact ambientRepresentative_apply X (g : Section X) z.1 z.2

/-- Derivatives converge locally uniformly; no uniform derivative bound on all of X is asserted. -/
theorem ambient_deriv_tendsto (X : Domain) (hX : IsOpen X.carrier)
    {α : Type v} {l : Filter α} [l.NeBot]
    {F : α → X.carrier →ᵇ ℂ} {g : X.carrier →ᵇ ℂ} (h : Tendsto F l (𝓝 g))
    (hF : ∀ᶠ a in l, ExtendsHolomorphically X (F a : Section X)) :
    TendstoLocallyUniformlyOn (fun a => deriv (ambientRepresentative X (F a : Section X)))
      (deriv (ambientRepresentative X (g : Section X))) l X.carrier := by
  have hd : ∀ᶠ a in l,
      DifferentiableOn ℂ (ambientRepresentative X (F a : Section X)) X.carrier :=
    hF.mono (fun a ha => ambientRepresentative_differentiableOn X
      (⟨(F a : Section X), ha⟩ : HolomorphicSection X))
  exact (ambient_uniformLimit X h).tendstoLocallyUniformlyOn.deriv hd hX

/-- The closed set is the function-embedding image, not the section-operator image. -/
theorem boundedFunction_range_isClosed (X : Domain) (hX : IsOpen X.carrier) :
    IsClosed (Set.range (boundedFunctionHom X)) := by
  apply IsSeqClosed.isClosed
  intro F g hF h
  apply (boundedFunction_range_iff X g).mpr
  exact holomorphic_of_tendsto X hX h
    (Eventually.of_forall (fun n => (boundedFunction_range_iff X (F n)).mp (hF n)))

/-- Completeness is pulled back through the historical supremum-norm isometry. -/
theorem symbol_complete (X : Domain) (hX : IsOpen X.carrier) :
    CompleteSpace (BoundedSymbol X) := by
  apply (completeSpace_iff_isComplete_range
    (functionLinearIsometry X).isometry.isUniformInducing).mpr
  exact (boundedFunction_range_isClosed X hX).isComplete

/-- Every convergent function-image net has one exact symbol lift and the original norm limit. -/
theorem existsUnique_symbol_limit (X : Domain) (hX : IsOpen X.carrier)
    {α : Type v} {l : Filter α} [l.NeBot] (F : α → BoundedSymbol X)
    (g : X.carrier →ᵇ ℂ) (h : Tendsto (fun a => boundedFunctionHom X (F a)) l (𝓝 g)) :
    ∃! f : BoundedSymbol X, boundedFunctionHom X f = g ∧ Tendsto F l (𝓝 f) := by
  have hg := holomorphic_of_tendsto X hX h
    (Eventually.of_forall (fun a => (F a).1.property))
  let f := ofBoundedFunction X g hg
  have he : boundedFunctionHom X f = g := boundedFunction_ofBoundedFunction X g hg
  have ht : Tendsto F l (𝓝 f) := by
    apply (functionLinearIsometry X).isometry.tendsto_nhds_iff.mpr
    simpa only [Function.comp_def, functionLinearIsometry_apply, he] using h
  refine ⟨f, ⟨he, ht⟩, ?_⟩
  intro k hk
  exact boundedFunctionHom_injective X (hk.1.trans he.symm)

/-- No completeness instance is exported without the open-domain premise. -/
theorem existsUnique_cauchyLimit (X : Domain) (hX : IsOpen X.carrier)
    (F : ℕ → BoundedSymbol X) (hF : CauchySeq F) :
    ∃! f : BoundedSymbol X, Tendsto F atTop (𝓝 f) := by
  letI : CompleteSpace (BoundedSymbol X) := symbol_complete X hX
  obtain ⟨f, hf⟩ := cauchySeq_tendsto_of_complete hF
  exact ⟨f, hf, fun g hg => tendsto_nhds_unique hg hf⟩

/-- Existing open-cover evidence already proves openness of the covered domain. -/
theorem coveredDomain_isOpen {ι : Type u} (D : IndexedDomainCover ι)
    (hOpen : D.IsOpenCover) : IsOpen D.X.carrier := by
  rw [isOpen_iff_mem_nhds]
  intro z hz
  obtain ⟨i, hi⟩ := D.cover z hz
  exact Filter.mem_of_superset ((hOpen.member_open i).mem_nhds hi) (D.subset i)

variable {ι : Type u} {D : IndexedDomainCover ι} {C : Cocycle D}

/-- The represented limit is produced by the same completed representation and the same measure. -/
theorem cauchy_symbols_and_operators (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (F : ℕ → BoundedSymbol D.X) (hF : CauchySeq F) :
    ∃! f : BoundedSymbol D.X,
      Tendsto F atTop (𝓝 f) ∧
      Tendsto (fun n => completedRepresentation M μ hOpen (F n)) atTop
        (𝓝 (completedRepresentation M μ hOpen f)) := by
  obtain ⟨f, hf, huniq⟩ :=
    existsUnique_cauchyLimit D.X (coveredDomain_isOpen D hOpen) F hF
  exact ⟨f, ⟨hf, completedRepresentation_tendsto M μ hOpen hf⟩,
    fun g hg => huniq g hg.1⟩

/-- For symbols, the same limit also controls local derivatives without changing the norm. -/
theorem symbol_deriv_tendsto (X : Domain) (hX : IsOpen X.carrier)
    {α : Type v} {l : Filter α} [l.NeBot] {F : α → BoundedSymbol X} {f : BoundedSymbol X}
    (h : Tendsto F l (𝓝 f)) :
    TendstoLocallyUniformlyOn (fun a => deriv (ambientRepresentative X (F a).value))
      (deriv (ambientRepresentative X f.value)) l X.carrier := by
  have hf : Tendsto (fun a => boundedFunctionHom X (F a)) l
      (𝓝 (boundedFunctionHom X f)) :=
    ((functionLinearIsometry X).continuous.tendsto f).comp h
  exact ambient_deriv_tendsto X hX hf
    (Eventually.of_forall (fun a => (F a).1.property))

namespace Fixtures

open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures

/-- Symbol completeness does not repair a nonfaithful chosen-measure representation. -/
theorem complete_symbols_with_kernel :
    CompleteSpace (BoundedSymbol disk) ∧ diskSymbol ≠ 0 ∧
      completedRepresentation (MetricWeights.identity diskCover) (Measure.dirac center)
        diskCover_isOpen diskSymbol = 0 :=
  ⟨symbol_complete disk (coveredDomain_isOpen diskCover diskCover_isOpen),
    nonzero_symbol_in_kernel⟩

/-- The open empty domain remains a zero symbol space, not a silently nontrivial algebra. -/
def emptyDomain : Domain := ⟨∅⟩

theorem empty_complete_and_zero : CompleteSpace (BoundedSymbol emptyDomain) ∧
    ∀ f : BoundedSymbol emptyDomain, f = 0 ∧ ‖f‖ = 0 := by
  constructor
  · exact symbol_complete emptyDomain isOpen_empty
  · intro f
    have he : f = 0 := BoundedSymbol.ext (fun x => False.elim x.2)
    exact ⟨he, by rw [he, norm_zero]⟩

/-- A bottom filter has distinct limits; the nontrivial-filter premise cannot be discarded. -/
theorem bottom_limits_not_unique :
    Tendsto (fun _ : ℕ => (0 : BoundedSymbol disk)) ⊥ (𝓝 0) ∧
    Tendsto (fun _ : ℕ => (0 : BoundedSymbol disk)) ⊥ (𝓝 1) ∧
    (0 : BoundedSymbol disk) ≠ 1 := by
  refine ⟨by simp, by simp, ?_⟩
  intro h
  have he := congrArg (fun f : BoundedSymbol disk => f.value center) h
  change (0 : ℂ) = 1 at he
  exact zero_ne_one he

end Fixtures
end
end GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete
```
