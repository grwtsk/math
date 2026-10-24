# Complete source: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GroupLaw.PointAndSuppliedLawData.Variantf88c8cc094eae04d.SuppliedGroupLaw

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b16480aa54bfc8a5823d8369b04e81abd1e58688` · SHA-256 `0e27085b2cfe8d498480559eec84d5d97ca4f3d318bff767bb9e0672d1e1b27e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact supplied point operation laws
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f88c8cc094eae04d559a6bd0e910e4641cc8f62d19b2f4fdba89434ac3877bb2
Organized SHA-256: 3488709e21528abb225316638787248589c9efa69c61c35333876ee8ba4d0574
PMD: 510.2.040.010.020 group law (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole record retains add, both zero identities, neg, both inverse identities and associativity on the exact same-source ECPoint type. It supplies laws as fields; it constructs no chord-tangent addition, commutativity proof or canonical group instance. -/

import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.WeierstrassEquations.PointAndSuppliedLawData.Variantf88c8cc094eae04d.PointCompletion

import Folder.Arithmetic.Weierstrass

/-!
# Folder.Arithmetic.EllipticCurve

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.elliptic_curve
Pivot role: none
Zero typology: elliptic
Contract boundary: definition
Composite stack role: torsion
-/


open Folder
open Folder.Arithmetic
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.WeierstrassEquations.PointAndSuppliedLawData.Variantf88c8cc094eae04d

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GroupLaw.PointAndSuppliedLawData.Variantf88c8cc094eae04d

structure ECGroupLaw {K : Type _} [Field K]
    (E : ShortWeierstrass K) where
  add : ECPoint E → ECPoint E → ECPoint E
  zero_left : ∀ P, add (ECPoint.infinity (E := E)) P = P
  zero_right : ∀ P, add P (ECPoint.infinity (E := E)) = P
  neg : ECPoint E → ECPoint E
  add_left_neg : ∀ P, add (neg P) P = ECPoint.infinity (E := E)
  add_right_neg : ∀ P, add P (neg P) = ECPoint.infinity (E := E)
  assoc : ∀ P Q R, add (add P Q) R = add P (add Q R)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GroupLaw.PointAndSuppliedLawData.Variantf88c8cc094eae04d
```
