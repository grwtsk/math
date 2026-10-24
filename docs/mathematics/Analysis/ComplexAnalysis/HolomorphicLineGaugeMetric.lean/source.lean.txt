import GRWTSK.Analysis.Complex.HolomorphicLineMetric

/-!
# Constructed metric transport through a holomorphic gauge

The target weights are built from the source weights and inverse holomorphic units. Positivity,
continuity, overlap compatibility, and preservation of the intrinsic pairing are consequences.
A fixed target metric is not silently replaced by these weights.
-/

namespace GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric

open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology (section_continuous)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C E : Cocycle D}

/-- The inverse-square multiplier is an actual continuous positive function in each chart. -/
def transportMetric (G : Gauge C E) (M : MetricWeights C) : MetricWeights E where
  weight i z := M.weight i z * Complex.normSq (unitValue (G.frame i)⁻¹ z)
  positive i z := mul_pos (M.positive i z)
    (Complex.normSq_pos.mpr (Fixtures.unitValue_ne_zero (G.frame i)⁻¹ z))
  continuous_weight i := (M.continuous_weight i).mul
    (normSq_continuous.comp
      (section_continuous (D.U i) (↑((G.frame i)⁻¹) : HolomorphicSection (D.U i))))
  compatible := by
    intro i j x hi hj
    have hg := congrArg (fun z : ℂ => Complex.normSq z)
      (G.symm.compatible i j x hi hj)
    simp only [Gauge.symm, Complex.normSq_mul] at hg
    change (M.weight j ⟨x.1, hj⟩ * Complex.normSq (unitValue (G.frame j)⁻¹ ⟨x.1, hj⟩)) *
        Complex.normSq (E.scalar i j x) =
      M.weight i ⟨x.1, hi⟩ * Complex.normSq (unitValue (G.frame i)⁻¹ ⟨x.1, hi⟩)
    rw [mul_assoc, hg, ← mul_assoc, M.compatible i j x hi hj]

/-- Cancellation is proved using the exact inverse unit, not an unrelated nonzero scalar. -/
theorem transport_weight_mul (G : Gauge C E) (M : MetricWeights C)
    (i : ι) (z : (D.U i).carrier) :
    (transportMetric G M).weight i z * Complex.normSq (unitValue (G.frame i) z) =
      M.weight i z := by
  have h := congrArg (fun a : ℂ => Complex.normSq a) (unitValue_inv_mul (G.frame i) z)
  rw [Complex.normSq_mul, Complex.normSq_one] at h
  change (M.weight i z * Complex.normSq (unitValue (G.frame i)⁻¹ z)) *
      Complex.normSq (unitValue (G.frame i) z) = M.weight i z
  rw [mul_assoc, h, mul_one]

/-- Forward and inverse transport recover the source weights exactly. -/
theorem transportMetric_symm (G : Gauge C E) (M : MetricWeights C) :
    transportMetric G.symm (transportMetric G M) = M := by
  apply MetricWeights.ext_weight
  funext i z
  change (transportMetric G M).weight i z *
    Complex.normSq (unitValue (((G.frame i)⁻¹)⁻¹) z) = M.weight i z
  rw [inv_inv]
  exact transport_weight_mul G M i z

/-- Gauge transport is an isometry of the constructed Hermitian pairings on the exact fibers. -/
theorem pairing_transport (G : Gauge C E) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (a b : (C.vectorBundleCore hOpen).Fiber x) :
    (transportMetric G M).pairing hOpen x
      (G.fiberMap hOpen x a) (G.fiberMap hOpen x b) = M.pairing hOpen x a b := by
  change weightedPair ((transportMetric G M).weight (D.select x) ⟨x.1, D.select_mem x⟩)
    (unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ * a)
    (unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ * b) =
    weightedPair (M.weight (D.select x) ⟨x.1, D.select_mem x⟩) a b
  rw [weightedPair_scale, transport_weight_mul]

