# Complete source: GRWTSK.Topology.GeneralTopology.CandidateRealizationFullAudit.Variante935126aa64ae53b39a785c2cc6f7d7f99271714562c98a80990ae4100714926

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3e14d56ccfcbfb9689019fe5b8fd3148f97af5a` · SHA-256 `bc2e070885e3838e78e823d70c7dc069b8b42d0d9b5388d86e2f30053f1e73bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.AngularFrequency.Variant41856ea913a1a722678af7c8affdf4528374c5363fec01bc94ed84223fc826b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41856ea913a1a722678af7c8affdf4528374c5363fec01bc94ed84223fc826b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.AngularFrequency.Variant41856ea913a1a722678af7c8affdf4528374c5363fec01bc94ed84223fc826b1","mathematical_subject":"Topology.GeneralTopology","original_sha256":"41856ea913a1a722678af7c8affdf4528374c5363fec01bc94ed84223fc826b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/candidate-realization-full-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Bridge
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateCausality
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension

/-! The actual causal controller in the original half-line Hilbert space. -/

namespace GRWTSK.Topology.GeneralTopology.AngularFrequency.Variant41856ea913a1a722678af7c8affdf4528374c5363fec01bc94ed84223fc826b1

set_option autoImplicit false
namespace CandidateRealizationScratch
open MeasureTheory FourierTransform Filter Complex Set
open scoped Topology InnerProductSpace
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality CandidateLineBounds
open FourierL1L2Bridge HalfLineExponential HalfLineExtension
noncomputable section

/-- The same boundary data in Mathlib's frequency convention, including the factor `2π`. -/
def angularFrequency (F : ℂ → ℂ) (ξ : ℝ) : ℂ :=
  F (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I)

