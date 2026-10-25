# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c488e856445eefd306c130e5336696540e8c23fa",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c488e856445eefd306c130e5336696540e8c23fa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [not_isLeft_and_isRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/not-isleft-and-isright--11deee1617eed8f351515644.md) | 28 | `result-track:11deee1617eed8f3515156442fc96bdc134bef499d8f77d018f466fd47b30c01` |
| 2 | `theorem` | [exists_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/exists-sum--fa6e0c58cdaa260035669d2a.md) | 35 | `result-track:fa6e0c58cdaa260035669d2a10f59fc18af10285f95fa720001293935064450c` |
| 3 | `theorem` | [inl_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/inl-injective--0510a161afd7a91ec079c78b.md) | 40 | `result-track:0510a161afd7a91ec079c78bd24cded386bb7f6b0353e0a48c3d936df1fb758d` |
| 4 | `theorem` | [inr_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/inr-injective--1e1ac732708f26baafd4c906.md) | 42 | `result-track:1e1ac732708f26baafd4c906e1028f7e12ec5082398e32b330c55220cea3cdf0` |
| 5 | `theorem` | [sum_rec_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/sum-rec-congr--309f62e5fe45e86d3aa71a5b.md) | 44 | `result-track:309f62e5fe45e86d3aa71a5bb398e2ef21c64a0b506ff1435bde0c5082ff2d1f` |
| 6 | `theorem` | [eq_left_iff_getLeft_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/eq-left-iff-getleft-eq--7f1c34a9ca03d2b4e8667815.md) | 52 | `result-track:7f1c34a9ca03d2b4e86678151d7ae3447c9fc5b77651c6ad7bb23dc835cae8ff` |
| 7 | `theorem` | [eq_right_iff_getRight_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/eq-right-iff-getright-eq--90ca6253ba35226cb25ad357.md) | 55 | `result-track:90ca6253ba35226cb25ad3576c007391c16decd765630f67b07f006040bf743b` |
| 8 | `theorem` | [getLeft_eq_getLeft?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/getleft-eq-getleft--6893bfcf9c026951acc64803.md) | 58 | `result-track:6893bfcf9c026951acc64803c849db25f0dc28f43587144c3c29f910ddca9d3b` |
| 9 | `theorem` | [getRight_eq_getRight?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/getright-eq-getright--e1583d5edb757f69637a3df2.md) | 61 | `result-track:e1583d5edb757f69637a3df29424c4bf92e6478b9afe29f57971f0c6573ccc19` |
| 10 | `theorem` | [isSome_getLeft?_iff_isLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/issome-getleft-iff-isleft--fbf34782e6f0dec12926c1d4.md) | 64 | `result-track:fbf34782e6f0dec12926c1d49d8583cab92ceea35f81053c96ccad293a68fc34` |
| 11 | `theorem` | [isSome_getRight?_iff_isRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/issome-getright-iff-isright--580e508fa5f3f5dc3fce1c9a.md) | 67 | `result-track:580e508fa5f3f5dc3fce1c9a941684cd0b30af158578f7ae7794dddaf635a1ec` |
| 12 | `theorem` | [update_elim_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/update-elim-inl--f534bcf71c7da0667482ea3f.md) | 75 | `result-track:f534bcf71c7da0667482ea3f9559fe885045f46ea90243948448e5c3a7024c14` |
| 13 | `theorem` | [update_elim_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/update-elim-inr--af949fc4e24643f181201ead.md) | 80 | `result-track:af949fc4e24643f181201eadc2acd5694f623b46a69f5437f936a15df4d7fed2` |
| 14 | `theorem` | [update_inl_comp_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/update-inl-comp-inl--fc732cd3bf2db9e8cb3f4396.md) | 85 | `result-track:fc732cd3bf2db9e8cb3f43961ae57d7f6da75f7435ec50194fe1a1d3e3378626` |
| 15 | `theorem` | [update_inl_apply_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/update-inl-apply-inl--68b8edbf5d1c0a3d04615fc3.md) | 90 | `result-track:68b8edbf5d1c0a3d04615fc3acf9b267d870b9c44bbde19598503bf14e3c0cc4` |
| 16 | `theorem` | [update_inl_comp_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/update-inl-comp-inr--8faf3c386f5849771d34f58a.md) | 95 | `result-track:8faf3c386f5849771d34f58a29a7c5ecd32de7b61de0c8215c7fe53a5103b6b5` |
| 17 | `theorem` | [update_inl_apply_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/update-inl-apply-inr--c84a2031db8b9175fd249b9e.md) | 99 | `result-track:c84a2031db8b9175fd249b9ed681e46e82d8a84b2a3f7b2746f79cb923d3b31f` |
| 18 | `theorem` | [update_inr_comp_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/update-inr-comp-inl--8a517a126274396c205c85ce.md) | 104 | `result-track:8a517a126274396c205c85cef6ad220dfc29844363ad7595bcad93f30c3e8c0e` |
| 19 | `theorem` | [update_inr_apply_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/update-inr-apply-inl--baa79f2ce5b1f0db2806a508.md) | 108 | `result-track:baa79f2ce5b1f0db2806a5081bf22a53b82a74b2d417cacbbba417de6ca7e040` |
| 20 | `theorem` | [update_inr_comp_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/update-inr-comp-inr--f4aecf60e2c09dd7d2ae5e99.md) | 113 | `result-track:f4aecf60e2c09dd7d2ae5e9936a85b9434ef005872ccfd49c23e5c8c0f4c88d2` |
| 21 | `theorem` | [update_inr_apply_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/update-inr-apply-inr--55a0952b8c9062a6a2745d79.md) | 118 | `result-track:55a0952b8c9062a6a2745d7928dc5c5f20a9c2b510e520637736e86b99dda4f0` |
| 22 | `theorem` | [update_inl_apply_inl'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/update-inl-apply-inl--222fda9f83896b5b0427a939.md) | 123 | `result-track:222fda9f83896b5b0427a93959e73c0b4744e2a8e57e2ad01b4b9b02ddd87596` |
| 23 | `theorem` | [update_inr_apply_inr'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/update-inr-apply-inr--65fb354d7fe4fb526e63e399.md) | 129 | `result-track:65fb354d7fe4fb526e63e3996d8443dd1d76841e32549f5f995ca1b19ce8c84c` |
| 24 | `lemma` | [rec_update_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/rec-update-left--3e7e6c15c4928aa5787c2568.md) | 135 | `result-track:3e7e6c15c4928aa5787c2568fa462ef48f1d2e2ccb1793cde6e82a17d8bb97e5` |
| 25 | `lemma` | [rec_update_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/rec-update-right--a661a4cca47b74f3c564211b.md) | 143 | `result-track:a661a4cca47b74f3c564211bb3fdfb8c48cccfbcc2a6aae6b53168f375a71077` |
| 26 | `lemma` | [elim_update_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/elim-update-left--11c1a983d170459d7f41850c.md) | 151 | `result-track:11c1a983d170459d7f41850cfcd395d2089fe1357c14149e3b6522f2cc446a76` |
| 27 | `lemma` | [elim_update_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/elim-update-right--7300460fdb78d4e81011cbb3.md) | 157 | `result-track:7300460fdb78d4e81011cbb3e83449714ed973d9ec3c52f568e3afb4b88f3551` |
| 28 | `theorem` | [swap_leftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/swap-leftinverse--405ac29539248a2dbae294c3.md) | 163 | `result-track:405ac29539248a2dbae294c3e6f562f6fe2bdeae8b1105dcc4d3a849cafe7179` |
| 29 | `theorem` | [swap_rightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/swap-rightinverse--1058ee3d7a4d14cc058bec44.md) | 167 | `result-track:1058ee3d7a4d14cc058bec44cf48e244a0cdaf6bbe75926ecef3b7aa87049be0` |
| 30 | `theorem` | [isLeft_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/isleft-congr--9058df6a46a5eb6f0960058d.md) | 177 | `result-track:9058df6a46a5eb6f0960058d8eef626f58ba357e04df685a59fa80e14d2461c3` |
| 31 | `theorem` | [isRight_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/isright-congr--38a084aa8d9ce66be445eb56.md) | 178 | `result-track:38a084aa8d9ce66be445eb56225c45043f49a5914a16c7925b1c2db5371d710d` |
| 32 | `theorem` | [isLeft_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/isleft-left--d2278bb97a09843f59cbd212.md) | 180 | `result-track:d2278bb97a09843f59cbd212dfa3e9f678718b06792268c877e45b6b191ff813` |
| 33 | `theorem` | [isLeft_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/isleft-right--1ac15a6635399b084e4aa6fe.md) | 181 | `result-track:1ac15a6635399b084e4aa6fe6e2d37289cd7149039aadb8d168d7d2a0fee5304` |
| 34 | `theorem` | [isRight_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/isright-left--2cf8fc1fc8ff5ee8ff6424af.md) | 182 | `result-track:2cf8fc1fc8ff5ee8ff6424af91ea6ae893c07eabd4221e6d3423c67d35e628c7` |
| 35 | `theorem` | [isRight_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/isright-right--db5b41eeebeae08435c34bd4.md) | 183 | `result-track:db5b41eeebeae08435c34bd4ffe58390011cef897f421025b3c6eb6c37eeba7d` |
| 36 | `theorem` | [exists_of_isLeft_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/exists-of-isleft-left--36b3787e31375f3732cf4c73.md) | 185 | `result-track:36b3787e31375f3732cf4c73fce517b02b090a6bdf6eb02c7fa64e15910eada2` |
| 37 | `theorem` | [exists_of_isLeft_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/exists-of-isleft-right--e8e741298eadac5da2542b9f.md) | 191 | `result-track:e8e741298eadac5da2542b9ffe19a0fd89a2224e9304ed7fd2e1dd6174f6a672` |
| 38 | `theorem` | [exists_of_isRight_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/exists-of-isright-left--151611a0eca86197a1d69867.md) | 194 | `result-track:151611a0eca86197a1d698670fe89c86a58fcf62628acd7a5142f93334c74f01` |
| 39 | `theorem` | [exists_of_isRight_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/exists-of-isright-right--fbe0dc37938fe6f2a786d653.md) | 200 | `result-track:fbe0dc37938fe6f2a786d6537502f95288ee55026ecb653c63f6e5d11f8d66af` |
| 40 | `theorem` | [Injective.sumElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/injective-sumelim--b365fe4c6818e801bad264cb.md) | 212 | `result-track:b365fe4c6818e801bad264cb1152576d6b37bacc64e6af2a4b5b175ada08ee36` |
| 41 | `theorem` | [Injective.sumMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/injective-summap--c738c4f73aeed5b4c5853d70.md) | 221 | `result-track:c738c4f73aeed5b4c5853d70324d4840c41b535e29e812c3d9af88d09d323388` |
| 42 | `theorem` | [Surjective.sumMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/surjective-summap--f7c9929b9caad2ab13fd8ed7.md) | 228 | `result-track:f7c9929b9caad2ab13fd8ed79740d927416fef762c71686cc793088ca1d5ec76` |
| 43 | `theorem` | [Bijective.sumMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/bijective-summap--8fe1f59cbc22a7c3309fd030.md) | 239 | `result-track:8fe1f59cbc22a7c3309fd0308402d706cdce7f7dbbc374d944192960b17191f0` |
| 44 | `theorem` | [elim_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/elim-injective--6818d9f6845d19db58b201f0.md) | 252 | `result-track:6818d9f6845d19db58b201f0007746be1a8e88b6404fe8560e894f2b160d96e0` |
| 45 | `theorem` | [map_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/map-injective--fe75297d708d42e197475088.md) | 258 | `result-track:fe75297d708d42e1974750888c91cfd28c17651d8a20038b20a8acbb5766aa98` |
| 46 | `theorem` | [map_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/map-surjective--b122a20360958f8b653fcc42.md) | 264 | `result-track:b122a20360958f8b653fcc4258fbccebfcd08b6ba1f2b29aa5a2de6125085cac` |
| 47 | `theorem` | [map_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/map-bijective--78022b862cf344e2e15dfaca.md) | 278 | `result-track:78022b862cf344e2e15dfacae2ac403299b33ff914f782ab8a2ff122a542023a` |
| 48 | `def` | [in₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/in--a360a470611b6210c5ee4487.md) | 294 | `declaration-track:a360a470611b6210c5ee448761c9f594e1fedf8d6e538a2b5dc2231850af240c` |
| 49 | `def` | [in₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/in--18897321b22a15602d54fa97.md) | 299 | `declaration-track:18897321b22a15602d54fa973e42662c8d81954fb15c18efd130f359528ffc60` |
| 50 | `def` | [in₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/in--021e667c6917e038f9ace3d8.md) | 304 | `declaration-track:021e667c6917e038f9ace3d84a36dac06d9b310de478f959fda39611c8e7a092` |
| 51 | `theorem` | [inl_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/inl-injective--a745f8a4451a4192648bd8f3.md) | 317 | `result-track:a745f8a4451a4192648bd8f34c1483405f38fb8811c0c67372ed0c6d90a85a69` |
| 52 | `theorem` | [inr_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/declarations/inr-injective--7affd259b999c4caa8b952c4.md) | 319 | `result-track:7affd259b999c4caa8b952c487edff6dfbd4f841699b8f496b7655c9f9aaaead` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
