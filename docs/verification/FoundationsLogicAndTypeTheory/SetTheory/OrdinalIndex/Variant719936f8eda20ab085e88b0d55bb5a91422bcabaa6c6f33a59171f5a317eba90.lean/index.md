# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalIndex.Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf53f0c7b304a1651688b7dfd570636edcb485e9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf53f0c7b304a1651688b7dfd570636edcb485e9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Frontier.LocalRank` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.OrdinalTally.Stratum` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StratifiedFrontierCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/declarations/stratifiedfrontiercode--ec181cebdf59c8061ce6a333.md) | 19 | `declaration-track:ec181cebdf59c8061ce6a3330934490d63a1320de208090a54c602cadb5045a3` |
| 2 | `structure` | [StratifiedFrontierIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/declarations/stratifiedfrontierindex--9589ed2edda66de15a90af07.md) | 24 | `declaration-track:9589ed2edda66de15a90af073c58f3385b50458ca922cedcd73b91ac944741ad` |
| 3 | `def` | [code](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/declarations/code--4114719d3d19d63b9e56c62d.md) | 32 | `declaration-track:4114719d3d19d63b9e56c62da6d4e7aabcafdf79e78b4e6eae8a32a377662cef` |
| 4 | `theorem` | [code_stratumBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/declarations/code-stratumboundary--73da86b3ab18146afe45fc63.md) | 47 | `result-track:73da86b3ab18146afe45fc632deae8f09c255382cedad43b4bf0af2e21da7bc7` |
| 5 | `theorem` | [code_ordinalShadow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/declarations/code-ordinalshadow--c2de38b07de60e80650175b9.md) | 57 | `result-track:c2de38b07de60e80650175b90ad4d89bb5a63bfa706e83cd21f715ad6d6ae26c` |
| 6 | `theorem` | [stratified_frontier_index_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/declarations/stratified-frontier-index-injective--2b3f0def7fa540a851634ebe.md) | 69 | `result-track:2b3f0def7fa540a851634ebef1b1f7d7585b68a02170c02a05a38b656fac7043` |
| 7 | `structure` | [PersistentFrontierLineage](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/declarations/persistentfrontierlineage--38dfbd46f084957f00879431.md) | 82 | `declaration-track:38dfbd46f084957f00879431cc1a9be192018aa12fb1ce759dce4be00b453039` |
| 8 | `structure` | [BoundaryAddress](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/declarations/boundaryaddress--c192eff4114fd2ad05264c0f.md) | 93 | `declaration-track:c192eff4114fd2ad05264c0fe07fbc559c36db06b118b2cc9ffb9259174a7300` |
| 9 | `structure` | [LimitBoundaryCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/declarations/limitboundarycode--ac3ac1b2306c1d25247c52fc.md) | 99 | `declaration-track:ac3ac1b2306c1d25247c52fc96f322479a42a8ccccfd8fef0e6265b1a175d7b6` |
| 10 | `def` | [LimitBoundaryCode.ordinalProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/declarations/limitboundarycode-ordinalprojection--053b1da64eb87750ee5bb84b.md) | 105 | `declaration-track:053b1da64eb87750ee5bb84b588ef7159e0d2e8fd77c02e8fb596b1272c4ffeb` |
| 11 | `structure` | [LimitAddressSeparationCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/declarations/limitaddressseparationcertificate--52fd2cbbd3367ad062b03809.md) | 111 | `declaration-track:52fd2cbbd3367ad062b03809da2c31eafc5643324af8d135dbef6ac782b6b271` |
| 12 | `structure` | [StratumSeparationCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/declarations/stratumseparationcertificate--5f30f35186e2422fd9949771.md) | 123 | `declaration-track:5f30f35186e2422fd9949771d3514e823b5863f1e1f91932bc5823bb2d8d37ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
