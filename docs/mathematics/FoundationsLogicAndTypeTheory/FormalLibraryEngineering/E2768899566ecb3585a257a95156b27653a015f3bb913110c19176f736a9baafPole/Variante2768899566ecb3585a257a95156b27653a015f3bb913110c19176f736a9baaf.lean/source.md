# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.E2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baafPole.Variante2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da45ff2e735b048b3799d9399db616e415668c4d` · SHA-256 `e2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib
set_option autoImplicit false
example {d w : ℝ} {z : ℂ} (hz : z ^ 2 + (2 * d : ℝ) * z + w = 0)
    (oscillatory : z.im ≠ 0) : w = z.re ^ 2 + z.im ^ 2 := by
  have hi := congrArg Complex.im hz
  have hr := congrArg Complex.re hz
  simp? [pow_two, Complex.mul_re, Complex.mul_im] at hi hr
  have hfactor : (z.re + d) * z.im = 0 := by nlinarith [hi]
  have hdecay : z.re + d = 0 := (mul_eq_zero.mp hfactor).resolve_right oscillatory
  have hd : d = -z.re := by linarith
  rw [hd] at hr
  nlinarith [hr]
```
