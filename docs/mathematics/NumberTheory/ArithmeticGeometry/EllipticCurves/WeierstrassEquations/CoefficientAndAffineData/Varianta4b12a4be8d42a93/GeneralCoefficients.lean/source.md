# Complete source: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.WeierstrassEquations.CoefficientAndAffineData.Varianta4b12a4be8d42a93.GeneralCoefficients

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea712bd8fc03c557bea2d6833943663ab7aece59` · SHA-256 `7eeb393f2ee6516ec1d3884524e6a084de3ed49d5fe7569b5318a97d4dfea4c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact five Weierstrass coefficient fields
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a4b12a4be8d42a930f372f4cea88347b6e99888aad05a64f07fd305bd1c1aa53
Organized SHA-256: e6160a8e31885cb2c5bf733479b48ee6406f2b8092ecbaf878c8dfc0d49e1105
PMD: 510.2.040.010.010 weierstrass equations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete five-coefficient record over the original Field K. No general Weierstrass equation, discriminant or nonsingularity field is defined by this record. -/

import Folder.Basic

/-!
# Folder.Arithmetic.Weierstrass

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.weierstrass
Pivot role: none
Zero typology: elliptic
Contract boundary: definition
Composite stack role: torsion
-/


open Folder

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.WeierstrassEquations.CoefficientAndAffineData.Varianta4b12a4be8d42a93

structure WeierstrassCurve (K : Type _) [Field K] where
  a1 : K
  a2 : K
  a3 : K
  a4 : K
  a6 : K

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.WeierstrassEquations.CoefficientAndAffineData.Varianta4b12a4be8d42a93
```
