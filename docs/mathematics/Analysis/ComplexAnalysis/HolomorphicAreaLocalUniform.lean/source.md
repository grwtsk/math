# Complete source: GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8dd87866f5a16c3297c3a744e4d34cc2b65417d1` · SHA-256 `4cd224a57ea50f0f75b7352620b24d69150eec848a5ad8d1a114f772dfa480b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Operator.HolomorphicMultiplierArea
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Topology.MetricSpace.Cauchy

/-!
# Local-uniform limits of area-energy Cauchy classes

The historical area quotient has a uniquely determined holomorphic value function.
A compact subset of the open domain admits one positive disk radius, independent of
all sections. The previous area evaluation estimate therefore controls every pair of
classes uniformly there. An area-norm Cauchy sequence has a unique holomorphic local
limit, and its complex derivatives converge locally uniformly to those of that limit.

No global finite-energy or energy-convergence assertion about the limit is made here.
No completeness instance is installed on the original quotient, and no assertion is
made for an arbitrary measure, a nontrivial bundle, or unrestricted measurable functions.
-/

namespace GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform

open Filter Topology MeasureTheory Metric Set
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle (CircleWindow identitySymbol)
open GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete (coveredDomain_isOpen)
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι}

/-- An abbreviation of the historical carrier, with its historical area and unit metric. -/
abbrev AreaQuotient (hOpen : D.IsOpenCover) :=
  SectionQuotient (MetricWeights.identity D) (areaMeasure D.X) hOpen

/-- A lawful quotient lift, not a choice of a representative from an arbitrary a.e. class. -/
def realization (hOpen : D.IsOpenCover) : AreaQuotient hOpen → HolomorphicSection D.X :=
  Quotient.lift (s := finiteEnergySetoid (MetricWeights.identity D) (areaMeasure D.X) hOpen)
    (fun s => identitySymbol hOpen s.1) (fun s t h => by
      apply Subtype.ext
      funext x
      exact (aeEqual_area_iff hOpen s.1 t.1).mp h x)

@[simp] theorem realization_classOf (hOpen : D.IsOpenCover)
    (s : FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen) :
    realization hOpen (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen s) =
      identitySymbol hOpen s.1 := rfl

/-- The lift cannot identify two historically distinct area classes. -/
theorem realization_injective (hOpen : D.IsOpenCover) :
    Function.Injective (realization hOpen) := by
  intro q r
  refine Quotient.inductionOn₂ q r ?_
  intro s t h
  apply (classOf_eq_iff (MetricWeights.identity D) (areaMeasure D.X) hOpen s t).mpr
  apply (aeEqual_area_iff hOpen s.1 t.1).mpr
  intro x
  exact congrArg (fun f : HolomorphicSection D.X => (f : Section D.X) x) h

/-- Use the existing ambient-extension convention, including its behavior outside the domain. -/
def ambient (hOpen : D.IsOpenCover) (q : AreaQuotient hOpen) : ℂ → ℂ :=
  ambientRepresentative D.X (realization hOpen q : Section D.X)

@[simp] theorem ambient_apply (hOpen : D.IsOpenCover) (q : AreaQuotient hOpen)
    (z : ℂ) (hz : z ∈ D.X.carrier) :
    ambient hOpen q z = (realization hOpen q : Section D.X) ⟨z, hz⟩ :=
  ambientRepresentative_apply D.X _ z hz

theorem ambient_differentiableOn (hOpen : D.IsOpenCover) (q : AreaQuotient hOpen) :
    DifferentiableOn ℂ (ambient hOpen q) D.X.carrier :=
  ambientRepresentative_differentiableOn D.X (realization hOpen q)

