# Complete source: GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace.Checks.Negative.MissingTail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a820b943b989e5148ccdd910e76ef3f2f2d80b0` · SHA-256 `b891ea1e2a20b4f1b8865c4e803a87445e5bb0abda7c1ba90fe587aad6d63da5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace
open GRWTSK.RiemannHypothesis.CCC
example {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0) (z : ℂ)
    {p : ℕ} (hp : p.Prime) {T : ℝ} (hpT : Real.log p ≤ T) :
    noteWindowLaplace (primeNoteFilter p f) z T =
      (1-primeLaplaceWeight p z)*noteWindowLaplace f z T := by
  exact noteWindowLaplace_primeFilter hf hf0 z hp hpT
```
