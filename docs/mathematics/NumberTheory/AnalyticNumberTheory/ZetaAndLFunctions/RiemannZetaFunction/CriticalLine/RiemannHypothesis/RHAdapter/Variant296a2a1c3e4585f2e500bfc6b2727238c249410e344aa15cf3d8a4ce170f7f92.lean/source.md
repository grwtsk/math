# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RHAdapter.Variant296a2a1c3e4585f2e500bfc6b2727238c249410e344aa15cf3d8a4ce170f7f92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3beef51b41f6297110e730bd95432568af78e7b` · SHA-256 `296a2a1c3e4585f2e500bfc6b2727238c249410e344aa15cf3d8a4ce170f7f92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePairing

/-!
# A conditional RH research result retaining the prime-two boundary

This adapter imports the exact source family and signed arithmetic error from
the admitted source interface. It does not construct a dilation realization,
prove the manuscript arithmetic representation, give an all-scale estimate, or
prove RH. The finite research engine may replay this conditional identity as a
scoped subtheorem only, retaining every hypothesis and unresolved obligation.
-/

namespace FormalResearch.SUCAS.RHAdapter

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.MathematicalTooling.Reflection

noncomputable section

/-- The four integrability premises required to split the exact source pairing.
They are an explicit proof obligation, not inferred from a finite numerical grid. -/
structure SectorIntegrability (r : DilationRealization) (A : Set.Ici (1 : ℝ)) : Prop where
  /-- Integrability of the even/even product. -/
  even_even : IntervalIntegrable (fun t ↦
    evenPart lowerEndpoint (2 * A) errorProfile t *
    evenPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
    volume lowerEndpoint (2 * A)
  /-- Integrability of the even/odd cross product. -/
  even_odd : IntervalIntegrable (fun t ↦
    evenPart lowerEndpoint (2 * A) errorProfile t *
    oddPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
    volume lowerEndpoint (2 * A)
  /-- Integrability of the odd/even cross product. -/
  odd_even : IntervalIntegrable (fun t ↦
    oddPart lowerEndpoint (2 * A) errorProfile t *
    evenPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
    volume lowerEndpoint (2 * A)
  /-- Integrability of the odd/odd product. -/
  odd_odd : IntervalIntegrable (fun t ↦
    oddPart lowerEndpoint (2 * A) errorProfile t *
    oddPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
    volume lowerEndpoint (2 * A)

/-- The even/even part of the signed pairing, with the original endpoints. -/
def evenPairing (r : DilationRealization) (A : Set.Ici (1 : ℝ)) : ℝ :=
  ∫ t in lowerEndpoint..2 * A,
    evenPart lowerEndpoint (2 * A) errorProfile t *
    evenPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t

/-- The odd/odd part of the signed pairing, with no unproved positivity assertion. -/
def oddPairing (r : DilationRealization) (A : Set.Ici (1 : ℝ)) : ℝ :=
  ∫ t in lowerEndpoint..2 * A,
    oddPart lowerEndpoint (2 * A) errorProfile t *
    oddPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t

/-- The complete reflected expression. The prime-two term is a separate summand;
it is not absorbed into an almost-everywhere Lebesgue-integral identity. -/
def reflectedSourceValue (r : DilationRealization) (A : Set.Ici (1 : ℝ)) : ℝ :=
  archimedeanValue r.secondDerivative A +
    2 * (∫ t in 0..2 * A, Real.exp (-t / 2) * sourceCorrelation r.secondDerivative A t) +
    2 * (∫ t in 0..lowerEndpoint,
      Real.exp (t / 2) * sourceCorrelation r.secondDerivative A t) +
    primeTwoBoundary r.secondDerivative A + 2 * (evenPairing r A + oddPairing r A)

/-- A genuine conditional sector identity for the source arithmetic expression,
retaining the endpoint atom. The supplied realization and integrability proofs
are not constructed by this theorem. -/
theorem signed_reflection_with_boundary (r : DilationRealization) (A : Set.Ici (1 : ℝ))
    (hsector : SectorIntegrability r A) :
    analyticCorrection r.secondDerivative A + 2 * signedPairing r.secondDerivative A =
      reflectedSourceValue r A := by
  have h := signed_pairing_reflection_decomposition r A
    hsector.even_even hsector.even_odd hsector.odd_even hsector.odd_odd
  change signedPairing r.secondDerivative A = evenPairing r A + oddPairing r A at h
  rw [h]
  rfl

/-- Assuming the manuscript arithmetic representation separately, the original
quadratic value equals the exact reflected expression with its prime-two term.
This is a conditional local subtheorem, not a bound, realization, or RH theorem. -/
theorem arithmetic_representation_with_reflection (r : DilationRealization)
    (A : Set.Ici (1 : ℝ)) (hrepresentation : ArithmeticRepresentation r)
    (hsector : SectorIntegrability r A) :
    sourceQuadraticValue r.secondDerivative A = reflectedSourceValue r A := by
  rw [hrepresentation A A.property]
  exact signed_reflection_with_boundary r A hsector

/-- Removing the boundary from the reflected result requires its actual vanishing;
sector decomposition alone supplies no such proof. -/
theorem boundary_removal_iff (r : DilationRealization) (A : Set.Ici (1 : ℝ)) :
    reflectedSourceValue r A - primeTwoBoundary r.secondDerivative A = reflectedSourceValue r A ↔
      sourceCorrelation r.secondDerivative A lowerEndpoint = 0 := by
  rw [sub_eq_self, prime_two_boundary_eq_zero_iff]

end

end FormalResearch.SUCAS.RHAdapter
```
