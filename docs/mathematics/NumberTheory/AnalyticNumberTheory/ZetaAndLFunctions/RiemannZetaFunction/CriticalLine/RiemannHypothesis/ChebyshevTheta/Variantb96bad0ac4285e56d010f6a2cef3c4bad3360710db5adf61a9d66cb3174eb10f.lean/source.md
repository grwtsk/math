# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ChebyshevTheta.Variantb96bad0ac4285e56d010f6a2cef3c4bad3360710db5adf61a9d66cb3174eb10f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39996ffec4a6b94263f224f1fae03f43b11f8a73` · SHA-256 `b96bad0ac4285e56d010f6a2cef3c4bad3360710db5adf61a9d66cb3174eb10f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Engine.ChebyshevTheta

open LeanCert.Engine.ChebyshevTheta

-- Quick test: theta(N) <= 1.11 * N for all N = 1..599
-- (analogous to the psi test in ChebyshevPsiTest)
example : checkAllThetaLeMulWith 599 (111 / 100) 20 = true := by native_decide

-- PNT+ issue #990: Eθ(x) = |θ(x) - x| / x ≤ 1 - log(2)/3 for 2 ≤ x ≤ 599.
-- 1 - log(2)/3 ≈ 0.7690...; we over-approximate with 770/1000.
-- The proof in PNT+ will verify 770/1000 ≥ 1 - log(2)/3 via interval arithmetic.
example : checkAllThetaRelError 2 599 (770 / 1000) 20 = true := by native_decide

-- Strengthened real-valued checker: covers all real x ∈ [2, 599], not just integers.
-- Uses strengthened lower bound θ(N) ≥ (1-a)·(N+1) for N < 599.
example : checkAllThetaRelErrorReal 2 599 (770 / 1000) 20 = true := by native_decide

-- For the PNT+ proof: [3,599) range with tighter bound 768/1000 < 1 - log(2)/3
-- (The [2,3) case is handled analytically since the bound is tight at x → 3⁻)
example : checkAllThetaRelErrorReal 3 599 (768 / 1000) 20 = true := by native_decide

-- Eval versions for quick testing
#eval checkAllThetaLeMulWith 599 (111 / 100) 20
#eval checkAllThetaRelError 2 599 (770 / 1000) 20
#eval checkAllThetaRelErrorReal 2 599 (770 / 1000) 20
#eval checkAllThetaRelErrorReal 3 599 (768 / 1000) 20
```
