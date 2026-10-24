# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Cell.Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79d3d107e08558aae945520804ebf019e9c91069",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79d3d107e08558aae945520804ebf019e9c91069`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Find` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Cell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/cell--c23b7ab8700c1d6131377542.md) | 40 | `declaration-track:c23b7ab8700c1d6131377542f8840481f5f7451ba0446addfee4924ca39622e0` |
| 2 | `def` | [ofEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/ofeq--7459f4127dbe5230305c836f.md) | 49 | `declaration-track:7459f4127dbe5230305c836f8c0f5be8aee78fc468962dfcfe5f827ff6e8799e` |
| 3 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/of--5baf3ff0f8f932d41396b05f.md) | 54 | `declaration-track:5baf3ff0f8f932d41396b05fe6bf22c6c0e55bb7d7af044be7f9ac2c93ea553d` |
| 4 | `theorem` | [ofEq_inner](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/ofeq-inner--a95e6078ba7632e1b6fe1424.md) | 58 | `result-track:a95e6078ba7632e1b6fe14249f4c861f753f1311232c9e9053a4282eeba8f94b` |
| 5 | `theorem` | [of_inner](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/of-inner--d7df7a305ec2bd664e8464ea.md) | 62 | `result-track:d7df7a305ec2bd664e8464eaecc7470c939f3a9b41d0eb31b7323f4464526735` |
| 6 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/empty--3c06b03bdde01e27e14e3d60.md) | 65 | `declaration-track:3c06b03bdde01e27e14e3d60823d5fb1d5011ce5942afad7d6e27911f437df41` |
| 7 | `def` | [ofOption](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/ofoption--d0b518af3581bb6549713e3c.md) | 69 | `declaration-track:d0b518af3581bb6549713e3ccb2123b0dec56595ff2323c3a10dd78abce29fe0` |
| 8 | `theorem` | [empty_inner](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/empty-inner--5b663229ad424a87aca8e66e.md) | 75 | `result-track:5b663229ad424a87aca8e66e436b73514306c594d8a1feb40247c6569334444c` |
| 9 | `def` | [contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/contains--3d1b255215b86850742b4544.md) | 78 | `declaration-track:3d1b255215b86850742b4544a7d35f5f5cfd7f605a465ab67fdf699619a74f70` |
| 10 | `theorem` | [contains_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/contains-of--def6d64766759cb88f0076ec.md) | 82 | `result-track:def6d64766759cb88f0076ecbc2f2388221b96944a4b0f124ac4e52939751dcf` |
| 11 | `theorem` | [contains_ofEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/contains-ofeq--ce6cf696c642190f8a915027.md) | 85 | `result-track:ce6cf696c642190f8a9150272ae7db747bc6506d02f6d57f6d0a87c5cd9cde7e` |
| 12 | `theorem` | [contains_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/contains-empty--fe06fb3df7c503e31f303abe.md) | 89 | `result-track:fe06fb3df7c503e31f303abe93fefdec603c311522f436a81715f2e9c4a49a31` |
| 13 | `theorem` | [containsKey_inner_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/containskey-inner-tolist--a4a393b83d94bf41afa72ad7.md) | 91 | `result-track:a4a393b83d94bf41afa72ad7d9b8dde29bb7a836bc290f26ea2651e0d147da6b` |
| 14 | `def` | [get?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/get--32706fefc0fc16c98e639fc4.md) | 101 | `declaration-track:32706fefc0fc16c98e639fc4d3fdd93a50d7d702c4ec34d900d9539f0b57133d` |
| 15 | `def` | [getEntry?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/getentry--83ec0e0093d5992aaaf7ae33.md) | 107 | `declaration-track:83ec0e0093d5992aaaf7ae332ee8f1492bd46e8874bfccf15249f528c38eb518` |
| 16 | `theorem` | [get?_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/get-empty--b2d247f747effebdfc7c6726.md) | 113 | `result-track:b2d247f747effebdfc7c67260511406975be802ff6dad7c3de225127b2320cf6` |
| 17 | `def` | [getKey?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/getkey--7a1deb546f3fe06992747c3e.md) | 118 | `declaration-track:7a1deb546f3fe06992747c3e2a93399147d3bd2b92e537b6a034d09d631b30b3` |
| 18 | `theorem` | [getEntry?_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/getentry-empty--b97e72aa7aa980722bd10759.md) | 124 | `result-track:b97e72aa7aa980722bd1075907f5b4deee0afa38afcde22880894926677402dc` |
| 19 | `theorem` | [getKey?_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/getkey-empty--deacb3788319bd0797a55085.md) | 129 | `result-track:deacb3788319bd0797a5508592cc74a2965771690564f6d6aeec82fe9ec39b88` |
| 20 | `def` | [alter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/alter--fea98ec006698e0418dc1818.md) | 133 | `declaration-track:fea98ec006698e0418dc18180718668bf46d31a97be645eac4be102f69ea243c` |
| 21 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/ext--895993d352f33c9e65ba95a7.md) | 142 | `result-track:895993d352f33c9e65ba95a71c7553fd95a9980462be78bfcb9148f518ccfe94` |
| 22 | `def` | [get?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/get--a037ed6125ed2ecc4fffef53.md) | 150 | `declaration-track:a037ed6125ed2ecc4fffef532cb31092886b1625bf63b7737103c479042537ae` |
| 23 | `theorem` | [get?_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/get-empty--8e80ee226e143954030e506f.md) | 156 | `result-track:8e80ee226e143954030e506f98a5a50c4696eedd7ccd5a97fbd9e67703e8d52b` |
| 24 | `def` | [alter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/alter--685e60fdbef573cbac89d447.md) | 161 | `declaration-track:685e60fdbef573cbac89d447f759523d08ccde4a6e80a7f17e6eb2ba8c3c27a7` |
| 25 | `def` | [List.findCell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/list-findcell--2bec7278cad616e4756b246a.md) | 174 | `declaration-track:2bec7278cad616e4756b246a34cc91c381362277bd1ec7e9192c8c2a349b00b3` |
| 26 | `theorem` | [List.findCell_inner](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/list-findcell-inner--3a40b124386ebfa590e7ea89.md) | 178 | `result-track:3a40b124386ebfa590e7ea895e054decc3ed0332b2420eaf75fd05ca6791da3f` |
| 27 | `theorem` | [List.findCell_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant3e47c19710aefef2a8e3da47cf84e57d80ea0a24efc14687e07ac4263d594ec0.lean/declarations/list-findcell-nil--5ac8a0c9f1efb424a04a5f6f.md) | 182 | `result-track:5ac8a0c9f1efb424a04a5f6f760ce20593f583a8d200af76b5406582cb5f6585` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
