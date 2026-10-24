# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualMangoldtLaplaceAttempt01.Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ec267b64658778bf201ed0d864bda8382a43746` · SHA-256 `2955cc97d5284157fd9e8ee38814448ec85d6c4dff64dfb769acdd7c432019ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.MangoldtWeight.Variant488f667dc72653cd6e2e3bd2d8748793b979c72f0093711b1b815b71f09eacf0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"488f667dc72653cd6e2e3bd2d8748793b979c72f0093711b1b815b71f09eacf0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.MangoldtWeight.Variant488f667dc72653cd6e2e3bd2d8748793b979c72f0093711b1b815b71f09eacf0","mathematical_subject":"Analysis.Integration","original_sha256":"488f667dc72653cd6e2e3bd2d8748793b979c72f0093711b1b815b71f09eacf0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass22/laplace_identity/ActualMangoldtLaplace-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-! Literal closed full-Mangoldt prefix: positive log-onset Laplace transport.
Direction grwtsk contributors; focused scratch construction OpenAI Codex.
No Ramaré, unweighted residual L1, desired intercept, signed bound or RH premise. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.MangoldtWeight.Variant488f667dc72653cd6e2e3bd2d8748793b979c72f0093711b1b815b71f09eacf0

set_option autoImplicit false
set_option maxHeartbeats 800000
noncomputable section
namespace ContinuousResearch.ActualMangoldtLaplace
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open FormalResearch.RiemannHypothesis.SourcePairing

 def mangoldtWeight (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt (n+2) / ((n+2 : ℕ) : ℝ)

 def laplaceAtom (s : ℝ) (n : ℕ) : ℝ → ℝ :=
  (Ici (Real.log ((n+2 : ℕ) : ℝ))).indicator
    (fun t => mangoldtWeight n * Real.exp (-s*t))

theorem onset_pos (n : ℕ) : 0 < Real.log ((n+2 : ℕ) : ℝ) := by
  exact Real.log_pos (by exact_mod_cast (by omega : 1 < n+2))

theorem weight_nonneg (n : ℕ) : 0 ≤ mangoldtWeight n := by
  unfold mangoldtWeight
  exact div_nonneg ArithmeticFunction.vonMangoldt_nonneg (by positivity)

theorem atom_nonneg (s t : ℝ) (n : ℕ) : 0 ≤ laplaceAtom s n t := by
  exact indicator_nonneg (fun _ _ => mul_nonneg (weight_nonneg n) (Real.exp_pos _).le) t

theorem atom_measurable (s : ℝ) (n : ℕ) : Measurable (laplaceAtom s n) := by
  unfold laplaceAtom
  apply Measurable.indicator _ measurableSet_Ici
  exact measurable_const.mul ((measurable_const.mul measurable_id).neg.exp)

theorem atom_integrable {s : ℝ} (hs : 0 < s) (n : ℕ) : Integrable (laplaceAtom s n) := by
  unfold laplaceAtom
  apply IntegrableOn.integrable_indicator _ measurableSet_Ici
  apply Integrable.const_mul
  apply integrableOn_Ici_iff_integrableOn_Ioi.mpr
  exact integrableOn_exp_mul_Ioi (by linarith : -s < 0) _

theorem atom_integral {s : ℝ} (hs : 0 < s) (n : ℕ) :
    (∫ t : ℝ, laplaceAtom s n t) =
      (mangoldtWeight n * Real.exp (-s * Real.log ((n+2 : ℕ) : ℝ))) / s := by
  unfold laplaceAtom
  rw [integral_indicator measurableSet_Ici, integral_const_mul,
    integral_Ici_eq_integral_Ioi,integral_exp_mul_Ioi (by linarith : -s < 0)]
  ring

theorem weighted_exp_eq_norm_term (s : ℝ) (n : ℕ) :
    mangoldtWeight n * Real.exp (-s * Real.log ((n+2 : ℕ) : ℝ)) =
      ‖LSeries.term (fun k : ℕ => (ArithmeticFunction.vonMangoldt k : ℂ))
        ((s+1 : ℝ) : ℂ) (n+2)‖ := by
  rw [LSeries.norm_term_eq,if_neg (by omega : n+2 ≠ 0)]
  simp only [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg,
    Complex.ofReal_re]
  have hc : 0 < ((n+2 : ℕ) : ℝ) := by positivity
  rw [Real.rpow_add hc,Real.rpow_one,Real.rpow_def_of_pos hc]
  simp only [mangoldtWeight,neg_mul,Real.exp_neg]
  rw [mul_comm (Real.log ((n+2 : ℕ) : ℝ)) s]
  ring

theorem atom_norm_integrals_summable {s : ℝ} (hs : 0 < s) :
    Summable (fun n : ℕ => ∫ t : ℝ, ‖laplaceAtom s n t‖) := by
  have h := (ArithmeticFunction.LSeriesSummable_vonMangoldt
    (s:=((s+1 : ℝ):ℂ)) (by simp only [Complex.ofReal_re]; linarith)).norm
  have hn := (summable_nat_add_iff 2).mpr h
  have he (n : ℕ) : (∫ t : ℝ, ‖laplaceAtom s n t‖) =
    ‖LSeries.term (fun k : ℕ => (ArithmeticFunction.vonMangoldt k : ℂ))
        ((s+1 : ℝ) : ℂ) (n+2)‖ / s := by
    simp_rw [Real.norm_of_nonneg (atom_nonneg s _ n)]
    rw [atom_integral hs,weighted_exp_eq_norm_term]
  simp_rw [he]
  exact hn.div_const s

end ContinuousResearch.ActualMangoldtLaplace
```
