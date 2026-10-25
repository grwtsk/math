# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "016c942f92f7effe30c7564e1ec485e5f90a0f61",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `016c942f92f7effe30c7564e1ec485e5f90a0f61`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean.json)

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
| 1 | `def` | [toSetMem?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/declarations/tosetmem--646d992ba50c8fbb1ec8658e.md) | 26 | `declaration-track:646d992ba50c8fbb1ec8658e10eaea871990c0270fbc3afd0e1c118090276f34` |
| 2 | `def` | [mkToSetMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/declarations/mktosetmem--b6f7abe091971298e2473886.md) | 33 | `declaration-track:b6f7abe091971298e247388689e9b672c7ddea67f550bee7035bf0066cef40e6` |
| 3 | `def` | [IExpr.mkMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/declarations/iexpr-mkmem--18fd7b5d909301f82a9afea3.md) | 39 | `declaration-track:18fd7b5d909301f82a9afea3ed79f2f260c879f48710527a70010c199bcf31a4` |
| 4 | `def` | [IVar.mkCoverMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/declarations/ivar-mkcovermap--c20a8eb3986a5239743eccb9.md) | 51 | `declaration-track:c20a8eb3986a5239743eccb99cfee113e5f368e8403a48f14f3022822754183f` |
| 5 | `def` | [IVar.mkCoverMapProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/declarations/ivar-mkcovermapproof--4f0170219c618cdfae5aae0f.md) | 68 | `declaration-track:4f0170219c618cdfae5aae0fc205528d2701729b45269063e2a9aa7a24cd5934` |
| 6 | `def` | [IType.synthCoarsen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/declarations/itype-synthcoarsen--7aa43c25897d2f79b2149569.md) | 80 | `declaration-track:7aa43c25897d2f79b21495694e651c405bb04274a6a0396d10b27236b6e40fc4` |
| 7 | `def` | [IType.mkRefine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/declarations/itype-mkrefine--a24b1d236deaec9691e5aa1f.md) | 87 | `declaration-track:a24b1d236deaec9691e5aa1f2c24bf3529a4a809df80a51ce685dc06b966c24e` |
| 8 | `def` | [IType.synthRefine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/declarations/itype-synthrefine--1d11f47c1b46c7938d7e5a37.md) | 92 | `declaration-track:1d11f47c1b46c7938d7e5a371a57c36cc08a405d705b97323dbb321a45fe9c3d` |
| 9 | `def` | [IType.mkUniv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/declarations/itype-mkuniv--f219f11e60622cbdef9eda78.md) | 99 | `declaration-track:f219f11e60622cbdef9eda78a98fb287b2ef7e2ace6f3824d8cef82150fe4a0e` |
| 10 | `def` | [IExpr.mkMemUniv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/declarations/iexpr-mkmemuniv--71d9a1c990bda4b67b7e22ea.md) | 104 | `declaration-track:71d9a1c990bda4b67b7e22eab9df52ded66efbfc1e9d3228a2d4de18e537c86b` |
| 11 | `def` | [IType.synthUniv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/declarations/itype-synthuniv--5756b06d314888b6bafbd2b0.md) | 111 | `declaration-track:5756b06d314888b6bafbd2b0020884a505054b1a039fa648978f089913732538` |
| 12 | `def` | [mkIntervalBoolRefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/declarations/mkintervalboolrefl--1df060b8bea963f41b1671c4.md) | 117 | `declaration-track:1df060b8bea963f41b1671c4f205b6f19d9992ffb2fe3d763244feff63b8bbb6` |
| 13 | `def` | [ExprInclusion.mkGoalProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant71941b26cc95b95cb9d617183c51f1bda81a45d9179e2958a6e7a51762061199.lean/declarations/exprinclusion-mkgoalproof--bc4a22bd2a78294b4fe634f8.md) | 122 | `declaration-track:bc4a22bd2a78294b4fe634f8026f828b1406fdb021beb8f4efba23f9ddb9f228` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
