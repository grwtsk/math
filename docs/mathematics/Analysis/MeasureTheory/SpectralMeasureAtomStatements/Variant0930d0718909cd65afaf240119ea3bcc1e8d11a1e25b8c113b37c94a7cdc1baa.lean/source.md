# Complete source: GRWTSK.Analysis.MeasureTheory.SpectralMeasureAtomStatements.Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f2ef4b46850bfca283582d6810d24aa5708e4a0` · SHA-256 `0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Topology.Instances.ENNReal.Lemmas
import Mathlib.Tactic

/-!
Scalar resolvent transport for an arbitrary finite positive measure on the
nonnegative real axis. No source operator or spectral measure is constructed
here, and the measure of the zero singleton is retained in the limit.
-/

open MeasureTheory Set Filter
open scoped Topology NNReal

namespace SpectralMeasureAtomScratch

/-- The bounded scalar resolvent kernel at a positive regularization parameter. -/
noncomputable def resolventMassKernel (α : ℝ) (x : ℝ≥0) : ℝ :=
  α / ((x : ℝ) + α)

/-- The scalar resolvent mass of a finite nonnegative spectral measure. -/
noncomputable def resolventMass (ν : Measure ℝ≥0) (α : ℝ) : ℝ :=
  ∫ x, resolventMassKernel α x ∂ν

theorem resolventMassKernel_nonneg_le_one (α : ℝ) (hα : 0 < α) (x : ℝ≥0) :
    0 ≤ resolventMassKernel α x ∧ resolventMassKernel α x ≤ 1 := by
  have hd : 0 < (x : ℝ) + α := add_pos_of_nonneg_of_pos x.coe_nonneg hα
  constructor
  · exact div_nonneg hα.le hd.le
  · exact (div_le_one hd).2 (le_add_of_nonneg_left x.coe_nonneg)

theorem resolventMassKernel_measurable (α : ℝ) :
    Measurable (resolventMassKernel α) := by
  exact measurable_const.div (measurable_subtype_coe.add measurable_const)

theorem resolventMassKernel_integrable (ν : Measure ℝ≥0) [IsFiniteMeasure ν]
    (α : ℝ) (hα : 0 < α) : Integrable (resolventMassKernel α) ν := by
  refine (integrable_const (1 : ℝ)).mono'
    (resolventMassKernel_measurable α).aestronglyMeasurable ?_
  filter_upwards [] with x
  rw [Real.norm_eq_abs, abs_of_nonneg (resolventMassKernel_nonneg_le_one α hα x).1]
  exact (resolventMassKernel_nonneg_le_one α hα x).2

theorem resolventMass_nonneg_le_total (ν : Measure ℝ≥0) [IsFiniteMeasure ν]
    (α : ℝ) (hα : 0 < α) :
    0 ≤ resolventMass ν α ∧ resolventMass ν α ≤ ν.real Set.univ := by
  constructor
  · exact integral_nonneg fun x => (resolventMassKernel_nonneg_le_one α hα x).1
  · have hi := integral_mono (resolventMassKernel_integrable ν α hα)
      (integrable_const (1 : ℝ))
      (fun x => (resolventMassKernel_nonneg_le_one α hα x).2)
    simpa [resolventMass] using hi

theorem resolventMassKernel_tendsto_zero_right (x : ℝ≥0) :
    Tendsto (fun α : ℝ => resolventMassKernel α x) (𝓝[>] 0)
      (𝓝 (({0} : Set ℝ≥0).indicator (fun _ => (1 : ℝ)) x)) := by
  by_cases hx : x = 0
  · subst x
    simp only [Set.mem_singleton_iff, Set.indicator_of_mem]
    refine tendsto_const_nhds.congr' ?_
    filter_upwards [self_mem_nhdsWithin] with α hα
    change 1 = α / ((0 : ℝ≥0) + α)
    simp [ne_of_gt (show 0 < α from hα)]
  · have hc : (x : ℝ) ≠ 0 := by exact_mod_cast hx
    rw [Set.indicator_of_notMem (by simpa using hx)]
    have hi : Tendsto (fun α : ℝ => α) (𝓝[>] 0) (𝓝 (0 : ℝ)) :=
      tendsto_nhdsWithin_of_tendsto_nhds tendsto_id
    have hden : Tendsto (fun α : ℝ => (x : ℝ) + α) (𝓝[>] 0)
        (𝓝 ((x : ℝ) + 0)) := tendsto_const_nhds.add hi
    have hd := hi.div hden (by simpa only [add_zero] using hc)
    convert hd using 1
    · rfl
    · simp only [zero_div]

