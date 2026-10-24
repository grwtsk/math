# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMuntzMellinDomainAttempt01.Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3843f03931fd9d8bb87491cff58467c9fb8f423e` · SHA-256 `f801680ebc1b503091235b75843b173633586700e8548b8155795cbfda066203`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ComplexMuntz.Variant5c308a5a4468a995eac0f57bfd7933c8aed5501fe36bd84be340656dd5a9af50","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c308a5a4468a995eac0f57bfd7933c8aed5501fe36bd84be340656dd5a9af50","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ComplexMuntz.Variant5c308a5a4468a995eac0f57bfd7933c8aed5501fe36bd84be340656dd5a9af50","mathematical_subject":"Analysis.Calculus","original_sha256":"5c308a5a4468a995eac0f57bfd7933c8aed5501fe36bd84be340656dd5a9af50","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass21/muntz_mellin/ActualMuntzMellinDomain-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualMuntzBound
import Mathlib.Analysis.MellinTransform
import Mathlib.NumberTheory.Harmonic.ZetaAsymp

/-! Genuine Mellin domain for the literal actual compensated source readout.
Direction grwtsk contributors; focused scratch proof OpenAI Codex.
No Mellin-zeta product identity, closure, or RH premise is assumed. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ComplexMuntz.Variant5c308a5a4468a995eac0f57bfd7933c8aed5501fe36bd84be340656dd5a9af50

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMuntzMellinDomain
open MeasureTheory Set Filter Asymptotics
open scoped Topology
open ContinuousResearch.ActualMuntzInventory ContinuousResearch.ActualMuntzBound
open ContinuousResearch.LogarithmicSource ContinuousResearch.ActualGoodKernel

def complexMuntz (A x : ℝ) : ℂ := actualMuntz A x

def complexSource (A x : ℝ) : ℂ := actualLogSource A x

theorem complexMuntz_measurable {A : ℝ} (hA : 1 ≤ A) :
    Measurable (complexMuntz A) :=
  Complex.continuous_ofReal.measurable.comp (actualMuntz_measurable hA)

theorem complexMuntz_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (complexMuntz A) := by
  have hi : IntegrableOn (complexMuntz A) (Icc 0 (Real.exp A)) :=
    IntegrableOn.of_bound (by simp) ((complexMuntz_measurable hA).aestronglyMeasurable.restrict)
      (derivativeBudget A) (Eventually.of_forall fun x => by
        simpa only [complexMuntz,Complex.norm_real,Real.norm_eq_abs] using actualMuntz_abs_le_budget hA x)
  apply (integrableOn_iff_integrable_of_support_subset ?_).mp hi
  intro x hx
  by_contra h
  apply hx
  have hz : actualMuntz A x = 0 := by
    apply actualMuntz_zero_outside hA
    simp only [mem_Icc,not_and_or,not_le] at h
    rcases h with h | h
    · exact Or.inl h.le
    · exact Or.inr h.le
  simp [complexMuntz,hz]

theorem complexMuntz_top_decay {A : ℝ} (hA : 1 ≤ A) (a : ℝ) :
    complexMuntz A =O[atTop] (fun x : ℝ => x ^ (-a)) := by
  apply IsBigO.of_bound 0
  filter_upwards [eventually_ge_atTop (Real.exp A)] with x hx
  simp [complexMuntz,actualMuntz_zero_outside hA (Or.inr hx)]

theorem complexMuntz_zero_bound {A : ℝ} (hA : 1 ≤ A) :
    complexMuntz A =O[𝓝[>] 0] (fun x : ℝ => x ^ (-(0 : ℝ))) := by
  apply IsBigO.of_bound (derivativeBudget A)
  apply Eventually.of_forall
  intro x
  simpa only [complexMuntz,Complex.norm_real,Real.norm_eq_abs,neg_zero,Real.rpow_zero,
    norm_one,mul_one] using actualMuntz_abs_le_budget hA x

theorem actual_muntz_mellinConvergent {A : ℝ} (hA : 1 ≤ A) {s : ℂ} (hs : 0 < s.re) :
    MellinConvergent (complexMuntz A) s := by
  exact mellinConvergent_of_isBigO_rpow
    ((complexMuntz_integrable hA).locallyIntegrable.locallyIntegrableOn _)
    (complexMuntz_top_decay hA (s.re+1)) (by linarith)
    (complexMuntz_zero_bound hA) hs

