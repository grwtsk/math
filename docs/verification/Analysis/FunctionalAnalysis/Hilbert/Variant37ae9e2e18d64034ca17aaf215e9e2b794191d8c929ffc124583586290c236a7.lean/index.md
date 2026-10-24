# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Hilbert.Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ead97465c5757c40cc64c7588cbd8040359a64ea",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ead97465c5757c40cc64c7588cbd8040359a64ea`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.PrismaticEmbedding` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrismaticHilbertEmbedding](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean/declarations/prismatichilbertembedding--83c5c8bd3934749a4e3fc731.md) | 32 | `declaration-track:83c5c8bd3934749a4e3fc731bbf8b3aa879b152705a660f5fa6c706c60fcfbc5` |
| 2 | `def` | [PrismaticHilbertEmbedding.ready](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean/declarations/prismatichilbertembedding-ready--61c9c6d80b61deb2744f747f.md) | 43 | `declaration-track:61c9c6d80b61deb2744f747f9db386e814549cf31f624d4f5548f8f92729561a` |
| 3 | `structure` | [PrismaticHilbertEmbeddingTheoremCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean/declarations/prismatichilbertembeddingtheoremcertificate--d6bbd43ddc0f5b6d6eb7ef00.md) | 59 | `declaration-track:d6bbd43ddc0f5b6d6eb7ef00c69f382bc96e8cf58aec707952b8f88386d430d4` |
| 4 | `def` | [PrismaticHilbertEmbeddingTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean/declarations/prismatichilbertembeddingtheoremcertificate-certifiedformajorproof--45118c65871e7b06cbd0b9f0.md) | 77 | `declaration-track:45118c65871e7b06cbd0b9f0d8e897d921991b328266e910fcccce1761693d08` |
| 5 | `theorem` | [PrismaticHilbertEmbeddingTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean/declarations/prismatichilbertembeddingtheoremcertificate-certifiedformajorproof-of-fi--9072e607d0d3256a9b62919a.md) | 91 | `result-track:9072e607d0d3256a9b62919aa876b4f9288b06447ef1a7e05f004af6cb6afdc5` |
| 6 | `theorem` | [PrismaticHilbertEmbeddingTheoremCertificate.implies_hilbert_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean/declarations/prismatichilbertembeddingtheoremcertificate-implies-hilbert-theoremready--80f8a8dc6eff5a48e5f9cb49.md) | 104 | `result-track:80f8a8dc6eff5a48e5f9cb4978d2adc06004ec8d7696a7c0ff4be0509587917e` |
| 7 | `theorem` | [PrismaticHilbertEmbeddingTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean/declarations/prismatichilbertembeddingtheoremcertificate-hodgetate-pullback-rejects-e--5c288822239ff54b8935e7d1.md) | 114 | `result-track:5c288822239ff54b8935e7d184e2266165b90419cf5dcd5552f27f14bc0ae329` |
| 8 | `theorem` | [PrismaticHilbertEmbeddingTheoremCertificate.hodgeTate_pullback_rejects_placeholderInput](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean/declarations/prismatichilbertembeddingtheoremcertificate-hodgetate-pullback-rejects-p--0b8b1bf0c7701164c234bba5.md) | 134 | `result-track:0b8b1bf0c7701164c234bba56dde60f3b9a64695608f65736b05cfa7dad8d1e0` |
| 9 | `def` | [unitPrismaticHilbertEmbedding](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean/declarations/unitprismatichilbertembedding--fd19314132ff1f92b9e8489a.md) | 154 | `declaration-track:fd19314132ff1f92b9e8489acdcac8c4757ad396408b5075dad331d66b2d3b06` |
| 10 | `def` | [unitPrismaticHilbertEmbeddingReady](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean/declarations/unitprismatichilbertembeddingready--8e69dd7d4ce6836c2b28f7ba.md) | 164 | `declaration-track:8e69dd7d4ce6836c2b28f7baef6027c237d2df80c32209b2194b7ab54f7b8d1c` |
| 11 | `theorem` | [unitPrismaticHilbertEmbedding_not_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/Hilbert/Variant37ae9e2e18d64034ca17aaf215e9e2b794191d8c929ffc124583586290c236a7.lean/declarations/unitprismatichilbertembedding-not-ready--6b790e5a12ef051d37280b7b.md) | 167 | `result-track:6b790e5a12ef051d37280b7bba6109c552820fe5c071d09fdff89cb186f54e85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
