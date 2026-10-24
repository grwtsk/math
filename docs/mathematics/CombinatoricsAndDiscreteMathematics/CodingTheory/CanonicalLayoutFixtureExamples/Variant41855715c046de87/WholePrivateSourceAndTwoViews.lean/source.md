# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.CanonicalLayoutFixtureExamples.Variant41855715c046de87.WholePrivateSourceAndTwoViews

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e86d8ee20f357a4cddfbbaa8282771989378b230` · SHA-256 `1d5781b35bdfd5f314f61a1d87fc3cc71a9aa30f25141f0efa0764dd08c2d243`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholePrivateSourceAndTwoViews
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 41855715c046de87630ec2205063b76970f035b02c72efa6ad22134e1199cfe6
Organized SHA-256: ef19090b94d28bc5c62979986a4c14164c4dc8f8b27c8d29d0930170caedd533
PMD: 510.7.090 coding theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- The private sourceLayoutFixture body A plus no-CR/no-LF proofs is copied with BOTH SequentialPrimeSource.sourceState_contains/sourceState_next consumers in the SAME component. No private name crosses modules; decide proof text is not run and no new parsing or file IO is introduced. The original namespace BitMatrix.Tests.ProjectSpecifications is retained literally, so containing namespaces are not changed in this component despite the generic shared-header sentence. The physical GRWTSK subject path is its logical module. Original imported providers remain historical and unresolved; no GRWTSK alias or replacement provider is introduced. Distinct duplicate historical declarations cannot be assumed compatible coimports; there is no umbrella admission. Any decide/native_decide proof is retained source text and was NOT_RUN. -/

import BitMatrix.Dynamics.EvolutionSurgeryRestart
import BitMatrix.Rhetorical.Coverage

/-! Compile-time conformance witnesses for concrete project specifications. -/

namespace BitMatrix.Tests.ProjectSpecifications

open BitMatrix.Dynamics.EvolutionSurgeryRestart

private def sourceLayoutFixture : BitMatrix.Codec.CanonicalSource where
  body := "A"
  noCarriageReturn := by decide
  noTerminalLineFeed := by decide

example :
    BitMatrix.Codec.SequentialPrimeSource.sourceState sourceLayoutFixture
      (BitMatrix.Codec.SequentialPrimeSource.relationAddress
        (BitMatrix.Carrier.cantorPair 0 1) 0) = true := by
  simpa using BitMatrix.Codec.SequentialPrimeSource.sourceState_contains
    sourceLayoutFixture ⟨0, by decide⟩

example :
    BitMatrix.Codec.SequentialPrimeSource.sourceState sourceLayoutFixture
      (BitMatrix.Codec.SequentialPrimeSource.relationAddress
        (BitMatrix.Carrier.cantorPair 1 2) 1) = true := by
  simpa using BitMatrix.Codec.SequentialPrimeSource.sourceState_next
    sourceLayoutFixture 0 (by decide)

end BitMatrix.Tests.ProjectSpecifications
```
