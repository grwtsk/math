# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Layer.Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5fc9332475d6bb2c48aca6f7434bbea21e82d44",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5fc9332475d6bb2c48aca6f7434bbea21e82d44`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean.json)

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
| 1 | `inductive` | [ProofLayer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean/declarations/prooflayer--cf26dedddf74cc6ebce6d713.md) | 22 | `declaration-track:cf26dedddf74cc6ebce6d713c6b074479be785fbfbb850cd2019641a1eb43516` |
| 2 | `structure` | [ModuleClassification](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean/declarations/moduleclassification--177159bb87596468684f233a.md) | 30 | `declaration-track:177159bb87596468684f233a91928e9cf7d3dbd2c21583dfe7a7b2ead472f093` |
| 3 | `def` | [mayImportInFinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean/declarations/mayimportinfinal--3fd2886a207fefb9a788b743.md) | 43 | `declaration-track:3fd2886a207fefb9a788b743bbd06aa284c400a4ee823c51c6710597b29c4ea7` |
| 4 | `structure` | [FinalImportPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean/declarations/finalimportpolicy--dbaa7cf5f4b95a1c40668bd6.md) | 50 | `declaration-track:dbaa7cf5f4b95a1c40668bd69971b6c26e7f193609e2158318232f2681e9f951` |
| 5 | `def` | [defaultFinalImportPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean/declarations/defaultfinalimportpolicy--2b8f2c67500b9664f532a5d6.md) | 60 | `declaration-track:2b8f2c67500b9664f532a5d6b6132ef10352fe9546230e645cafc35070c4f553` |
| 6 | `theorem` | [final_import_policy_forbids_contract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean/declarations/final-import-policy-forbids-contract--69c1fd9cd3fcfabaf1cc800d.md) | 75 | `result-track:69c1fd9cd3fcfabaf1cc800dec46dac53b68963e6e8ef2b55f1d0354d891c87c` |
| 7 | `theorem` | [final_import_policy_forbids_external_witness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean/declarations/final-import-policy-forbids-external-witness--59fd6a4095f05b08c57687fa.md) | 80 | `result-track:59fd6a4095f05b08c57687faf49c3b5602831beefe84046cabce89711f7a807a` |
| 8 | `theorem` | [default_final_import_policy_forbids_contract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean/declarations/default-final-import-policy-forbids-contract--24c84b2924ce93c85afd4afa.md) | 85 | `result-track:24c84b2924ce93c85afd4afa20e3b3a1a2be548d9c9899d4fbfbdc6d89a6bd55` |
| 9 | `theorem` | [default_final_import_policy_forbids_external_witness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean/declarations/default-final-import-policy-forbids-external-witness--942e03b865e224bb5c0ac998.md) | 89 | `result-track:942e03b865e224bb5c0ac998246f07fc591ebdf8450f4a50120364f9855abc81` |
| 10 | `theorem` | [contract_layer_ne_constructed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean/declarations/contract-layer-ne-constructed--067f5544434d6a58fed9e59f.md) | 93 | `result-track:067f5544434d6a58fed9e59f2889788065aad0de5f1096fcb655ecb621c6ad90` |
| 11 | `theorem` | [external_witness_layer_ne_final](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Variant79f712b54f76a03af2687b63026e7933c88585cc4b890586e60bf64703932804.lean/declarations/external-witness-layer-ne-final--f89b6c4c57f7e5ef4776d0fb.md) | 98 | `result-track:f89b6c4c57f7e5ef4776d0fb7b27f3480c22d0fbb0a88b3d99492b96d3fea3fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
