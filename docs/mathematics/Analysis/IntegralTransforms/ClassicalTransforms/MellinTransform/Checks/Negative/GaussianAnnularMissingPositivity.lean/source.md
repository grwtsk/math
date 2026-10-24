# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianAnnularMissingPositivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78a0a17997229974979fa2a3e3ea55bec49c0c78` · SHA-256 `3bf498b6d0d47236bbe78347dbec4da6262340412690e51e76c37a85c93019bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
