# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Classifier.Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c914f21120784ebce1c5fe186fb412b4887e7d6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c914f21120784ebce1c5fe186fb412b4887e7d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `GatewayProof.Route` — import line 6; external provider; requires a separately pinned dependency.
- `GatewayProof.Config` — import line 7; external provider; requires a separately pinned dependency.
- `GatewayProof.ReverseLink` — import line 8; external provider; requires a separately pinned dependency.
- `GatewayProof.Boundary` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PublicInputKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/publicinputkind--8b04b6d01e830d7975038ac8.md) | 17 | `declaration-track:8b04b6d01e830d7975038ac8241145c2defeedbd88a3d897548c9f663ca7b434` |
| 2 | `inductive` | [PublicDecision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/publicdecision--b88f7bdd2bbe6f7081d03cbd.md) | 27 | `declaration-track:b88f7bdd2bbe6f7081d03cbd83078e1989ea6ad5f89e44360bbf5400e22bf1a8` |
| 3 | `def` | [classifyPublicInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/classifypublicinput--03d0c92d532d83c7ead77079.md) | 37 | `declaration-track:03d0c92d532d83c7ead7707924f70bf4ed89fbf339b83fa6be3086c43625c4f0` |
| 4 | `inductive` | [ConfigDecision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/configdecision--6d29e07af30fc6b8793befd5.md) | 46 | `declaration-track:6d29e07af30fc6b8793befd52e032255b24bdc404675417d68073f223def4858` |
| 5 | `def` | [classifyConfigValidity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/classifyconfigvalidity--7b823676bdfc2e608e0ccefe.md) | 51 | `declaration-track:7b823676bdfc2e608e0ccefee29defac629def027d587ffdd4e04b4929dd6503` |
| 6 | `inductive` | [ReverseLinkDecision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/reverselinkdecision--976b3133db4f4220fba477a7.md) | 55 | `declaration-track:976b3133db4f4220fba477a7d3a4e435c9b035b12ab9fb6c737f89dab8c7e92e` |
| 7 | `def` | [classifyReverseLinkRegistration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/classifyreverselinkregistration--2e20f83946eeb50bd74d9c51.md) | 63 | `declaration-track:2e20f83946eeb50bd74d9c511a3c806a884bc6573615317ab1549c88e5a6c63b` |
| 8 | `structure` | [KernelPosture](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/kernelposture--6d50c497d3279ab50477681e.md) | 67 | `declaration-track:6d50c497d3279ab50477681e9dbaf2e9640878bd9f543a39d94a332b4e7b1581` |
| 9 | `def` | [firstKernelPosture](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/firstkernelposture--c4e9ec09c50aa7a7f6667f67.md) | 75 | `declaration-track:c4e9ec09c50aa7a7f6667f670c2917a45a3528207879b986e6a97eabcd7f23fb` |
| 10 | `theorem` | [unknown_public_input_refuses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/unknown-public-input-refuses--ac8dc4b58071f5bdc1af2e14.md) | 83 | `result-track:ac8dc4b58071f5bdc1af2e141b20b245ecc14b3404c37a0956e3c9627ec5bcc6` |
| 11 | `theorem` | [healthz_is_direct_health](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/healthz-is-direct-health--a709f180e5b16d442a00797c.md) | 87 | `result-track:a709f180e5b16d442a00797c3818ae3bf7eedcc2775b83a56c2ccce6ce07177f` |
| 12 | `theorem` | [relay_input_relays](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/relay-input-relays--f1808cc3d8136a8b58934730.md) | 91 | `result-track:f1808cc3d8136a8b58934730f0cae750e000c2bb207c407c74eacfa43f16a25f` |
| 13 | `theorem` | [invalid_config_refuses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/invalid-config-refuses--e505a5ffecb0bf35500a932e.md) | 95 | `result-track:e505a5ffecb0bf35500a932e9657024c3bf22522cf909a160353862b774fa77a` |
| 14 | `theorem` | [valid_config_accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/valid-config-accepted--913dd0ef735ffdca9ed0dcaa.md) | 99 | `result-track:913dd0ef735ffdca9ed0dcaac4b6b3e9b4a1b3da8595a6a9a1de201ae47b5f83` |
| 15 | `theorem` | [reverse_link_registration_refuses_without_token_match](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/reverse-link-registration-refuses-without-token-match--d49535cfce40ae159b98a22f.md) | 103 | `result-track:d49535cfce40ae159b98a22f833d463e2ead370d27a4de05d544b0e07fef58ab` |
| 16 | `theorem` | [reverse_link_registration_refuses_without_client_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/reverse-link-registration-refuses-without-client-id--cc7fe703ca2c3b3d87a3d6d5.md) | 107 | `result-track:cc7fe703ca2c3b3d87a3d6d552c0d3b62cd9ce1065731732d174ba382c7f49cd` |
| 17 | `theorem` | [reverse_link_registration_refuses_when_both_missing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/reverse-link-registration-refuses-when-both-missing--a1dc859a55aa89991a76bc0f.md) | 111 | `result-track:a1dc859a55aa89991a76bc0f916f6d09472d4fd873c65e767b20dd4766651719` |
| 18 | `theorem` | [reverse_link_registration_accepts_when_both_present](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/reverse-link-registration-accepts-when-both-present--fd3c5a0e254b9af393182a6e.md) | 115 | `result-track:fd3c5a0e254b9af393182a6ec4366a6a3089c608071a4d8c8c1ced04d6471b84` |
| 19 | `theorem` | [kernel_slice_does_not_change_runtime_adapter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/kernel-slice-does-not-change-runtime-adapter--bc6cc204e34e259046c584a4.md) | 119 | `result-track:bc6cc204e34e259046c584a412a4fe49258944d7c3d68ddb2fd537bd4e631286` |
| 20 | `theorem` | [kernel_slice_does_not_claim_rust_correspondence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/kernel-slice-does-not-claim-rust-correspondence--b823f66af493c571a02067a8.md) | 123 | `result-track:b823f66af493c571a02067a8f4cb62c8e7d56df9590f60ca1d462b72ade1b17b` |
| 21 | `theorem` | [kernel_slice_does_not_claim_hosted_runtime_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/kernel-slice-does-not-claim-hosted-runtime-proof--3d926a847979e1b268c0836a.md) | 127 | `result-track:3d926a847979e1b268c0836a4727776f4fd73c8ddfc5221ac6da51040f76b55b` |
| 22 | `theorem` | [kernel_slice_does_not_claim_proof_runner_receipt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classifier/Variant734f888b295bf21f003f0a16d8a2a498e557f0ca2a923f1097664b84beba17b1.lean/declarations/kernel-slice-does-not-claim-proof-runner-receipt--835b068aea77e326e4772410.md) | 131 | `result-track:835b068aea77e326e477241085dd106bca3b5b5501b467887059293d2849e138` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
