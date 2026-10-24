# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Da59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022aCheckPhase.Variantda59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a888ac6edaf770370ee13a4ed23beb35695de63d` · SHA-256 `da59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.XiSectionObstruction
open FormalResearch.RiemannHypothesis.ThetaPositiveLift MeasureTheory Set
#check integrable_finsetSum
#check Integrable.ofReal
#check Complex.integrable_ofReal
example (k : ℕ) : IntegrableOn (fun t : ℝ => (thetaPhi t : ℂ) * (2 * (t : ℂ))^(2*k)) (Ioi (0:ℝ)) := by
  have h := thetaPhiExpMomentIntegrand_integrableOn (2*k) 0
  change Integrable (fun t : ℝ => (thetaPhi t : ℂ) * (2 * (t : ℂ))^(2*k) * Complex.exp (2 * 0 * (t:ℂ))) _ at h
  simpa only [mul_zero, zero_mul, Complex.exp_zero, mul_one, IntegrableOn] using h
```
