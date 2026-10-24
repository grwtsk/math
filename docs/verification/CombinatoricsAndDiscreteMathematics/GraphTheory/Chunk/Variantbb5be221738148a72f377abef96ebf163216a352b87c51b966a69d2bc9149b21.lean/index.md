# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Chunk.Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac37cd431d24cad3b83dbe4c98e092d1749e35cc",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac37cd431d24cad3b83dbe4c98e092d1749e35cc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Regularity.Bound` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Equitabilise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Uniform` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/macro-rules--d12818a841b8d84ce2b96e86.md) | 50 | `declaration-track:d12818a841b8d84ce2b96e8684c12f6a491fea55a9e2f75c45ba363abc3653e0` |
| 2 | `def` | [chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/chunk--4bf86863f95211a303d46350.md) | 71 | `declaration-track:4bf86863f95211a303d4635045d3f8c56fbfccfc6219b599f1b7d6f07508ca9d` |
| 3 | `def` | [star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/star--324692d05c50d67542f00ad7.md) | 81 | `declaration-track:324692d05c50d67542f00ad7e113d2c56c8e9b9819c802deaf2d148ff8c0ca14` |
| 4 | `theorem` | [biUnion_star_subset_nonuniformWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/biunion-star-subset-nonuniformwitness--a872d4b2768c8eeba0f8651f.md) | 92 | `result-track:a872d4b2768c8eeba0f8651f4346903dc8fedcfbf3f3ad2a98a3365ce9915e91` |
| 5 | `theorem` | [star_subset_chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/star-subset-chunk--c3b030e015edf2c20a7c9316.md) | 99 | `result-track:c3b030e015edf2c20a7c9316649daa8f8f4fe788908e792ea89d718add55496d` |
| 6 | `theorem` | [card_nonuniformWitness_sdiff_biUnion_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/card-nonuniformwitness-sdiff-biunion-star--9f76a826d6472e8c78c946e0.md) | 103 | `result-track:9f76a826d6472e8c78c946e0fba1290caa8190703fb22abce714477775548952` |
| 7 | `theorem` | [one_sub_eps_mul_card_nonuniformWitness_le_card_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/one-sub-eps-mul-card-nonuniformwitness-le-card-star--666fbbc8947a07dc54297ec5.md) | 137 | `result-track:666fbbc8947a07dc54297ec5d5947b03515355c3742fc0faaf234daf53074d12` |
| 8 | `theorem` | [card_chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/card-chunk--b053288475668f48ba80f70e.md) | 191 | `result-track:b053288475668f48ba80f70e9d0041ac2291d63bedb55b8e78dd3ffd3f5c727f` |
| 9 | `theorem` | [card_eq_of_mem_parts_chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/card-eq-of-mem-parts-chunk--5553f725976a9781c5de1816.md) | 199 | `result-track:5553f725976a9781c5de1816015f8f7069fac6dbeaa962fff91b5fdd37aa5ab6` |
| 10 | `theorem` | [m_le_card_of_mem_chunk_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/m-le-card-of-mem-chunk-parts--f016b261b4c0a1e060756e27.md) | 205 | `result-track:f016b261b4c0a1e060756e2758377558a80ce10ed39fdff8fcc33a8ff52765f0` |
| 11 | `theorem` | [card_le_m_add_one_of_mem_chunk_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/card-le-m-add-one-of-mem-chunk-parts--f31bc7d0407ef389c640e08a.md) | 209 | `result-track:f31bc7d0407ef389c640e08abedc25256b455777e58919b6dcb4de7b7d8e1cbc` |
| 12 | `theorem` | [card_biUnion_star_le_m_add_one_card_star_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/card-biunion-star-le-m-add-one-card-star-mul--11b702966a35d1a545192a41.md) | 213 | `result-track:11b702966a35d1a545192a419f6208e4efeef6a662c3bed2d72b51d775af7f5b` |
| 13 | `theorem` | [le_sum_card_subset_chunk_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/le-sum-card-subset-chunk-parts--6323b5508b28f15be5659543.md) | 219 | `result-track:6323b5508b28f15be5659543762070b27fb7d34ea385e7ab108a12287835ceeb` |
| 14 | `theorem` | [sum_card_subset_chunk_parts_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/sum-card-subset-chunk-parts-le--0f208f160b2b228c8bc34f14.md) | 227 | `result-track:0f208f160b2b228c8bc34f1493851db57ccd02b4f8414e30dea99f1bf58701ee` |
| 15 | `theorem` | [one_sub_le_m_div_m_add_one_sq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/one-sub-le-m-div-m-add-one-sq--f85914ce61c4683118f80fee.md) | 237 | `result-track:f85914ce61c4683118f80feea108bd41d928f9a0e6a60e6dbc822e0aad3cfe03` |
| 16 | `theorem` | [m_add_one_div_m_le_one_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/m-add-one-div-m-le-one-add--1d7cf738b379eebaa6775d55.md) | 251 | `result-track:1d7cf738b379eebaa6775d55cb732ca6ce763726a2df6a48de2d525d84fce311` |
| 17 | `theorem` | [density_sub_eps_le_sum_density_div_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/density-sub-eps-le-sum-density-div-card--256db8ad6ca9bc307e6cd2c3.md) | 267 | `result-track:256db8ad6ca9bc307e6cd2c365b385db6806678a8843f17c53110c0775e996d4` |
| 18 | `theorem` | [sum_density_div_card_le_density_add_eps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/sum-density-div-card-le-density-add-eps--457843ee1ca2b6ecc32e5333.md) | 305 | `result-track:457843ee1ca2b6ecc32e53338075461bcd2d3c65b136fd2787acd71b62f7b013` |
| 19 | `theorem` | [average_density_near_total_density](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/average-density-near-total-density--8984db521c71e1ae77c269cd.md) | 343 | `result-track:8984db521c71e1ae77c269cd9a9021633bb3e15038d1d7f624b1f1947e938f9f` |
| 20 | `theorem` | [edgeDensity_chunk_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/edgedensity-chunk-aux--8ea5f553094ffa21f3af4b7f.md) | 360 | `result-track:8ea5f553094ffa21f3af4b7f335cdb9d6b82dabcec9481d4be6fc6bf5867ac60` |
| 21 | `theorem` | [abs_density_star_sub_density_le_eps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/abs-density-star-sub-density-le-eps--a4816bf9682dc9906e3652e4.md) | 388 | `result-track:a4816bf9682dc9906e3652e4dbe7f560d1ae5b7f4b279ed8e0f30e450ccc32bb` |
| 22 | `theorem` | [eps_le_card_star_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/eps-le-card-star-div--62561fbc292769edcadaf103.md) | 400 | `result-track:62561fbc292769edcadaf1035c9abd467efb0bdae027a2c0be2c5c8a9ccec535` |
| 23 | `theorem` | [edgeDensity_star_not_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/edgedensity-star-not-uniform--f71e711fe4012c19f37412fe.md) | 442 | `result-track:f71e711fe4012c19f37412fef0453b5ce0b2aae985d71665eacf3e505dbd3461` |
| 24 | `theorem` | [edgeDensity_chunk_not_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/edgedensity-chunk-not-uniform--0a9d15d957c47e26f3cfa98c.md) | 484 | `result-track:0a9d15d957c47e26f3cfa98c4d634a892dafac48e6e23a3ba21907853c4fbdba` |
| 25 | `theorem` | [edgeDensity_chunk_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/declarations/edgedensity-chunk-uniform--f325a5236d49af8292e1b62f.md) | 532 | `result-track:f325a5236d49af8292e1b62f1a6480aedd09f70a3fbed173542582847ba0cdb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
