# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevTailAttempt02.Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `554eed563f1565c0bd8d45af80d979ceb4ff8d80` · SHA-256 `6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualChebyshevAbel
import Mathlib.MeasureTheory.Integral.Prod

/-! Genuine actual Chebyshev-error tail integrability from its proved first moment.
Direction grwtsk contributors; focused scratch construction OpenAI Codex.
No infinite centering or centered-Mangoldt integrability premise is assumed. -/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped Topology
namespace ContinuousResearch.ActualChebyshevTail
open ContinuousResearch.MediumPNTLogError ContinuousResearch.MediumPNTMoment

def psiErrorTail (t : ℝ) : ℝ := ∫ u in Ioi t, psiRelativeError u

def triangleKernel (p : ℝ × ℝ) : ℝ :=
  if 0 < p.1 ∧ p.1 < p.2 then psiRelativeError p.2 else 0

theorem triangleKernel_measurable : Measurable triangleKernel := by
  exact (psiRelativeError_measurable.comp measurable_snd).ite
    ((measurableSet_lt measurable_const measurable_fst).inter
      (measurableSet_lt measurable_fst measurable_snd)) measurable_const

theorem triangleKernel_slice (u : ℝ) :
    (fun t : ℝ => triangleKernel (t,u)) =
      (Ioo (0:ℝ) u).indicator (fun _ => psiRelativeError u) := by
  funext t
  simp only [triangleKernel, mem_Ioo, indicator_apply]

theorem triangleKernel_slice_integrable (u : ℝ) :
    Integrable (fun t : ℝ => triangleKernel (t,u)) := by
  rw [show (∫ t : ℝ, ‖triangleKernel (t,u)‖) =
    ∫ t : ℝ, ‖(Ioo (0:ℝ) u).indicator (fun _ => psiRelativeError u) t‖ from
      congrArg (fun f : ℝ → ℝ => ∫ t : ℝ, ‖f t‖) (triangleKernel_slice u)]
  exact (integrableOn_const (C:=psiRelativeError u)
    measure_Ioo_lt_top.ne).integrable_indicator measurableSet_Ioo

theorem triangleKernel_slice_norm_integral {u : ℝ} (hu : 0 ≤ u) :
    (∫ t : ℝ, ‖triangleKernel (t,u)‖) = u * |psiRelativeError u| := by
  rw [triangleKernel_slice]
  simp only [norm_indicator_eq_indicator_norm, Real.norm_eq_abs]
  rw [integral_indicator_const _ measurableSet_Ioo, Real.volume_real_Ioo_of_le hu]
  simp only [sub_zero, smul_eq_mul]

theorem triangleKernel_integrable :
    Integrable triangleKernel (volume.prod (volume.restrict (Ioi (0:ℝ)))) := by
  apply (integrable_prod_iff' triangleKernel_measurable.aestronglyMeasurable).mpr
  constructor
  · exact Eventually.of_forall triangleKernel_slice_integrable
  · apply psiRelativeError_first_moment_integrable.norm.congr
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [triangleKernel_slice_norm_integral hu.le, Real.norm_eq_abs, abs_mul,
      abs_of_pos hu]

theorem triangleKernel_inner_eq {t : ℝ} (ht : 0 < t) :
    (∫ u in Ioi (0:ℝ), triangleKernel (t,u)) = psiErrorTail t := by
  have he : (fun u : ℝ => triangleKernel (t,u)) =
      (Ioi t).indicator psiRelativeError := by
    funext u
    simp only [triangleKernel, ht, true_and, mem_Ioi, indicator_apply]
  rw [he, integral_indicator measurableSet_Ioi,
    Measure.restrict_restrict measurableSet_Ioi]
  have hs : Ioi t ∩ Ioi (0:ℝ) = Ioi t :=
    inter_eq_left.mpr (Ioi_subset_Ioi ht.le)
  rw [hs]
  rfl

theorem psiErrorTail_integrable : IntegrableOn psiErrorTail (Ioi (0:ℝ)) := by
  apply triangleKernel_integrable.integral_prod_left.integrableOn.congr_fun
  · intro t ht
    exact triangleKernel_inner_eq ht
  · exact measurableSet_Ioi

end ContinuousResearch.ActualChebyshevTail
```
