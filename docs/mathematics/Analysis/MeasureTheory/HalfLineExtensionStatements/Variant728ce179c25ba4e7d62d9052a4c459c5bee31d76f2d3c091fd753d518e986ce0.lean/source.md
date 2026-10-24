# Complete source: GRWTSK.Analysis.MeasureTheory.HalfLineExtensionStatements.Variant728ce179c25ba4e7d62d9052a4c459c5bee31d76f2d3c091fd753d518e986ce0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `593a45e806a3e071becce3399041924962057d27` · SHA-256 `b37bfaf26a726d757852df842209f51bf5bfcbb9b168067daff46f05ae708580`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.FullH.Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FullH.Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/HalfLineExtensionStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.MeasureTheory.Integral.Bochner.Set

/-!
The genuine zero-extension isometry and restriction contraction between the actual
half-line Hilbert space and full-line L2. No convolution or adjoint is assumed.
-/


namespace GRWTSK.Analysis.MeasureTheory.FullH.Variant45cf349026cb2c1837f0478fd6f8c437d5610bd692208c4783059dfa459dbf92

set_option autoImplicit false
namespace HalfLineExtensionScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
noncomputable section

abbrev FullH := Lp ℂ 2 (volume : Measure ℝ)

def zeroExtensionFunction (f : H) : ℝ → ℂ := (Ioi (0 : ℝ)).indicator f

theorem zeroExtensionFunction_memLp (f : H) :
    MemLp (zeroExtensionFunction f) 2 volume := by
  exact (memLp_indicator_iff_restrict measurableSet_Ioi).mpr (Lp.memLp f)

def zeroExtensionVector (f : H) : FullH :=
  (zeroExtensionFunction_memLp f).toLp (zeroExtensionFunction f)

theorem zeroExtensionVector_ae (f : H) :
    zeroExtensionVector f =ᵐ[volume] zeroExtensionFunction f :=
  (zeroExtensionFunction_memLp f).coeFn_toLp

theorem zeroExtensionVector_norm (f : H) : ‖zeroExtensionVector f‖ = ‖f‖ := by
  rw [zeroExtensionVector, Lp.norm_toLp, zeroExtensionFunction,
    eLpNorm_indicator_eq_eLpNorm_restrict measurableSet_Ioi]
  rfl

