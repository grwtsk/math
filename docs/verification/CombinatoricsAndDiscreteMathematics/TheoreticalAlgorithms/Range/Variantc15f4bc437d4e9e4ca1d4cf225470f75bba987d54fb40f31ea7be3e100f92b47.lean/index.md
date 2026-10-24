# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc1b02e895003e49ab8ec2b0f31ae0f095001e4c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc1b02e895003e49ab8ec2b0f31ae0f095001e4c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.UnionInter` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/range--51d6ccb4f61ef29cefdab8ae.md) | 19 | `declaration-track:51d6ccb4f61ef29cefdab8ae4a2a1614aa7f725412df79901c91c35b1451876e` |
| 2 | `theorem` | [coe_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/coe-range--c1fee6b1924265eaa1721b26.md) | 22 | `result-track:c1fee6b1924265eaa1721b26e2f5cfa781d36abb1b2eba0756cc77540834cf38` |
| 3 | `theorem` | [range_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/range-zero--6e389f3a88b74b28a8f3d22a.md) | 26 | `result-track:6e389f3a88b74b28a8f3d22a653a2f5e74549ad150fc4c5ce7e4a708ec0edf4d` |
| 4 | `theorem` | [range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/range-succ--2737ca035872703dfe9171c6.md) | 30 | `result-track:2737ca035872703dfe9171c6af8d9396b2a6ad5b03f8295a97d32703b7fb1090` |
| 5 | `theorem` | [card_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/card-range--aaa6003315db1c4d8851ebeb.md) | 34 | `result-track:aaa6003315db1c4d8851ebeb5f55cb8260062c61b0ffc38313e072c1d13a411a` |
| 6 | `theorem` | [range_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/range-subset--4b63783a1ed16c69defe0a56.md) | 37 | `result-track:4b63783a1ed16c69defe0a56e601cd4956a1d54821582a9f53ba7c920a6db24a` |
| 7 | `theorem` | [mem_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/mem-range--ce09c7f1f5b511584eb5be99.md) | 41 | `result-track:ce09c7f1f5b511584eb5be99cf6c9e5ade68c4e427d24977b1eee1046e5e5467` |
| 8 | `theorem` | [notMem_range_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/notmem-range-self--9de4ecd41f66ba9ddc146ed8.md) | 44 | `result-track:9de4ecd41f66ba9ddc146ed803eb4cee499b39f6167eb3ef66b1e83594506435` |
| 9 | `theorem` | [self_mem_range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/self-mem-range-succ--7776e1dc37f5ca01537d129e.md) | 49 | `result-track:7776e1dc37f5ca01537d129e8eaf7f1f432336d1ab82aa9e0da78d6c586c4fc0` |
| 10 | `theorem` | [range_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/range-add--c7e0de438e01c74fce91f906.md) | 52 | `result-track:c7e0de438e01c74fce91f906b1b976729c1f29e2b8cd46f98f3d9fb076decd65` |
| 11 | `theorem` | [range_disjoint_map_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/range-disjoint-map-add--c047de8dbf42fdc52efe919a.md) | 55 | `result-track:c047de8dbf42fdc52efe919af6bcfe660288b2df8e80f1d818051cc7d6a29182` |
| 12 | `theorem` | [range_add_eq_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/range-add-eq-union--388b09a27581e61872280008.md) | 63 | `result-track:388b09a27581e618722800082534b609afa9837005ce89983d06b7650507f478` |
| 13 | `theorem` | [nodup_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/nodup-range--c2a2977d4d7e9f2935dd13e2.md) | 69 | `result-track:c2a2977d4d7e9f2935dd13e2700c13150ada30894fa12b67e1c417861dbe68b4` |
| 14 | `theorem` | [range_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47.lean/declarations/range-le--49e53656e971cafb3603b443.md) | 72 | `result-track:49e53656e971cafb3603b443f356089e9953d3cee4a21b050fc1de0f7e9a7714` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
