# Complete source: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionPoints.NaturalPointMultiples.Variant48298d454f75ac50.PositiveOrderAndTorsion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f46053f92751d32046bc7f6bda513e722818d5a` · SHA-256 `7908420947abd5420e1c0a85e673d391c8ca04366585f0b81d9af1d368a04a69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact positive torsion and minimal order predicates
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf
Organized SHA-256: 4459f1e8eaec802b6a7875d8f80c87dead024a106a3802eb7fe58418c9e4dd57
PMD: 510.2.040.010.030 torsion points (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole predicates retain n>0, n-fold annihilation and exclusion of every smaller positive annihilating m; the exact existential proof copies n/h.1/h.2.1. Same-version recursion imported explicitly. No given point is proved torsion without h. -/

import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionPoints.NaturalPointMultiples.Variant48298d454f75ac50.PointMultipleRecursion

import Folder.Arithmetic.EllipticCurve

/-!
# Folder.Arithmetic.Torsion

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.torsion
Pivot role: none
Zero typology: elliptic
Contract boundary: definition
Composite stack role: torsion
-/


open Folder
open Folder.Arithmetic

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionPoints.NaturalPointMultiples.Variant48298d454f75ac50

def IsTorsion {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E)
    (P : ECPoint E) : Prop :=
  ∃ n : Nat, 0 < n ∧ nsmulPoint G n P = ECPoint.infinity (E := E)

def HasOrder {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E)
    (P : ECPoint E)
    (n : Nat) : Prop :=
  0 < n ∧ nsmulPoint G n P = ECPoint.infinity (E := E) ∧
    ∀ m, 0 < m → m < n → nsmulPoint G m P ≠ ECPoint.infinity (E := E)

theorem torsion_of_hasOrder {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {G : ECGroupLaw E}
    {P : ECPoint E}
    {n : Nat}
    (h : HasOrder G P n) :
    IsTorsion G P :=
  ⟨n, h.1, h.2.1⟩

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionPoints.NaturalPointMultiples.Variant48298d454f75ac50
```
