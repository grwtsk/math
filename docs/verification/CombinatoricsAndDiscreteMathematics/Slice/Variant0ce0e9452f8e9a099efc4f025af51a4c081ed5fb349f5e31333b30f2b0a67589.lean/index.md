# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Slice.Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a51333a868833adf3a955231dd46d4bfa7bbb203",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a51333a868833adf3a955231dd46d4bfa7bbb203`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Interval` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antichain` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sized](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/sized--a191faf9fb3af781cbd9f00c.md) | 46 | `declaration-track:a191faf9fb3af781cbd9f00c0f680cf77c4a2a618cfd2b1be7857661a0500533` |
| 2 | `theorem` | [Sized.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/sized-mono--7c37ffe8c1d4e40397d6907d.md) | 50 | `result-track:7c37ffe8c1d4e40397d6907da69a01cd05544efcb4dc7de52a91cd6cc4dee1f1` |
| 3 | `theorem` | [sized_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/sized-union--f3084af19990b3c9a1318fbb.md) | 53 | `result-track:f3084af19990b3c9a1318fbbf8709da439a0e40e6577ca9a292063c137153838` |
| 4 | `theorem` | [sized_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/sized-iunion--55acb1551a9984894ff47c1b.md) | 63 | `result-track:55acb1551a9984894ff47c1bc8050802824c0b5feb743e0b0575f515823ff036` |
| 5 | `theorem` | [sized_iUnion₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/sized-iunion--6642f3bb4163a21bc860a69b.md) | 69 | `result-track:6642f3bb4163a21bc860a69be926156172bac1df3099811b999dbd1bdc03732f` |
| 6 | `theorem` | [Sized.isAntichain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/sized-isantichain--554562d531da2789c4cbdc06.md) | 74 | `result-track:554562d531da2789c4cbdc061255d4694139e8ace169d4cefe182cdcf8626831` |
| 7 | `theorem` | [Sized.subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/sized-subsingleton--b8e558aa82856a307b98dfc0.md) | 78 | `result-track:b8e558aa82856a307b98dfc0c5ed2c35c86e316b5990c0846b83ddce32e1cfd2` |
| 8 | `theorem` | [Sized.subsingleton'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/sized-subsingleton--6514157e587a01fc802d0989.md) | 82 | `result-track:6514157e587a01fc802d09892febdbf7ca87f176a10ed8b608dd11294996b8bf` |
| 9 | `theorem` | [Sized.empty_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/sized-empty-mem-iff--d5e6fbf37db499368e8cd520.md) | 86 | `result-track:d5e6fbf37db499368e8cd520b143437a0f484e23646a8e478c746f0b072799ad` |
| 10 | `theorem` | [Sized.univ_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/sized-univ-mem-iff--7d2fb0ffa20e4e1fd054f248.md) | 90 | `result-track:7d2fb0ffa20e4e1fd054f2481518131e11ad17b4137d1d1797b98fabf1431dea` |
| 11 | `theorem` | [sized_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/sized-powersetlen--da2bf9b90878ce23ef0278c4.md) | 94 | `result-track:da2bf9b90878ce23ef0278c48518fb72273f9f97e317ba7a56cd8a63a6c48617` |
| 12 | `theorem` | [subset_powersetLen_univ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/subset-powersetlen-univ-iff--fc10dd7bbbd776d5ddb5a1cb.md) | 106 | `result-track:fc10dd7bbbd776d5ddb5a1cbbe219b74dbee2f67d4b6e5409c09e1946d6f6eee` |
| 13 | `theorem` | [Set.Sized.card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/set-sized-card-le--008b9e2a9620e9dbf729c41f.md) | 113 | `result-track:008b9e2a9620e9dbf729c41fff045301db8c54b40519621cdd0d00e5db9e4a4b` |
| 14 | `def` | [slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/slice--091667f4d3ef57d917321a9d.md) | 129 | `declaration-track:091667f4d3ef57d917321a9dad8f7c408b05cb458e35b0b2e781a9cd96c57abf` |
| 15 | `theorem` | [mem_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/mem-slice--6102d16f45e0482bb8a11003.md) | 139 | `result-track:6102d16f45e0482bb8a11003f7b43c69d57500b0ee6e94aebfeb40bd66e7d3fc` |
| 16 | `theorem` | [slice_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/slice-subset--d37c14b6cca2edfa0010a304.md) | 144 | `result-track:d37c14b6cca2edfa0010a304c519d9d2aa68ec9f66fd2fc0b71d173e9478b072` |
| 17 | `theorem` | [sized_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/sized-slice--f82e79c498dff1f7e8c57f87.md) | 149 | `result-track:f82e79c498dff1f7e8c57f876f49ee6ce45807aa86942119c1806135c57ab9fb` |
| 18 | `theorem` | [eq_of_mem_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/eq-of-mem-slice--80703f988b777e0c4bf2ed3c.md) | 152 | `result-track:80703f988b777e0c4bf2ed3cf044e91ef9d82f6ac055ee8e1a04b3baab175dfb` |
| 19 | `theorem` | [ne_of_mem_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/ne-of-mem-slice--818ac60125e83dab527f3005.md) | 157 | `result-track:818ac60125e83dab527f30053850542aab4a672b6c1971c8e142cb806b082a58` |
| 20 | `theorem` | [pairwiseDisjoint_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/pairwisedisjoint-slice--142a3bdf25b9518f5afcc562.md) | 161 | `result-track:142a3bdf25b9518f5afcc5628724872bff69964e81d5e54a6762cc172c240c14` |
| 21 | `theorem` | [biUnion_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/biunion-slice--d2bd00a8e835c709f8dea5c7.md) | 168 | `result-track:d2bd00a8e835c709f8dea5c7567603c240a354ea5a063ffcb09ec08d25b62791` |
| 22 | `theorem` | [sum_card_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589.lean/declarations/sum-card-slice--66cd95789aca7971b037075d.md) | 174 | `result-track:66cd95789aca7971b037075d8248440829d7c26f77b8a388581ba2015f5d7848` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
