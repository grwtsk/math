# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Timer.Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28d483d6bb852576b7c0b1a3d66d7b076438e4a6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28d483d6bb852576b7c0b1a3d66d7b076438e4a6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [TimerImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean/declarations/timerimpl--01b88a71c9e0c93640802b77.md) | 17 | `declaration-track:01b88a71c9e0c93640802b77c9f26da3aacdb0e194e1b0882e78e460b1d42352` |
| 2 | `def` | [Timer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean/declarations/timer--0e1396db71ce67b515867fac.md) | 30 | `declaration-track:0e1396db71ce67b515867facf4eeecbd4a5b4822e2dd5f7bcc821f5d62077188` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean/declarations/instance--6c404226d314776180482943.md) | 32 | `declaration-track:6c404226d314776180482943c67487613f331e52049d124ebc328232f6783be2` |
| 4 | `opaque` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean/declarations/mk--f14a923bdd9e88ed01da4bf1.md) | 45 | `declaration-track:f14a923bdd9e88ed01da4bf13956c0a3abd2d998e60be1a6ce3fab808f15fc35` |
| 5 | `opaque` | [next](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean/declarations/next--b4ee8a4138a1298e16ab3111.md) | 64 | `declaration-track:b4ee8a4138a1298e16ab31118017584514c52da4b89aa65c6d5bee9edf0c7dfe` |
| 6 | `opaque` | [reset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean/declarations/reset--60e39883467c058015d19a12.md) | 75 | `declaration-track:60e39883467c058015d19a12cbb69d6b58a988b7647a574dbd7b911bedd35ff7` |
| 7 | `opaque` | [stop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean/declarations/stop--18de26a11f4356ec70b2e23d.md) | 84 | `declaration-track:18de26a11f4356ec70b2e23deaaff54518bf6f694d7c6ad9d1cd6cd87179bbc8` |
| 8 | `opaque` | [cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean/declarations/cancel--146a22214b892e0bf993286c.md) | 93 | `declaration-track:146a22214b892e0bf993286cfcea46cbf5439c7947c97cd021c256932024bcf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