theorem zeroExtensionVector_add (f g : H) :
    zeroExtensionVector (f + g) = zeroExtensionVector f + zeroExtensionVector g := by
  apply Lp.ext
  have hfg := (ae_restrict_iff' measurableSet_Ioi).mp (Lp.coeFn_add f g)
  filter_upwards [zeroExtensionVector_ae (f + g),
    Lp.coeFn_add (zeroExtensionVector f) (zeroExtensionVector g),
    zeroExtensionVector_ae f, zeroExtensionVector_ae g, hfg] with x hsum hout hf hg hfgx
  rw [hsum, hout, Pi.add_apply, hf, hg]
  by_cases hx : x ∈ Ioi (0 : ℝ)
  · simpa only [zeroExtensionFunction, indicator_of_mem hx, Pi.add_apply] using hfgx hx
  · simp only [zeroExtensionFunction, indicator_of_notMem hx, add_zero]

theorem zeroExtensionVector_smul (c : ℂ) (f : H) :
    zeroExtensionVector (c • f) = c • zeroExtensionVector f := by
  apply Lp.ext
  have hcf := (ae_restrict_iff' measurableSet_Ioi).mp (Lp.coeFn_smul c f)
  filter_upwards [zeroExtensionVector_ae (c • f),
    Lp.coeFn_smul c (zeroExtensionVector f), zeroExtensionVector_ae f, hcf]
      with x hsum hout hf hcfx
  rw [hsum, hout, Pi.smul_apply, hf]
  by_cases hx : x ∈ Ioi (0 : ℝ)
  · simpa only [zeroExtensionFunction, indicator_of_mem hx, Pi.smul_apply] using hcfx hx
  · simp only [zeroExtensionFunction, indicator_of_notMem hx, smul_zero]

/-- Zero extension is a complex-linear isometry of the actual AE quotient spaces. -/
def zeroExtension : H →ₗᵢ[ℂ] FullH where
  toFun := zeroExtensionVector
  map_add' := zeroExtensionVector_add
  map_smul' := zeroExtensionVector_smul
  norm_map' := zeroExtensionVector_norm

theorem zeroExtension_ae (f : H) :
    zeroExtension f =ᵐ[volume] (Ioi (0 : ℝ)).indicator f :=
  zeroExtensionVector_ae f

theorem zeroExtension_norm (f : H) : ‖zeroExtension f‖ = ‖f‖ :=
  zeroExtension.norm_map f

theorem zeroExtension_ae_halfLine (f : H) :
    zeroExtension f =ᵐ[halfLineMeasure] f := by
  change zeroExtension f =ᵐ[volume.restrict (Ioi (0 : ℝ))] f
  exact Filter.EventuallyEq.trans (ae_restrict_of_ae (zeroExtension_ae f))
    (indicator_ae_eq_restrict measurableSet_Ioi)

theorem zeroExtension_ae_nonpositive (f : H) :
    zeroExtension f =ᵐ[volume.restrict (Iic (0 : ℝ))] (fun _ => 0) := by
  filter_upwards [ae_restrict_of_ae (zeroExtension_ae f), ae_restrict_mem measurableSet_Iic]
    with x hx hnonpos
  rw [hx, indicator_of_notMem]
  change ¬0 < x
  exact not_lt.mpr (show x ≤ 0 from hnonpos)

/-- Restriction is Mathlib's genuine Lp restriction continuous linear map. -/
def restriction : FullH →L[ℂ] H := LpToLpRestrictCLM ℝ ℂ ℂ volume 2 (Ioi 0)

theorem restriction_ae (f : FullH) : restriction f =ᵐ[halfLineMeasure] f :=
  LpToLpRestrictCLM_coeFn ℂ (Ioi 0) f

theorem restriction_norm_le (f : FullH) : ‖restriction f‖ ≤ ‖f‖ :=
  norm_Lp_toLp_restrict_le (Ioi 0) f

theorem restriction_opNorm_le : ‖restriction‖ ≤ 1 := by
  refine ContinuousLinearMap.opNorm_le_bound restriction (by norm_num) ?_
  intro f
  simpa only [one_mul] using restriction_norm_le f

theorem restriction_zeroExtension (f : H) : restriction (zeroExtension f) = f := by
  exact Lp.ext ((restriction_ae (zeroExtension f)).trans (zeroExtension_ae_halfLine f))

theorem restriction_comp_zeroExtension :
    restriction.comp zeroExtension.toContinuousLinearMap = ContinuousLinearMap.id ℂ H := by
  apply ContinuousLinearMap.ext
  intro f
  exact restriction_zeroExtension f

end
end HalfLineExtensionScratch

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
open HalfLineExtensionScratch
noncomputable section
example : FullH = Lp ℂ 2 (volume : Measure ℝ) := rfl
example (f : H) : zeroExtensionFunction f = (Ioi (0 : ℝ)).indicator f := rfl
example (f : H) : MemLp ((Ioi (0 : ℝ)).indicator (fun t => f t)) 2 volume :=
  zeroExtensionFunction_memLp f
example (f : H) : zeroExtensionVector f =
    (zeroExtensionFunction_memLp f).toLp ((Ioi (0 : ℝ)).indicator (fun t => f t)) := rfl
example (f : H) : zeroExtensionVector f =ᵐ[volume] (Ioi (0 : ℝ)).indicator f :=
  zeroExtensionVector_ae f
example (f : H) : ‖zeroExtensionVector f‖ = ‖f‖ := zeroExtensionVector_norm f
example (f g : H) : zeroExtensionVector (f + g) =
    zeroExtensionVector f + zeroExtensionVector g := zeroExtensionVector_add f g
example (c : ℂ) (f : H) : zeroExtensionVector (c • f) = c • zeroExtensionVector f :=
  zeroExtensionVector_smul c f
example : H →ₗᵢ[ℂ] Lp ℂ 2 (volume : Measure ℝ) := zeroExtension
example (f : H) : zeroExtension f = zeroExtensionVector f := rfl
example (f : H) : zeroExtension f =ᵐ[volume] (Ioi (0 : ℝ)).indicator f :=
  zeroExtension_ae f
example (f : H) : ‖zeroExtension f‖ = ‖f‖ := zeroExtension_norm f
example (f : H) : zeroExtension f =ᵐ[volume.restrict (Ioi (0 : ℝ))] f :=
  zeroExtension_ae_halfLine f
example (f : H) : zeroExtension f =ᵐ[volume.restrict (Iic (0 : ℝ))] (fun _ => 0) :=
  zeroExtension_ae_nonpositive f
example : restriction = LpToLpRestrictCLM ℝ ℂ ℂ volume 2 (Ioi 0) := rfl
example (f : FullH) : restriction f =ᵐ[volume.restrict (Ioi (0 : ℝ))] f :=
  restriction_ae f
example (f : FullH) : ‖restriction f‖ ≤ ‖f‖ := restriction_norm_le f
example : ‖restriction‖ ≤ 1 := restriction_opNorm_le
example (f : H) : restriction (zeroExtension f) = f := restriction_zeroExtension f
example : restriction.comp zeroExtension.toContinuousLinearMap =
    ContinuousLinearMap.id ℂ H := restriction_comp_zeroExtension
end
```
