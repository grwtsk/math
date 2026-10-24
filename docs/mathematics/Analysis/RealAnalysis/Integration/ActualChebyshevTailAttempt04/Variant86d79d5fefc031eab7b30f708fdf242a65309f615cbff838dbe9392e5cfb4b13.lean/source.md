# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevTailAttempt04.Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `570c200c7fdcbb9fe708184d1d9cb1d953350e20` · SHA-256 `730868142c153742ea234f54d16e9d3fbb0ca80df659cd1aa352bfa43e8701b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PsiErrorTail.Variantc6a8a2545c20a82f9273f1026301702815728cb44a2df0c4e8531fe44167a5b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6a8a2545c20a82f9273f1026301702815728cb44a2df0c4e8531fe44167a5b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PsiErrorTail.Variantc6a8a2545c20a82f9273f1026301702815728cb44a2df0c4e8531fe44167a5b8","mathematical_subject":"Analysis.Integration","original_sha256":"c6a8a2545c20a82f9273f1026301702815728cb44a2df0c4e8531fe44167a5b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass26/arithmetic_assembly/ActualChebyshevTail-attempt04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualChebyshevAbel
import Mathlib.MeasureTheory.Integral.Prod

/-! Genuine actual Chebyshev-error tail integrability from its proved first moment.
Direction grwtsk contributors; focused scratch construction OpenAI Codex.
No infinite centering or centered-Mangoldt integrability premise is assumed. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.PsiErrorTail.Variantc6a8a2545c20a82f9273f1026301702815728cb44a2df0c4e8531fe44167a5b8

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
  rw [triangleKernel_slice]
  exact (integrableOn_const (C:=psiRelativeError u)
    measure_Ioo_lt_top.ne).integrable_indicator measurableSet_Ioo

theorem triangleKernel_slice_norm_integral {u : ℝ} (hu : 0 ≤ u) :
    (∫ t : ℝ, ‖triangleKernel (t,u)‖) = u * |psiRelativeError u| := by
  rw [show (∫ t : ℝ, ‖triangleKernel (t,u)‖) =
    ∫ t : ℝ, ‖(Ioo (0:ℝ) u).indicator (fun _ => psiRelativeError u) t‖ from
      congrArg (fun f : ℝ → ℝ => ∫ t : ℝ, ‖f t‖) (triangleKernel_slice u)]
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

set_option pp.fullNames true
set_option pp.universes true
#check ContinuousResearch.ActualChebyshevTail.psiErrorTail
#print axioms ContinuousResearch.ActualChebyshevTail.psiErrorTail
#print ContinuousResearch.ActualChebyshevTail.psiErrorTail
#check ContinuousResearch.ActualChebyshevTail.triangleKernel
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel
#print ContinuousResearch.ActualChebyshevTail.triangleKernel
#check ContinuousResearch.ActualChebyshevTail.triangleKernel_measurable
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel_measurable
#print ContinuousResearch.ActualChebyshevTail.triangleKernel_measurable
#check ContinuousResearch.ActualChebyshevTail.triangleKernel_slice
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel_slice
#print ContinuousResearch.ActualChebyshevTail.triangleKernel_slice
#check ContinuousResearch.ActualChebyshevTail.triangleKernel_slice_integrable
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel_slice_integrable
#print ContinuousResearch.ActualChebyshevTail.triangleKernel_slice_integrable
#check ContinuousResearch.ActualChebyshevTail.triangleKernel_slice_norm_integral
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel_slice_norm_integral
#print ContinuousResearch.ActualChebyshevTail.triangleKernel_slice_norm_integral
#check ContinuousResearch.ActualChebyshevTail.triangleKernel_integrable
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel_integrable
#print ContinuousResearch.ActualChebyshevTail.triangleKernel_integrable
#check ContinuousResearch.ActualChebyshevTail.triangleKernel_inner_eq
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel_inner_eq
#print ContinuousResearch.ActualChebyshevTail.triangleKernel_inner_eq
#check ContinuousResearch.ActualChebyshevTail.psiErrorTail_integrable
#print axioms ContinuousResearch.ActualChebyshevTail.psiErrorTail_integrable
#print ContinuousResearch.ActualChebyshevTail.psiErrorTail_integrable
```
