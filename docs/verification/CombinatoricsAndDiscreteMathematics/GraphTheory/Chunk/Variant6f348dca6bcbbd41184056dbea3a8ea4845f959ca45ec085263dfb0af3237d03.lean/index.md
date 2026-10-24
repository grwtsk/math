# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Chunk.Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9769d3bcb634dc5777328da55c569754f66d5e76",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9769d3bcb634dc5777328da55c569754f66d5e76`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Regularity.Bound` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Equitabilise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Uniform` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/chunk--670f22110432bab1111fbebb.md) | 58 | `declaration-track:670f22110432bab1111fbebb99fff328ddca0db84c00939cd00374ddb0bcfefb` |
| 2 | `def` | [star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/star--bc731a2ccfc148028444cb7f.md) | 67 | `declaration-track:bc731a2ccfc148028444cb7f2de0eba784505379703e4015a2ffc3f87b9b063a` |
| 3 | `theorem` | [biUnion_star_subset_nonuniformWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/biunion-star-subset-nonuniformwitness--9534ff360765076b27debad2.md) | 77 | `result-track:9534ff360765076b27debad27d1785bc44cb183ec2266bfb5dfafc7cc0952e17` |
| 4 | `theorem` | [star_subset_chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/star-subset-chunk--16fad11b239fbf3df227105b.md) | 83 | `result-track:16fad11b239fbf3df227105b6afe4d644e1ee429586e08d3a783e08c7b7eb893` |
| 5 | `theorem` | [card_nonuniformWitness_sdiff_biUnion_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/card-nonuniformwitness-sdiff-biunion-star--2592026e3dbabb5009512c7a.md) | 86 | `result-track:2592026e3dbabb5009512c7a9b5d0715abec11ab687bf374966028d136d492ad` |
| 6 | `theorem` | [one_sub_eps_mul_card_nonuniformWitness_le_card_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/one-sub-eps-mul-card-nonuniformwitness-le-card-star--95a26f25612b81ff1cef27d5.md) | 119 | `result-track:95a26f25612b81ff1cef27d52516174224aee24d30b59a4bfb6cffc5ac6d2554` |
| 7 | `theorem` | [card_chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/card-chunk--ce78ebbfb59c9366e597943d.md) | 171 | `result-track:ce78ebbfb59c9366e597943d7ebce47bb363cf631b5f04682855853d3efb2ca5` |
| 8 | `theorem` | [card_eq_of_mem_parts_chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/card-eq-of-mem-parts-chunk--ddb687aaaae9a91c3724d75a.md) | 178 | `result-track:ddb687aaaae9a91c3724d75a4768167e482da9e1061cebfe5d090134b0406711` |
| 9 | `theorem` | [m_le_card_of_mem_chunk_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/m-le-card-of-mem-chunk-parts--164ab3213a361db8ae9ccb4f.md) | 183 | `result-track:164ab3213a361db8ae9ccb4fdeb84459e4234ce7de05bdd99e86f59542236409` |
| 10 | `theorem` | [card_le_m_add_one_of_mem_chunk_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/card-le-m-add-one-of-mem-chunk-parts--7c7742cf1d0b988be76f51eb.md) | 186 | `result-track:7c7742cf1d0b988be76f51eb582b8a8711d1fcd093d78719fcf8b59f4cb13ff0` |
| 11 | `theorem` | [card_biUnion_star_le_m_add_one_card_star_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/card-biunion-star-le-m-add-one-card-star-mul--57d5496d81337a8bfdb89547.md) | 189 | `result-track:57d5496d81337a8bfdb895472eaf6035c6c8f9ed371755afe0616ed75bca6841` |
| 12 | `theorem` | [le_sum_card_subset_chunk_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/le-sum-card-subset-chunk-parts--6c7633865171a7e044ecb015.md) | 194 | `result-track:6c7633865171a7e044ecb015a2f5a448eabc65ba9da1ac7018fdee373670595b` |
| 13 | `theorem` | [sum_card_subset_chunk_parts_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/sum-card-subset-chunk-parts-le--18e38b9ac49e00aa1a82cc77.md) | 202 | `result-track:18e38b9ac49e00aa1a82cc77a41587c4aff141fcc5c01f7cbe93020256ac7872` |
| 14 | `theorem` | [one_sub_le_m_div_m_add_one_sq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/one-sub-le-m-div-m-add-one-sq--b3b45074b635dbf769c23afd.md) | 212 | `result-track:b3b45074b635dbf769c23afdefb12ed1605d4a5b349a529ca3b8ef4c44b304c0` |
| 15 | `theorem` | [m_add_one_div_m_le_one_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/m-add-one-div-m-le-one-add--56ec0665a686e86c5d347ce5.md) | 226 | `result-track:56ec0665a686e86c5d347ce5523015e07386e63d48798ceccf3a315da3119ca0` |
| 16 | `theorem` | [density_sub_eps_le_sum_density_div_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/density-sub-eps-le-sum-density-div-card--59831e6e2bb3e3864c40bb7a.md) | 241 | `result-track:59831e6e2bb3e3864c40bb7a5f923e3a7aae8c89474d0767df6401b9d20155f6` |
| 17 | `theorem` | [sum_density_div_card_le_density_add_eps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/sum-density-div-card-le-density-add-eps--d13cfb0ba139c785c39a7db9.md) | 278 | `result-track:d13cfb0ba139c785c39a7db953d765b22b26ecbb0e75bf584971622d0d030b11` |
| 18 | `theorem` | [average_density_near_total_density](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/average-density-near-total-density--16294b699160281faae67c15.md) | 317 | `result-track:16294b699160281faae67c1573da5a944f451b69b5de7228f68c9868e62e5e77` |
| 19 | `theorem` | [edgeDensity_chunk_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/edgedensity-chunk-aux--6fdee761b8345c65eb60894a.md) | 334 | `result-track:6fdee761b8345c65eb60894a0267a4cb91e3e7c929e977ffdeb32b2a3ac9c011` |
| 20 | `theorem` | [abs_density_star_sub_density_le_eps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/abs-density-star-sub-density-le-eps--3f0dcdb7c3e2888a2d2493a6.md) | 361 | `result-track:3f0dcdb7c3e2888a2d2493a61a23f4a5638ba412ab6d713d07617170de67aaf8` |
| 21 | `theorem` | [eps_le_card_star_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/eps-le-card-star-div--56d3c71bd8886c39dd2fabfc.md) | 373 | `result-track:56d3c71bd8886c39dd2fabfca94e12a5188fcb19c85104444610c133577065c0` |
| 22 | `theorem` | [edgeDensity_star_not_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/edgedensity-star-not-uniform--df5ff5c1bd98999fb232a6ef.md) | 416 | `result-track:df5ff5c1bd98999fb232a6ef9edba722eb46dc7b72039fbe82482b882f7e4307` |
| 23 | `theorem` | [edgeDensity_chunk_not_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/edgedensity-chunk-not-uniform--bef94c9606d1ebacb283c1f0.md) | 457 | `result-track:bef94c9606d1ebacb283c1f066c9d8d50710a65c1a3375273cfff8904a7c2a76` |
| 24 | `theorem` | [edgeDensity_chunk_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/declarations/edgedensity-chunk-uniform--9bfa537e4e7a39033b045b5b.md) | 508 | `result-track:9bfa537e4e7a39033b045b5bedd89cf36fbe3f443df68521e74c72833ccb0329` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
