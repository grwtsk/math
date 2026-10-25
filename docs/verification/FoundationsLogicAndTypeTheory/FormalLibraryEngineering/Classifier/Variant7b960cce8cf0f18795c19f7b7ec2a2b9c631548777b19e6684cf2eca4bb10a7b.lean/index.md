# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Classifier.Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1056834ced3c1d03d7f8bb7b7e90fa03d6328f09",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1056834ced3c1d03d7f8bb7b7e90fa03d6328f09`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `GatewayProof.Route` — import line 1; external provider; requires a separately pinned dependency.
- `GatewayProof.Config` — import line 2; external provider; requires a separately pinned dependency.
- `GatewayProof.ReverseLink` — import line 3; external provider; requires a separately pinned dependency.
- `GatewayProof.Boundary` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PublicInputKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/publicinputkind--6fb2863f80b963af3db4b2b6.md) | 9 | `declaration-track:6fb2863f80b963af3db4b2b68a925fc4e95893234afbd7dc49ffcac256e3ddb6` |
| 2 | `inductive` | [PublicDecision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/publicdecision--9d5140d3a41e0798ec8d27bc.md) | 19 | `declaration-track:9d5140d3a41e0798ec8d27bc2ba439ab3acd82a34831ade8db9ff3ebd250f54b` |
| 3 | `def` | [classifyPublicInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/classifypublicinput--9af28d55a9d1cecf2262ad78.md) | 29 | `declaration-track:9af28d55a9d1cecf2262ad784ba8724850b859cc66be0df53381704967b5506b` |
| 4 | `inductive` | [ConfigDecision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/configdecision--747eeaeedbb082fcea4f17be.md) | 38 | `declaration-track:747eeaeedbb082fcea4f17be32c712808f90af6d153c48bd171cd1591a4b08b6` |
| 5 | `def` | [classifyConfigValidity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/classifyconfigvalidity--cff696fdd512b12839e6c57e.md) | 43 | `declaration-track:cff696fdd512b12839e6c57e454d5f1f91b548042b377a11408c574d41713b45` |
| 6 | `inductive` | [ReverseLinkDecision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/reverselinkdecision--1961566b9a9c7e7310c07e4b.md) | 47 | `declaration-track:1961566b9a9c7e7310c07e4b3e0277f560ae63a92ec4926117a933dcd3cca96c` |
| 7 | `def` | [classifyReverseLinkRegistration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/classifyreverselinkregistration--db28c48e06b6b0cdb647cb10.md) | 55 | `declaration-track:db28c48e06b6b0cdb647cb10481b259dd132498e9c6812f03e47b3dbf7ed4548` |
| 8 | `structure` | [KernelPosture](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/kernelposture--d336ab6e2c3a8960bee2b171.md) | 59 | `declaration-track:d336ab6e2c3a8960bee2b171f90566ba4beb397f5c044ee3c4a24a09bb858b26` |
| 9 | `def` | [firstKernelPosture](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/firstkernelposture--99afd0906c1725e5a57fad45.md) | 67 | `declaration-track:99afd0906c1725e5a57fad45a4df40ed5ca41aec1a22fd5a773a38a3105f2548` |
| 10 | `theorem` | [unknown_public_input_refuses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/unknown-public-input-refuses--921f844e6749956310e09edb.md) | 75 | `result-track:921f844e6749956310e09edb53f8352fcaccfa99e29999507341d451560dab95` |
| 11 | `theorem` | [healthz_is_direct_health](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/healthz-is-direct-health--803511d5d82ab1de4ef211d8.md) | 79 | `result-track:803511d5d82ab1de4ef211d8c932a5dddb150ca3a62bc00ee84dfe819885e977` |
| 12 | `theorem` | [relay_input_relays](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/relay-input-relays--e3ccb5b8258d670675b6ccbf.md) | 83 | `result-track:e3ccb5b8258d670675b6ccbf2cacb3a3866e36dba041b167ff355f30b1ac96e2` |
| 13 | `theorem` | [invalid_config_refuses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/invalid-config-refuses--84fe7641740f82823f519a6b.md) | 87 | `result-track:84fe7641740f82823f519a6bf14102c41ab3e10c61cfb8f3993a86498803a823` |
| 14 | `theorem` | [valid_config_accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/valid-config-accepted--583c45582cf952577dc20b12.md) | 91 | `result-track:583c45582cf952577dc20b12f05ae345fd606a7f5e68b8f177f32ff6829608f4` |
| 15 | `theorem` | [reverse_link_registration_refuses_without_token_match](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/reverse-link-registration-refuses-without-token-match--500ac23881e8654fd16c624b.md) | 95 | `result-track:500ac23881e8654fd16c624bc517970f0a92b6ecdb14754cb1160081728fea57` |
| 16 | `theorem` | [reverse_link_registration_refuses_without_client_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/reverse-link-registration-refuses-without-client-id--c7d51b2b833dc57fdb917ca8.md) | 99 | `result-track:c7d51b2b833dc57fdb917ca86f4d361c4d05a712ca64af1fbbc0dded90b62536` |
| 17 | `theorem` | [reverse_link_registration_refuses_when_both_missing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/reverse-link-registration-refuses-when-both-missing--72bd6b5a315d03c89cc1446d.md) | 103 | `result-track:72bd6b5a315d03c89cc1446dca57c0eec1107a7b32c167da3908e6cf8d43324a` |
| 18 | `theorem` | [reverse_link_registration_accepts_when_both_present](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/reverse-link-registration-accepts-when-both-present--0162362edf06a4a9383718fc.md) | 107 | `result-track:0162362edf06a4a9383718fc2f6899f887f08de40f269289634098550702ff99` |
| 19 | `theorem` | [kernel_slice_does_not_change_runtime_adapter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/kernel-slice-does-not-change-runtime-adapter--6865607d9fb49821afc19395.md) | 111 | `result-track:6865607d9fb49821afc19395a1188aa763ecdada82fb4519d5ccdc2e49bc205c` |
| 20 | `theorem` | [kernel_slice_does_not_claim_rust_correspondence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/kernel-slice-does-not-claim-rust-correspondence--80dfcbc4d3d91e42ea4341ca.md) | 115 | `result-track:80dfcbc4d3d91e42ea4341cac0508a9275d51ecb61eed7679f41710129bf528c` |
| 21 | `theorem` | [kernel_slice_does_not_claim_hosted_runtime_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/kernel-slice-does-not-claim-hosted-runtime-proof--3f3d5a53f7bc9b7cc3e0eb73.md) | 119 | `result-track:3f3d5a53f7bc9b7cc3e0eb7372820f80fdcf4a28ec7d6c32e956013f18d4d9b9` |
| 22 | `theorem` | [kernel_slice_does_not_claim_proof_runner_receipt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant7b960cce8cf0f18795c19f7b7ec2a2b9c631548777b19e6684cf2eca4bb10a7b.lean/declarations/kernel-slice-does-not-claim-proof-runner-receipt--5e171859f38018bb0991961b.md) | 123 | `result-track:5e171859f38018bb0991961b601317166a8b30d169b976e18323f6cc54c6e40f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
