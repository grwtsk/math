# Verification target: GRWTSK.Analysis.Series.DyadicPartition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da71fe7ab16209168e7d444e711475346d93274c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Series/DyadicPartition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Series/DyadicPartition.lean/index.md) · [Full source](../../../../mathematics/Analysis/Series/DyadicPartition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da71fe7ab16209168e7d444e711475346d93274c`.

Source path: `GRWTSK/Analysis/Series/DyadicPartition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Series/DyadicPartition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edge](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/edge--0fa98ad3156e9fc1e0b9a9ea.md) | 21 | `declaration-track:0fa98ad3156e9fc1e0b9a9ea9371948c2c3035b889be2b606ad79804eccecc9b` |
| 2 | `def` | [cell](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/cell--ef3242a03abe950482b2829e.md) | 23 | `declaration-track:ef3242a03abe950482b2829ea9505a51b8fde02c4e212d7401a1c147497b62e0` |
| 3 | `theorem` | [edge_pos](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/edge-pos--f42295dbc64127c5fd8cc45d.md) | 25 | `result-track:f42295dbc64127c5fd8cc45d99286ff500c433f0e4bef55a09e3f05f2a07d67f` |
| 4 | `theorem` | [edge_succ](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/edge-succ--73c1742fa7260b1ba80b2112.md) | 27 | `result-track:73c1742fa7260b1ba80b21123a8899695c8dcfbc104856d0aad5eac6240e143a` |
| 5 | `theorem` | [edge_strictMono](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/edge-strictmono--36223b32c11a9c733cab8b7d.md) | 31 | `result-track:36223b32c11a9c733cab8b7db8c85c48a8f6667dca5e2fcb068d9729d1739142` |
| 6 | `theorem` | [one_le_edge](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/one-le-edge--3887e2ac3eaa512f2a16362b.md) | 38 | `result-track:3887e2ac3eaa512f2a16362b0c1a710de9fd135697e799097c81f742a7539c03` |
| 7 | `theorem` | [index_lt_edge](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/index-lt-edge--a8e37c7adcfe54661a891455.md) | 41 | `result-track:a8e37c7adcfe54661a891455fe7e981b7baad1520a17c79e811291d4c92f5a83` |
| 8 | `theorem` | [upper_exists](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/upper-exists--162b964097886ed1275d57d1.md) | 49 | `result-track:162b964097886ed1275d57d17db1fa2a6d8362fee04844fe24c676df839ea6a8` |
| 9 | `def` | [owner](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/owner--a01ef41d6ce2468c1a7d6c8b.md) | 54 | `declaration-track:a01ef41d6ce2468c1a7d6c8b936ffa97908a5f846ddfc6c2ad25ea81afb18eb7` |
| 10 | `theorem` | [owner_upper](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/owner-upper--cc1f8ab02d5945a2b4ce8fa8.md) | 56 | `result-track:cc1f8ab02d5945a2b4ce8fa8664df42ad9e23b65a1c20d396e4f231b9d94e760` |
| 11 | `theorem` | [owner_le_of_upper](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/owner-le-of-upper--60a15bdeec0470d8030c2fd9.md) | 59 | `result-track:60a15bdeec0470d8030c2fd972b26f39ed3f02e311c97066272edc1865f01d91` |
| 12 | `theorem` | [owner_lower](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/owner-lower--b682033b98fd7759a576816e.md) | 62 | `result-track:b682033b98fd7759a576816ef126c583cc80259e4f44e9d52ad0d05710fad8f3` |
| 13 | `theorem` | [mem_cell_iff_owner](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/mem-cell-iff-owner--c0fb9c60b4712d6745866a0e.md) | 71 | `result-track:c0fb9c60b4712d6745866a0ee007f9e9c33af4a9f034a37ca2c62cdf76786169` |
| 14 | `theorem` | [cell_disjoint](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/cell-disjoint--85c9f49805b2e3820fe46e09.md) | 88 | `result-track:85c9f49805b2e3820fe46e0934ef63a08f907afe5958773f0ed4c71c7f38cdbf` |
| 15 | `theorem` | [endpoint_in_preceding_cell](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/endpoint-in-preceding-cell--addcdba6d7c958c3259cd519.md) | 96 | `result-track:addcdba6d7c958c3259cd5190ff1685f09f1f12d99e9720ba09835b4ad012865` |
| 16 | `theorem` | [endpoint_not_in_following_cell](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/endpoint-not-in-following-cell--8f470610211d7e26b27dde8d.md) | 99 | `result-track:8f470610211d7e26b27dde8d8f463ff361edf48ddf1b7cfa854ab7b587b92976` |
| 17 | `theorem` | [initial_cell](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/initial-cell--2a30e114a1a5b452f655bb87.md) | 102 | `result-track:2a30e114a1a5b452f655bb87a11f3ea5e86d9aba3a1c6acdb9720cc4699ee1b1` |
| 18 | `theorem` | [prefix_union](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/prefix-union--dc845aaba2d15a421a6501e3.md) | 105 | `result-track:dc845aaba2d15a421a6501e38bde0995e6656c664460157229508c95c73ceebb` |
| 19 | `theorem` | [prefix_disjoint](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/prefix-disjoint--125f23876608f03524958490.md) | 115 | `result-track:125f23876608f0352495849083cba3148ce839c0b04ae08a69bb77e27a16e1a4` |
| 20 | `theorem` | [finite_partition](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/finite-partition--787c4fe38a9558bed21c1135.md) | 123 | `result-track:787c4fe38a9558bed21c1135fc5814c00ea2684018416eb51f5fa529daa97386` |
| 21 | `theorem` | [fiber_tsum](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/fiber-tsum--199f41a7c8158c3b56083882.md) | 133 | `result-track:199f41a7c8158c3b560838822e45d3ce8ac71f30465c09186466cb4d3d660456` |
| 22 | `theorem` | [hasSum_cells](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/hassum-cells--577ed5c5822402b80eb81ff2.md) | 163 | `result-track:577ed5c5822402b80eb81ff25952aa318255bff891344e2d6a101947372689b6` |
| 23 | `theorem` | [summable_cells](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/summable-cells--1623b3a9982281a4d84dbd5f.md) | 169 | `result-track:1623b3a9982281a4d84dbd5f95a0feae705a40d8cfefc0a2d51e4e12345c1eb5` |
| 24 | `theorem` | [split_first_cell](../../../../mathematics/Analysis/Series/DyadicPartition.lean/declarations/split-first-cell--1c0470b22eefe4453100e369.md) | 175 | `result-track:1c0470b22eefe4453100e3691cf775f7088713463d0bdaaa5863c96b9442e144` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
