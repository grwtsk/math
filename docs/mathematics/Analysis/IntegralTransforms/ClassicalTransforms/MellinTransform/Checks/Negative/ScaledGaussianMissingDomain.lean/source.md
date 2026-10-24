# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.ScaledGaussianMissingDomain

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d40a74df766b358e5c8325ec755a666951f6866` · SHA-256 `11128d1302a4e430ed7d68ed2ee0904156efb3503d75abf438559cfaee260f16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentional missing-away-from-zero-domain control. Apache-2.0. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.ScaledGaussianDerivatives
open Set
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.ScaledGaussianDerivatives

-- Intended rejection: a domain containing zero cannot supply the actual annular domain.
example : ∃ C : ℝ, 0<C ∧ ∀ r : ℝ, 0<r →
    ‖iteratedDeriv 0 (fun x : ℝ => gaussianMellinProfile (r*x)) 0‖ ≤ C*r^(-(1:ℝ)) := by
  obtain ⟨C,hC,h⟩ := gaussianLog_scaled_derivative_bound 1 0
  refine ⟨C,hC,?_⟩
  intro r hr
  exact h r hr 0 (by norm_num : (0:ℝ) ∈ Set.Icc (0:ℝ) 2)
```
