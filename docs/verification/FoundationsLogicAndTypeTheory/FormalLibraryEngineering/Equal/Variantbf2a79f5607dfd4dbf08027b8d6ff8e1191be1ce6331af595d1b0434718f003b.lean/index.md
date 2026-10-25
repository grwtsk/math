# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Equal.Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "860bcf941ca39802360808f779c938fc94b21b56",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `860bcf941ca39802360808f779c938fc94b21b56`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean.json)

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
| 1 | `theorem` | [Bool.not_beq_not](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bool-not-beq-not--1b7e9f0062a4447c41f16ccb.md) | 29 | `result-track:1b7e9f0062a4447c41f16ccb9abc7cf55335a37121ac68ef5dffb890bc8cc73d` |
| 2 | `theorem` | [BitVec.not_beq_not](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-not-beq-not--121522ba5ff8e76721e1b3b3.md) | 33 | `result-track:121522ba5ff8e76721e1b3b3b9ce9fe735f7e9fa2bbb05b93cf3de25161f087d` |
| 3 | `theorem` | [BitVec.xor_beq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-xor-beq-zero-iff--2e32563f05f442d2b1c7a1a7.md) | 38 | `result-track:2e32563f05f442d2b1c7a1a7c24821894684d7eb536dc5624cedf2ea4cda19ce` |
| 4 | `theorem` | [BitVec.zero_beq_xor_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-zero-beq-xor-iff--8c58515d13f5bab1db0f1016.md) | 43 | `result-track:8c58515d13f5bab1db0f101692dc6019fb03d261708790dc3ffae3a1774dbb72` |
| 5 | `theorem` | [BitVec.and_eq_allOnes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-and-eq-allones--16a46bd50e343450c6b6ead4.md) | 48 | `result-track:16a46bd50e343450c6b6ead4a6b13e2c1ca78bc909c0f2af9ab8cdd89c6ec17b` |
| 6 | `theorem` | [BitVec.allOnes_eq_and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-allones-eq-and--ff0e51902fa3bb10ab0c50e0.md) | 52 | `result-track:ff0e51902fa3bb10ab0c50e0e5e3d19268c5f4f85fdf46a43cc8c820618a8b0b` |
| 7 | `theorem` | [BitVec.xor_left_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-xor-left-inj--e163111fecd57da5d98f4602.md) | 57 | `result-track:e163111fecd57da5d98f4602ccdcfa1bad69183274196a1b8d351155201ba246` |
| 8 | `theorem` | [BitVec.xor_left_inj'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-xor-left-inj--0934102b595d3dc19b8f7781.md) | 62 | `result-track:0934102b595d3dc19b8f778186e8a19c7d9a34fe3f690ebe8fb4480a7e757079` |
| 9 | `theorem` | [BitVec.xor_right_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-xor-right-inj--61b108c51b0ded6fa579c6d3.md) | 67 | `result-track:61b108c51b0ded6fa579c6d34df0e492c834a8cd043b08b600531468e7e51720` |
| 10 | `theorem` | [BitVec.xor_right_inj'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-xor-right-inj--d79c1fdac11ecd460ade9eb1.md) | 72 | `result-track:d79c1fdac11ecd460ade9eb19f20e396950658073e00f68514e58b8124339935` |
| 11 | `theorem` | [BitVec.add_left_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-add-left-inj--1aadf76731c95f578ee94f0a.md) | 76 | `result-track:1aadf76731c95f578ee94f0a69e64ff949a6440febebbf1bea1e3c62dc87ffc4` |
| 12 | `theorem` | [BitVec.add_left_inj'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-add-left-inj--655f15b659a456ca1f03c5cf.md) | 80 | `result-track:655f15b659a456ca1f03c5cf9b641f9f82917a7f127ba33cd9f41d6c27f40f99` |
| 13 | `theorem` | [BitVec.add_right_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-add-right-inj--1244d58bc6c2a8a108b537f6.md) | 83 | `result-track:1244d58bc6c2a8a108b537f69354049175c2e26850b9a238642dbf5150332f8c` |
| 14 | `theorem` | [BitVec.add_right_inj'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-add-right-inj--00c0493503a9c85baa10136b.md) | 87 | `result-track:00c0493503a9c85baa10136bd5b50e3a5e018cddc0825f22e446e8c7dc4f5435` |
| 15 | `theorem` | [BitVec.add_left_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-add-left-eq-self--f04efc5018ea32b692019299.md) | 90 | `result-track:f04efc5018ea32b692019299fb70963c32037168293424f652617037ac75c1d2` |
| 16 | `theorem` | [BitVec.add_right_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-add-right-eq-self--eb661b2f1a7625d88c45696b.md) | 94 | `result-track:eb661b2f1a7625d88c45696b6ac26e4909a354ff7a8e05cc9da83aa5d8c1c4d0` |
| 17 | `theorem` | [BitVec.self_eq_add_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-self-eq-add-right--0192eafe2133bf410e0321a5.md) | 98 | `result-track:0192eafe2133bf410e0321a5cdc6db75ecbe58f8b1068fd1a7bc13d9f83418a9` |
| 18 | `theorem` | [BitVec.self_eq_add_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-self-eq-add-left--0690d3d210d1ab873ee6aab9.md) | 102 | `result-track:0690d3d210d1ab873ee6aab93b3312fee8f65c4250aaa68647f190ef89d6e021` |
| 19 | `theorem` | [BitVec.eq_sub_iff_add_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-eq-sub-iff-add-eq--344d0b622d0700c8d393740d.md) | 107 | `result-track:344d0b622d0700c8d393740db951678705b0e1286c8c661b4210455e158ff611` |
| 20 | `theorem` | [BitVec.eq_neg_add_iff_add_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-eq-neg-add-iff-add-eq--411362516fc7cf898724bfd4.md) | 112 | `result-track:411362516fc7cf898724bfd4ad863c90972a3f548652bc1dd1f499b9ab98dccb` |
| 21 | `theorem` | [BitVec.sub_eq_iff_eq_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-sub-eq-iff-eq-add--d5bdf8bbd08bef4868d482d0.md) | 117 | `result-track:d5bdf8bbd08bef4868d482d089066a8fb5e09b1f6de9ef1869adafca43e471bb` |
| 22 | `theorem` | [BitVec.neg_add_eq_iff_eq_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-neg-add-eq-iff-eq-add--458ea8b86a6ae9a1322e7a31.md) | 122 | `result-track:458ea8b86a6ae9a1322e7a31defb0fab6ca2ed2e117524533674cd88716a0caa` |
| 23 | `theorem` | [Bool.bif_eq_bif](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bool-bif-eq-bif--d1fd0acf37057720f0c15651.md) | 127 | `result-track:d1fd0acf37057720f0c15651d513abf277eadb187b52df157748834a52073c7d` |
| 24 | `theorem` | [Bool.not_bif_eq_bif](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bool-not-bif-eq-bif--fde4a00f0758f8b10f1f1629.md) | 132 | `result-track:fde4a00f0758f8b10f1f16293e4cf36c69e43740bc58b4d8fb0e6fe94f019e88` |
| 25 | `theorem` | [Bool.bif_eq_not_bif](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bool-bif-eq-not-bif--07837dc7ccdcafaacd9815b7.md) | 137 | `result-track:07837dc7ccdcafaacd9815b7d9075ccbc331e28a460e9891caee5e837d096b91` |
| 26 | `theorem` | [Bool.bif_eq_bif'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bool-bif-eq-bif--7710d01be26caa2877c36a83.md) | 142 | `result-track:7710d01be26caa2877c36a831ee393b016524d7704c17d791dbaa44452ae8fc2` |
| 27 | `theorem` | [Bool.not_bif_eq_bif'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bool-not-bif-eq-bif--a9fab243a2c8ac621201df9f.md) | 147 | `result-track:a9fab243a2c8ac621201df9f5588bdb1cc5aa094e911af0435cb75ef9c96a874` |
| 28 | `theorem` | [Bool.bif_eq_not_bif'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bool-bif-eq-not-bif--d83472ebb710cb7b9c26daa6.md) | 152 | `result-track:d83472ebb710cb7b9c26daa67ddc4165f447f1fa8c642f8916335b7026bf8736` |
| 29 | `theorem` | [BitVec.bif_eq_bif](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-bif-eq-bif--c04bf18d69d708bc2faeb53d.md) | 157 | `result-track:c04bf18d69d708bc2faeb53dcb8b69ba25c247a70a043325dfa1acb47907df46` |
| 30 | `theorem` | [BitVec.not_bif_eq_bif](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-not-bif-eq-bif--7c29a96f844915efda2a85f6.md) | 162 | `result-track:7c29a96f844915efda2a85f621d3c80c697aeee30bbb2485540b6b68f460e05a` |
| 31 | `theorem` | [BitVec.bif_eq_not_bif](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-bif-eq-not-bif--f201218685f374afbc0b2516.md) | 167 | `result-track:f201218685f374afbc0b251661f384ece86d038478e298bc15432227e5143dad` |
| 32 | `theorem` | [BitVec.bif_eq_bif'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-bif-eq-bif--fe0f663cd5e7e3587c013560.md) | 172 | `result-track:fe0f663cd5e7e3587c013560049dee82c153c2275cfd3b08ab8f85e0d5a9387d` |
| 33 | `theorem` | [BitVec.not_bif_eq_bif'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-not-bif-eq-bif--56bbfd267032ca82434489f6.md) | 177 | `result-track:56bbfd267032ca82434489f6ca719a0fea5875fa8d8fe6203f09d4c18469c4a5` |
| 34 | `theorem` | [BitVec.bif_eq_not_bif'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-bif-eq-not-bif--c0e367f5d31459aa16bb7723.md) | 182 | `result-track:c0e367f5d31459aa16bb772329f93224df0320bdddc7febac5c188f432b439ab` |
| 35 | `theorem` | [BitVec.not_eq_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-not-eq-comm--b8e3c0bd15a878b2a7918255.md) | 187 | `result-track:b8e3c0bd15a878b2a7918255285da46acd344022189a7af5312d92e124582cae` |
| 36 | `theorem` | [BitVec.not_eq_comm'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variantbf2a79f5607dfd4dbf08027b8d6ff8e1191be1ce6331af595d1b0434718f003b.lean/declarations/bitvec-not-eq-comm--f0c9621fa5a8c7aacc9dfa15.md) | 192 | `result-track:f0c9621fa5a8c7aacc9dfa15abe5e9061fea0cf0ca44b14c55bade406ad5fdaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
