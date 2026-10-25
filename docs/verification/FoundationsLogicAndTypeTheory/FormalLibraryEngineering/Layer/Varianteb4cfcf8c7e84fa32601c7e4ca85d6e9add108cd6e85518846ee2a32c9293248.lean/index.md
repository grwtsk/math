# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Layer.Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ae0451350daf7c4e1a2b46177f4812ba56356d3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ae0451350daf7c4e1a2b46177f4812ba56356d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean.json)

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
| 1 | `inductive` | [ProofLayer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean/declarations/prooflayer--27cf4cb75d424b58b5c0796c.md) | 30 | `declaration-track:27cf4cb75d424b58b5c0796ccfac6656bd3dbc8b1e74c5f8bbf3f56c6e8b22aa` |
| 2 | `structure` | [ModuleClassification](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean/declarations/moduleclassification--68e896cbb64732ef04a42652.md) | 38 | `declaration-track:68e896cbb64732ef04a42652302dce4b9c6cac3238c9323f7918a9a211521fcc` |
| 3 | `def` | [mayImportInFinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean/declarations/mayimportinfinal--59674ae7af70d7d34492b6c0.md) | 51 | `declaration-track:59674ae7af70d7d34492b6c0023d853fbad63d17ff14d09e6e3fcc614ee9390a` |
| 4 | `structure` | [FinalImportPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean/declarations/finalimportpolicy--9b9b335c2ba2b65a4676f6f9.md) | 58 | `declaration-track:9b9b335c2ba2b65a4676f6f9c72d23ec83b42f98f393f9081b41dcb8f3cc2325` |
| 5 | `def` | [defaultFinalImportPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean/declarations/defaultfinalimportpolicy--d4f7d6739440b3f9c94a66ae.md) | 68 | `declaration-track:d4f7d6739440b3f9c94a66ae956555f5067eb6ec102023b431e9fb9010757bd2` |
| 6 | `theorem` | [final_import_policy_forbids_contract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean/declarations/final-import-policy-forbids-contract--1ab1398b50e5960c730092fd.md) | 83 | `result-track:1ab1398b50e5960c730092fde4d292bc1290b436b346ff6dde0f640bee6336da` |
| 7 | `theorem` | [final_import_policy_forbids_external_witness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean/declarations/final-import-policy-forbids-external-witness--3df012f030f97ca5d38150b1.md) | 88 | `result-track:3df012f030f97ca5d38150b1539dda5b98f90a5565734798753d1e81a40bfa2a` |
| 8 | `theorem` | [default_final_import_policy_forbids_contract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean/declarations/default-final-import-policy-forbids-contract--483123caa61eaf8fda9fd2ca.md) | 93 | `result-track:483123caa61eaf8fda9fd2caae1092b226d00e495d318e552fea20fd49eb3675` |
| 9 | `theorem` | [default_final_import_policy_forbids_external_witness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean/declarations/default-final-import-policy-forbids-external-witness--35baf225bcc2ef4e456775a8.md) | 97 | `result-track:35baf225bcc2ef4e456775a8ce1e5a2a3fd403f629de98caca984c308dcbf0b5` |
| 10 | `theorem` | [contract_layer_ne_constructed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean/declarations/contract-layer-ne-constructed--fd99c0b0c4c40ee49fbe7176.md) | 101 | `result-track:fd99c0b0c4c40ee49fbe717696cbaa564162c95596e9d578552a09ca1be140c1` |
| 11 | `theorem` | [external_witness_layer_ne_final](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Layer/Varianteb4cfcf8c7e84fa32601c7e4ca85d6e9add108cd6e85518846ee2a32c9293248.lean/declarations/external-witness-layer-ne-final--61d3dd86784ceedafdc34dd6.md) | 106 | `result-track:61d3dd86784ceedafdc34dd681ce237629c284905c84fc9fd5035b5314cbd5ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
