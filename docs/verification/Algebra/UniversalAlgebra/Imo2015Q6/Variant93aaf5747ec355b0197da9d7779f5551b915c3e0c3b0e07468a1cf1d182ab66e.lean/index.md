# Verification target: GRWTSK.Algebra.UniversalAlgebra.Imo2015Q6.Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f70b009084c5499dcb392fa79b548d405346d20b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f70b009084c5499dcb392fa79b548d405346d20b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean.json)

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
| 1 | `def` | [Condition](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/condition--4b33c61eb3554fa8ae64109d.md) | 69 | `declaration-track:4b33c61eb3554fa8ae64109d507210d25eb7350385a35ce318b5ff24096c4de6` |
| 2 | `def` | [pool](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/pool--42c8f985d6794219e998e095.md) | 72 | `declaration-track:42c8f985d6794219e998e095ffd864ec5ea3f88cc3a199f844ec466233ca13c0` |
| 3 | `lemma` | [exists_add_eq_of_mem_pool](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/exists-add-eq-of-mem-pool--2ec650b69d20689536e3a465.md) | 80 | `result-track:2ec650b69d20689536e3a465f04daf8ce6517305db4b3ea6d0e121ccec46efa0` |
| 4 | `lemma` | [pool_subset_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/pool-subset-icc--25f7507a85983c1971fadd54.md) | 94 | `result-track:25f7507a85983c1971fadd542bc61828b1ae8aab6b8729cc5e38d03c2e62604b` |
| 5 | `lemma` | [notMem_pool_self](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/notmem-pool-self--46ee9d0c169fdcecf6dc99c8.md) | 105 | `result-track:46ee9d0c169fdcecf6dc99c8a9d0a9c05273498cd91d93d004a7af92c41ce492` |
| 6 | `lemma` | [card_pool_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/card-pool-succ--e066b460682d78b67b3ff67f.md) | 112 | `result-track:e066b460682d78b67b3ff67f1a3e6159772489b7973a32d86f5474024dc2214e` |
| 7 | `lemma` | [monotone_card_pool](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/monotone-card-pool--45d3bf92e6d73d942cc5a88a.md) | 120 | `result-track:45d3bf92e6d73d942cc5a88ae61a50496929aa1222869ad28b82b6e58f14bd9c` |
| 8 | `lemma` | [exists_max_card_pool](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/exists-max-card-pool--65ca689af66233d9068b6e29.md) | 126 | `result-track:65ca689af66233d9068b6e293030d7382f96265bf7d5895efd51f2d91be1ebc7` |
| 9 | `lemma` | [b_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/b-pos--ee3865a5e4f2a16eab0ed08d.md) | 138 | `result-track:ee3865a5e4f2a16eab0ed08d7e7c4ced27804adb15cee0f3a84f85e259cee3ab` |
| 10 | `lemma` | [zero_mem_pool](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/zero-mem-pool--e7568ec2988d6e9a971b20e0.md) | 150 | `result-track:e7568ec2988d6e9a971b20e037e688d0a83d0d7deba2dbffa114b3f7f32e4050` |
| 11 | `lemma` | [sum_sub_sum_eq_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/sum-sub-sum-eq-sub--074f1f6c033b05acb3dfc925.md) | 157 | `result-track:074f1f6c033b05acb3dfc925f49fde09e7192924d3a2d8e6eae2c9c8ee64ab55` |
| 12 | `lemma` | [sum_telescope](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/sum-telescope--a02bd95815f5aa2d07b70162.md) | 166 | `result-track:a02bd95815f5aa2d07b70162d732dc3c5b8ddb2eae903b4687d8b43a07700651` |
| 13 | `lemma` | [le_sum_pool](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/le-sum-pool--04dcfa2793d033acc057d80b.md) | 174 | `result-track:04dcfa2793d033acc057d80b25318d155a75cff1421c8b49843b3e56f02128e8` |
| 14 | `lemma` | [sum_pool_le](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/sum-pool-le--8a5e79ea6ecf4c52dbe24f27.md) | 180 | `result-track:8a5e79ea6ecf4c52dbe24f27c999c0bad5852bc06e0afb7db182e566b25b26d3` |
| 15 | `theorem` | [result](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/declarations/result--a53f0754b670e5e441a2859b.md) | 189 | `result-track:a53f0754b670e5e441a2859b91fb954a94dcb6ecbdcb5071b63013e7f7536fa2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
