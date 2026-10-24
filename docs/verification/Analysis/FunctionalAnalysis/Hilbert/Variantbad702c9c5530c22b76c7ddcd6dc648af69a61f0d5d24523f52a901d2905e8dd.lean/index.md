# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Hilbert.Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "277ddf6b47868ddddce994530e46764d8dcc1bcf",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `277ddf6b47868ddddce994530e46764d8dcc1bcf`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.PrismaticEmbedding` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrismaticHilbertEmbedding](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/declarations/prismatichilbertembedding--aca5acb8dc8e2116f0cbfbee.md) | 24 | `declaration-track:aca5acb8dc8e2116f0cbfbeea4ac0985d04adc2499bb0c97d97fcb7d3b3b2255` |
| 2 | `def` | [PrismaticHilbertEmbedding.ready](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/declarations/prismatichilbertembedding-ready--751a71ffc49f011242c59166.md) | 35 | `declaration-track:751a71ffc49f011242c59166864e3ddb99b9cf39fd0e5810350926ec9d48f128` |
| 3 | `structure` | [PrismaticHilbertEmbeddingTheoremCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/declarations/prismatichilbertembeddingtheoremcertificate--380633912aec48b7e5951d0a.md) | 51 | `declaration-track:380633912aec48b7e5951d0aab6a9d60b4dd757af9bdbab4543fcfa6bdc9a38c` |
| 4 | `def` | [PrismaticHilbertEmbeddingTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/declarations/prismatichilbertembeddingtheoremcertificate-certifiedformajorproof--8a732b153f6c2f9804b31271.md) | 69 | `declaration-track:8a732b153f6c2f9804b312714a3da3e592d89b6c7bb9311ac7eb19e52128dbf3` |
| 5 | `theorem` | [PrismaticHilbertEmbeddingTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/declarations/prismatichilbertembeddingtheoremcertificate-certifiedformajorproof-of-fi--88051b436cdd169084904121.md) | 83 | `result-track:88051b436cdd1690849041215579d2f12e75478595fea9cdac04cbbc19682243` |
| 6 | `theorem` | [PrismaticHilbertEmbeddingTheoremCertificate.implies_hilbert_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/declarations/prismatichilbertembeddingtheoremcertificate-implies-hilbert-theoremready--6bff2a804e670a39ab80338a.md) | 96 | `result-track:6bff2a804e670a39ab80338ac63553aee9e2adc6235e496025b976ede5b51d77` |
| 7 | `theorem` | [PrismaticHilbertEmbeddingTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/declarations/prismatichilbertembeddingtheoremcertificate-hodgetate-pullback-rejects-e--b507d040a1a207892eee0d88.md) | 106 | `result-track:b507d040a1a207892eee0d88a4ca459382c8113fe7ec4e1a9206481651510658` |
| 8 | `theorem` | [PrismaticHilbertEmbeddingTheoremCertificate.hodgeTate_pullback_rejects_placeholderInput](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/declarations/prismatichilbertembeddingtheoremcertificate-hodgetate-pullback-rejects-p--3b8a5cfccc7cd55915004fd0.md) | 126 | `result-track:3b8a5cfccc7cd55915004fd01924854353378dff5999c3b0d7f8b437dbf9aafe` |
| 9 | `def` | [unitPrismaticHilbertEmbedding](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/declarations/unitprismatichilbertembedding--785e492b58e07420fe73d2a0.md) | 146 | `declaration-track:785e492b58e07420fe73d2a02f55252269b456f0fe2aad43e68a7dba00e67ab8` |
| 10 | `def` | [unitPrismaticHilbertEmbeddingReady](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/declarations/unitprismatichilbertembeddingready--2dd873c017678b5540bef62e.md) | 156 | `declaration-track:2dd873c017678b5540bef62edf64f15a525f20b4102e8c154757726aa1386581` |
| 11 | `theorem` | [unitPrismaticHilbertEmbedding_not_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/declarations/unitprismatichilbertembedding-not-ready--695e8933fae3db473d6a5d2e.md) | 159 | `result-track:695e8933fae3db473d6a5d2e5a1457fa70876ff03c1206980c6ee16505449d77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
