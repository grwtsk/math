# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dimacs.Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8aa927d69ad7002af0c659181cb9d952c413a5d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8aa927d69ad7002af0c659181cb9d952c413a5d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878.lean.json)

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
| 1 | `structure` | [DimacsState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878.lean/declarations/dimacsstate--1186f5851cbaeb53c2ad275e.md) | 18 | `declaration-track:1186f5851cbaeb53c2ad275e21f57e463b3a7d51ea63514d91feda19596161a7` |
| 2 | `abbrev` | [DimacsM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878.lean/declarations/dimacsm--5ecab38dd07c8dfb4f1a76c3.md) | 22 | `declaration-track:5ecab38dd07c8dfb4f1a76c36f3cbca8702ebaec571dca61d7e4c2df9120d01d` |
| 3 | `def` | [handleLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878.lean/declarations/handlelit--0e1c58fb31502f6c3c2fb0a9.md) | 27 | `declaration-track:0e1c58fb31502f6c3c2fb0a9710283f8cb7f5eb5047d899c4e5f18934ed71fb3` |
| 4 | `def` | [incrementClauses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878.lean/declarations/incrementclauses--666c39932bf1d2ea26a4d5ff.md) | 31 | `declaration-track:666c39932bf1d2ea26a4d5ff5484bc90d5e1716097b774aa7f9234b09ab1dab0` |
| 5 | `def` | [dimacs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dimacs/Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878.lean/declarations/dimacs--7ff8e30133dac218ae3ef940.md) | 42 | `declaration-track:7ff8e30133dac218ae3ef940e2d424e118de4bb0da43be08785a5f3c12405f58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
