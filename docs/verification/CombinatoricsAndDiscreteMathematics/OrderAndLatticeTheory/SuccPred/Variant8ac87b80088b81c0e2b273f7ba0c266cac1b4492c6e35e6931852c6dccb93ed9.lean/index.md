# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SuccPred.Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b707bded0c3fa179c41d98905c7d31cf7219d8ad",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b707bded0c3fa179c41d98905c7d31cf7219d8ad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ico_succ_left_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ico-succ-left-eq-ioo--3e6b6fa0e9eb6ddec46c6068.md) | 44 | `result-track:3e6b6fa0e9eb6ddec46c60683857233805b903ade643a828a7179b623e2e7f67` |
| 2 | `lemma` | [Icc_succ_left_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/icc-succ-left-eq-ioc-of-not-ismax--8bfa2de81eeb2d70017d3a34.md) | 50 | `result-track:8bfa2de81eeb2d70017d3a3442c5d4acbd8c08e35268db14eecb12a173c42e03` |
| 3 | `lemma` | [Ico_succ_right_eq_Icc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ico-succ-right-eq-icc-of-not-ismax--02247b6a8dbd2411c7ff7022.md) | 53 | `result-track:02247b6a8dbd2411c7ff70224ab444c3d3dc8d2ff409903c64306261e74f5fb2` |
| 4 | `lemma` | [Ioo_succ_right_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ioo-succ-right-eq-ioc-of-not-ismax--d1ec4581688c72408c28a30c.md) | 56 | `result-track:d1ec4581688c72408c28a30ca212e4a1e15c87792868253470b0cb5b05998a7b` |
| 5 | `lemma` | [Ico_succ_succ_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ico-succ-succ-eq-ioc-of-not-ismax--ad5b8478919844880db34ba3.md) | 59 | `result-track:ad5b8478919844880db34ba3172df074d3caebd2dab88e11691c3de16a201b98` |
| 6 | `lemma` | [insert_Icc_succ_left_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-icc-succ-left-eq-icc--10a531a9ad3e2a6a3dfd19ed.md) | 65 | `result-track:10a531a9ad3e2a6a3dfd19ed145383e394f1b680eff99dd24f6c659e7c4df54e` |
| 7 | `lemma` | [insert_Icc_right_eq_Icc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-icc-right-eq-icc-succ--0722280fd79f9894d0cd10a2.md) | 68 | `result-track:0722280fd79f9894d0cd10a284a04a14c04ce326533d52bffe8ba8669d538aaa` |
| 8 | `lemma` | [insert_Ico_right_eq_Ico_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-ico-right-eq-ico-succ-of-not-ismax--d2b526a72ca741dd751e04bf.md) | 75 | `result-track:d2b526a72ca741dd751e04bfc79499ba9339aa1e88e022aa8576dbfeff241856` |
| 9 | `lemma` | [insert_Ico_succ_left_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-ico-succ-left-eq-ico--a96af775d92f41e25f218680.md) | 82 | `result-track:a96af775d92f41e25f21868069c1dccf10470e8bc95eb51e94e3c0c8bfe204aa` |
| 10 | `lemma` | [insert_Ioc_right_eq_Ioc_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-ioc-right-eq-ioc-succ-of-not-ismax--3276718970a608c52a372309.md) | 85 | `result-track:3276718970a608c52a372309b5a3cdf0853e61042b246ee2f05e1832687557e3` |
| 11 | `lemma` | [insert_Ioc_succ_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-ioc-succ-left-eq-ioc--3510f3dba0aef972504bc2c6.md) | 89 | `result-track:3510f3dba0aef972504bc2c677327b78aa7cac0fb145268059c3e467936c96bf` |
| 12 | `lemma` | [Icc_succ_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/icc-succ-left-eq-ioc--cb9b65a69003377decb0c575.md) | 100 | `result-track:cb9b65a69003377decb0c57533e04de8c3a9583012f4e4f0afee744462433cd0` |
| 13 | `lemma` | [Ico_succ_right_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ico-succ-right-eq-icc--a558b9fa4dc1931573d2949a.md) | 103 | `result-track:a558b9fa4dc1931573d2949a9af837416704e171154d84e930da0d62cdd51f3d` |
| 14 | `lemma` | [Ioo_succ_right_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ioo-succ-right-eq-ioc--bd756e1a842c4ea234ac946f.md) | 106 | `result-track:bd756e1a842c4ea234ac946fb81c024280d64f82a999d96a2af00ffcf21d0fcc` |
| 15 | `lemma` | [Ico_succ_succ_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ico-succ-succ-eq-ioc--dc1bb852a61b83bd335e19af.md) | 109 | `result-track:dc1bb852a61b83bd335e19af4538d870e1aeadc5c338dda644154e6621580e3c` |
| 16 | `lemma` | [insert_Ico_right_eq_Ico_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-ico-right-eq-ico-succ--8d8a9182a7b0f6ed15d820da.md) | 114 | `result-track:8d8a9182a7b0f6ed15d820da4c1e0c0b5a24820e19c7a8120959050855669fdb` |
| 17 | `lemma` | [insert_Ioc_right_eq_Ioc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-ioc-right-eq-ioc-succ--fb461530955db965ae88eb86.md) | 120 | `result-track:fb461530955db965ae88eb865a7841a914d507b7f0c0d7a1b6d6ca48a0ffb899` |
| 18 | `lemma` | [Ioc_pred_right_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ioc-pred-right-eq-ioo--e0a3095120595c95dc771ddd.md) | 134 | `result-track:e0a3095120595c95dc771dddadadac923a18592b93de45bb8ed9fe6f61eb2056` |
| 19 | `lemma` | [Icc_pred_right_eq_Ico_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/icc-pred-right-eq-ico-of-not-ismin--94bac16d3f9d59b0c1eea045.md) | 140 | `result-track:94bac16d3f9d59b0c1eea045f9939ed4123c0b9ea9a3984a2d37165168f13fb5` |
| 20 | `lemma` | [Ioc_pred_left_eq_Icc_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ioc-pred-left-eq-icc-of-not-ismin--e428409883cf88aeea02caac.md) | 143 | `result-track:e428409883cf88aeea02caac43a8340cbb3de1f8dd63014488f30d86464be5a2` |
| 21 | `lemma` | [Ioo_pred_left_eq_Ioc_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ioo-pred-left-eq-ioc-of-not-ismin--ef238a647ee2dfd3473dcd71.md) | 146 | `result-track:ef238a647ee2dfd3473dcd719441b851aa8f2356af4b3259242bf3dcfff91cb8` |
| 22 | `lemma` | [Ioc_pred_pred_eq_Ico_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ioc-pred-pred-eq-ico-of-not-ismin--0eb11ddc7f0f2c499708620f.md) | 149 | `result-track:0eb11ddc7f0f2c499708620fa5bd50391e0c8640b64cda42ecb9d34062d5c7a4` |
| 23 | `lemma` | [insert_Icc_pred_right_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-icc-pred-right-eq-icc--62691f80ef81e109a74824fe.md) | 155 | `result-track:62691f80ef81e109a74824fe651dff44d5e75cfea521b23d6de49c17a09f0c9c` |
| 24 | `lemma` | [insert_Icc_left_eq_Icc_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-icc-left-eq-icc-pred--c3e748f0522431f5ff1b3613.md) | 158 | `result-track:c3e748f0522431f5ff1b3613540951752676df025a76495e99c61b569cdd4b47` |
| 25 | `lemma` | [insert_Ioc_left_eq_Ioc_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-ioc-left-eq-ioc-pred-of-not-ismin--5b0d16d7137adc8a82cd8009.md) | 165 | `result-track:5b0d16d7137adc8a82cd80096ac01e2e2cbc5a06732ceb29564a3dce50dde377` |
| 26 | `lemma` | [insert_Ioc_pred_right_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-ioc-pred-right-eq-ioc--796391033d7e05e7b19a0574.md) | 172 | `result-track:796391033d7e05e7b19a057498ce57d43cbd8ff18e7ff2587d135534a411257b` |
| 27 | `lemma` | [insert_Ico_left_eq_Ico_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-ico-left-eq-ico-pred-of-not-ismin--f88cfed8609a24f1974f72e8.md) | 175 | `result-track:f88cfed8609a24f1974f72e8f051d778695823da7232e7d9bbe568322f88954a` |
| 28 | `lemma` | [insert_Ico_pred_right_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-ico-pred-right-eq-ico--8138fe609f81fd8280501358.md) | 179 | `result-track:8138fe609f81fd8280501358f82bbc7db9bf7c8e68ae99c7efaad7d324ec52b5` |
| 29 | `lemma` | [Icc_pred_right_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/icc-pred-right-eq-ico--90545e38d978ba47c56c0f21.md) | 190 | `result-track:90545e38d978ba47c56c0f2140232ed41318c6471c59c76c42f31a0ba2b77c93` |
| 30 | `lemma` | [Ioc_pred_left_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ioc-pred-left-eq-icc--e6837e3a1a700b0f97674ffc.md) | 193 | `result-track:e6837e3a1a700b0f97674ffc963dbbed4606c943b7937644f8ea01c83795a0a4` |
| 31 | `lemma` | [Ioo_pred_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ioo-pred-left-eq-ioc--7d33bbcc00421689e61638b0.md) | 196 | `result-track:7d33bbcc00421689e61638b0a66d3e791871281b97651c94e53536598c167754` |
| 32 | `lemma` | [Ioc_pred_pred_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ioc-pred-pred-eq-ico--6084e5fa8eb7b5a7222ad74a.md) | 199 | `result-track:6084e5fa8eb7b5a7222ad74aa0993a941413cd0cb3370e20416e8fdacee3e9c4` |
| 33 | `lemma` | [insert_Ioc_left_eq_Ioc_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-ioc-left-eq-ioc-pred--e2f8c5c6bbfd78ac44d367ff.md) | 204 | `result-track:e2f8c5c6bbfd78ac44d367ffcb14aece7993c8f9b59ddca104df7087597526b5` |
| 34 | `lemma` | [insert_Ico_left_eq_Ico_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/insert-ico-left-eq-ico-pred--5d5adea5f2e55de99fdb03c5.md) | 210 | `result-track:5d5adea5f2e55de99fdb03c59a9d7481b09649f3a1f7e96da2dd599811100471` |
| 35 | `lemma` | [Icc_succ_pred_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/icc-succ-pred-eq-ioo--df20d31f59ff3c54653cb70d.md) | 218 | `result-track:df20d31f59ff3c54653cb70d3f043d91edbfaa66e127e2b5477a52583277cd5d` |
| 36 | `lemma` | [Iio_succ_eq_Iic_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/iio-succ-eq-iic-of-not-ismax--d8882f9b59e145777557face.md) | 231 | `result-track:d8882f9b59e145777557face72ec5960a7c9d511f17a2c30c379690e3efb9673` |
| 37 | `lemma` | [Iio_succ_eq_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/iio-succ-eq-iic--f2a5a6a939604b4a8d8e90e0.md) | 236 | `result-track:f2a5a6a939604b4a8d8e90e0f2e6d88d8a54cc737a7132f825bcc168e22fc569` |
| 38 | `lemma` | [Iic_pred_eq_Iio_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/iic-pred-eq-iio-of-not-ismin--30ff423d4b31b41dcc504013.md) | 243 | `result-track:30ff423d4b31b41dcc504013433b5f3201018089fc14175726ba402e8fb78fd5` |
| 39 | `lemma` | [Iic_pred_eq_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/iic-pred-eq-iio--b257c88ce48cce3103386627.md) | 248 | `result-track:b257c88ce48cce3103386627521a1e139ecef79424c422502314740acdcabf77` |
| 40 | `lemma` | [Ici_succ_eq_Ioi_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ici-succ-eq-ioi-of-not-ismax--2160b3012058a60cb2cf69e6.md) | 257 | `result-track:2160b3012058a60cb2cf69e62a8feeaa7eb5e53a1cde917a37b4443a82c6e3c9` |
| 41 | `lemma` | [Ici_succ_eq_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ici-succ-eq-ioi--04128d4d35ceb79ee6c40f17.md) | 262 | `result-track:04128d4d35ceb79ee6c40f17d842161aa272ae0c5e684f57f743e5fc6ca696a8` |
| 42 | `lemma` | [Ioi_pred_eq_Ici_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ioi-pred-eq-ici-of-not-ismin--66e96a267e1a599f6d1b0e71.md) | 269 | `result-track:66e96a267e1a599f6d1b0e7134377d116342fa6fbd879b1b02a01030291ec368` |
| 43 | `lemma` | [Ioi_pred_eq_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant8ac87b80088b81c0e2b273f7ba0c266cac1b4492c6e35e6931852c6dccb93ed9.lean/declarations/ioi-pred-eq-ici--2c2964f9c70d585a8b184731.md) | 274 | `result-track:2c2964f9c70d585a8b184731b63ca243c3fd30a3d7d217ae3e93632ca2cb258a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
