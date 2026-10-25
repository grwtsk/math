# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BSD.Variant8430ba3090853bcd45c37ab628506fdbd4e2e2a7f295c8222577936d97718fae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8bccf4871f9ce776e22428b830b06eb3ca9d72e0` · SHA-256 `8430ba3090853bcd45c37ab628506fdbd4e2e2a7f295c8222577936d97718fae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Arithmetic.EllipticCurve.BSD.Statement
import Surface.Arithmetic.EllipticCurve.BSD.LocalFactors
import Surface.Arithmetic.EllipticCurve.BSD.Tamagawa
import Surface.Arithmetic.EllipticCurve.BSD.Heights
import Surface.Arithmetic.EllipticCurve.BSD.Regulator
import Surface.Arithmetic.EllipticCurve.BSD.Sha
import Surface.Arithmetic.EllipticCurve.BSD.Torsion
import Surface.Arithmetic.EllipticCurve.BSD.Periods
import Surface.Arithmetic.EllipticCurve.BSD.LFunction
import Surface.Arithmetic.EllipticCurve.BSD.FunctionalEquation
import Surface.Arithmetic.EllipticCurve.BSD.TaylorGerm
import Surface.Arithmetic.EllipticCurve.BSD.RootNumberParity
import Surface.Arithmetic.EllipticCurve.BSD.Assembly
import Surface.Arithmetic.EllipticCurve.BSD.Automorphic
import Surface.Arithmetic.EllipticCurve.BSD.TheoremInput

/-!
# Birch and Swinnerton-Dyer interface aggregator

What is formalized:
This root is an import aggregator for the component-wise BSD statement,
local-factor, Tamagawa, height, regulator, Sha, torsion, period, L-function,
functional-equation, Taylor-germ, root-number parity, automorphic, and assembly
interfaces.

What is certificate-gated:
All BSD theorem-facing inputs remain explicit certificate or theorem-input data.

What is not claimed:
This aggregator proves no part of BSD and supplies no theorem authority by
itself.

Primary mathematical source:
Internal Surface BSD proof-boundary and theorem-cone architecture.
-/
```
