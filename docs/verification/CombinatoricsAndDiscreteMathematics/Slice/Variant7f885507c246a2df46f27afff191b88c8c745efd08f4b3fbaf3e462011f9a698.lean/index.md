# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Slice.Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69fe536246fca7b915eab4dd603a862c3b55778a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69fe536246fca7b915eab4dd603a862c3b55778a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Powerset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antichain` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sized](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized--88b70b9b9993447f2451ac21.md) | 51 | `declaration-track:88b70b9b9993447f2451ac2189c0890857a0bff9f900a3efeded6b8bf099bcac` |
| 2 | `theorem` | [Sized.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized-mono--be65e0b7ffe2a09f6d2bdcb1.md) | 53 | `result-track:be65e0b7ffe2a09f6d2bdcb13879635a614b7daaba02d917b102a1082c4af4b3` |
| 3 | `lemma` | [sized_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized-empty--6c539d4dfee26ead70b83781.md) | 55 | `result-track:6c539d4dfee26ead70b83781f4596351f0b96c424c81d91638e9dccac132bddb` |
| 4 | `lemma` | [sized_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized-singleton--af6abc266d8c3f700e7ed58f.md) | 56 | `result-track:af6abc266d8c3f700e7ed58f3b2fb6eb677ddeab2fc31908fb05e47900bc9c4c` |
| 5 | `theorem` | [sized_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized-union--635cd0c682043a626639da49.md) | 58 | `result-track:635cd0c682043a626639da498589d19d5d24ceac12d3d6f9bacdb64d69c14cdc` |
| 6 | `theorem` | [sized_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized-iunion--ec6c4cc8f9f0a44474508eeb.md) | 66 | `result-track:ec6c4cc8f9f0a44474508eeb21d2b9a159eeea127ca3696b66fc53b99c2b35ac` |
| 7 | `theorem` | [sized_iUnion₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized-iunion--cef874ddb79a6241de87e1ea.md) | 71 | `result-track:cef874ddb79a6241de87e1eab7ed99ca762f65a18e10d6ca4b966253e66a5087` |
| 8 | `theorem` | [Sized.isAntichain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized-isantichain--d4ba4187ea8acf3e86ced0c8.md) | 75 | `result-track:d4ba4187ea8acf3e86ced0c8ac620d58456797ad6d1199a831244651d4aa3745` |
| 9 | `theorem` | [Sized.subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized-subsingleton--7e4860716dea841f3ecdda38.md) | 78 | `result-track:7e4860716dea841f3ecdda3817a308eff8bc2b39c14c5387ef240517418d5b26` |
| 10 | `theorem` | [Sized.subsingleton'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized-subsingleton--7a48ab8ca9f6b36538c8c84a.md) | 81 | `result-track:7a48ab8ca9f6b36538c8c84a1c49f50cd871dbe284c684de639bfedb2b622d5e` |
| 11 | `theorem` | [Sized.empty_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized-empty-mem-iff--3b5f105e66b0474938c0dd56.md) | 84 | `result-track:3b5f105e66b0474938c0dd56c49db2554887d873828dcb014dc7ff4c4e9dab77` |
| 12 | `theorem` | [Sized.univ_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized-univ-mem-iff--10842ac60f2eb5d4b90b62fb.md) | 87 | `result-track:10842ac60f2eb5d4b90b62fb85aa4bb3294e61f232579e56a785932ac40f2de9` |
| 13 | `theorem` | [sized_powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized-powersetcard--c3d5525d704cd1806b2e2ce5.md) | 90 | `result-track:c3d5525d704cd1806b2e2ce51bf18de7223159d9d9b5deda7bef089544795e38` |
| 14 | `theorem` | [subset_powersetCard_univ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/subset-powersetcard-univ-iff--ca35e7886da27c3d06b7716d.md) | 101 | `result-track:ca35e7886da27c3d06b7716dc51522499ece5901ba06dfdc9439f5e43fd020a6` |
| 15 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sized.Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.Set.Sized.card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sized-variant5628e10987b--e60ae96c3ec2b1c8bd43604a.md) | 106 | `result-track:e60ae96c3ec2b1c8bd43604a843e26e82c5b9ba69972f893c9104fa2998b2f36` |
| 16 | `def` | [slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/slice--2d9a350151d159d49080f415.md) | 121 | `declaration-track:2d9a350151d159d49080f41593a17ab6feca47a430e49804dfef81f0f73b86fe` |
| 17 | `theorem` | [mem_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/mem-slice--268625e09f8d90563c8b0144.md) | 127 | `result-track:268625e09f8d90563c8b014405b892b979e246e454553b09ff1adec6297f089e` |
| 18 | `theorem` | [slice_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/slice-subset--873571a776fdbfdde84ff2b0.md) | 131 | `result-track:873571a776fdbfdde84ff2b06f7b74ec515c9be6654b7fbadbad7872c2c403ef` |
| 19 | `theorem` | [sized_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sized-slice--a9926240de26fe13eecfa671.md) | 135 | `result-track:a9926240de26fe13eecfa671aea2f00401a958aef317292e66e02884015e248d` |
| 20 | `theorem` | [eq_of_mem_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/eq-of-mem-slice--98c5a7803de366360630ed46.md) | 137 | `result-track:98c5a7803de366360630ed46990b3bd5f0f39631eb7b700da49df346f0f82e86` |
| 21 | `theorem` | [ne_of_mem_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/ne-of-mem-slice--827269b1e2a423b49f5900c3.md) | 141 | `result-track:827269b1e2a423b49f5900c35ee9c49c0604c2e4095fb029856ae683a685d307` |
| 22 | `theorem` | [pairwiseDisjoint_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/pairwisedisjoint-slice--6b578c82b8d0c92ac09b8c67.md) | 144 | `result-track:6b578c82b8d0c92ac09b8c67cd68dcfd34bdb67cc151978a03dd89d54279e899` |
| 23 | `theorem` | [biUnion_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/biunion-slice--32d90aa7cc090ff8e59dedcf.md) | 150 | `result-track:32d90aa7cc090ff8e59dedcfd3608e1596a4c76d2fbd3507ae0bb1ddb25bcca4` |
| 24 | `theorem` | [sum_card_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/declarations/sum-card-slice--e792ee911f61d355a41e4f6c.md) | 155 | `result-track:e792ee911f61d355a41e4f6c098a75aae2c6f88de09747b97eff10eaf64f04e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
