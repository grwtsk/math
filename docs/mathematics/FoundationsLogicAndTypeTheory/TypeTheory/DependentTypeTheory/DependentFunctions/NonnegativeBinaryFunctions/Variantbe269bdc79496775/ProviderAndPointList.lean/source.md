# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.NonnegativeBinaryFunctions.Variantbe269bdc79496775.ProviderAndPointList

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d8ba839c6ff9de6aed94e62dd073489976fb065` · SHA-256 `4a3ce9ab080451df1d53dc95c5bc6f79c6b9d83e61ee7cf6d18d27931a8ea4fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ProviderAndPointList — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: be269bdc7949677572f4d73441341f16e6e7a2f8561a28b07ee0c0c45a3cf267
Organized SHA-256: ecc007b0253ebaec26e091d1147805a93c2c643e1f48908ab09a6d7ec92b5392
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- DistanceProvider is exactly an arbitrary binary real-valued function with nonnegativity. PointedData supplies a finite List and that entire provider; no point distinctness, symmetry, diagonal zero, triangle inequality, topology or metric law is present. Original declaration namespaces and historical providers remain exact; only explicit public same-source component imports are added. Whole-file documentation below may describe companion material. No kernel replay or runtime/platform implementation is claimed. -/

import Mathlib.Data.Real.Basic

/-!
# Conditional pointed spectral contracts

The runtime accepts an external distance provider. These declarations model
that dependency explicitly and do not construct a Dirac operator or assert a
general Connes distance theorem.
-/

namespace BitMatrix.Runtime.Spectral

/-- A supplied nonnegative distance-like provider. -/
structure DistanceProvider (Point : Type) where
  distance : Point → Point → ℝ
  nonnegative : ∀ left right, 0 ≤ distance left right

/-- Pointed data packages a finite point family with an explicit provider. -/
structure PointedData (Point : Type) where
  points : List Point
  spectralDistance : DistanceProvider Point

end BitMatrix.Runtime.Spectral
```
