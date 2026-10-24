# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Erase.Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74a1affabb8204ca14a1114bad74189f0bfc8085",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74a1affabb8204ca14a1114bad74189f0bfc8085`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Erase` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [getElem?_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/getelem-eraseidx--756eaf6ffc901eac2ba3b689.md) | 31 | `result-track:756eaf6ffc901eac2ba3b6894ebf0b1f5c3a791296bd5d5abd582ea714b3eeb8` |
| 2 | `theorem` | [getElem?_eraseIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/getelem-eraseidx-of-lt--19e724d0c9d6df01a833d3f7.md) | 54 | `result-track:19e724d0c9d6df01a833d3f70f129cc41072fc416824473ffa9583a8773f00be` |
| 3 | `theorem` | [getElem?_eraseIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/getelem-eraseidx-of-ge--0a580c3f63a6275f35038974.md) | 59 | `result-track:0a580c3f63a6275f350389746af018af288443d763d0243470723cdd8a7ed8ff` |
| 4 | `theorem` | [getElem_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/getelem-eraseidx--b6b94a3a16b54400a3ae2d33.md) | 67 | `result-track:b6b94a3a16b54400a3ae2d33708dcbff0a26374ea8238a412ea21d1339375ecc` |
| 5 | `theorem` | [getElem_eraseIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/getelem-eraseidx-of-lt--ae9295f4a00e5d45487ae447.md) | 76 | `result-track:ae9295f4a00e5d45487ae447410cb2e82ea281f0c8911ffe1bd6edd3a57d6674` |
| 6 | `theorem` | [getElem_eraseIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/getelem-eraseidx-of-ge--dc72ba0fb5529f2c77ac9c7f.md) | 83 | `result-track:dc72ba0fb5529f2c77ac9c7ff842aaea2003452b3bb6dd1ed45afaa8a523f16f` |
| 7 | `theorem` | [eraseIdx_eq_dropLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/eraseidx-eq-droplast--d913cd14d48f39fa4ac46369.md) | 88 | `result-track:d913cd14d48f39fa4ac46369a19a5c139b84fda15e885d0e82f5ef0eea8fb863` |
| 8 | `theorem` | [eraseIdx_set_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/eraseidx-set-eq--724c742f6a095240babf0af5.md) | 93 | `result-track:724c742f6a095240babf0af5121773c7908538701e773db1f56bd031012f9ab1` |
| 9 | `theorem` | [eraseIdx_set_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/eraseidx-set-lt--155b21cf5c08d2f172dac7c5.md) | 103 | `result-track:155b21cf5c08d2f172dac7c582351e311e3eadbc18f3aa77ae74df6647ed7282` |
| 10 | `theorem` | [eraseIdx_set_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/eraseidx-set-gt--380fae7baa7d1b3d9da3ea31.md) | 125 | `result-track:380fae7baa7d1b3d9da3ea31a7fea14f6f1194b118a27dc3bfb8c3922deac7c8` |
| 11 | `theorem` | [eraseIdx_set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/eraseidx-set--e3af7bb8be2b3ffe7fd08451.md) | 142 | `result-track:e3af7bb8be2b3ffe7fd08451d4d224313bdc57bb3390891ae32c2c61565006da` |
| 12 | `theorem` | [set_eraseIdx_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/set-eraseidx-le--48989bbbbb335171e73f4389.md) | 159 | `result-track:48989bbbbb335171e73f438991e15a271ffa1b6814d961029683268bf02b1a91` |
| 13 | `theorem` | [set_eraseIdx_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/set-eraseidx-gt--a239917c3bf88539023495c4.md) | 165 | `result-track:a239917c3bf88539023495c48273a81b363ab8ec9851ae532374c2128bee5fc3` |
| 14 | `theorem` | [set_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/set-eraseidx--db27beb268277afda146116e.md) | 171 | `result-track:db27beb268277afda146116e7f9aa2be6432b707dd88ccbdd733fcbc00881bef` |
| 15 | `theorem` | [set_getElem_succ_eraseIdx_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/set-getelem-succ-eraseidx-succ--816fe07f5f38ab98bce37153.md) | 183 | `result-track:816fe07f5f38ab98bce37153a4a5b330872669ba70c28fe15f8282f6e2017cd1` |
| 16 | `theorem` | [eraseIdx_length_sub_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/declarations/eraseidx-length-sub-one--1da0a53ee109628383ebfc2e.md) | 203 | `result-track:1da0a53ee109628383ebfc2ebb623be927bec93fbf509546e4dc260a5e1fd696` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
