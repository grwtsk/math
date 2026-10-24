/-
Exact affine-or-infinity point type
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f88c8cc094eae04d559a6bd0e910e4641cc8f62d19b2f4fdba89434ac3877bb2
Organized SHA-256: 3488709e21528abb225316638787248589c9efa69c61c35333876ee8ba4d0574
PMD: 510.2.040.010.010 weierstrass equations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole inductive ECPoint preserves exactly infinity and affine:AffinePoint E -> ECPoint E. The historical AffinePoint/ShortWeierstrass providers remain imported, not replaced by reviewed256 types. No projective scheme or smooth curve is constructed. -/

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

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.WeierstrassEquations.PointAndSuppliedLawData.Variantf88c8cc094eae04d

inductive ECPoint {K : Type _} [Field K]
    (E : ShortWeierstrass K) where
  | infinity : ECPoint E
  | affine : AffinePoint E → ECPoint E

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.WeierstrassEquations.PointAndSuppliedLawData.Variantf88c8cc094eae04d
