/- The accepted positive module proves that the zero cutoff loses the actual nonzero P(1).
This final application deliberately omits its necessary active-cutoff evidence. -/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.Checks.Positive.GaussianCoupledSeparation
namespace GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianCoupledSeparation.Checks
noncomputable section
open scoped SchwartzMap
open MeasureTheory
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianLogWindow

-- Intended rejection: a reflexive real inequality cannot establish the active-cutoff implication.
example :
    (∏_i : Unit,(1:ℂ))*gaussianMellinProfile (1*Real.exp (∑_i : Unit,(0:ℝ)*0))=
      ∫t : ℝ,(∏_i : Unit,(1:ℂ)*logPhase t ((0:ℝ)*0))*
        gaussianJointDensity (0:SchwartzMap ℝ ℂ) zero_cutoff_compact 1 t :=
  gaussian_coupled_separation (ι:=Unit) (fun _ _=>(1:ℂ)) (fun _=>0) (fun _=>0)
    (0:SchwartzMap ℝ ℂ) zero_cutoff_compact 1 (by norm_num) (le_refl (0:ℝ))

end
end GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianCoupledSeparation.Checks
