# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95dbModeScoreBounds.Variant8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1ff136fd6f026e2e1e21643c1e35af2ea4d07f5` · SHA-256 `8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiModes
example (A y : ℝ) (ha : 3 ≤ A) (hy : A ≤ y) :
  0 ≤ (9+12/(2*A-3)-4*A) - (9+12/(2*y-3)-4*y) := by
  have hdA : 0 < 2*A-3 := by linarith
  have hdy : 0 < 2*y-3 := by linarith
  have hdiv : 12/(2*y-3) ≤ 12/(2*A-3) := div_le_div_of_nonneg_left (by norm_num) hdA (by linarith)
  linarith
example (A n : ℝ) (ha : 3 ≤ A) (hn : 2 ≤ n) :
  (9+12/(2*A-3)-4*A) - (9+12/(2*(A*n^2)-3)-4*(A*n^2)) ≤ 5*A*(n^2-1) := by
  have hn2 : 4 ≤ n^2 := by nlinarith
  have hAn : 12 ≤ A*n^2 := by nlinarith [mul_nonneg (show 0≤A-3 by linarith) (show 0≤n^2-4 by linarith)]
  have hdA : 0 < 2*A-3 := by linarith
  have hdy : 0 < 2*(A*n^2)-3 := by linarith
  have hdiv : 12/(2*A-3) ≤ 4 := (div_le_iff₀ hdA).2 (by linarith)
  have hdiv0 : 0 ≤ 12/(2*(A*n^2)-3) := by positivity
  have hgap : 4 ≤ A*(n^2-1) := by nlinarith [mul_nonneg (show 0≤A-3 by linarith) (show 0≤n^2-4 by linarith)]
  nlinarith
```
