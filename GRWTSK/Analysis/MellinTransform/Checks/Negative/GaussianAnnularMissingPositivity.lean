/- The accepted positive module proves actual x0/q0 logarithmic-argument failures,
while separately checking the full annulus-weighted identity at x0. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianAnnularSeparation
namespace GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation.Checks
noncomputable section

-- Intended rejection: nonnegativity at zero does not prove the required strict positivity of x.
example :
    Real.exp (∑i : Option Empty,gaussianSlotSlope i*gaussianSlotPoint 0 (fun j=>nomatch j) i)=
      (0:ℝ)/(∏j : Empty,(fun k : Empty=>nomatch k) j) :=
  gaussianSlot_argument 0 (le_refl (0:ℝ)) (fun j : Empty=>nomatch j) (fun j=>nomatch j)

end
end GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation.Checks
