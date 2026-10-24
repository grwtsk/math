# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFilterDeltaFragment.Variantbd885b26be3a28aa9b82d194c89a0d4e553116e3ed6d2fc816b73419f9286b1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b45b608f5301b7564954e08d2d674744d75dc1b` · SHA-256 `bd885b26be3a28aa9b82d194c89a0d4e553116e3ed6d2fc816b73419f9286b1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-! Actual source boundary filters and their source-only convergence. -/
set_option autoImplicit false
namespace SourceFilterDeltaScratch
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter MobiusSourceFilterQuotient
open SourceBumpMomentsScratch SourceBumpGlobalScratch SourceBumpAdapterScratch
noncomputable section

/-- The actual entire source filter has only countably many complex zeros. -/
theorem W_zero_set_countable : {z : ℂ | W z = 0}.Countable := by
  have hW : W = fun z : ℂ => Complex.exp (-z) * (z ^ 2 - 1 / 4) * bumpMoment 0 z /
      (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := funext W_eq_bumpMoment
  have hd : Differentiable ℂ W := by
    rw [hW]
    intro z
    have hb := (bumpMoment_hasDerivAt 0 z).differentiableAt
    fun_prop
  have h0 : W 0 ≠ 0 := by
    simp [W, V_zero]
  have ha : AnalyticOnNhd ℂ W univ := fun z _ => hd.analyticAt z
  have hc : {z : ℂ | W z ≠ 0} ∈ codiscrete ℂ := by
    rcases ha.eqOn_zero_or_eventually_ne_zero_of_preconnected isPreconnected_univ with h | h
    · exact (h0 (h (mem_univ 0))).elim
    · exact h
  have hi := (mem_codiscrete'.mp hc).2
  have hcount := (HereditarilyLindelofSpace.isLindelof _).countable_of_isDiscrete hi
  simpa only [compl_ofPred, not_not] using hcount

/-- Boundary division by the actual source filter is valid almost everywhere
on the full real axis. -/
theorem boundaryW_ae_ne_zero : ∀ᵐ t : ℝ, W ((t : ℂ) * Complex.I) ≠ 0 := by
  have hi : Function.Injective (fun t : ℝ => (t : ℂ) * Complex.I) :=
    (mul_left_injective₀ Complex.I_ne_zero).comp Complex.ofReal_injective
  have hc := W_zero_set_countable.preimage hi
  simpa only [mem_preimage, mem_ofPred_eq] using hc.ae_notMem volume

/-- The exact shifted, smoothed boundary source filter, retaining every prescribed factor. -/
def boundaryFilter (ε h t : ℝ) : ℂ :=
  W ((t : ℂ) * Complex.I) / W ((ε : ℂ) + (t : ℂ) * Complex.I) *
    (1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * Complex.I))⁻¹ ^ 6 /
      (1 + (ε : ℂ) + (t : ℂ) * Complex.I)

end
end SourceFilterDeltaScratch
```