theorem squaredNorm_transport (G : Gauge C E) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (a : (C.vectorBundleCore hOpen).Fiber x) :
    (transportMetric G M).squaredNorm hOpen x (G.fiberMap hOpen x a) =
      M.squaredNorm hOpen x a := by
  change (transportMetric G M).weight (D.select x) ⟨x.1, D.select_mem x⟩ *
      Complex.normSq (unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ * a) =
    M.weight (D.select x) ⟨x.1, D.select_mem x⟩ * Complex.normSq a
  rw [Complex.normSq_mul, ← mul_assoc, transport_weight_mul]

theorem fiberNorm_transport (G : Gauge C E) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (a : (C.vectorBundleCore hOpen).Fiber x) :
    (transportMetric G M).fiberNorm hOpen x (G.fiberMap hOpen x a) =
      M.fiberNorm hOpen x a := by
  simp only [MetricWeights.fiberNorm, squaredNorm_transport]

/-- Pairing preservation forces a preselected target metric to equal the constructed one. -/
theorem transportMetric_unique (G : Gauge C E) (M : MetricWeights C)
    (N : MetricWeights E) (hOpen : D.IsOpenCover)
    (hN : ∀ (x : D.X.carrier) (a b : (C.vectorBundleCore hOpen).Fiber x),
      N.pairing hOpen x (G.fiberMap hOpen x a) (G.fiberMap hOpen x b) =
        M.pairing hOpen x a b) : N = transportMetric G M := by
  apply MetricWeights.ext_atPoint
  intro x
  let a := G.symm.fiberMap hOpen x (1 : (E.vectorBundleCore hOpen).Fiber x)
  have h := (hN x a a).trans (pairing_transport G M hOpen x a a).symm
  dsimp only [a] at h
  simp only [Gauge.fiberMap_apply_symm, MetricWeights.pairing, weightedPair,
    map_one, mul_one] at h
  exact Complex.ofReal_injective h

/-- Norm preservation in a separately supplied target metric is an additional equality obligation. -/
theorem pairing_transport_to_selected (G : Gauge C E) (M : MetricWeights C)
    (N : MetricWeights E) (hN : N = transportMetric G M)
    (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (a b : (C.vectorBundleCore hOpen).Fiber x) :
    N.pairing hOpen x (G.fiberMap hOpen x a) (G.fiberMap hOpen x b) =
      M.pairing hOpen x a b := by
  subst N
  exact pairing_transport G M hOpen x a b

namespace Fixtures

open GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures
open GRWTSK.Analysis.Complex.HolomorphicLineGauge.Fixtures

/-- Positive continuous weights can still disagree on a nonempty overlap. -/
theorem positive_weights_can_mismatch :
    ¬ ∃ M : MetricWeights (Cocycle.identity twoCharts),
      (∀ z, M.weight false z = 1) ∧ (∀ z, M.weight true z = 2) := by
  rintro ⟨M, h0, h1⟩
  have h := M.compatible false true ⟨0, Set.mem_univ _⟩ (Set.mem_univ _) (Set.mem_univ _)
  rw [h1, h0, (Cocycle.identity twoCharts).scalar_apply false true
    ⟨0, Set.mem_univ _⟩ (Set.mem_univ _) (Set.mem_univ _)] at h
  change (2 : ℝ) * Complex.normSq (1 : ℂ) = 1 at h
  norm_num at h

/-- A factor-two gauge requires weight one quarter, not the original unit weight. -/
theorem doubling_target_weight (i : Bool) (z : (twoCharts.U i).carrier) :
    (transportMetric (constantGauge (Cocycle.identity twoCharts) twoUnit)
      (MetricWeights.identity twoCharts)).weight i z = 1 / 4 := by
  norm_num [transportMetric, MetricWeights.identity, constantGauge, constantUnit,
    unitValue, GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology.constantSection,
    twoUnit, Complex.normSq_apply]

end Fixtures
end
end GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
