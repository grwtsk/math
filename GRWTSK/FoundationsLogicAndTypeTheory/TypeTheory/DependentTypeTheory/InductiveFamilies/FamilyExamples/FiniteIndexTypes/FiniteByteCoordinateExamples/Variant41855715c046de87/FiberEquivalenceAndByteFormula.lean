/-
FiberEquivalenceAndByteFormula
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 41855715c046de87630ec2205063b76970f035b02c72efa6ad22134e1199cfe6
Organized SHA-256: ef19090b94d28bc5c62979986a4c14164c4dc8f8b27c8d29d0930170caedd533
PMD: 510.0.070.020.060.030.020 finite index types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- CoordinateFiber equivalence retains the full axisCardinalities_positive premise for every axis-cardinality member and the exact Fin capacity target. Mixed-radix byte index5 keeps its stated concrete coordinates; source-byte equality keeps every bit and occurrence<source.utf8.size premise and exact sourceState_byteCoordinateAddress_testBit call. The original namespace BitMatrix.Tests.ProjectSpecifications is retained literally, so containing namespaces are not changed in this component despite the generic shared-header sentence. The physical GRWTSK subject path is its logical module. Original imported providers remain historical and unresolved; no GRWTSK alias or replacement provider is introduced. Distinct duplicate historical declarations cannot be assumed compatible coimports; there is no umbrella admission. Any decide/native_decide proof is retained source text and was NOT_RUN. -/

import BitMatrix.Dynamics.EvolutionSurgeryRestart
import BitMatrix.Rhetorical.Coverage

/-! Compile-time conformance witnesses for concrete project specifications. -/

namespace BitMatrix.Tests.ProjectSpecifications

open BitMatrix.Dynamics.EvolutionSurgeryRestart

example : Nonempty
    (BitMatrix.Carrier.CoordinateFiber
        BitMatrix.Codec.SequentialPrimeSource.byteSpecification.axisCardinalities ≃
      Fin (BitMatrix.Carrier.CoordinateFiber.cardinality
        BitMatrix.Codec.SequentialPrimeSource.byteSpecification.axisCardinalities)) :=
  ⟨BitMatrix.Carrier.CoordinateFiber.mixedRadixEquiv
      BitMatrix.Codec.SequentialPrimeSource.byteSpecification.axisCardinalities
      (fun _ member =>
        BitMatrix.Codec.SequentialPrimeSource.byteSpecification.axisCardinalities_positive
          member)⟩

example :
    BitMatrix.Carrier.CoordinateFiber.mixedRadix
      (BitMatrix.Codec.SequentialPrimeSource.byteCoordinate
        (1 : Fin 2) (0 : Fin 2) (1 : Fin 2)) = 5 := by
  norm_num

example
    (source : BitMatrix.Codec.CanonicalSource)
    (occurrence : Nat)
    (b₂ b₁ b₀ : Fin 2)
    (byteBound : occurrence < source.utf8.size) :
    BitMatrix.Codec.SequentialPrimeSource.sourceState source
      (BitMatrix.Codec.SequentialPrimeSource.byteCoordinateAddress
        occurrence b₂ b₁ b₀) =
      Nat.testBit source.utf8[occurrence].toNat
        (7 - (4 * b₂.val + 2 * b₁.val + b₀.val)) :=
  BitMatrix.Codec.SequentialPrimeSource.sourceState_byteCoordinateAddress_testBit
    source occurrence b₂ b₁ b₀ byteBound

end BitMatrix.Tests.ProjectSpecifications
