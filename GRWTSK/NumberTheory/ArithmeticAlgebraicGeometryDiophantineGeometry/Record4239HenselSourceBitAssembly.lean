/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239SourceEulerRemainderEncoding
import GRWTSK.AssociativeRingsAndAlgebras.Record4239HenselConditionalIndependence

set_option autoImplicit false
noncomputable section

/-! Source candidate assembly of quadratic/Euler bits and the actual Hensel
native independence route. Every imported source proof and finite source
computation remains NOT_RUN / NOT_KERNEL_AUDITED. No BSD theorem follows.
This module is not imported by a maintained root. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem source_quadratic_euler_bit_assembly (j i : Fin 32) :
    sourceQuadraticBit j i=sourceEulerBit j i := by
  letI : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩
  change (if quadraticChar (ZMod (primeLabel j))
      (sourceLocalInteger j i : ZMod (primeLabel j)) = -1 then (1 : ZMod 2) else 0) =
    (if (((sourceLocalInteger j i % (primeLabel j : ℤ)).toNat)^((primeLabel j-1)/2)) %
      primeLabel j = primeLabel j-1 then 1 else 0)
  rw [source_euler_natural_negative_iff_field,← source_quadratic_negative_iff_euler_field]

theorem quadraticEulerAgreement_source_candidate : QuadraticEulerAgreement :=
  source_quadratic_euler_bit_assembly

theorem sourceBitsMatch_hensel_source_candidate : SourceBitsMatch :=
  sourceBitsMatch_of_quadraticEulerAgreement quadraticEulerAgreement_source_candidate

theorem nativePoints_linearIndependent_hensel_source_candidate :
    LinearIndependent ℤ nativePoint :=
  nativePoints_linearIndependent_of_hensel_source_bits sourceBitsMatch_hensel_source_candidate

/- All statements above are unelaborated proof candidates. The route now
has source-level assembly rather than an asserted external finite premise;
this does not establish kernel acceptance, source replay, exact rank,
analytic rank, leading coefficient or the full BSD identities. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