/-- The angular inverse agrees exactly with Mathlib's inverse transform after frequency dilation. -/
theorem boundaryInverse_eq_fourierInv (F : ℂ → ℂ) (x : ℝ) :
    boundaryInverse F x = (𝓕⁻ (angularFrequency F)) x := by
  have hπ : 0 < 2 * Real.pi := by positivity
  have he := Measure.integral_comp_mul_left
    (fun t : ℝ => Complex.exp ((x : ℂ) * ((t : ℂ) * I)) * F ((t : ℂ) * I))
    (2 * Real.pi)
  rw [Real.fourierInv_eq']
  unfold angularFrequency boundaryInverse
  rw [abs_of_pos (inv_pos.mpr hπ)] at he
  simp only [smul_eq_mul] at he ⊢
  convert he.symm using 1
  · simp [Complex.real_smul, one_div]
  · congr 1
    ext ξ
    congr 2
    simp only [RCLike.inner_apply, conj_trivial, Complex.ofReal_mul]
    ring

/-- The actual rescaled boundary data are genuinely in both L1 and L2. -/
theorem candidate_frequency_admission (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (angularFrequency (candidate X ε h)) ∧
      MemLp (angularFrequency (candidate X ε h)) 2 := by
  have hc : Continuous (fun t : ℝ => candidate X ε h ((t : ℂ) * I)) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    exact (candidate_differentiableAt X ε h hε hh.le _ (by simp)).continuousAt.comp
      (by fun_prop)
  obtain ⟨φ, hφ, _, _, hb⟩ := candidate_boundary_majorant X hX ε h hε hh hh1
  have hi : Integrable (fun t : ℝ => candidate X ε h ((t : ℂ) * I)) := by
    apply hφ.mono' hc.aestronglyMeasurable
    filter_upwards [] with t
    simpa only [Complex.ofReal_zero, zero_add] using hb 0 t le_rfl
  obtain ⟨_, _, hs⟩ := candidate_line_square_integrable_bound ε hε
  have hs0 : Integrable (fun t : ℝ => ‖candidate X ε h ((t : ℂ) * I)‖ ^ 2) := by
    simpa only [Complex.ofReal_zero, zero_add] using (hs X hX h hh hh1 0 le_rfl).1
  have hπ : 2 * Real.pi ≠ 0 := ne_of_gt (by positivity)
  refine ⟨hi.comp_mul_left' hπ, ?_⟩
  apply (memLp_two_iff_integrable_sq_norm ?_).mpr (hs0.comp_mul_left' hπ)
  exact (hc.comp (by fun_prop : Continuous (fun ξ : ℝ => 2 * Real.pi * ξ))).aestronglyMeasurable

/-- The admitted full-line inverse Fourier vector of the actual candidate. -/
def fullBoundaryVector (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) : FullH :=
  𝓕⁻ ((candidate_frequency_admission X hX ε h hε hh hh1).2.toLp
    (angularFrequency (candidate X ε h)))

/-- The full-line quotient representative is the genuine angular inverse almost everywhere. -/
theorem fullBoundaryVector_ae (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    fullBoundaryVector X hX ε h hε hh hh1 =ᵐ[volume]
      boundaryInverse (candidate X ε h) := by
  have he := fourierInv_toLp_ae (angularFrequency (candidate X ε h))
    (candidate_frequency_admission X hX ε h hε hh hh1).1
    (candidate_frequency_admission X hX ε h hε hh hh1).2
  filter_upwards [he] with x hx
  exact hx.trans (boundaryInverse_eq_fourierInv _ x).symm

/-- The genuine complete inverse boundary function belongs to full-line L2. -/
theorem candidate_boundaryInverse_memLp (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    MemLp (boundaryInverse (candidate X ε h)) 2 volume :=
  MemLp.ae_eq (fullBoundaryVector_ae X hX ε h hε hh hh1) (Lp.memLp _)

/-- The genuine inverse boundary representative is continuous on the complete real line. -/
theorem candidate_boundaryInverse_continuous (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Continuous (boundaryInverse (candidate X ε h)) := by
  have he : boundaryInverse (candidate X ε h) = 𝓕⁻ (angularFrequency (candidate X ε h)) :=
    funext (boundaryInverse_eq_fourierInv _)
  rw [he]
  exact continuous_fourierInv _ (candidate_frequency_admission X hX ε h hε hh hh1).1

private theorem norm_sq_toLp (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    ‖hf.toLp f‖ ^ 2 = ∫ t : ℝ, ‖f t‖ ^ 2 := by
  rw [@norm_sq_eq_re_inner ℂ, L2.inner_def]
  rw [← integral_re]
  · apply integral_congr_ae
    filter_upwards [hf.coeFn_toLp] with t ht
    rw [ht, inner_self_eq_norm_sq_to_K]
    rw [← RCLike.ofReal_pow, RCLike.ofReal_re]
  · exact L2.integrable_inner _ _

/-- The full-line vector has the exact angular Plancherel norm, with no missing Jacobian. -/
theorem fullBoundaryVector_norm_sq (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    ‖fullBoundaryVector X hX ε h hε hh hh1‖ ^ 2 =
      (1 / (2 * Real.pi)) * ∫ t : ℝ, ‖candidate X ε h ((t : ℂ) * I)‖ ^ 2 := by
  unfold fullBoundaryVector
  have hn : ‖𝓕⁻ ((candidate_frequency_admission X hX ε h hε hh hh1).2.toLp
      (angularFrequency (candidate X ε h)))‖ =
      ‖(candidate_frequency_admission X hX ε h hε hh hh1).2.toLp
        (angularFrequency (candidate X ε h))‖ :=
    (Lp.fourierTransformₗᵢ ℝ ℂ).symm.norm_map _
  rw [hn]
  rw [norm_sq_toLp]
  have he := Measure.integral_comp_mul_left
    (fun t : ℝ => ‖candidate X ε h ((t : ℂ) * I)‖ ^ 2) (2 * Real.pi)
  simpa only [angularFrequency, abs_of_pos (inv_pos.mpr (by positivity : 0 < 2 * Real.pi)),
    smul_eq_mul, one_div] using he

/-- The actual controller is the restriction of its admitted causal full-line vector. -/
def controller (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) : H :=
  restriction (fullBoundaryVector X hX ε h hε hh hh1)

/-- The original half-line controller is represented by the same genuine inverse integral. -/
theorem controller_ae (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    controller X hX ε h hε hh hh1 =ᵐ[halfLineMeasure]
      boundaryInverse (candidate X ε h) :=
  (restriction_ae _).trans (ae_restrict_of_ae (fullBoundaryVector_ae X hX ε h hε hh hh1))

/-- Causality ensures that zero extension recovers the complete full-line vector. -/
theorem zeroExtension_controller (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    zeroExtension (controller X hX ε h hε hh hh1) =
      fullBoundaryVector X hX ε h hε hh hh1 := by
  apply Lp.ext
  have hq := (ae_restrict_iff' measurableSet_Ioi).mp (controller_ae X hX ε h hε hh hh1)
  filter_upwards [zeroExtension_ae (controller X hX ε h hε hh hh1),
    fullBoundaryVector_ae X hX ε h hε hh hh1, hq,
    volume.ae_ne (0 : ℝ)] with t hz hf hqt ht
  rw [hz, hf]
  by_cases hp : t ∈ Ioi (0 : ℝ)
  · exact (indicator_of_mem hp _).trans (hqt hp)
  · rw [indicator_of_notMem hp]
    exact (candidate_boundaryInverse_eq_zero X hX ε h hε hh hh1 t
      (lt_of_le_of_ne (le_of_not_gt hp) ht)).symm

/-- The controller in the actual half-line space has the exact full boundary norm. -/
theorem controller_norm_sq (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    ‖controller X hX ε h hε hh hh1‖ ^ 2 =
      (1 / (2 * Real.pi)) * ∫ t : ℝ, ‖candidate X ε h ((t : ℂ) * I)‖ ^ 2 := by
  rw [← zeroExtension_norm, zeroExtension_controller]
  exact fullBoundaryVector_norm_sq X hX ε h hε hh hh1

end
end CandidateRealizationScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @CandidateRealizationScratch.angularFrequency
#print CandidateRealizationScratch.angularFrequency
#print axioms CandidateRealizationScratch.angularFrequency
#check @CandidateRealizationScratch.boundaryInverse_eq_fourierInv
#print CandidateRealizationScratch.boundaryInverse_eq_fourierInv
#print axioms CandidateRealizationScratch.boundaryInverse_eq_fourierInv
#check @CandidateRealizationScratch.candidate_frequency_admission
#print CandidateRealizationScratch.candidate_frequency_admission
#print axioms CandidateRealizationScratch.candidate_frequency_admission
#check @CandidateRealizationScratch.fullBoundaryVector
#print CandidateRealizationScratch.fullBoundaryVector
#print axioms CandidateRealizationScratch.fullBoundaryVector
#check @CandidateRealizationScratch.fullBoundaryVector_ae
#print CandidateRealizationScratch.fullBoundaryVector_ae
#print axioms CandidateRealizationScratch.fullBoundaryVector_ae
#check @CandidateRealizationScratch.candidate_boundaryInverse_memLp
#print CandidateRealizationScratch.candidate_boundaryInverse_memLp
#print axioms CandidateRealizationScratch.candidate_boundaryInverse_memLp
#check @CandidateRealizationScratch.candidate_boundaryInverse_continuous
#print CandidateRealizationScratch.candidate_boundaryInverse_continuous
#print axioms CandidateRealizationScratch.candidate_boundaryInverse_continuous
#check @CandidateRealizationScratch.fullBoundaryVector_norm_sq
#print CandidateRealizationScratch.fullBoundaryVector_norm_sq
#print axioms CandidateRealizationScratch.fullBoundaryVector_norm_sq
#check @CandidateRealizationScratch.controller
#print CandidateRealizationScratch.controller
#print axioms CandidateRealizationScratch.controller
#check @CandidateRealizationScratch.controller_ae
#print CandidateRealizationScratch.controller_ae
#print axioms CandidateRealizationScratch.controller_ae
#check @CandidateRealizationScratch.zeroExtension_controller
#print CandidateRealizationScratch.zeroExtension_controller
#print axioms CandidateRealizationScratch.zeroExtension_controller
#check @CandidateRealizationScratch.controller_norm_sq
#print CandidateRealizationScratch.controller_norm_sq
#print axioms CandidateRealizationScratch.controller_norm_sq
```