theorem resolventMass_tendsto_zero_atom (ν : Measure ℝ≥0) [IsFiniteMeasure ν] :
    Tendsto (resolventMass ν) (𝓝[>] (0 : ℝ)) (𝓝 (ν.real {0})) := by
  have hmeas : ∀ᶠ α : ℝ in 𝓝[>] 0,
      AEStronglyMeasurable (resolventMassKernel α) ν :=
    Filter.Eventually.of_forall fun α =>
      (resolventMassKernel_measurable α).aestronglyMeasurable
  have hbound : ∀ᶠ α : ℝ in 𝓝[>] 0,
      ∀ᵐ x ∂ν, ‖resolventMassKernel α x‖ ≤ (1 : ℝ) := by
    filter_upwards [self_mem_nhdsWithin] with α hα
    filter_upwards [] with x
    rw [Real.norm_eq_abs, abs_of_nonneg (resolventMassKernel_nonneg_le_one α hα x).1]
    exact (resolventMassKernel_nonneg_le_one α hα x).2
  have hi := tendsto_integral_filter_of_dominated_convergence
    (μ := ν) (fun _ : ℝ≥0 => (1 : ℝ)) hmeas hbound (integrable_const 1)
    (Filter.Eventually.of_forall resolventMassKernel_tendsto_zero_right)
  rw [integral_indicator_const 1 (measurableSet_singleton 0)] at hi
  change Tendsto (fun α => ∫ x, resolventMassKernel α x ∂ν) _ _
  simpa only [smul_eq_mul, mul_one] using hi

theorem zero_atom_le_resolventMass (ν : Measure ℝ≥0) [IsFiniteMeasure ν]
    (α : ℝ) (hα : 0 < α) : ν.real {0} ≤ resolventMass ν α := by
  have hm : MeasurableSet ({0} : Set ℝ≥0) := measurableSet_singleton 0
  have hi := integral_mono ((integrable_const (1 : ℝ)).indicator hm)
    (resolventMassKernel_integrable ν α hα) (fun x => show
      ({0} : Set ℝ≥0).indicator (fun _ => (1 : ℝ)) x ≤ resolventMassKernel α x from by
      by_cases hx : x = 0
      · subst x
        simp [resolventMassKernel, ne_of_gt hα]
      · rw [Set.indicator_of_notMem (by simpa using hx)]
        exact (resolventMassKernel_nonneg_le_one α hα x).1)
  rw [integral_indicator_const 1 hm] at hi
  simpa only [resolventMass, smul_eq_mul, mul_one] using hi

theorem spectral_interval_mass_le_resolventMass (ν : Measure ℝ≥0) [IsFiniteMeasure ν]
    (α : ℝ) (hα : 0 < α) :
    ν.real (Set.Icc 0 (⟨α, hα.le⟩ : ℝ≥0)) ≤ 2 * resolventMass ν α := by
  let s : Set ℝ≥0 := Set.Icc 0 ⟨α, hα.le⟩
  have hm : MeasurableSet s := measurableSet_Icc
  have hi := integral_mono ((integrable_const (1 : ℝ)).indicator hm)
    ((resolventMassKernel_integrable ν α hα).const_mul 2)
    (fun x => show s.indicator (fun _ => (1 : ℝ)) x ≤
      2 * resolventMassKernel α x from by
      by_cases hx : x ∈ s
      · rw [Set.indicator_of_mem hx]
        have hxα : (x : ℝ) ≤ α := hx.2
        have hd : 0 < (x : ℝ) + α := add_pos_of_nonneg_of_pos x.coe_nonneg hα
        dsimp [resolventMassKernel]
        rw [← mul_div_assoc, le_div_iff₀ hd]
        linarith
      · rw [Set.indicator_of_notMem hx]
        exact mul_nonneg (by norm_num) (resolventMassKernel_nonneg_le_one α hα x).1)
  rw [integral_indicator_const 1 hm, integral_const_mul] at hi
  simpa only [resolventMass, smul_eq_mul, mul_one, s] using hi

end SpectralMeasureAtomScratch

open SpectralMeasureAtomScratch

example (α : ℝ) (x : ℝ≥0) : resolventMassKernel α x = α / ((x : ℝ) + α) := rfl

example (ν : Measure ℝ≥0) (α : ℝ) :
    resolventMass ν α = ∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν := rfl

example (α : ℝ) (hα : 0 < α) (x : ℝ≥0) :
    0 ≤ α / ((x : ℝ) + α) ∧ α / ((x : ℝ) + α) ≤ 1 :=
  resolventMassKernel_nonneg_le_one α hα x

example (α : ℝ) : Measurable (fun x : ℝ≥0 => α / ((x : ℝ) + α)) :=
  resolventMassKernel_measurable α

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] (α : ℝ) (hα : 0 < α) :
    Integrable (fun x : ℝ≥0 => α / ((x : ℝ) + α)) ν :=
  resolventMassKernel_integrable ν α hα

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] (α : ℝ) (hα : 0 < α) :
    0 ≤ (∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν) ∧
      (∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν) ≤ ν.real Set.univ :=
  resolventMass_nonneg_le_total ν α hα

example (x : ℝ≥0) :
    Tendsto (fun α : ℝ => α / ((x : ℝ) + α)) (𝓝[>] 0)
      (𝓝 (({0} : Set ℝ≥0).indicator (fun _ => (1 : ℝ)) x)) :=
  resolventMassKernel_tendsto_zero_right x

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] :
    Tendsto (fun α : ℝ => ∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν)
      (𝓝[>] 0) (𝓝 (ν.real {0})) :=
  resolventMass_tendsto_zero_atom ν

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] (α : ℝ) (hα : 0 < α) :
    ν.real {0} ≤ ∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν :=
  zero_atom_le_resolventMass ν α hα

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] (α : ℝ) (hα : 0 < α) :
    ν.real (Set.Icc 0 (⟨α, hα.le⟩ : ℝ≥0)) ≤
      2 * ∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν :=
  spectral_interval_mass_le_resolventMass ν α hα
```
