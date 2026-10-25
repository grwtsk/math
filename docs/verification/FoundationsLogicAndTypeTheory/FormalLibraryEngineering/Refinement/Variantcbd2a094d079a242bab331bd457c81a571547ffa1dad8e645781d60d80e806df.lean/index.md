# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Refinement.Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1658442477eaf569766f9fa82051060ac223cf4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1658442477eaf569766f9fa82051060ac223cf4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.Realization` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Refinement` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CellImplementation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean/declarations/cellimplementation--a8d0a5cac140f339f07bd3b3.md) | 19 | `declaration-track:a8d0a5cac140f339f07bd3b3e8520cd02b32e314dbb945e10ffad664c8409d93` |
| 2 | `structure` | [ImplementationFabric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean/declarations/implementationfabric--6f19f43a68f7889b54fbc962.md) | 24 | `declaration-track:6f19f43a68f7889b54fbc962eeeca26eda0173c4615576c1fde1edeec8bf127f` |
| 3 | `structure` | [RefinementPreservingReaction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean/declarations/refinementpreservingreaction--e52a3b46a69b1a2e4340af8e.md) | 79 | `declaration-track:e52a3b46a69b1a2e4340af8e7236366bef68bbfb9233f679d9a0e43d32f75f06` |
| 4 | `structure` | [RefinementPreservingRealization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean/declarations/refinementpreservingrealization--1c8e414a7edda06081d92aea.md) | 115 | `declaration-track:1c8e414a7edda06081d92aea3a2e629cb18497ce347e12b90208fb76372a208a` |
| 5 | `def` | [assembleSpecification](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean/declarations/assemblespecification--7883e02f326df536c28b9b54.md) | 131 | `declaration-track:7883e02f326df536c28b9b54b6746a207c71a8260462b5e84eabf5ac71f0eb12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
