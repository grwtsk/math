# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.BooleanMatrixMapRefinement.Variantad0b4db44ad472c8.CompleteMapRefinementAndEqualities

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `828d468d40ddb245879e9a6954229510f356b9b2` · SHA-256 `e8deb6a8cf020c0e14a152e7ad0555be10c493efdb827059c064d9196819607f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CompleteMapRefinementAndEqualities — individually reviewed exact source
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

/- Whole Valid/abstract/input/resolution/observation maps and all closure/step/observe proofs copied, with exact three theorem statements/proofs. Valid is True because size validity is intrinsic in ArrayBacked, not because unchecked arrays are accepted. Equality only through toMatrix; no converse canonical representation, raw-array equality or runtime optimization proof is added. -/

import DAF.Refinement
import BitMatrix.Core.Basic

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.BooleanMatrixMapRefinement.Variantad0b4db44ad472c8.DeclarativeAndArrayObservationSystems

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


/-- The optimized unary matrix implementation refines its declarative system. -/
def mapRefinement (m n : Nat) :
    DAF.Refinement (mapSpecSystem m n) (mapImplSystem m n) where
  Valid := fun _ => True
  abstract := BitMatrix.ArrayBacked.toMatrix
  mapInput := id
  mapResolution := id
  mapObservation := fun _ => id
  valid_step := by intros; trivial
  step_sound := by
    intro f matrix _
    exact matrix.mapInPlace_spec f
  observe_sound := by intros; rfl


@[simp]
theorem mapRefinement_abstract
    (matrix : BitMatrix.ArrayBacked m n) :
    (mapRefinement m n).abstract matrix = matrix.toMatrix :=
  rfl


@[simp]
theorem mapRefinement_step_sound
    (f : Bool → Bool)
    (matrix : BitMatrix.ArrayBacked m n) :
    (mapRefinement m n).abstract
        ((mapImplSystem m n).step f matrix) =
      (mapSpecSystem m n).step f
        ((mapRefinement m n).abstract matrix) :=
  (mapRefinement m n).step_sound f matrix trivial


/-- Existing pointwise refinement is equality through the framework abstraction. -/
theorem refines_iff_abstract_eq
    (matrix : BitMatrix.ArrayBacked m n)
    (specification : BitMatrix m n) :
    BitMatrix.Refines matrix specification ↔
      (mapRefinement m n).abstract matrix = specification :=
  Iff.rfl


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.BooleanMatrixMapRefinement.Variantad0b4db44ad472c8
```
