# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.PointedIdentityCorrectionCounterexamples.Variantec4647d540fea03c.ExactnessAndNoninjectiveCorrection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3ca1b5e8f53461556222941b8df544423566376` · SHA-256 `f46a15bd0693add2905b08c9292e27fa6ffec32b6fb642424abfe386443d1aa2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ExactnessAndNoninjectiveCorrection
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ec4647d540fea03c4b4f3c23e581850d4effa44a509c853255858595ec39a986
Organized SHA-256: eb292535cbef87c08deeb61c945506cd1e42155631339bfff27569e0b89cbfbc
PMD: 510.7.010.010.010 bijections (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- The identity endomap has the exact pointed H1Trivial/Exact1 predicates, while adding its XOR correction collapses and is not injective in width1. The entire conjunction retains all supplied conclusions and exact proof calls. H1 is this captured two-step closed-to-image predicate, not a constructed cohomology group or a general bicomplex. The original namespace BitMatrix.Tests.PermutationNetwork is retained literally, so containing namespaces are not changed in this component despite the generic shared-header sentence. The physical GRWTSK subject path is its logical module. Original imported providers remain historical and unresolved; no GRWTSK alias or replacement provider is introduced. Distinct duplicate historical declarations cannot be assumed compatible coimports; there is no umbrella admission. Any decide/native_decide proof is retained source text and was NOT_RUN. -/

import BitMatrix.Network.Permutation
import BitMatrix.FiniteField.Round
import Mathlib.Data.ZMod.Basic
import Mathlib.Logic.Equiv.Fin.Rotate

/-!
# Concrete permutation-network boundary tests

These finite examples exercise the corrected guarantee boundary. Coordinate
rotation is a permutation with branch number two but zero avalanche scores;
an exact state-dependent correction collapses the identity; trivial elementary
`H¹` does not prevent that collision; and a square-zero operator is not
bijective. The `ZMod 2` example checks a pole of the partial finite-field
expression, not a statistical property.
-/

namespace BitMatrix.Tests.PermutationNetwork

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.FiniteField.Round
open BitMatrix.Network.Permutation

/-! ## State-dependent correction and elementary cohomology -/

example : Function.Bijective (id : Bits 1 → Bits 1) :=
  Function.bijective_id

example :
    ¬ Function.Injective
      (addCorrection
        (id : Bits 1 → Bits 1)
        (id : Bits 1 → Bits 1)) :=
  identity_add_identity_not_injective (by decide)

example : (endMapComplex 1).H1Trivial :=
  identityZeroComplex_h1Trivial _ _

example :
    (endMapComplex 1).Exact₁ (id : EndMap 1) :=
  identityCorrection_exact 1

example :
    (endMapComplex 1).H1Trivial ∧
    (endMapComplex 1).Closed₁ (id : EndMap 1) ∧
    (endMapComplex 1).Exact₁ (id : EndMap 1) ∧
    Function.Bijective (id : EndMap 1) ∧
    ¬ Function.Injective
      (addCorrection (id : EndMap 1) (id : EndMap 1)) :=
  trivial_H1_does_not_preserve_bijectivity (by decide)

end BitMatrix.Tests.PermutationNetwork
```
