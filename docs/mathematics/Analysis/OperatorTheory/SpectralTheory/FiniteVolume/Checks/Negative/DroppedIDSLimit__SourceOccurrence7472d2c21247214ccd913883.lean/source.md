# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.DroppedIDSLimit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be08e6586ff846d59dc49725028573103c8c3178` · SHA-256 `a08a30459b5115ac3249e7aa389f8b5f25e7c724dda28a2d933ba90b70304717`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.SturmianFiniteVolume Filter

-- Deliberately invalid: a free count limit does not supply the target limit.
example (α V ξ : ℝ) (origin : ℤ) (free ids : ℝ → ℝ)
    (hfree : ∀ E, Tendsto (fun N => freeNormalizedCount N E) atTop (nhds (free E))) :
    ∀ E, free (E-max V 0) ≤ ids E ∧ ids E ≤ free (E-min V 0) := by
  exact ids_comparison_of_count_limits α V ξ origin free ids hfree
```
