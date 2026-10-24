# Complete source: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NormalizedResidueCriterion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `272ec3d79e816176fe68f37dad3f9ea2e83558c1` · SHA-256 `176b2e42aaada317603f85c7bb6293adc76d2ce238bf5019ca360b8d4d90fafc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Published curve/points: N. Elkies, Z. Klagsbrun, S. Li (ICARM #4239).
2-descent and local characters: Cremona (2002); Stoll's separate
EllipticCurves Lean development is NOT imported by this file.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
No global x-T descent or unconditional rank-32 theorem is proved here.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239FiniteSourceLocalization
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239EulerBitComparison
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NativeConditionalRank

/-!
# An explicit residue-squareclass supplier for the native rank criterion

At each of the 32 labelled simple roots, the previously constructed
source-specific localization supplies a *unit* and a genuine reduction
ring homomorphism. The induced squareclass and quadratic character are
therefore actual algebraic objects, not 1024 assigned matrix bits.

The remaining global-to-local input is deliberately a FIELD, not a proof:
a point-group descent homomorphism mu into an identified global
squareclass monoid C; for each j, a homomorphic, valuation-normalized
specialization from C to the actual residue-unit squareclass group;
and equality of that specialization on all 32 published points with
the branch-corrected source class. The normalization must handle
denominators, valuations and the exceptional derivative. There is NO
unital Q -> ZMod p reduction and no such global specialization is built.

The finite comparison QuadraticEulerAgreement and the native
Mordell-Weil finite-generation hypothesis remain separate premises.
In particular these conditional theorems do NOT prove rank E(Q) >= 32.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

universe u

/-- The *actual* finite residue-squareclass represented by the
branch-corrected source element. It is transported from its proven unit
class in the source-specific localized integral cubic order, not assigned
a sign or a bit by fiat. -/
noncomputable def sourceReducedSquareClass (j i : Fin 32) :
    UnitSquareClasses (ZMod (primeLabel j)) :=
  unitSquareClassMap (sourceLocalReduction j)
    ((QuotientGroup.mk'
      (powMonoidHom (α := (SourceLocalRing j)ˣ) 2).range)
      (sourceLocalizedUnit j i))

/-- Evaluate the genuine finite quadratic character on that class. -/
noncomputable def sourceReducedQuadraticBit (j i : Fin 32) : ZMod 2 := by
  letI : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩
  exact (residueSquareClassBitHom (primeLabel j)
    (sourceReducedSquareClass j i)).toAdd

/-- Transport through the actual source localization and reduction does
not change the existing quadratic-character value. This is NOT its
still-open comparison with the Euler table. -/
theorem sourceReducedQuadraticBit_eq_sourceQuadraticBit (j i : Fin 32) :
    sourceReducedQuadraticBit j i = sourceQuadraticBit j i := by
  change sourceLocalSquareClassBit j i = sourceQuadraticBit j i
  exact sourceLocalSquareClassBit_eq_sourceQuadraticBit j i

/-- The missing arithmetic suppliers are explicit proof data.
The type does not assert that this record has an inhabitant. In
particular normalize is NOT derived from a naive rational reduction,
and mu is not identified with Stoll's x-T map by its type alone. -/
structure NormalizedResidueDescentEvidence (C : Type u) [Monoid C] where
  mu : Multiplicative nativeCurve.toAffine.Point →* C
  normalize :
    (j : Fin 32) → C →* UnitSquareClasses (ZMod (primeLabel j))
  sourceComparison : ∀ j i : Fin 32,
    normalize j (mu (Multiplicative.ofAdd (nativePoint i))) =
      sourceReducedSquareClass j i
  quadraticEuler : QuadraticEulerAgreement

/-- The 32 local quadratic characters are now *constructed* by
composing a hypothesized normalized squareclass specialization with
Mathlib's genuine residue quadratic character. Their construction
does not supply or assert the required normalization homomorphism. -/
noncomputable def NormalizedResidueDescentEvidence.localQuadraticCharacter
    {C : Type u} [Monoid C]
    (ev : NormalizedResidueDescentEvidence C) (j : Fin 32) :
    C →* Multiplicative (ZMod 2) := by
  letI : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩
  exact (residueSquareClassBitHom (primeLabel j)).comp (ev.normalize j)

/-- The branch-corrected point values are transported through an
actual quadratic character, but only *under* sourceComparison. -/
theorem NormalizedResidueDescentEvidence.localQuadraticCharacter_point
    {C : Type u} [Monoid C]
    (ev : NormalizedResidueDescentEvidence C) (j i : Fin 32) :
    (ev.localQuadraticCharacter j
      (ev.mu (Multiplicative.ofAdd (nativePoint i)))).toAdd =
        sourceQuadraticBit j i := by
  letI : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩
  change (residueSquareClassBitHom (primeLabel j)
    (ev.normalize j (ev.mu (Multiplicative.ofAdd (nativePoint i))))).toAdd =
      sourceQuadraticBit j i
  rw [ev.sourceComparison j i]
  exact sourceReducedQuadraticBit_eq_sourceQuadraticBit j i

/-- Feed the concretely defined residue characters into the existing
native-point rank interface, preserving its explicit global descent
and finite arithmetic premises. This is a conditional reduction. -/
noncomputable def NormalizedResidueDescentEvidence.toNativeDescentEvidence
    {C : Type u} [Monoid C]
    (ev : NormalizedResidueDescentEvidence C) :
    NativeDescentEvidence C where
  mu := ev.mu
  epsilon := ev.localQuadraticCharacter
  specializes := ev.localQuadraticCharacter_point
  checkedFiniteBits :=
    sourceBitsMatch_of_quadraticEulerAgreement ev.quadraticEuler

/-- Conditional independence of the *native* 32 rational points.
The source-global squareclass and normalized specialization fields are
not constructed here. -/
theorem nativePoints_linearIndependent_of_normalizedResidue
    {C : Type u} [Monoid C]
    (ev : NormalizedResidueDescentEvidence C) :
    LinearIndependent ℤ nativePoint :=
  nativePoints_linearIndependent_of_descent ev.toNativeDescentEvidence

/-- Conditional rank endpoint; genuine finite generation is a separate
required assumption. No unconditional rank bound follows. -/
theorem nativeCurve_finrank_ge_32_of_normalizedResidue
    {C : Type u} [Monoid C]
    (ev : NormalizedResidueDescentEvidence C)
    (finiteGeneration : Module.Finite ℤ nativeCurve.toAffine.Point) :
    32 ≤ Module.finrank ℤ nativeCurve.toAffine.Point :=
  nativeCurve_finrank_ge_32_of_descent
    ev.toNativeDescentEvidence finiteGeneration

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
```
