# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Extract.Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c912d676eac1969312655ee5b6419f0921b2a8db",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c912d676eac1969312655ee5b6419f0921b2a8db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Extract` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [extract_of_size_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-of-size-lt--479efd2a7d76f4158668c405.md) | 32 | `result-track:479efd2a7d76f4158668c405f73a94f28033dca1e987fbfd9cd6557517798052` |
| 2 | `theorem` | [extract_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-push--06703b82e305482a0fc18881.md) | 38 | `result-track:06703b82e305482a0fc188813b3e36a47eb65371c18905bdc99698b181176ef4` |
| 3 | `theorem` | [extract_push_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-push-of-le--e06c4c75e5e96d1b64d0ce73.md) | 52 | `result-track:e06c4c75e5e96d1b64d0ce73bee24aa8b14987b689f4ae500341c17ce43bfe21` |
| 4 | `theorem` | [extract_eq_pop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-eq-pop--d7be7fea0b6cd849d72af145.md) | 58 | `result-track:d7be7fea0b6cd849d72af145e9af8709f97322881b4d7c2ccbb194e98f8ddf96` |
| 5 | `theorem` | [extract_append_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-append-extract--2836f39b96ca31dabbe0f14a.md) | 64 | `result-track:2836f39b96ca31dabbe0f14ae860b471371002feea01f51634076538c60b30cf` |
| 6 | `theorem` | [push_extract_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/push-extract-getelem--ad93304b6ca4359b7248bad6.md) | 71 | `result-track:ad93304b6ca4359b7248bad601d48768b0783f0d58c3039b85b184d53aa7f2a0` |
| 7 | `theorem` | [extract_succ_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-succ-right--1fe723b1d3326b8fd53efaa6.md) | 76 | `result-track:1fe723b1d3326b8fd53efaa6c7723110358d70260a470e736e45cc5879d48fe9` |
| 8 | `theorem` | [extract_sub_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-sub-one--db2c6671bcad428affda36e6.md) | 81 | `result-track:db2c6671bcad428affda36e64d674725da43c7f42c8e259fab8a29f8717e693e` |
| 9 | `theorem` | [getElem?_extract_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/getelem-extract-of-lt--b89eaa64094bca5525253c08.md) | 87 | `result-track:b89eaa64094bca5525253c087bb9e461be149287f79073452eee5ac403e5d6c9` |
| 10 | `theorem` | [getElem?_extract_of_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/getelem-extract-of-succ--d9c3990e91abe31758736367.md) | 92 | `result-track:d9c3990e91abe317587363675bbff5efa432c5e62b2a05dd8f9c90649108309b` |
| 11 | `theorem` | [extract_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-extract--079c603811887778fc7cb5bf.md) | 102 | `result-track:079c603811887778fc7cb5bfc797fdf48339bfadde4faad569cc9f903ec61955` |
| 12 | `theorem` | [extract_set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-set--2da1f9e3ef780d288e4b5d15.md) | 108 | `result-track:2da1f9e3ef780d288e4b5d158b082bed096035736c43f676ac1f1ecf7531a940` |
| 13 | `theorem` | [set_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/set-extract--b0c46a4071cc5bb9023c05f1.md) | 122 | `result-track:b0c46a4071cc5bb9023c05f1d36c8d2afcd9f6c39eb7ed61d76c04ce379e5f89` |
| 14 | `theorem` | [extract_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-append--667cd6c0b0e13ce8941a05fb.md) | 128 | `result-track:667cd6c0b0e13ce8941a05fba47c89628aa56ba4ac107a44502680f0f5ea0e65` |
| 15 | `theorem` | [extract_append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-append-left--d6c1cac8676e5a17d894b263.md) | 135 | `result-track:d6c1cac8676e5a17d894b263b634f58480bb95c8188e7f11d73ef2213747577c` |
| 16 | `theorem` | [extract_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-append-right--0d5e7ef0c170b4f16abec45e.md) | 144 | `result-track:0d5e7ef0c170b4f16abec45e45fd56fd73e4c4f168f240f2497c7ecf645f4cdf` |
| 17 | `theorem` | [map_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/map-extract--11a1488350e9248e2cc18a49.md) | 153 | `result-track:11a1488350e9248e2cc18a49798b11944a68922c0050a2613749bd8ea4df6ca7` |
| 18 | `theorem` | [extract_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-replicate--e093bebde7c4b770d2c9a627.md) | 158 | `result-track:e093bebde7c4b770d2c9a6270d9d9e71c27a06f33fef95632528490cae1e7355` |
| 19 | `theorem` | [extract_add_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-add-left--988679d2c228c50e9b8dd36a.md) | 163 | `result-track:988679d2c228c50e9b8dd36a1d60fbad0240314f5071a157570f553d44177097` |
| 20 | `theorem` | [mem_extract_iff_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/mem-extract-iff-getelem--c467f05b9b9bee926c6aea1b.md) | 170 | `result-track:c467f05b9b9bee926c6aea1b7e3a0b0c867e465e085fdefc0b904db165defc11` |
| 21 | `theorem` | [set_eq_push_extract_append_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/set-eq-push-extract-append-extract--b71f1a86cc30729f328a7e0b.md) | 178 | `result-track:b71f1a86cc30729f328a7e0b7aa4b8e68e4b08e3ab5cdf636d26613374eac13a` |
| 22 | `theorem` | [extract_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/extract-reverse--51885c169545dcb33bc8b966.md) | 183 | `result-track:51885c169545dcb33bc8b9666cce3ebabc04d717479f4d41e5d807ca997956d4` |
| 23 | `theorem` | [reverse_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant70a9bda3ca647782473104afee44d4f74f03cdbb247ebaab0b5eec539baddb56.lean/declarations/reverse-extract--d2ac8158c42ca594292320d9.md) | 194 | `result-track:d2ac8158c42ca594292320d91534a9c4cbd7ce7c4d3cd30c0f249337b53988d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
