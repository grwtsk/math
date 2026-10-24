# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Slice.Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cf6aaf137c397d187ad61f5268f66b324a07e59",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cf6aaf137c397d187ad61f5268f66b324a07e59`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Pattern.Memcmp` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.ByteArray.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.IsEmpty` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.FindPos` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [beq_eq_true_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/beq-eq-true-iff--3742999a298874f918bd596b.md) | 32 | `result-track:3742999a298874f918bd596b01bffe6fd58f14b9ab6a0078f888217ae2f01de7` |
| 2 | `theorem` | [beq_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/beq-eq-false-iff--5b564c196a257aa89a0544ce.md) | 43 | `result-track:5b564c196a257aa89a0544cef528e8a0581062f9915502d9aa5b24bbc27a1269` |
| 3 | `theorem` | [beq_eq_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/beq-eq-decide--ea0f90a27abfbf9e2b973a99.md) | 46 | `result-track:ea0f90a27abfbf9e2b973a99498f177fa8803d1f0c0c07393d5d86b560de8583` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/instance--654a47cbacdb0bf4c625802a.md) | 49 | `declaration-track:654a47cbacdb0bf4c625802a53aeee2ce36bf3b49a67c92379c06a24710c1b30` |
| 5 | `theorem` | [beq_list_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/beq-list-iff--4a25bf1aef69472cad8a89ae.md) | 52 | `result-track:4a25bf1aef69472cad8a89ae1ee0ae51e6d685a5b79e01cc7e044a190b98097e` |
| 6 | `theorem` | [beq_list_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/beq-list-eq-false-iff--3768699c1242a2df857c16ac.md) | 55 | `result-track:3768699c1242a2df857c16ac440d69764162162b3d89fc2f85fdb84c235aba1c` |
| 7 | `theorem` | [beq_list_eq_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/beq-list-eq-decide--d30874c56e423b182e62b23f.md) | 59 | `result-track:d30874c56e423b182e62b23fa996aeb9b226abd2017ebbc994aeb30b5486d0aa` |
| 8 | `theorem` | [get?_eq_dif](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/get-eq-dif--8ac93b00c18ea4d1aea9b7da.md) | 67 | `result-track:8ac93b00c18ea4d1aea9b7da3974f7f5aa89d5d1c8fdaba8d3055707e0d250bb` |
| 9 | `theorem` | [get?_eq_some_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/get-eq-some-get--bff91bc085a6e79da4a70c18.md) | 70 | `result-track:bff91bc085a6e79da4a70c1835e81f0d4777aa2f7d672698331d64e3a205a435` |
| 10 | `theorem` | [get?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/get-eq-none-iff--7457cd13d27ebc04868ab93c.md) | 74 | `result-track:7457cd13d27ebc04868ab93cd2d53361915da8d9d04335165acd4760e9b5466c` |
| 11 | `theorem` | [get?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/get-eq-none--8da1868d3cdf8b5de21f50f9.md) | 77 | `result-track:8da1868d3cdf8b5de21f50f937bd92fff6522e051827be5a1bc41da163415723` |
| 12 | `theorem` | [get?_endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/get-endpos--82324c38fbf0136b30579b8f.md) | 81 | `result-track:82324c38fbf0136b30579b8f29fb76d1adaf749815f6934ce73ac85e144129c6` |
| 13 | `theorem` | [get?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/get-toslice--b0f0b4cef2713e17ebd67048.md) | 90 | `result-track:b0f0b4cef2713e17ebd67048ccaaf6171ed3db59d2df0d1dd535d79f5f7ce9ad` |
| 14 | `theorem` | [get?_eq_dif](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/get-eq-dif--09fe96074258ca67108bfe38.md) | 93 | `result-track:09fe96074258ca67108bfe3881083033883feb870757f737661d7e4f259339c7` |
| 15 | `theorem` | [get?_eq_some_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/get-eq-some-get--014b97f2cdfcc668c4ff5c59.md) | 96 | `result-track:014b97f2cdfcc668c4ff5c591ef7c60d4d137a8e184c8276642e5386bf56eede` |
| 16 | `theorem` | [get?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/get-eq-none-iff--e5d153b4ffb7b4de96a4326d.md) | 100 | `result-track:e5d153b4ffb7b4de96a4326d8fd5e57c52fe6cbae0a335eb45bd68325a50ad37` |
| 17 | `theorem` | [get?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/get-eq-none--6b7b01ede29ed9ac84f69743.md) | 103 | `result-track:6b7b01ede29ed9ac84f6974305137482a63207435d8a649204f78f935a45195c` |
| 18 | `theorem` | [get?_endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/get-endpos--bbee4766d112be95462ceda2.md) | 107 | `result-track:bbee4766d112be95462ceda2330fab8ebc851e9e4e82c02d6ad3b8d62bf1a85a` |
| 19 | `theorem` | [front?_eq_get?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/front-eq-get--0e1399159c943be87f2c2007.md) | 114 | `result-track:0e1399159c943be87f2c2007adfcc8d8e93bba35286d8f1868dfb4c489474577` |
| 20 | `theorem` | [front?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/front-eq--4a8365855fa139333065975b.md) | 117 | `result-track:4a8365855fa139333065975bc43a7e8ae0266e2ccbed770cf34b4f0d7629de0e` |
| 21 | `theorem` | [front_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/front-eq--a706bfed0786eb39cfeaccab.md) | 126 | `result-track:a706bfed0786eb39cfeaccab136870f79dc066afb41787e6c369d90117f0758b` |
| 22 | `theorem` | [back?_eq_get?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/back-eq-get--1b3d0dd20453b6b796dd696f.md) | 129 | `result-track:1b3d0dd20453b6b796dd696f1616cfce4951ac07720f2ce943d8f9df4cd84551` |
| 23 | `theorem` | [back?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/back-eq--78e1db89492ba2dcea6aa349.md) | 132 | `result-track:78e1db89492ba2dcea6aa349c8f6897afb24e3b18e8b146f025a12c92382679a` |
| 24 | `theorem` | [back_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8.lean/declarations/back-eq--bafbfa6f2031f93ec3a974ac.md) | 141 | `result-track:bafbfa6f2031f93ec3a974ac8df6c0446fa97b5d730465690ffca48befda5ede` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
