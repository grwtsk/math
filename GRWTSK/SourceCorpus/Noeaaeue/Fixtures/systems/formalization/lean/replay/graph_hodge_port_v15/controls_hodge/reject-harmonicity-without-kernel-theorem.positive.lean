import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : RationalHodgeHZeroAdapter pointCycleClass edgeHodge :=
  EdgeFixture.pointHZeroAdapter
example (x : ℚ × ℚ) : edgeHodge.IsHarmonic0 x ↔ edgeHodge.delta x = 0 :=
  EdgeFixture.edgeKernelExact.harmonic_iff_cocycle x
