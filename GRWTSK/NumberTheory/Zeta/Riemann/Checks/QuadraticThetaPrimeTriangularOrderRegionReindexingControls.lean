/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularOrderRegionReindexing
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularOrderRegionReindexingControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["positive and negative offset regions are explicit biUnions of diagonal pair finsets",
   "distinct offsets give disjoint diagonal pair finsets",
   "sum_biUnion reindexes each order region by offset",
   "TriangularOrderRegionsToDiagonalsClaim is discharged",
   "next step is zero diagonal plus normalized coefficient assembly"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularOrderRegionReindexingControls
