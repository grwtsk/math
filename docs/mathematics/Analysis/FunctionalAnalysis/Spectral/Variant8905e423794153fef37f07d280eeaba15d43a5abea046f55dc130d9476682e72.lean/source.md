# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Spectral.Variant8905e423794153fef37f07d280eeaba15d43a5abea046f55dc130d9476682e72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40c41e3200f8feb61c0b92bf628bb1fc6e6f4fa3` · SHA-256 `8905e423794153fef37f07d280eeaba15d43a5abea046f55dc130d9476682e72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
  Spectral/Spectral.lean  (umbrella module)
  -----------------------------------------
  Import this single file to bring every public definition of the
  *Spectral-RH* library into scope.

  Components:

  * `Spectral.Analysis.SmoothCompactSupport.HalfLine`
  * `Spectral.Schrodinger.Operator`
  * `Spectral.Schrodinger.Spectrum`
  * `Spectral.Zeta.Regularization`
  * `Spectral.Zeta.Determinant`
-/

-- analytic background: smooth bump functions on the half-line
import Spectral.Analysis.SmoothCompactSupport.HalfLine

-- Schrödinger operator and qualitative spectrum
import Spectral.Schrodinger.Operator
import Spectral.Schrodinger.Spectrum

-- ζ-function machinery and Fredholm determinant
import Spectral.Zeta.Regularization
import Spectral.Zeta.Determinant

namespace Spectral
/-!
This namespace is intentionally empty; all useful declarations live in
the imported sub-modules.  The file merely serves as a **single
entry-point**, so downstream projects can import `Spectral` and have the
full library available.
-/
end Spectral
```
