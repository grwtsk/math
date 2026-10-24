# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualStieltjes.Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3de419064f36051eeac7d479dc4bf466b32f828` · SHA-256 `7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_stieltjes_20261004.CountKernel
import scratch.common_mean_stieltjes_20261004.OrdinateKernel
import scratch.common_mean_stieltjes_20261004.OrdinateSummability
import scratch.common_mean_stieltjes_20261004.KernelSeries
import FormalResearch.RiemannHypothesis.Laplace.Continuation

/-!
Unconditional actual strict positive sixth-power Stieltjes identity. The closed
count retains every analytic-multiplicity occurrence, including a touching
endpoint. Genuine count-integral convergence follows from accepted radial
summability and Tonelli, without Bellotti--Wong, verified height or RH.
Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean proof assistance: OpenAI Codex.
-/
set_option autoImplicit false
set_option maxHeartbeats 1000000
noncomputable section
namespace CommonMeanStieltjes
open MeasureTheory Set
open CommonMeanScratch
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

instance positiveOccurrence_countable : Countable PositiveOccurrence := by
  unfold PositiveOccurrence
  infer_instance

def actualClosedOrdinateKernel (o : PositiveOccurrence) (x : ℝ) : ℝ :=
  (Ici (positiveOrdinate o)).indicator ordinateKernel x

theorem actual_closed_ordinate_kernel_eq (o : PositiveOccurrence) (x : ℝ) :
    actualClosedOrdinateKernel o x = positiveClosedCountKernel x (6/x^7) o := by
  simp only [actualClosedOrdinateKernel, positiveClosedCountKernel,
    Set.indicator, mem_Ici, ordinateKernel]

theorem actual_closed_ordinate_kernel_nonnegative (o : PositiveOccurrence) (x : ℝ) :
    0 ≤ actualClosedOrdinateKernel o x := by
  rw [actual_closed_ordinate_kernel_eq]
  unfold positiveClosedCountKernel
  split_ifs with h
  · have hp : 0 < positiveOrdinate o := o.property
    have hx : 0 < x := hp.trans_le h
    positivity
  · exact le_rfl

theorem actual_closed_ordinate_kernel_integrable (T : ℝ) (hT : 0 < T)
    (o : PositiveOccurrence) : IntegrableOn (actualClosedOrdinateKernel o) (Ioi T) :=
  closed_ordinate_kernel_integrable T (positiveOrdinate o) hT

theorem actual_closed_ordinate_kernel_integral (T : ℝ) (hT : 0 < T)
    (o : PositiveOccurrence) :
    (∫ x : ℝ in Ioi T, actualClosedOrdinateKernel o x) =
      1/(max T (positiveOrdinate o))^6 :=
  closed_ordinate_kernel_integral T (positiveOrdinate o) hT o.property

theorem actual_closed_ordinate_kernel_summable (x : ℝ) :
    Summable (fun o : PositiveOccurrence => actualClosedOrdinateKernel o x) := by
  simpa only [actual_closed_ordinate_kernel_eq] using
    positive_closed_count_kernel_summable x (6/x^7)

