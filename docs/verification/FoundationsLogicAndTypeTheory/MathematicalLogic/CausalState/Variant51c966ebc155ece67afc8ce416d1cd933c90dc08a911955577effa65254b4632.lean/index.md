# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CausalState.Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05aa7f8b8f26c8c7fe5563ce5899b7ccaacb34b3",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05aa7f8b8f26c8c7fe5563ce5899b7ccaacb34b3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.ObservableRecursion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Quot` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CausalEquivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalequivalent--5882de3212178cb720075489.md) | 42 | `declaration-track:5882de3212178cb7200754899c92b472a913ffa71db8c508374bf397cbb55b95` |
| 2 | `theorem` | [causalEquivalent_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalequivalent-refl--98979ce231bc6f2a2bb3f70a.md) | 49 | `result-track:98979ce231bc6f2a2bb3f70ae404f2d220c3e303999906ba9fa20b9ba744aae6` |
| 3 | `theorem` | [causalEquivalent_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalequivalent-symm--7bb2471a04d880b2be5c2745.md) | 56 | `result-track:7bb2471a04d880b2be5c2745bebebfb54823de3506ac7c3708ad6df14c6ccca3` |
| 4 | `theorem` | [causalEquivalent_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalequivalent-trans--26f971b5b199d8abb752daba.md) | 64 | `result-track:26f971b5b199d8abb752daba312b081f8359c7467b12f8d09fe8b6bfdfafb7f6` |
| 5 | `def` | [causalSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalsetoid--51035da411150aea78837ec9.md) | 74 | `declaration-track:51035da411150aea78837ec994cad6868a048d9866572846df106a7ff0cb60e9` |
| 6 | `def` | [CausalState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalstate--d4b7da1a46281e921d22b9d8.md) | 84 | `declaration-track:d4b7da1a46281e921d22b9d89ea03367abb7cc5e4a198c2c7fd02cdf1a17f08f` |
| 7 | `def` | [toCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/tocausal--f2e0b36aaf7361d3e92400b8.md) | 89 | `declaration-track:f2e0b36aaf7361d3e92400b8f3c431bf93f9c7f9a729a68e98ffc72b6b0a0623` |
| 8 | `theorem` | [toCausal_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/tocausal-surjective--12eded1e293efd5d2c6302f4.md) | 95 | `result-track:12eded1e293efd5d2c6302f42f9bcdb3059d51743264da5f783395dcd68c8fe0` |
| 9 | `theorem` | [toCausal_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/tocausal-eq-iff--48f94edaccbd34c874167526.md) | 104 | `result-track:48f94edaccbd34c874167526d31acd1ad3a1ea7a1b09edcc0e30d3b14ddb0392` |
| 10 | `theorem` | [causalEquivalent_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalequivalent-step--708f10425fdffdeb7bfb428f.md) | 116 | `result-track:708f10425fdffdeb7bfb428f2b8f424db756308df5ae73e951a52a3752813973` |
| 11 | `def` | [causalStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalstep--6abf0eed5dfd809689b9c52b.md) | 126 | `declaration-track:6abf0eed5dfd809689b9c52b89b01ad6df974a4976c68663a4e461732274f1fe` |
| 12 | `theorem` | [causalStep_toCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalstep-tocausal--db2076c5f7e8cb3d41f7ab94.md) | 134 | `result-track:db2076c5f7e8cb3d41f7ab94ffa6408a0434d39eafb830511f5adf73665b32f5` |
| 13 | `def` | [runCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/runcausal--f1e754872a4556ff591cc84a.md) | 143 | `declaration-track:f1e754872a4556ff591cc84a48b979c58bb00352069669d52defd509f2a4041c` |
| 14 | `theorem` | [runCausal_toCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/runcausal-tocausal--62472d0ea614af88d4fca860.md) | 152 | `result-track:62472d0ea614af88d4fca860640ff0442a8fbc7d8014f3ca25c9580385fe1443` |
| 15 | `theorem` | [causalEquivalent_observe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalequivalent-observe--80449ebbbc1838ba3c16e1c1.md) | 165 | `result-track:80449ebbbc1838ba3c16e1c1117da56f4f0591bee33240f4723447f2c0f0cca3` |
| 16 | `def` | [causalObserve](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalobserve--a27597dc94b1bf089ceeccf7.md) | 174 | `declaration-track:a27597dc94b1bf089ceeccf79f2d0dc77f8cae8d198aa7f8fd7c63ad5294f761` |
| 17 | `theorem` | [causalObserve_toCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalobserve-tocausal--715fd0dd21c6f7fb42160950.md) | 182 | `result-track:715fd0dd21c6f7fb42160950b20654dfba889815c7b465f46a6f2e97877ba878` |
| 18 | `theorem` | [causalObserve_runCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalobserve-runcausal--bc0ad64a29d7be031b549832.md) | 190 | `result-track:bc0ad64a29d7be031b54983235366206cd538ff70287a77ecf4d16c682a4b541` |
| 19 | `abbrev` | [Behavior](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/behavior--721b236285722ccd1f472d6b.md) | 200 | `declaration-track:721b236285722ccd1f472d6b50469087ecd5db35f7fadf827e01f901d83cbb3f` |
| 20 | `def` | [behavior](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/behavior--61320436763b1c92ce048544.md) | 205 | `declaration-track:61320436763b1c92ce0485447eb2311f80da55e3b02c7fc8cde54b2882ea1cb7` |
| 21 | `theorem` | [causalEquivalent_iff_behavior_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalequivalent-iff-behavior-eq--04b8ebaaa57bba74e23c8e14.md) | 211 | `result-track:04b8ebaaa57bba74e23c8e1461831912e94a4aa136f26f2481f88dc89b3ab2ff` |
| 22 | `def` | [BehaviorImage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/behaviorimage--87213a44e1c34003b0afee36.md) | 223 | `declaration-track:87213a44e1c34003b0afee36d68f13a7582c940b1bbf95a5cc64dd33d00a9897` |
| 23 | `def` | [causalStateEquivBehaviorImage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/declarations/causalstateequivbehaviorimage--b6bf28f5d4c0a972fd87e363.md) | 228 | `declaration-track:b6bf28f5d4c0a972fd87e36344641c72750b88baa13fa2c5187dd38990480165` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
