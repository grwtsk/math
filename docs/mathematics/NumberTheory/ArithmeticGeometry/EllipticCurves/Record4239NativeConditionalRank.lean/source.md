# Complete source: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NativeConditionalRank

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `057e28ea57fdfad83ea3be81e02dabcba1146932` · SHA-256 `2938d82d9c5cc3b53eb7b4c0fb4847014f3ab9190f59db60cac31d6d597431c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Published elliptic curve and 32 points: Noam Elkies, Zev Klagsbrun,
Samuel Li, ICARM rank record #4239 (15 October 2026).
Cremona-Brumer 2-descent and Michael Stoll's formalization are
external mathematical dependencies, NOT silently imported here.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
No unconditional Mordell-Weil rank theorem is asserted in this module.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NativeTwoTorsion
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239SquareClassBridge
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239IntegralOrderReduction

/-!
# Native point group + source-corrected 32-character rank criterion

This is the exact theorem consumer for the record curve E/ℚ, not a
replacement curve or a supplied group-law record.

The actual curve and its 32 rational points are constructed in
Record4239NativeTwoTorsion. The earlier finite source packet stores
M(i,j) = quadratic bit of **point i** at **character j**.
The linear-relation equation is M.transpose * (coeff mod 2) = 0,
as proved by the source-oriented criterion in
Record4239SquareClassBridge, NOT the naively untransposed equation.

The integral cubic order and all 32 ring reductions are constructed
in Record4239IntegralOrderReduction. Those are true maps
ℤ[T]/(f) →+* F_p defined by the source root theta. They do not give
a ring homomorphism ℚ[T]/(f) →+* F_p and do not turn arbitrary x(P)-T
elements into global order units.

The exact remaining assumptions are intentionally fields of a
proof-data structure, NOT typeclass instances or new axioms:

 * mu : a genuine multiplicative descent homomorphism out of the native
        rational elliptic group, with a *mathematically identified*
        codomain C (typically an étale square-class group);
 * epsilon_j : genuine homomorphisms from C to {±1} ≃ F_2;
 * specializes : all 1024 actual native point evaluations equal the
        finite branch-corrected local bit, with denominators,
        exceptional derivatives and valuation normalization justified;
 * checkedFiniteBits : the exact 1024 finite quadratic bits equal the
        point-row/character-column binary certificate
        (SourceBitsMatch, which is NOT currently kernel-proved);
 * finiteGeneration : the actual E(ℚ) additive group is finitely
        generated over ℤ, for the numerical rank endpoint.

The native no-two-torsion theorem is consumed without adding it as a
hypothesis. The conditional conclusions do not solve the missing
global-to-local arithmetic specialization.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

universe u

/-- Proof-data interface, which is *not* asserted to be inhabited.
Neither the descent homomorphism nor the 1024 native character
evaluations are constructed by putting them in this structure. -/
structure NativeDescentEvidence (C : Type u) [Monoid C] where
  mu : Multiplicative nativeCurve.toAffine.Point →* C
  epsilon : Fin 32 → C →* Multiplicative (ZMod 2)
  specializes : ∀ (j i : Fin 32),
    (epsilon j (mu (Multiplicative.ofAdd (nativePoint i)))).toAdd =
      sourceQuadraticBit j i
  checkedFiniteBits : SourceBitsMatch

/-- Source-identified character values, in point-FIRST orientation.
This theorem is conditional on the full value identity, not a
surrogate proof that local descent is a homomorphism. -/
theorem NativeDescentEvidence.characterValues
    {C : Type u} [Monoid C]
    (ev : NativeDescentEvidence C) :
    ∀ (j i : Fin 32),
      (ev.epsilon j (ev.mu (Multiplicative.ofAdd (nativePoint i)))).toAdd =
        characterMatrix i j := by
  intro j i
  exact (ev.specializes j i).trans (ev.checkedFiniteBits j i)

/-- The actual 32 published points are integer-linearly independent
**if** a source-faithful native 2-descent factorization and finite
character check satisfying the displayed fields exist. -/
theorem nativePoints_linearIndependent_of_descent
    {C : Type u} [Monoid C]
    (ev : NativeDescentEvidence C) :
    LinearIndependent ℤ nativePoint := by
  exact linearIndependent_of_descentFactorization
    nativePoint ev.mu ev.epsilon
    nativeNoTwoTorsion_for_descent ev.characterValues

/-- Exact conditional arithmetic-rank endpoint for the actual record
curve. In particular, the Mordell-Weil finite-generation theorem is
an explicit separate argument; it is not manufactured from a finite
point/character computation.

The theorem does *not* give a term inhabiting NativeDescentEvidence,
nor a proof of SourceBitsMatch, nor the unavailable local normalization. -/
theorem nativeCurve_finrank_ge_32_of_descent
    {C : Type u} [Monoid C]
    (ev : NativeDescentEvidence C)
    (finiteGeneration : Module.Finite ℤ nativeCurve.toAffine.Point) :
    32 ≤ Module.finrank ℤ nativeCurve.toAffine.Point := by
  letI : Module.Finite ℤ nativeCurve.toAffine.Point := finiteGeneration
  exact finrank_ge_32_of_descentFactorization
    nativePoint ev.mu ev.epsilon
    nativeNoTwoTorsion_for_descent ev.characterValues

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
```