theorem actual_closed_ordinate_kernel_tsum (x : ℝ) :
    (∑' o : PositiveOccurrence, actualClosedOrdinateKernel o x) =
      6*(actualPositiveZeroCount x/x^7) := by
  simp only [actual_closed_ordinate_kernel_eq, positive_closed_count_kernel_tsum,
    actualPositiveZeroCount]
  ring

theorem actual_closed_ordinate_kernel_integrals_summable (T : ℝ) (hT : 3/2 ≤ T) :
    Summable (fun o : PositiveOccurrence =>
      ∫ x : ℝ in Ioi T, actualClosedOrdinateKernel o x) := by
  have hp : 0 < T := by linarith
  simp only [actual_closed_ordinate_kernel_integral T hp]
  exact actual_positive_max_sixth_summable T hT

theorem actual_closed_ordinate_kernel_series_integrable (T : ℝ) (hT : 3/2 ≤ T) :
    IntegrableOn (fun x => ∑' o : PositiveOccurrence, actualClosedOrdinateKernel o x)
      (Ioi T) := by
  apply nonnegative_kernel_series_integrable
  · exact actual_closed_ordinate_kernel_integrable T (by linarith)
  · exact actual_closed_ordinate_kernel_nonnegative
  · exact actual_closed_ordinate_kernel_summable
  · exact actual_closed_ordinate_kernel_integrals_summable T hT

theorem actual_positive_count_seventh_integrable (T : ℝ) (hT : 3/2 ≤ T) :
    IntegrableOn (fun x : ℝ => actualPositiveZeroCount x/x^7) (Ioi T) := by
  have h : IntegrableOn (fun x => (1/6 : ℝ)*
      ∑' o : PositiveOccurrence, actualClosedOrdinateKernel o x) (Ioi T) :=
    (actual_closed_ordinate_kernel_series_integrable T hT).const_mul (1/6 : ℝ)
  apply h.congr_fun _ measurableSet_Ioi
  intro x _
  dsimp only
  rw [actual_closed_ordinate_kernel_tsum]
  ring

theorem actual_positive_count_kernel_integral (T : ℝ) (hT : 3/2 ≤ T) :
    (∑' o : PositiveOccurrence, 1/(max T (positiveOrdinate o))^6) =
      6*(∫ x : ℝ in Ioi T, actualPositiveZeroCount x/x^7) := by
  have hp : 0 < T := by linarith
  calc
    (∑' o : PositiveOccurrence, 1/(max T (positiveOrdinate o))^6) =
        ∑' o : PositiveOccurrence, ∫ x : ℝ in Ioi T, actualClosedOrdinateKernel o x := by
      simp only [actual_closed_ordinate_kernel_integral T hp]
    _ = ∫ x : ℝ in Ioi T, ∑' o : PositiveOccurrence, actualClosedOrdinateKernel o x := by
      exact (nonnegative_kernel_series_integral
        (actual_closed_ordinate_kernel_integrable T hp)
        actual_closed_ordinate_kernel_nonnegative
        (actual_closed_ordinate_kernel_integrals_summable T hT)).symm
    _ = 6*(∫ x : ℝ in Ioi T, actualPositiveZeroCount x/x^7) := by
      simp only [actual_closed_ordinate_kernel_tsum, integral_const_mul]

/-- The actual strict tail subtracts the CLOSED count at T. Its atom is
retained even if T is an ordinate; no GoodHeight or simple-zero premise occurs. -/
theorem actual_positive_sixth_stieltjes (T : ℝ) (hT : 3/2 ≤ T) :
    PositiveSixthPowerStieltjes T := by
  have hp : 0 < T := by linarith
  refine ⟨actual_positive_sixth_summable T hT,
    actual_positive_count_seventh_integrable T hT, ?_⟩
  have hm : Summable (fun o : PositiveOccurrence => 1/(max T (positiveOrdinate o))^6) :=
    actual_positive_max_sixth_summable T hT
  have hh := positive_closed_count_kernel_summable T (1/T^6)
  calc
    actualPositiveSixthPowerTail T =
        ∑' o : PositiveOccurrence, if T < positiveOrdinate o then
          1/(positiveOrdinate o)^6 else 0 := by
      exact (positive_strict_tail_tsum_transport T hp.le
        (fun o => 1/(ZeroObject.shiftedValue o).im^6)).symm
    _ = ∑' o : PositiveOccurrence,
        (1/(max T (positiveOrdinate o))^6 - positiveClosedCountKernel T (1/T^6) o) := by
      apply tsum_congr
      intro o
      have he := strict_ordinate_weight_eq_closed_integral_sub_endpoint
        T (positiveOrdinate o) hp o.property
      rw [closed_ordinate_kernel_integral T (positiveOrdinate o) hp o.property] at he
      exact he
    _ = (∑' o : PositiveOccurrence, 1/(max T (positiveOrdinate o))^6) -
        ∑' o : PositiveOccurrence, positiveClosedCountKernel T (1/T^6) o := hm.tsum_sub hh
    _ = -actualPositiveZeroCount T/T^6 +
        6*(∫ x : ℝ in Ioi T, actualPositiveZeroCount x/x^7) := by
      rw [actual_positive_count_kernel_integral T hT, positive_closed_count_kernel_tsum]
      unfold actualPositiveZeroCount
      ring

end CommonMeanStieltjes
```
