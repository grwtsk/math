# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinRange.Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9a78b1a0690c487813956d4c504bf43c17371eb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9a78b1a0690c487813956d4c504bf43c17371eb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.OfFn` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89.lean/declarations/finrange--076ff6a64a5924a0d7e239fd.md) | 23 | `declaration-track:076ff6a64a5924a0d7e239fde55b668b480d4d2ac569f502e00386042c2377d2` |
| 2 | `theorem` | [getElem_finRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89.lean/declarations/getelem-finrange--0ffe54bcb69e8835a1e2d2db.md) | 25 | `result-track:0ffe54bcb69e8835a1e2d2db2c9cde40e556a79a2bd7aa22a72e84ca4afccf67` |
| 3 | `theorem` | [finRange_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89.lean/declarations/finrange-zero--bfecb7361aaab74fca16dd31.md) | 29 | `result-track:bfecb7361aaab74fca16dd3111cc336b8d019cf40a5b1db6777ca6c80b8b7c90` |
| 4 | `theorem` | [finRange_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89.lean/declarations/finrange-succ--f551a75c99465f0cb1836f91.md) | 31 | `result-track:f551a75c99465f0cb1836f917d19ed9ff60acf2e4100a12784eecc6c4c678040` |
| 5 | `theorem` | [finRange_succ_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89.lean/declarations/finrange-succ-last--71d86bd920343fa689203863.md) | 38 | `result-track:71d86bd920343fa68920386339f0c4ea0a17c36f9fcdd8c199a52c1b3f127bc9` |
| 6 | `theorem` | [finRange_reverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinRange/Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89.lean/declarations/finrange-reverse--347746a31dba25bb4fd8e955.md) | 48 | `result-track:347746a31dba25bb4fd8e95511e8369c0601558686b00a35d63851f2a8d1d743` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
