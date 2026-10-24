# Complete source: GRWTSK.Analysis.MeasureTheory.OperatorScout.Variante5d33a1ef24e870ceab73a09578af4df00277330de12c8d8ef14da5a47472731

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e69671caf7367c1dadebdfd8264c0771a58cf50e` · SHA-256 `944ade7d35d28a0d288aa320e04fcb5c809376954385b6778c2a13d46d881db1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.FullH.Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FullH.Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/OperatorScout.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap


namespace GRWTSK.Analysis.MeasureTheory.FullH.Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5

set_option autoImplicit false
namespace OperatorScoutScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission HalfLineExponential
noncomputable section
abbrev FullH := Lp ℂ 2 (volume : Measure ℝ)

def fullShift (a : ℝ) : FullH →ₗᵢ[ℂ] FullH :=
  Lp.compMeasurePreservingₗᵢ ℂ (fun x : ℝ => x - a) (measurePreserving_sub_right volume a)

theorem fullShift_ae (a : ℝ) (f : FullH) :
    fullShift a f =ᵐ[volume] (fun x : ℝ => f (x - a)) :=
  Lp.coeFn_compMeasurePreserving f (measurePreserving_sub_right volume a)

theorem fullShift_continuous (f : FullH) : Continuous (fun a : ℝ => fullShift a f) := by
  let g : ℝ → C(ℝ, ℝ) := fun a => ⟨fun x => x - a, continuous_id.sub continuous_const⟩
  have hg : Continuous g := ContinuousMap.continuous_of_continuous_uncurry g (by
    change Continuous (fun p : ℝ × ℝ => p.2 - p.1)
    fun_prop)
  exact continuous_const.compMeasurePreservingLp hg
    (fun a => measurePreserving_sub_right volume a) (by norm_num)

theorem halfLine_zeroExtension_memLp (f : H) :
    MemLp ((Ioi (0 : ℝ)).indicator (fun x => f x)) 2 volume := by
  apply (memLp_indicator_iff_restrict measurableSet_Ioi).mpr
  exact Lp.memLp f

theorem weighted_shift_integrable (f : FullH) :
    Integrable (fun a : ℝ => (fixedKernel a : ℂ) • fullShift a f) := by
  refine (fixedKernel_integrable.norm.mul_const ‖f‖).mono' ?_ ?_
  · have hk : Integrable (fun a : ℝ => (fixedKernel a : ℂ)) := fixedKernel_integrable.ofReal
    exact hk.aestronglyMeasurable.smul (fullShift_continuous f).aestronglyMeasurable
  · filter_upwards [] with a
    simp only [norm_smul, Complex.norm_real, LinearIsometry.norm_map]
    exact le_rfl

/-- A vector-valued integral only; no half-line convolution operator is claimed here. -/
def bochnerVector (f : FullH) : FullH := ∫ a : ℝ, (fixedKernel a : ℂ) • fullShift a f

theorem bochnerVector_norm_le (f : FullH) :
    ‖bochnerVector f‖ ≤ (∫ a : ℝ, ‖fixedKernel a‖) * ‖f‖ := by
  calc
    _ ≤ ∫ a : ℝ, ‖(fixedKernel a : ℂ) • fullShift a f‖ := norm_integral_le_integral_norm _
    _ = _ := by
      simp only [norm_smul, Complex.norm_real, LinearIsometry.norm_map, integral_mul_const]

end
end OperatorScoutScratch
```