/-- The old bounded evaluation and the new lawful value lift are exactly the same map at a point. -/
theorem functional_eq_realization (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (q : AreaQuotient hOpen) :
    functional W hOpen q = (realization hOpen q : Section D.X) W.centerPoint := by
  refine Quotient.inductionOn q ?_
  intro s
  rfl

/-- Linearity of the OLD evaluation gives control of the difference of actual class values. -/
theorem window_dist_bound (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (q r : AreaQuotient hOpen) :
    dist ((realization hOpen q : Section D.X) W.centerPoint)
      ((realization hOpen r : Section D.X) W.centerPoint) ≤
        (Real.sqrt (Real.pi * W.radius ^ 2))⁻¹ * dist q r := by
  have h := value_norm_bound W hOpen (q - r)
  change ‖functional W hOpen (q - r)‖ ≤ _ at h
  rw [map_sub, functional_eq_realization, functional_eq_realization] at h
  simpa only [dist_eq_norm] using h

/-- Compact containment supplies ONE radius before the classes or Cauchy indices are chosen. -/
theorem compact_control (hOpen : D.IsOpenCover) {K : Set ℂ}
    (hK : IsCompact K) (hKX : K ⊆ D.X.carrier) :
    ∃ δ > 0, cthickening δ K ⊆ D.X.carrier ∧
      ∀ (q r : AreaQuotient hOpen) (z : ℂ), z ∈ K →
        dist (ambient hOpen q z) (ambient hOpen r z) ≤
          (Real.sqrt (Real.pi * δ ^ 2))⁻¹ * dist q r := by
  obtain ⟨δ, hδ, hδK⟩ :=
    hK.exists_cthickening_subset_open (coveredDomain_isOpen D hOpen) hKX
  refine ⟨δ, hδ, hδK, ?_⟩
  intro q r z hz
  let W : CircleWindow D.X :=
    { center := z
      radius := δ
      radius_pos := hδ
      closedBall_subset := (closedBall_subset_cthickening hz δ).trans hδK }
  have h := window_dist_bound W hOpen q r
  change dist ((realization hOpen q : Section D.X) ⟨z, hKX hz⟩)
    ((realization hOpen r : Section D.X) ⟨z, hKX hz⟩) ≤
      (Real.sqrt (Real.pi * δ ^ 2))⁻¹ * dist q r at h
  simpa only [ambient_apply hOpen q z (hKX hz), ambient_apply hOpen r z (hKX hz)] using h

/-- Area-norm Cauchy control implies uniform Cauchy control on each actual compact subset. -/
theorem uniformCauchy_on_compact (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) {K : Set ℂ} (hK : IsCompact K) (hKX : K ⊆ D.X.carrier) :
    UniformCauchySeqOn (fun n => ambient hOpen (F n)) atTop K := by
  obtain ⟨δ, hδ, _, hb⟩ := compact_control hOpen hK hKX
  let B := (Real.sqrt (Real.pi * δ ^ 2))⁻¹
  have hB : 0 < B := inv_pos.mpr
    (Real.sqrt_pos.mpr (mul_pos Real.pi_pos (sq_pos_of_pos hδ)))
  apply Metric.uniformCauchySeqOn_iff.mpr
  intro ε hε
  obtain ⟨N, hN⟩ := Metric.cauchySeq_iff.mp hF (ε / B) (div_pos hε hB)
  refine ⟨N, ?_⟩
  intro m hm n hn z hz
  have hsmall : B * dist (F m) (F n) < ε := by
    have h := (lt_div_iff₀ hB).mp (hN m hm n hn)
    simpa only [mul_comm] using h
  exact (hb (F m) (F n) z hz).trans_lt hsmall

/-- Scalar completeness is used only at this stage; no section-space completeness is assumed. -/
theorem pointwise_converges (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) (x : D.X.carrier) :
    ∃ a : ℂ, Tendsto (fun n => ambient hOpen (F n) x.1) atTop (𝓝 a) := by
  have hc := uniformCauchy_on_compact hOpen F hF
    (K := {x.1}) isCompact_singleton (singleton_subset_iff.mpr x.2)
  exact cauchySeq_tendsto_of_complete (hc.cauchySeq (mem_singleton x.1))

/-- Choice selects only the uniquely determined scalar limit, not quotient representatives. -/
def pointwiseLimit (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) : Section D.X :=
  fun x => Classical.choose (pointwise_converges hOpen F hF x)

theorem pointwiseLimit_tendsto (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) (x : D.X.carrier) :
    Tendsto (fun n => ambient hOpen (F n) x.1) atTop (𝓝 (pointwiseLimit hOpen F hF x)) :=
  Classical.choose_spec (pointwise_converges hOpen F hF x)

/-- Uniform Cauchy control upgrades these exact scalar limits to a uniform compact limit. -/
theorem uniformLimit_on_compact (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) {K : Set ℂ} (hK : IsCompact K) (hKX : K ⊆ D.X.carrier) :
    TendstoUniformlyOn (fun n => ambient hOpen (F n))
      (ambientRepresentative D.X (pointwiseLimit hOpen F hF)) atTop K := by
  apply (uniformCauchy_on_compact hOpen F hF hK hKX).tendstoUniformlyOn_of_tendsto
  intro z hz
  simpa only [ambientRepresentative_apply D.X _ z (hKX hz)] using
    pointwiseLimit_tendsto hOpen F hF ⟨z, hKX hz⟩

/-- Local convergence is derived on the ORIGINAL open domain, not asserted on its boundary. -/
theorem locallyUniform_limit (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) :
    TendstoLocallyUniformlyOn (fun n => ambient hOpen (F n))
      (ambientRepresentative D.X (pointwiseLimit hOpen F hF)) atTop D.X.carrier := by
  rw [tendstoLocallyUniformlyOn_iff_forall_isCompact (coveredDomain_isOpen D hOpen)]
  intro K hKX hK
  exact uniformLimit_on_compact hOpen F hF hK hKX

/-- Weierstrass derives holomorphy of the limit; no global holomorphy field is supplied. -/
theorem pointwiseLimit_holomorphic (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) : ExtendsHolomorphically D.X (pointwiseLimit hOpen F hF) := by
  refine ⟨ambientRepresentative D.X (pointwiseLimit hOpen F hF), ?_, ?_⟩
  · exact (locallyUniform_limit hOpen F hF).differentiableOn
      (Eventually.of_forall (fun n => ambient_differentiableOn hOpen (F n)))
      (coveredDomain_isOpen D hOpen)
  · intro x
    exact ambientRepresentative_apply D.X _ x.1 x.2

/-- A holomorphic local limit, not yet a finite-energy section or a completed-space inverse. -/
def holomorphicLimit (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) : HolomorphicSection D.X :=
  ⟨pointwiseLimit hOpen F hF, pointwiseLimit_holomorphic hOpen F hF⟩

/-- The nontrivial sequence filter and scalar Hausdorff property give uniqueness. -/
theorem existsUnique_holomorphic_limit (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) :
    ∃! f : HolomorphicSection D.X,
      TendstoLocallyUniformlyOn (fun n => ambient hOpen (F n))
        (ambientRepresentative D.X (f : Section D.X)) atTop D.X.carrier := by
  refine ⟨holomorphicLimit hOpen F hF, locallyUniform_limit hOpen F hF, ?_⟩
  intro g hg
  apply Subtype.ext
  funext x
  have he := tendsto_nhds_unique (hg.tendsto_at x.2)
    ((locallyUniform_limit hOpen F hF).tendsto_at x.2)
  simpa only [ambientRepresentative_apply D.X _ x.1 x.2] using he

/-- Derivatives converge LOCALLY uniformly; differentiation is not declared bounded in area norm. -/
theorem derivative_limit (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) :
    TendstoLocallyUniformlyOn (fun n => deriv (ambient hOpen (F n)))
      (deriv (ambientRepresentative D.X (holomorphicLimit hOpen F hF : Section D.X)))
      atTop D.X.carrier :=
  (locallyUniform_limit hOpen F hF).deriv
    (Eventually.of_forall (fun n => ambient_differentiableOn hOpen (F n)))
    (coveredDomain_isOpen D hOpen)

namespace Fixtures

/-- Empty compact subsets require neither a point nor a nonzero detecting section. -/
theorem empty_compact_control (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) : UniformCauchySeqOn (fun n => ambient hOpen (F n)) atTop ∅ :=
  uniformCauchy_on_compact hOpen F hF isCompact_empty (empty_subset _)

/-- This fixture supplies its Cauchy premise rather than requesting it. -/
theorem constant_cauchy (hOpen : D.IsOpenCover) (q : AreaQuotient hOpen) :
    CauchySeq (fun _ : ℕ => q) := by
  apply Metric.cauchySeq_iff.mpr
  intro ε hε
  exact ⟨0, fun _ _ _ _ => by simpa only [dist_self] using hε⟩

/-- A constant input recovers the exact historical holomorphic function, not a fresh surrogate. -/
theorem constant_limit (hOpen : D.IsOpenCover) (q : AreaQuotient hOpen)
    : holomorphicLimit hOpen (fun _ : ℕ => q) (constant_cauchy hOpen q) =
      realization hOpen q := by
  apply Subtype.ext
  funext x
  have h := pointwiseLimit_tendsto hOpen (fun _ : ℕ => q) (constant_cauchy hOpen q) x
  have hc : Tendsto (fun _ : ℕ => ambient hOpen q x.1) atTop
      (𝓝 ((realization hOpen q : Section D.X) x)) := by
    simpa only [ambient_apply hOpen q x.1 x.2] using
      (tendsto_const_nhds : Tendsto (fun _ : ℕ => ambient hOpen q x.1) atTop
        (𝓝 (ambient hOpen q x.1)))
  exact tendsto_nhds_unique h hc

end Fixtures
end
end GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform
```
