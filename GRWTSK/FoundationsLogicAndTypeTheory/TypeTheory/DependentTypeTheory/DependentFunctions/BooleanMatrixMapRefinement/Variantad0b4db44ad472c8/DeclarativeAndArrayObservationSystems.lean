/-
DeclarativeAndArrayObservationSystems — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b
Organized SHA-256: 97cdfb9a5c04fa258a67fe3bcb55d0d3ad786e22a118e6df1f26fc13a952e0f7
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Full m/n parameter systems: Boolean pointwise map on declarative matrices and pure logical array map observed through toMatrix. Original dependent data.size=m*n representation invariant retained via original type. No IO call/runtime array execution,performance or raw structure equality is claimed. -/

import DAF.Refinement
import BitMatrix.Core.Basic

/-!
# Binary-matrix instance of framework refinement

The array-backed `BitMatrix.ArrayBacked` representation is connected to declarative
`BitMatrix` through `toMatrix`.  This module packages the existing unary refinement
theorem as a `DAF.Refinement`: validity is intrinsic in the dependent array
size field, abstraction is `toMatrix`, and optimized mapping commutes with the
declarative operation.

This does not identify raw array structure or proof fields observationally;
implementation values are compared only through their declarative meaning.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.BooleanMatrixMapRefinement.Variantad0b4db44ad472c8


/-- Declarative pointwise-map transition system. -/
def mapSpecSystem (m n : Nat) : DAF.System where
  Input := Bool → Bool
  State := BitMatrix m n
  Resolution := PUnit
  Observation := fun _ => BitMatrix m n
  step f matrix := BitMatrix.map f matrix
  observe := fun _ matrix => matrix


/-- Array-backed pointwise-map transition system observed through `toMatrix`. -/
def mapImplSystem (m n : Nat) : DAF.System where
  Input := Bool → Bool
  State := BitMatrix.ArrayBacked m n
  Resolution := PUnit
  Observation := fun _ => BitMatrix m n
  step f matrix := matrix.mapInPlace f
  observe := fun _ matrix => matrix.toMatrix


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.BooleanMatrixMapRefinement.Variantad0b4db44ad472c8
