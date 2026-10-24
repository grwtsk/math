# Complete source: GRWTSK.Analysis.Complex.HolomorphicLineMetric

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `159c1e60d3f543b774b6bce6ba688ad85ef00949` · SHA-256 `a05fbfa4e003d233fbd5ea5d671ea2809b235153d36fffec102dae6d946acb8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Complex.HolomorphicLineGaugeTopology
import Mathlib.Tactic.Ring

/-!
# Continuous Hermitian weights on the realized holomorphic line bundle

Positive continuous chart weights satisfying the exact transition law construct an intrinsic
fiber pairing and squared norm. Their independence of the preferred chart, positivity, and
continuity in the actual total-space topology are derived below. This file does not replace
Mathlib's model-fiber norm instance or choose a metric on every possible cocycle.
-/

namespace GRWTSK.Analysis.Complex.HolomorphicLineMetric

open Filter Topology
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle

universe u
noncomputable section

/-- Conjugate-linear in the first variable, linear in the second. -/
def weightedPair (r : ℝ) (a b : ℂ) : ℂ :=
  (r : ℂ) * ((starRingEnd ℂ) a * b)

theorem weightedPair_scale (r : ℝ) (g a b : ℂ) :
    weightedPair r (g * a) (g * b) = weightedPair (r * Complex.normSq g) a b := by
  simp only [weightedPair, map_mul, Complex.ofReal_mul, Complex.normSq_eq_conj_mul_self]
  ring

theorem weightedPair_self (r : ℝ) (a : ℂ) :
    weightedPair r a a = ((r * Complex.normSq a : ℝ) : ℂ) := by
  rw [weightedPair, Complex.ofReal_mul, Complex.normSq_eq_conj_mul_self]

theorem normSq_continuous : Continuous (fun z : ℂ => Complex.normSq z) := by
  change Continuous (fun z : ℂ => z.re * z.re + z.im * z.im)
  exact (Complex.continuous_re.mul Complex.continuous_re).add
    (Complex.continuous_im.mul Complex.continuous_im)

/-- Local metric data, with the same cocycle and overlap memberships as the realized bundle. -/
structure MetricWeights {ι : Type u} {D : IndexedDomainCover ι} (C : Cocycle D) where
  weight : ∀ i, (D.U i).carrier → ℝ
  positive : ∀ i z, 0 < weight i z
  continuous_weight : ∀ i, Continuous (weight i)
  compatible : ∀ i j (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) (hj : x.1 ∈ (D.U j).carrier),
    weight j ⟨x.1, hj⟩ * Complex.normSq (C.scalar i j x) = weight i ⟨x.1, hi⟩

namespace MetricWeights

variable {ι : Type u} {D : IndexedDomainCover ι} {C : Cocycle D}

theorem ext_weight {M N : MetricWeights C} (h : M.weight = N.weight) : M = N := by
  cases M
  cases N
  cases h
  rfl

/-- The selected-coordinate representative; chart independence is a theorem, not definitional. -/
def atPoint (M : MetricWeights C) (x : D.X.carrier) : ℝ :=
  M.weight (D.select x) ⟨x.1, D.select_mem x⟩

theorem atPoint_pos (M : MetricWeights C) (x : D.X.carrier) : 0 < M.atPoint x :=
  M.positive _ _

/-- Equality in preferred coordinates determines all chart weights by nonzero transitions. -/
theorem ext_atPoint {M N : MetricWeights C}
    (h : ∀ x : D.X.carrier, M.atPoint x = N.atPoint x) : M = N := by
  apply ext_weight
  funext i z
  let x : D.X.carrier := ⟨z.1, D.subset i z.2⟩
  have hg : Complex.normSq (C.scalar (D.select x) i x) ≠ 0 :=
    ne_of_gt (Complex.normSq_pos.mpr
      (C.scalar_ne_zero (D.select x) i x (D.select_mem x) z.2))
  apply mul_right_cancel₀ hg
  calc
    M.weight i z * Complex.normSq (C.scalar (D.select x) i x) = M.atPoint x :=
      M.compatible (D.select x) i x (D.select_mem x) z.2
    _ = N.atPoint x := h x
    _ = N.weight i z * Complex.normSq (C.scalar (D.select x) i x) :=
      (N.compatible (D.select x) i x (D.select_mem x) z.2).symm

/-- Pairing on the exact fiber of the constructed bundle. -/
def pairing (M : MetricWeights C) (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (a b : (C.vectorBundleCore hOpen).Fiber x) : ℂ :=
  weightedPair (M.atPoint x) a b

/-- Squared length in the supplied Hermitian metric, not in the unmodified model norm. -/
def squaredNorm (M : MetricWeights C) (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (a : (C.vectorBundleCore hOpen).Fiber x) : ℝ :=
  M.atPoint x * Complex.normSq a

/-- The induced length is defined separately from Mathlib's existing model norm instance. -/
def fiberNorm (M : MetricWeights C) (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (a : (C.vectorBundleCore hOpen).Fiber x) : ℝ :=
  Real.sqrt (M.squaredNorm hOpen x a)

theorem pairing_self (M : MetricWeights C) (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (a : (C.vectorBundleCore hOpen).Fiber x) :
    M.pairing hOpen x a a = (M.squaredNorm hOpen x a : ℂ) :=
  weightedPair_self _ _

theorem pairing_conj_symm (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) (a b : (C.vectorBundleCore hOpen).Fiber x) :
    (starRingEnd ℂ) (M.pairing hOpen x a b) = M.pairing hOpen x b a := by
  have hc : (starRingEnd ℂ) ((starRingEnd ℂ) a) = a := star_star a
  simp only [pairing, weightedPair, map_mul, Complex.conj_ofReal, hc]
  ring

theorem pairing_add_right (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) (a b c : (C.vectorBundleCore hOpen).Fiber x) :
    M.pairing hOpen x a (b + c) = M.pairing hOpen x a b + M.pairing hOpen x a c := by
  change weightedPair (M.atPoint x) a (b + c) = _
  simp only [pairing, weightedPair]
  ring

theorem pairing_smul_right (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) (c : ℂ) (a b : (C.vectorBundleCore hOpen).Fiber x) :
    M.pairing hOpen x a (c • b) = c * M.pairing hOpen x a b := by
  change weightedPair (M.atPoint x) a (c * b) = _
  simp only [pairing, weightedPair]
  ring

theorem squaredNorm_nonneg (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) (a : (C.vectorBundleCore hOpen).Fiber x) :
    0 ≤ M.squaredNorm hOpen x a :=
  mul_nonneg (M.atPoint_pos x).le (Complex.normSq_nonneg a)

theorem squaredNorm_eq_zero (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) (a : (C.vectorBundleCore hOpen).Fiber x) :
    M.squaredNorm hOpen x a = 0 ↔ a = 0 := by
  change M.atPoint x * Complex.normSq a = 0 ↔ a = 0
  rw [mul_eq_zero, or_iff_right (ne_of_gt (M.atPoint_pos x)), Complex.normSq_eq_zero]

/-- Every declared chart gives the same pairing on the same fiber. -/
theorem pairing_in_chart (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier)
    (a b : (C.vectorBundleCore hOpen).Fiber x) :
    M.pairing hOpen x a b = weightedPair (M.weight i ⟨x.1, hi⟩)
      (((C.vectorBundleCore hOpen).localTriv i ⟨x, a⟩).2)
      (((C.vectorBundleCore hOpen).localTriv i ⟨x, b⟩).2) := by
  change weightedPair (M.atPoint x) a b =
    weightedPair (M.weight i ⟨x.1, hi⟩)
      (C.scalar (D.select x) i x * a) (C.scalar (D.select x) i x * b)
  rw [weightedPair_scale, M.compatible (D.select x) i x (D.select_mem x) hi]
  rfl

theorem squaredNorm_in_chart (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier)
    (a : (C.vectorBundleCore hOpen).Fiber x) :
    M.squaredNorm hOpen x a = M.weight i ⟨x.1, hi⟩ *
      Complex.normSq (((C.vectorBundleCore hOpen).localTriv i ⟨x, a⟩).2) := by
  change M.atPoint x * Complex.normSq a =
    M.weight i ⟨x.1, hi⟩ * Complex.normSq (C.scalar (D.select x) i x * a)
  rw [Complex.normSq_mul, ← mul_assoc,
    M.compatible (D.select x) i x (D.select_mem x) hi]
  rfl

/-- Zero extension is only a chartwise representative and has no off-chart metric authority. -/
def chartWeight (M : MetricWeights C) (i : ι) (x : D.X.carrier) : ℝ :=
  if h : x.1 ∈ (D.U i).carrier then M.weight i ⟨x.1, h⟩ else 0

theorem chartWeight_apply (M : MetricWeights C) (i : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) :
    M.chartWeight i x = M.weight i ⟨x.1, hi⟩ := dif_pos hi

theorem chartWeight_continuousOn (M : MetricWeights C) (i : ι) :
    ContinuousOn (M.chartWeight i) (Cocycle.chartSet D i) := by
  rw [continuousOn_iff_continuous_restrict]
  let f : Cocycle.chartSet D i → (D.U i).carrier := fun x => ⟨x.1.1, x.2⟩
  have hf : Continuous f :=
    (continuous_subtype_val.comp continuous_subtype_val).subtype_mk _
  have heq : (fun x : Cocycle.chartSet D i => M.chartWeight i x.1) =
      (fun x => M.weight i (f x)) := by
    funext x
    exact M.chartWeight_apply i x.1 x.2
  rw [heq]
  exact (M.continuous_weight i).comp hf

/-- The intrinsic squared norm is continuous in the actual bundle total-space topology. -/
theorem squaredNorm_total_continuous (M : MetricWeights C) (hOpen : D.IsOpenCover) :
    Continuous (fun p : (C.vectorBundleCore hOpen).TotalSpace =>
      M.squaredNorm hOpen p.proj p.snd) := by
  apply continuous_iff_continuousAt.mpr
  intro p
  let i := D.select p.proj
  have hi : p.proj.1 ∈ (D.U i).carrier := D.select_mem p.proj
  have hChart : IsOpen (Cocycle.chartSet D i) :=
    (hOpen.member_open i).preimage continuous_subtype_val
  have hProj := (C.vectorBundleCore hOpen).continuous_proj.continuousAt (x := p)
  have hCoord : ContinuousAt
      (fun q : (C.vectorBundleCore hOpen).TotalSpace =>
        ((C.vectorBundleCore hOpen).localTriv i q).2) p := by
    exact ((FiberBundle.continuousAt_totalSpace (F := ℂ)
      (fun q : (C.vectorBundleCore hOpen).TotalSpace => q)).mp continuousAt_id).2
  have hWeight : ContinuousAt
      (fun q : (C.vectorBundleCore hOpen).TotalSpace => M.chartWeight i q.proj) p :=
    ((M.chartWeight_continuousOn i).continuousAt (hChart.mem_nhds hi)).comp hProj
  apply (hWeight.mul (normSq_continuous.continuousAt.comp hCoord)).congr_of_eventuallyEq
  have hmem : {q : (C.vectorBundleCore hOpen).TotalSpace |
      q.proj ∈ Cocycle.chartSet D i} ∈ 𝓝 p :=
    (hChart.preimage (C.vectorBundleCore hOpen).continuous_proj).mem_nhds hi
  filter_upwards [hmem] with q hq
  rw [M.squaredNorm_in_chart hOpen i q.proj hq, M.chartWeight_apply i q.proj hq]

/-- The identity cocycle has a concrete positive compatible metric. -/
def identity (D : IndexedDomainCover ι) : MetricWeights (Cocycle.identity D) where
  weight _ _ := 1
  positive _ _ := zero_lt_one
  continuous_weight _ := continuous_const
  compatible := by
    intro i j x hi hj
    rw [(Cocycle.identity D).scalar_apply i j x hi hj]
    change (1 : ℝ) * Complex.normSq (1 : ℂ) = 1
    rw [Complex.normSq_one, mul_one]

end MetricWeights
end
end GRWTSK.Analysis.Complex.HolomorphicLineMetric
```