theorem actual_muntz_mellin_hasDerivAt {A : ℝ} (hA : 1 ≤ A) {s : ℂ} (hs : 0 < s.re) :
    MellinConvergent (fun x : ℝ => Real.log x • complexMuntz A x) s ∧
      HasDerivAt (mellin (complexMuntz A))
        (mellin (fun x : ℝ => Real.log x • complexMuntz A x) s) s := by
  exact mellin_hasDerivAt_of_isBigO_rpow
    ((complexMuntz_integrable hA).locallyIntegrable.locallyIntegrableOn _)
    (complexMuntz_top_decay hA (s.re+1)) (by linarith)
    (complexMuntz_zero_bound hA) hs

theorem actual_muntz_mellin_analytic {A : ℝ} (hA : 1 ≤ A) :
    AnalyticOnNhd ℂ (mellin (complexMuntz A)) {s : ℂ | 0 < s.re} := by
  apply DifferentiableOn.analyticOnNhd _ (isOpen_lt continuous_const Complex.continuous_re)
  intro s hs
  exact ((actual_muntz_mellin_hasDerivAt hA hs).2.differentiableAt).differentiableWithinAt

theorem complexSource_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (complexSource A) :=
  (actualLogSource_integrable_global hA).ofReal

theorem complexSource_top_decay {A : ℝ} (hA : 0 < A) (a : ℝ) :
    complexSource A =O[atTop] (fun x : ℝ => x ^ (-a)) := by
  apply IsBigO.of_bound 0
  filter_upwards [eventually_ge_atTop (Real.exp A)] with x hx
  simp [complexSource,actualLogSource_zero_outside hA (Or.inr hx)]

theorem complexSource_zero_decay {A : ℝ} (hA : 0 < A) (b : ℝ) :
    complexSource A =O[𝓝[>] 0] (fun x : ℝ => x ^ (-b)) := by
  apply IsBigO.of_bound 0
  have hh : ∀ᶠ x : ℝ in 𝓝[>] 0, x < Real.exp (-A) :=
    (eventually_lt_nhds (Real.exp_pos (-A))).filter_mono nhdsWithin_le_nhds
  filter_upwards [hh] with x hx
  simp [complexSource,actualLogSource_zero_outside hA (Or.inl hx.le)]

theorem actual_source_mellinConvergent {A : ℝ} (hA : 0 < A) (s : ℂ) :
    MellinConvergent (complexSource A) s := by
  exact mellinConvergent_of_isBigO_rpow
    ((complexSource_integrable hA).locallyIntegrable.locallyIntegrableOn _)
    (complexSource_top_decay hA (s.re+1)) (by linarith)
    (complexSource_zero_decay hA (s.re-1)) (by linarith)

theorem actual_source_mellin_hasDerivAt {A : ℝ} (hA : 0 < A) (s : ℂ) :
    MellinConvergent (fun x : ℝ => Real.log x • complexSource A x) s ∧
      HasDerivAt (mellin (complexSource A))
        (mellin (fun x : ℝ => Real.log x • complexSource A x) s) s := by
  exact mellin_hasDerivAt_of_isBigO_rpow
    ((complexSource_integrable hA).locallyIntegrable.locallyIntegrableOn _)
    (complexSource_top_decay hA (s.re+1)) (by linarith)
    (complexSource_zero_decay hA (s.re-1)) (by linarith)

theorem actual_source_mellin_differentiable {A : ℝ} (hA : 0 < A) :
    Differentiable ℂ (mellin (complexSource A)) :=
  fun s => (actual_source_mellin_hasDerivAt hA s).2.differentiableAt

theorem actual_source_mellin_one {A : ℝ} (hA : 1 ≤ A) :
    mellin (complexSource A) 1 = 0 := by
  simp only [mellin,one_sub,Complex.cpow_zero,one_smul,complexSource]
  rw [integral_complex_ofReal,actualLogSource_integral_zero hA,Complex.ofReal_zero]

end ContinuousResearch.ActualMuntzMellinDomain
```
