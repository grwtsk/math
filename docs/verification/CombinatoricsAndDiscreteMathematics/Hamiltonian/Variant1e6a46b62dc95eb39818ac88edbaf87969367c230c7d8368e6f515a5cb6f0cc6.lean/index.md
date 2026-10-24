# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Hamiltonian.Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3eeb27ff32b0125c6eaea3e4986c7bb9a4dea09",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3eeb27ff32b0125c6eaea3e4986c7bb9a4dea09`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity.EdgeConnectivity` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHamiltonian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian--3bfa78649702ef22a67908d1.md) | 38 | `declaration-track:3bfa78649702ef22a67908d16b00996d2747c775cd940914eaf93fe3fb2991f9` |
| 2 | `lemma` | [IsHamiltonian.map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-map--b613bd9373e1bf03c61e9a49.md) | 41 | `result-track:b613bd9373e1bf03c61e9a491ac146d419943f39ea2f1b6509a1c83f7f11fcd6` |
| 3 | `lemma` | [IsHamiltonian.mem_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-mem-support--3eee75229d7ebb51083f7221.md) | 46 | `result-track:3eee75229d7ebb51083f72211e1c47d5c21154c133b03c89169d885a9d9b9662` |
| 4 | `lemma` | [IsHamiltonian.isPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-ispath--fea29eac9b5070b69596ff4a.md) | 50 | `result-track:fea29eac9b5070b69596ff4aa3f58d47e9b4a88270238480bb32f44fe5b150d0` |
| 5 | `lemma` | [IsPath.isHamiltonian_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ispath-ishamiltonian-of-mem--86067d5bae622668ba43b0de.md) | 54 | `result-track:86067d5bae622668ba43b0de8d56db07ed65da9da7e2fb8437be5e67ca8e635f` |
| 6 | `lemma` | [IsPath.isHamiltonian_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ispath-ishamiltonian-iff--33b5786d87a7f0d989dca2b5.md) | 58 | `result-track:33b5786d87a7f0d989dca2b5d6cd895f01b7fffc87b77a127076eb93449ba475` |
| 7 | `theorem` | [IsHamiltonian.of_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-of-subsingleton--a85408e8e67dc344c2b0f81d.md) | 61 | `result-track:a85408e8e67dc344c2b0f81dbfbf90b00a0bf22d6186d166e93abe4ec6377ec1` |
| 8 | `def` | [IsHamiltonian.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-fintype--985b31e6f8a95508094fa465.md) | 67 | `declaration-track:985b31e6f8a95508094fa4658eb46266d42f0fcd4dad9190fd186e0745aa985a` |
| 9 | `lemma` | [IsHamiltonian.finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-finite--f2fd93dc4863448b40a41af3.md) | 72 | `result-track:f2fd93dc4863448b40a41af3c227e9cfe90ccf230d6336677c49b29ea08e8a73` |
| 10 | `lemma` | [not_isHamiltonian_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/not-ishamiltonian-of-infinite--5ef8a687fa0937e0a1463e2c.md) | 75 | `result-track:5ef8a687fa0937e0a1463e2c0b821cca7891c556636ef3ac9796ca21be072760` |
| 11 | `lemma` | [IsHamiltonian.toFinset_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-tofinset-support--ce133047422e2eecab32ae80.md) | 82 | `result-track:ce133047422e2eecab32ae80408468b95620c2de55a0b93c38a89f3ca32a7210` |
| 12 | `theorem` | [IsHamiltonian.setOfPred_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-setofpred-support--ead5a2ee2a9a8406bb6d41ad.md) | 89 | `result-track:ead5a2ee2a9a8406bb6d41ad9a503157e3e86a8f7b61b7d5694a3505bed6e7aa` |
| 13 | `lemma` | [IsHamiltonian.length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-length-eq--b4d654fe72b737cc2b434a56.md) | 96 | `result-track:b4d654fe72b737cc2b434a56c2ad9be2376378fc7e3e0dcaee456fd3f28343cd` |
| 14 | `lemma` | [IsHamiltonian.length_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-length-support--efbac056f5c58e8abefd4160.md) | 102 | `result-track:efbac056f5c58e8abefd41601e23e799834e74fd5eeeed14ee7afd4b020ccb43` |
| 15 | `def` | [IsHamiltonian.supportGetEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-supportgetequiv--7279f75fb4d71c4ef6824133.md) | 111 | `declaration-track:7279f75fb4d71c4ef6824133e7cfde166de632dc14808f6f4e52b9069f34300d` |
| 16 | `def` | [IsHamiltonian.getVertEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-getvertequiv--ddf88dc7ad11ba3ce92d465d.md) | 117 | `declaration-track:ddf88dc7ad11ba3ce92d465d987a2c6f33234c94adfc873705a952c66137e73c` |
| 17 | `theorem` | [isHamiltonian_iff_support_get_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-iff-support-get-bijective--6f00a0105e2329cac328a852.md) | 123 | `result-track:6f00a0105e2329cac328a8526ed66780d337779aedbc2b233074c1ce5c00ff36` |
| 18 | `theorem` | [IsHamiltonian.getVert_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-getvert-surjective--cb48f7174ce65229f07daa24.md) | 126 | `result-track:cb48f7174ce65229f07daa24804ff8879d63b8574a633bde19411933ff2d1109` |
| 19 | `theorem` | [IsHamiltonian.injective_of_isPath_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-injective-of-ispath-map--42e9c1245fa0e23e5a69f759.md) | 131 | `result-track:42e9c1245fa0e23e5a69f7593a278c84843903170fbbc0ae1801504f32dfb492` |
| 20 | `lemma` | [isHamiltonian_iff_isPath_and_length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-iff-ispath-and-length-eq--f841e69437eea8b013b600e1.md) | 136 | `result-track:f841e69437eea8b013b600e1edcb7fbe2f259fac951a4520d52b8aa14e092d15` |
| 21 | `theorem` | [isHamiltonian_transfer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-transfer--72006576b7da7e2e163c1a26.md) | 147 | `result-track:72006576b7da7e2e163c1a2613bfd7c41cecc3444a73b565f1c7e81f744f7365` |
| 22 | `structure` | [IsHamiltonianCycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltoniancycle--576ef408bf358986a3a56d24.md) | 155 | `declaration-track:576ef408bf358986a3a56d24a990e650a42be0ff8b1b85e5481aa74d5c949bec` |
| 23 | `lemma` | [IsHamiltonianCycle.isCycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltoniancycle-iscycle--6b4b2ec048b6dcb7a625e991.md) | 160 | `result-track:6b4b2ec048b6dcb7a625e9913f840810c24d15a67eb96dba81c6b4cd54c7ca68` |
| 24 | `lemma` | [IsHamiltonianCycle.map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltoniancycle-map--d15c5f312b9bdfec83dc9180.md) | 163 | `result-track:d15c5f312b9bdfec83dc91804ca23edc763a63e1ec50cc2cd286e35f2fa6d581` |
| 25 | `lemma` | [IsHamiltonianCycle.finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltoniancycle-finite--dd98cb4f47942f9a684688ce.md) | 176 | `result-track:dd98cb4f47942f9a684688ce59e4d6d8b50bfb67957e02b508136ea3fab88fdd` |
| 26 | `lemma` | [not_isHamiltonianCycle_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/not-ishamiltoniancycle-of-infinite--117c2ba8c6c7b1e7734d7bf1.md) | 179 | `result-track:117c2ba8c6c7b1e7734d7bf16acd4881b108686939f51dea45b717a99c0d8a28` |
| 27 | `lemma` | [isHamiltonianCycle_isCycle_and_isHamiltonian_tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltoniancycle-iscycle-and-ishamiltonian-tail--36d94d7d617d47a4c396fc45.md) | 182 | `result-track:36d94d7d617d47a4c396fc4598330d0d562393a774b2693a0e5c114cb5390668` |
| 28 | `lemma` | [isHamiltonianCycle_iff_isCycle_and_support_count_tail_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltoniancycle-iff-iscycle-and-support-count-tail-eq-one--58c35f2411d77a0a3f6ebb0e.md) | 186 | `result-track:58c35f2411d77a0a3f6ebb0ea09839aa48015f5128bcb4bf1fce3ba39b7a8beb` |
| 29 | `lemma` | [IsHamiltonianCycle.mem_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltoniancycle-mem-support--a381f8f147de1330d438f75a.md) | 192 | `result-track:a381f8f147de1330d438f75a9a12ce27cd2a3fc00d1c1b67a1e77a5628fe892b` |
| 30 | `lemma` | [IsHamiltonianCycle.length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltoniancycle-length-eq--73d6f3d51d25cf672ccf8228.md) | 198 | `result-track:73d6f3d51d25cf672ccf82287e2380b7e7b301c8c7443e1fc2e9f3816066838a` |
| 31 | `lemma` | [IsHamiltonianCycle.count_support_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltoniancycle-count-support-self--da9a23e002a092d4b9baf203.md) | 204 | `result-track:da9a23e002a092d4b9baf203849d0b498d38cbc796adc9de68d71496547682dc` |
| 32 | `lemma` | [IsHamiltonianCycle.support_count_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltoniancycle-support-count-of-ne--38f938a166d9d490936bdb6a.md) | 209 | `result-track:38f938a166d9d490936bdb6a47af093e786515b2943ed2c22fef40065eb61cda` |
| 33 | `lemma` | [isHamiltonianCycle_iff_isCycle_and_length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltoniancycle-iff-iscycle-and-length-eq--136ebc484a3c92537c787dd5.md) | 213 | `result-track:136ebc484a3c92537c787dd5f28ad1f926daf52cbb39387edabdb77559f285ad` |
| 34 | `lemma` | [isHamiltonianCycle_rotate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltoniancycle-rotate--faae2c148b7aff5a30825243.md) | 220 | `result-track:faae2c148b7aff5a308252438c2bcfeea2d1cafe92172ecede897889894f771a` |
| 35 | `theorem` | [isHamiltonianCycle_transfer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltoniancycle-transfer--7795464579bd60671af118d0.md) | 231 | `result-track:7795464579bd60671af118d0b88082a416b1c7aa7e3ac81ca2a421f18f3118e9` |
| 36 | `def` | [IsHamiltonian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian--598a4ec49ea75d24c5f7d5b3.md) | 248 | `declaration-track:598a4ec49ea75d24c5f7d5b39cfff37835a5da726d54acf77d12761b0ef13393` |
| 37 | `lemma` | [IsHamiltonian.exists_isHamiltonianCycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-exists-ishamiltoniancycle--f80e329c59dceeb426d6aac4.md) | 251 | `result-track:f80e329c59dceeb426d6aac417474baeeba4ee0106748f867b1c244b3d5f1b85` |
| 38 | `lemma` | [IsHamiltonian.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-mono--321cf20bd03050b74bfdd9c2.md) | 255 | `result-track:321cf20bd03050b74bfdd9c2f2b1b4b7cae2c2a17924d9dde542301f4cc596dd` |
| 39 | `lemma` | [not_isHamiltonian_of_isEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/not-ishamiltonian-of-isempty--053ea3177360da23a8436983.md) | 259 | `result-track:053ea3177360da23a8436983e46ad51598edf669f18e040e369562bc29e39361` |
| 40 | `lemma` | [IsHamiltonian.connected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-connected--6e93e514cdcb75602a4ebd2d.md) | 262 | `result-track:6e93e514cdcb75602a4ebd2d6b210b819e3fd693c9bcd6a51e85809211a58ec8` |
| 41 | `lemma` | [IsHamiltonian.of_card_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-of-card-eq-one--0ea3c67fbd6d09fb582d29dc.md) | 273 | `result-track:0ea3c67fbd6d09fb582d29dce5624187a411a2b38c49e9c1bedafcbfa9bc4d60` |
| 42 | `lemma` | [not_isHamiltonian_of_card_eq_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/not-ishamiltonian-of-card-eq-two--03dc731c17a805614c7bae8a.md) | 276 | `result-track:03dc731c17a805614c7bae8a3e9552cde2f1071705758a0ec1f91ed8429cf500` |
| 43 | `lemma` | [not_isHamiltonian_bot_of_card_ne_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/not-ishamiltonian-bot-of-card-ne-one--683e3da5b1565bb0b001f82d.md) | 282 | `result-track:683e3da5b1565bb0b001f82d09bf077bd0aa2e7cdab255732669a0e2fc3c9764` |
| 44 | `lemma` | [IsHamiltonian.of_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/ishamiltonian-of-unique--b3ce7f75de5b125f5424821c.md) | 288 | `result-track:b3ce7f75de5b125f5424821ced139f7bec28d6ffd9a4b7bda60ae1d8fc13c27f` |
| 45 | `theorem` | [IsBridge.not_isHamiltonian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/declarations/isbridge-not-ishamiltonian--895457a2bf32cbb62d37fde4.md) | 292 | `result-track:895457a2bf32cbb62d37fde4ab42040223637df4cfb529d3c864f8a73cceb6e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
