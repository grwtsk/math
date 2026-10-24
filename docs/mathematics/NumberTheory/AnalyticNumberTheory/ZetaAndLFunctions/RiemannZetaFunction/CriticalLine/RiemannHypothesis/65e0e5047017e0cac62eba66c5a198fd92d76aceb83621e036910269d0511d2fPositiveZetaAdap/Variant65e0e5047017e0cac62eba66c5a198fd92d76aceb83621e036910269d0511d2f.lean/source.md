# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2fPositiveZetaAdap.Variant65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5013825df09b10b62a6313c91843c16b10cd860` · SHA-256 `65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import Mathlib.NumberTheory.LSeries.ZetaZeros
namespace FormalResearch.RiemannHypothesis.PoleSourceZetaDetection
/-- A strip zero satisfies the canonical exact trivial-zero and pole exclusions. -/
theorem nontrivial_zeta_zero_of_strip (ρ : ℂ) (hzero : riemannZeta ρ = 0)
    (hstrip : 0 < ρ.re ∧ ρ.re < 1) : NontrivialZetaZero ρ := by
  refine ⟨hzero, ?_, ?_⟩
  · rintro ⟨n, hn⟩
    have hr := congrArg Complex.re hn
    have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    norm_num at hr
    linarith [hstrip.1]
  · intro hn
    have hr := congrArg Complex.re hn
    norm_num at hr
    linarith [hstrip.2]


end FormalResearch.RiemannHypothesis.PoleSourceZetaDetection
```
