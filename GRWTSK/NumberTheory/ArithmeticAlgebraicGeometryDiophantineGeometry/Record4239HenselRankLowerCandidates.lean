/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239HenselSourceBitAssembly

set_option autoImplicit false
noncomputable section

/-! Rank LOWER endpoints of the complete unaudited source candidate chain.
All upstream source candidates and finite certificate computations remain
NOT_RUN / NOT_KERNEL_AUDITED. No exact rank or BSD result is established. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem native_cardinal_rank_lower_hensel_source_candidate :
    (32 : Cardinal) ≤ Module.rank ℤ nativeCurve.toAffine.Point := by
  simpa only [Cardinal.mk_fin] using
    nativePoints_linearIndependent_hensel_source_candidate.cardinal_le_rank

theorem native_finrank_lower_hensel_source_candidate
    (finiteGeneration : Module.Finite ℤ nativeCurve.toAffine.Point) :
    32 ≤ Module.finrank ℤ nativeCurve.toAffine.Point := by
  letI : Module.Finite ℤ nativeCurve.toAffine.Point := finiteGeneration
  simpa using nativePoints_linearIndependent_hensel_source_candidate.fintype_card_le_finrank

/- A finite generation premise does not provide a rank upper bound. Exact
rank requires an independent upper bound; BSD additionally requires the
analytic rank and leading-coefficient arithmetic identities. No such
premises or verification receipts are constructed by these endpoints. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
