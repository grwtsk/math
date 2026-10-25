# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TwoPointing.Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e14cbadf34726b267f178d15ffbddc4e3b0b3843",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e14cbadf34726b267f178d15ffbddc4e3b0b3843`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sum.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TwoPointing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/twopointing--c794851146380b258322f395.md) | 33 | `declaration-track:c794851146380b258322f39579ed2aaae9dfca1c8c64035502400dda370f456c` |
| 2 | `theorem` | [snd_ne_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/snd-ne-fst--d41c35d2d27fa3177e03a795.md) | 47 | `result-track:d41c35d2d27fa3177e03a7953115f177f4ba6a7f1caa7170b1fd8f384c0d5c1f` |
| 3 | `def` | [swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/swap--624ab07c53bffe9b5aec8b5c.md) | 53 | `declaration-track:624ab07c53bffe9b5aec8b5c8a3d04fca59e4a6bf71dfbee014a4531721d2064` |
| 4 | `theorem` | [swap_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/swap-fst--632d3644ab502efb871d8889.md) | 58 | `result-track:632d3644ab502efb871d8889cff682274c8e7f297b7d93c3058b68a519dae381` |
| 5 | `theorem` | [swap_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/swap-snd--4d61667d32c6766b9ca1c049.md) | 61 | `result-track:4d61667d32c6766b9ca1c0499190ff6244dc14dde94c6e0c273a3cb67a2fa9b0` |
| 6 | `theorem` | [swap_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/swap-swap--94e12a18ac56389abc935dab.md) | 65 | `result-track:94e12a18ac56389abc935dab8978a49cee707bd17b65ef78b34aaab0743dd1d8` |
| 7 | `theorem` | [to_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/to-nontrivial--de77d55da99782993d6667e5.md) | 70 | `result-track:de77d55da99782993d6667e5fdd965f59fb9a4baa3f49062002f0f08e7ae7005` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/instance--7c38f3e1904ffcd929e0e8e2.md) | 74 | `declaration-track:7c38f3e1904ffcd929e0e8e200adcbee221c6e18439147a2e1aa31541171f407` |
| 9 | `theorem` | [nonempty_two_pointing_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/nonempty-two-pointing-iff--18d4125833ede3c5458dd4df.md) | 79 | `result-track:18d4125833ede3c5458dd4df448beccf0c113dbd39e25a269b432d0888e55255` |
| 10 | `def` | [pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/pi--9cef778bcbd67c28fd581c3a.md) | 88 | `declaration-track:9cef778bcbd67c28fd581c3a71e24f88508acf352333f7d38a06f8470c7fb56a` |
| 11 | `theorem` | [pi_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/pi-fst--2a147774ef7919a0657ce5ab.md) | 95 | `result-track:2a147774ef7919a0657ce5ab014f389da9c17f8ce3e64ba3b4ba5ac626525e37` |
| 12 | `theorem` | [pi_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/pi-snd--ad085bb8e490d6c501ac152e.md) | 100 | `result-track:ad085bb8e490d6c501ac152e4d550f3c86b318c60702ddb50034342d1de671bb` |
| 13 | `def` | [prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/prod--abb1f6685fa2c67e876dc110.md) | 107 | `declaration-track:abb1f6685fa2c67e876dc110061c71f231af2ee8be86ab3175402605e8b353f7` |
| 14 | `theorem` | [prod_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/prod-fst--9a7f772961f5f1393b8b49ba.md) | 114 | `result-track:9a7f772961f5f1393b8b49bac1e298f681be2ba9e0f14daef424d57391e864ed` |
| 15 | `theorem` | [prod_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/prod-snd--2acaa5a4b27196005ca92151.md) | 119 | `result-track:2acaa5a4b27196005ca92151270ac1a90c061f6381f79f8e9c54265cde83b56f` |
| 16 | `def` | [sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/sum--4eaee20307acf583d929b69f.md) | 125 | `declaration-track:4eaee20307acf583d929b69f92aafa1519685aa56e5569d8544927f93a69f105` |
| 17 | `theorem` | [sum_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/sum-fst--d616bbffcf7df184660e265f.md) | 130 | `result-track:d616bbffcf7df184660e265fdb4ef41b7c93c52202c24e3c958e917bac1b96fb` |
| 18 | `theorem` | [sum_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/sum-snd--de78309cbb1365f5e280d2cd.md) | 135 | `result-track:de78309cbb1365f5e280d2cda1863c66cb35c186b8787f8a83dcdf36afdd56b9` |
| 19 | `def` | [bool](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/bool--d26eb0cf2724c9ccc9974d0d.md) | 140 | `declaration-track:d26eb0cf2724c9ccc9974d0d33cb74a47372e8af6c86e84f151c154d6f4055d9` |
| 20 | `theorem` | [bool_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/bool-fst--db0ff9498823c852d9e0a344.md) | 145 | `result-track:db0ff9498823c852d9e0a3446fa046fe8e181d5143d941469884ecc3852b73e3` |
| 21 | `theorem` | [bool_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/bool-snd--8d648d6b3ed98b6a71642765.md) | 149 | `result-track:8d648d6b3ed98b6a71642765a5403e3d2d2cda90af79a5f9e7a3f7220a66f365` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/instance--76371fd19d6268d4af24bd43.md) | 152 | `declaration-track:76371fd19d6268d4af24bd43f0117c396516a3c8b348df257dd6bf47b388c551` |
| 23 | `def` | [prop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/prop--6f4cea59e85c936979325cbf.md) | 156 | `declaration-track:6f4cea59e85c936979325cbf3591408879eda7b586b910ebcd659a3f75f77d50` |
| 24 | `theorem` | [prop_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/prop-fst--ef991d2f0b73097940b9fd4a.md) | 161 | `result-track:ef991d2f0b73097940b9fd4aaf9ff7f650619c36f99bb65fad6dd78e14ae12e2` |
| 25 | `theorem` | [prop_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Varianteb76595d2c373461bec3a7791ce82a0666aa2a202f5f393c23036cdb96874ede.lean/declarations/prop-snd--c4ac1b00ebb6c6629e810eca.md) | 166 | `result-track:c4ac1b00ebb6c6629e810ecacec67b3eed34f7df5b2f3d08ca7add74ec851119` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
